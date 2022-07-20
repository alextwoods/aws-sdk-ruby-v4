# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SSM
  module Builders

    # Operation Builder for AddTagsToResource
    class AddTagsToResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.AddTagsToResource'
        data = {}
        data['ResourceType'] = input[:resource_type] unless input[:resource_type].nil?
        data['ResourceId'] = input[:resource_id] unless input[:resource_id].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagList
    class TagList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Tag.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Tag
    class Tag
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for AssociateOpsItemRelatedItem
    class AssociateOpsItemRelatedItem
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.AssociateOpsItemRelatedItem'
        data = {}
        data['OpsItemId'] = input[:ops_item_id] unless input[:ops_item_id].nil?
        data['AssociationType'] = input[:association_type] unless input[:association_type].nil?
        data['ResourceType'] = input[:resource_type] unless input[:resource_type].nil?
        data['ResourceUri'] = input[:resource_uri] unless input[:resource_uri].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CancelCommand
    class CancelCommand
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.CancelCommand'
        data = {}
        data['CommandId'] = input[:command_id] unless input[:command_id].nil?
        data['InstanceIds'] = Builders::InstanceIdList.build(input[:instance_ids]) unless input[:instance_ids].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for InstanceIdList
    class InstanceIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CancelMaintenanceWindowExecution
    class CancelMaintenanceWindowExecution
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.CancelMaintenanceWindowExecution'
        data = {}
        data['WindowExecutionId'] = input[:window_execution_id] unless input[:window_execution_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateActivation
    class CreateActivation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.CreateActivation'
        data = {}
        data['Description'] = input[:description] unless input[:description].nil?
        data['DefaultInstanceName'] = input[:default_instance_name] unless input[:default_instance_name].nil?
        data['IamRole'] = input[:iam_role] unless input[:iam_role].nil?
        data['RegistrationLimit'] = input[:registration_limit] unless input[:registration_limit].nil?
        data['ExpirationDate'] = Hearth::TimeHelper.to_epoch_seconds(input[:expiration_date]).to_i unless input[:expiration_date].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['RegistrationMetadata'] = Builders::RegistrationMetadataList.build(input[:registration_metadata]) unless input[:registration_metadata].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for RegistrationMetadataList
    class RegistrationMetadataList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::RegistrationMetadataItem.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for RegistrationMetadataItem
    class RegistrationMetadataItem
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for CreateAssociation
    class CreateAssociation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.CreateAssociation'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['DocumentVersion'] = input[:document_version] unless input[:document_version].nil?
        data['InstanceId'] = input[:instance_id] unless input[:instance_id].nil?
        data['Parameters'] = Builders::Parameters.build(input[:parameters]) unless input[:parameters].nil?
        data['Targets'] = Builders::Targets.build(input[:targets]) unless input[:targets].nil?
        data['ScheduleExpression'] = input[:schedule_expression] unless input[:schedule_expression].nil?
        data['OutputLocation'] = Builders::InstanceAssociationOutputLocation.build(input[:output_location]) unless input[:output_location].nil?
        data['AssociationName'] = input[:association_name] unless input[:association_name].nil?
        data['AutomationTargetParameterName'] = input[:automation_target_parameter_name] unless input[:automation_target_parameter_name].nil?
        data['MaxErrors'] = input[:max_errors] unless input[:max_errors].nil?
        data['MaxConcurrency'] = input[:max_concurrency] unless input[:max_concurrency].nil?
        data['ComplianceSeverity'] = input[:compliance_severity] unless input[:compliance_severity].nil?
        data['SyncCompliance'] = input[:sync_compliance] unless input[:sync_compliance].nil?
        data['ApplyOnlyAtCronInterval'] = input[:apply_only_at_cron_interval] unless input[:apply_only_at_cron_interval].nil?
        data['CalendarNames'] = Builders::CalendarNameOrARNList.build(input[:calendar_names]) unless input[:calendar_names].nil?
        data['TargetLocations'] = Builders::TargetLocations.build(input[:target_locations]) unless input[:target_locations].nil?
        data['ScheduleOffset'] = input[:schedule_offset] unless input[:schedule_offset].nil?
        data['TargetMaps'] = Builders::TargetMaps.build(input[:target_maps]) unless input[:target_maps].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TargetMaps
    class TargetMaps
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::TargetMap.build(element) unless element.nil?
        end
        data
      end
    end

    # Map Builder for TargetMap
    class TargetMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::TargetMapValueList.build(value) unless value.nil?
        end
        data
      end
    end

    # List Builder for TargetMapValueList
    class TargetMapValueList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for TargetLocations
    class TargetLocations
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::TargetLocation.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for TargetLocation
    class TargetLocation
      def self.build(input)
        data = {}
        data['Accounts'] = Builders::Accounts.build(input[:accounts]) unless input[:accounts].nil?
        data['Regions'] = Builders::Regions.build(input[:regions]) unless input[:regions].nil?
        data['TargetLocationMaxConcurrency'] = input[:target_location_max_concurrency] unless input[:target_location_max_concurrency].nil?
        data['TargetLocationMaxErrors'] = input[:target_location_max_errors] unless input[:target_location_max_errors].nil?
        data['ExecutionRoleName'] = input[:execution_role_name] unless input[:execution_role_name].nil?
        data
      end
    end

    # List Builder for Regions
    class Regions
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for Accounts
    class Accounts
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for CalendarNameOrARNList
    class CalendarNameOrARNList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for InstanceAssociationOutputLocation
    class InstanceAssociationOutputLocation
      def self.build(input)
        data = {}
        data['S3Location'] = Builders::S3OutputLocation.build(input[:s3_location]) unless input[:s3_location].nil?
        data
      end
    end

    # Structure Builder for S3OutputLocation
    class S3OutputLocation
      def self.build(input)
        data = {}
        data['OutputS3Region'] = input[:output_s3_region] unless input[:output_s3_region].nil?
        data['OutputS3BucketName'] = input[:output_s3_bucket_name] unless input[:output_s3_bucket_name].nil?
        data['OutputS3KeyPrefix'] = input[:output_s3_key_prefix] unless input[:output_s3_key_prefix].nil?
        data
      end
    end

    # List Builder for Targets
    class Targets
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Target.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Target
    class Target
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Values'] = Builders::TargetValues.build(input[:values]) unless input[:values].nil?
        data
      end
    end

    # List Builder for TargetValues
    class TargetValues
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Map Builder for Parameters
    class Parameters
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::ParameterValueList.build(value) unless value.nil?
        end
        data
      end
    end

    # List Builder for ParameterValueList
    class ParameterValueList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateAssociationBatch
    class CreateAssociationBatch
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.CreateAssociationBatch'
        data = {}
        data['Entries'] = Builders::CreateAssociationBatchRequestEntries.build(input[:entries]) unless input[:entries].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for CreateAssociationBatchRequestEntries
    class CreateAssociationBatchRequestEntries
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::CreateAssociationBatchRequestEntry.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for CreateAssociationBatchRequestEntry
    class CreateAssociationBatchRequestEntry
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['InstanceId'] = input[:instance_id] unless input[:instance_id].nil?
        data['Parameters'] = Builders::Parameters.build(input[:parameters]) unless input[:parameters].nil?
        data['AutomationTargetParameterName'] = input[:automation_target_parameter_name] unless input[:automation_target_parameter_name].nil?
        data['DocumentVersion'] = input[:document_version] unless input[:document_version].nil?
        data['Targets'] = Builders::Targets.build(input[:targets]) unless input[:targets].nil?
        data['ScheduleExpression'] = input[:schedule_expression] unless input[:schedule_expression].nil?
        data['OutputLocation'] = Builders::InstanceAssociationOutputLocation.build(input[:output_location]) unless input[:output_location].nil?
        data['AssociationName'] = input[:association_name] unless input[:association_name].nil?
        data['MaxErrors'] = input[:max_errors] unless input[:max_errors].nil?
        data['MaxConcurrency'] = input[:max_concurrency] unless input[:max_concurrency].nil?
        data['ComplianceSeverity'] = input[:compliance_severity] unless input[:compliance_severity].nil?
        data['SyncCompliance'] = input[:sync_compliance] unless input[:sync_compliance].nil?
        data['ApplyOnlyAtCronInterval'] = input[:apply_only_at_cron_interval] unless input[:apply_only_at_cron_interval].nil?
        data['CalendarNames'] = Builders::CalendarNameOrARNList.build(input[:calendar_names]) unless input[:calendar_names].nil?
        data['TargetLocations'] = Builders::TargetLocations.build(input[:target_locations]) unless input[:target_locations].nil?
        data['ScheduleOffset'] = input[:schedule_offset] unless input[:schedule_offset].nil?
        data['TargetMaps'] = Builders::TargetMaps.build(input[:target_maps]) unless input[:target_maps].nil?
        data
      end
    end

    # Operation Builder for CreateDocument
    class CreateDocument
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.CreateDocument'
        data = {}
        data['Content'] = input[:content] unless input[:content].nil?
        data['Requires'] = Builders::DocumentRequiresList.build(input[:requires]) unless input[:requires].nil?
        data['Attachments'] = Builders::AttachmentsSourceList.build(input[:attachments]) unless input[:attachments].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['DisplayName'] = input[:display_name] unless input[:display_name].nil?
        data['VersionName'] = input[:version_name] unless input[:version_name].nil?
        data['DocumentType'] = input[:document_type] unless input[:document_type].nil?
        data['DocumentFormat'] = input[:document_format] unless input[:document_format].nil?
        data['TargetType'] = input[:target_type] unless input[:target_type].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for AttachmentsSourceList
    class AttachmentsSourceList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AttachmentsSource.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AttachmentsSource
    class AttachmentsSource
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Values'] = Builders::AttachmentsSourceValues.build(input[:values]) unless input[:values].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data
      end
    end

    # List Builder for AttachmentsSourceValues
    class AttachmentsSourceValues
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for DocumentRequiresList
    class DocumentRequiresList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::DocumentRequires.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for DocumentRequires
    class DocumentRequires
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Version'] = input[:version] unless input[:version].nil?
        data
      end
    end

    # Operation Builder for CreateMaintenanceWindow
    class CreateMaintenanceWindow
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.CreateMaintenanceWindow'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['StartDate'] = input[:start_date] unless input[:start_date].nil?
        data['EndDate'] = input[:end_date] unless input[:end_date].nil?
        data['Schedule'] = input[:schedule] unless input[:schedule].nil?
        data['ScheduleTimezone'] = input[:schedule_timezone] unless input[:schedule_timezone].nil?
        data['ScheduleOffset'] = input[:schedule_offset] unless input[:schedule_offset].nil?
        data['Duration'] = input[:duration] unless input[:duration].nil?
        data['Cutoff'] = input[:cutoff] unless input[:cutoff].nil?
        data['AllowUnassociatedTargets'] = input[:allow_unassociated_targets] unless input[:allow_unassociated_targets].nil?
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateOpsItem
    class CreateOpsItem
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.CreateOpsItem'
        data = {}
        data['Description'] = input[:description] unless input[:description].nil?
        data['OpsItemType'] = input[:ops_item_type] unless input[:ops_item_type].nil?
        data['OperationalData'] = Builders::OpsItemOperationalData.build(input[:operational_data]) unless input[:operational_data].nil?
        data['Notifications'] = Builders::OpsItemNotifications.build(input[:notifications]) unless input[:notifications].nil?
        data['Priority'] = input[:priority] unless input[:priority].nil?
        data['RelatedOpsItems'] = Builders::RelatedOpsItems.build(input[:related_ops_items]) unless input[:related_ops_items].nil?
        data['Source'] = input[:source] unless input[:source].nil?
        data['Title'] = input[:title] unless input[:title].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['Category'] = input[:category] unless input[:category].nil?
        data['Severity'] = input[:severity] unless input[:severity].nil?
        data['ActualStartTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:actual_start_time]).to_i unless input[:actual_start_time].nil?
        data['ActualEndTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:actual_end_time]).to_i unless input[:actual_end_time].nil?
        data['PlannedStartTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:planned_start_time]).to_i unless input[:planned_start_time].nil?
        data['PlannedEndTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:planned_end_time]).to_i unless input[:planned_end_time].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for RelatedOpsItems
    class RelatedOpsItems
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::RelatedOpsItem.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for RelatedOpsItem
    class RelatedOpsItem
      def self.build(input)
        data = {}
        data['OpsItemId'] = input[:ops_item_id] unless input[:ops_item_id].nil?
        data
      end
    end

    # List Builder for OpsItemNotifications
    class OpsItemNotifications
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::OpsItemNotification.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for OpsItemNotification
    class OpsItemNotification
      def self.build(input)
        data = {}
        data['Arn'] = input[:arn] unless input[:arn].nil?
        data
      end
    end

    # Map Builder for OpsItemOperationalData
    class OpsItemOperationalData
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::OpsItemDataValue.build(value) unless value.nil?
        end
        data
      end
    end

    # Structure Builder for OpsItemDataValue
    class OpsItemDataValue
      def self.build(input)
        data = {}
        data['Value'] = input[:value] unless input[:value].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data
      end
    end

    # Operation Builder for CreateOpsMetadata
    class CreateOpsMetadata
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.CreateOpsMetadata'
        data = {}
        data['ResourceId'] = input[:resource_id] unless input[:resource_id].nil?
        data['Metadata'] = Builders::MetadataMap.build(input[:metadata]) unless input[:metadata].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for MetadataMap
    class MetadataMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::MetadataValue.build(value) unless value.nil?
        end
        data
      end
    end

    # Structure Builder for MetadataValue
    class MetadataValue
      def self.build(input)
        data = {}
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for CreatePatchBaseline
    class CreatePatchBaseline
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.CreatePatchBaseline'
        data = {}
        data['OperatingSystem'] = input[:operating_system] unless input[:operating_system].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['GlobalFilters'] = Builders::PatchFilterGroup.build(input[:global_filters]) unless input[:global_filters].nil?
        data['ApprovalRules'] = Builders::PatchRuleGroup.build(input[:approval_rules]) unless input[:approval_rules].nil?
        data['ApprovedPatches'] = Builders::PatchIdList.build(input[:approved_patches]) unless input[:approved_patches].nil?
        data['ApprovedPatchesComplianceLevel'] = input[:approved_patches_compliance_level] unless input[:approved_patches_compliance_level].nil?
        data['ApprovedPatchesEnableNonSecurity'] = input[:approved_patches_enable_non_security] unless input[:approved_patches_enable_non_security].nil?
        data['RejectedPatches'] = Builders::PatchIdList.build(input[:rejected_patches]) unless input[:rejected_patches].nil?
        data['RejectedPatchesAction'] = input[:rejected_patches_action] unless input[:rejected_patches_action].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Sources'] = Builders::PatchSourceList.build(input[:sources]) unless input[:sources].nil?
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for PatchSourceList
    class PatchSourceList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::PatchSource.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for PatchSource
    class PatchSource
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Products'] = Builders::PatchSourceProductList.build(input[:products]) unless input[:products].nil?
        data['Configuration'] = input[:configuration] unless input[:configuration].nil?
        data
      end
    end

    # List Builder for PatchSourceProductList
    class PatchSourceProductList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for PatchIdList
    class PatchIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for PatchRuleGroup
    class PatchRuleGroup
      def self.build(input)
        data = {}
        data['PatchRules'] = Builders::PatchRuleList.build(input[:patch_rules]) unless input[:patch_rules].nil?
        data
      end
    end

    # List Builder for PatchRuleList
    class PatchRuleList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::PatchRule.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for PatchRule
    class PatchRule
      def self.build(input)
        data = {}
        data['PatchFilterGroup'] = Builders::PatchFilterGroup.build(input[:patch_filter_group]) unless input[:patch_filter_group].nil?
        data['ComplianceLevel'] = input[:compliance_level] unless input[:compliance_level].nil?
        data['ApproveAfterDays'] = input[:approve_after_days] unless input[:approve_after_days].nil?
        data['ApproveUntilDate'] = input[:approve_until_date] unless input[:approve_until_date].nil?
        data['EnableNonSecurity'] = input[:enable_non_security] unless input[:enable_non_security].nil?
        data
      end
    end

    # Structure Builder for PatchFilterGroup
    class PatchFilterGroup
      def self.build(input)
        data = {}
        data['PatchFilters'] = Builders::PatchFilterList.build(input[:patch_filters]) unless input[:patch_filters].nil?
        data
      end
    end

    # List Builder for PatchFilterList
    class PatchFilterList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::PatchFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for PatchFilter
    class PatchFilter
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Values'] = Builders::PatchFilterValueList.build(input[:values]) unless input[:values].nil?
        data
      end
    end

    # List Builder for PatchFilterValueList
    class PatchFilterValueList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateResourceDataSync
    class CreateResourceDataSync
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.CreateResourceDataSync'
        data = {}
        data['SyncName'] = input[:sync_name] unless input[:sync_name].nil?
        data['S3Destination'] = Builders::ResourceDataSyncS3Destination.build(input[:s3_destination]) unless input[:s3_destination].nil?
        data['SyncType'] = input[:sync_type] unless input[:sync_type].nil?
        data['SyncSource'] = Builders::ResourceDataSyncSource.build(input[:sync_source]) unless input[:sync_source].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ResourceDataSyncSource
    class ResourceDataSyncSource
      def self.build(input)
        data = {}
        data['SourceType'] = input[:source_type] unless input[:source_type].nil?
        data['AwsOrganizationsSource'] = Builders::ResourceDataSyncAwsOrganizationsSource.build(input[:aws_organizations_source]) unless input[:aws_organizations_source].nil?
        data['SourceRegions'] = Builders::ResourceDataSyncSourceRegionList.build(input[:source_regions]) unless input[:source_regions].nil?
        data['IncludeFutureRegions'] = input[:include_future_regions] unless input[:include_future_regions].nil?
        data['EnableAllOpsDataSources'] = input[:enable_all_ops_data_sources] unless input[:enable_all_ops_data_sources].nil?
        data
      end
    end

    # List Builder for ResourceDataSyncSourceRegionList
    class ResourceDataSyncSourceRegionList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ResourceDataSyncAwsOrganizationsSource
    class ResourceDataSyncAwsOrganizationsSource
      def self.build(input)
        data = {}
        data['OrganizationSourceType'] = input[:organization_source_type] unless input[:organization_source_type].nil?
        data['OrganizationalUnits'] = Builders::ResourceDataSyncOrganizationalUnitList.build(input[:organizational_units]) unless input[:organizational_units].nil?
        data
      end
    end

    # List Builder for ResourceDataSyncOrganizationalUnitList
    class ResourceDataSyncOrganizationalUnitList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ResourceDataSyncOrganizationalUnit.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ResourceDataSyncOrganizationalUnit
    class ResourceDataSyncOrganizationalUnit
      def self.build(input)
        data = {}
        data['OrganizationalUnitId'] = input[:organizational_unit_id] unless input[:organizational_unit_id].nil?
        data
      end
    end

    # Structure Builder for ResourceDataSyncS3Destination
    class ResourceDataSyncS3Destination
      def self.build(input)
        data = {}
        data['BucketName'] = input[:bucket_name] unless input[:bucket_name].nil?
        data['Prefix'] = input[:prefix] unless input[:prefix].nil?
        data['SyncFormat'] = input[:sync_format] unless input[:sync_format].nil?
        data['Region'] = input[:region] unless input[:region].nil?
        data['AWSKMSKeyARN'] = input[:awskms_key_arn] unless input[:awskms_key_arn].nil?
        data['DestinationDataSharing'] = Builders::ResourceDataSyncDestinationDataSharing.build(input[:destination_data_sharing]) unless input[:destination_data_sharing].nil?
        data
      end
    end

    # Structure Builder for ResourceDataSyncDestinationDataSharing
    class ResourceDataSyncDestinationDataSharing
      def self.build(input)
        data = {}
        data['DestinationDataSharingType'] = input[:destination_data_sharing_type] unless input[:destination_data_sharing_type].nil?
        data
      end
    end

    # Operation Builder for DeleteActivation
    class DeleteActivation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.DeleteActivation'
        data = {}
        data['ActivationId'] = input[:activation_id] unless input[:activation_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteAssociation
    class DeleteAssociation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.DeleteAssociation'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['InstanceId'] = input[:instance_id] unless input[:instance_id].nil?
        data['AssociationId'] = input[:association_id] unless input[:association_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteDocument
    class DeleteDocument
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.DeleteDocument'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['DocumentVersion'] = input[:document_version] unless input[:document_version].nil?
        data['VersionName'] = input[:version_name] unless input[:version_name].nil?
        data['Force'] = input[:force] unless input[:force].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteInventory
    class DeleteInventory
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.DeleteInventory'
        data = {}
        data['TypeName'] = input[:type_name] unless input[:type_name].nil?
        data['SchemaDeleteOption'] = input[:schema_delete_option] unless input[:schema_delete_option].nil?
        data['DryRun'] = input[:dry_run] unless input[:dry_run].nil?
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteMaintenanceWindow
    class DeleteMaintenanceWindow
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.DeleteMaintenanceWindow'
        data = {}
        data['WindowId'] = input[:window_id] unless input[:window_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteOpsMetadata
    class DeleteOpsMetadata
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.DeleteOpsMetadata'
        data = {}
        data['OpsMetadataArn'] = input[:ops_metadata_arn] unless input[:ops_metadata_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteParameter
    class DeleteParameter
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.DeleteParameter'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteParameters
    class DeleteParameters
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.DeleteParameters'
        data = {}
        data['Names'] = Builders::ParameterNameList.build(input[:names]) unless input[:names].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ParameterNameList
    class ParameterNameList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DeletePatchBaseline
    class DeletePatchBaseline
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.DeletePatchBaseline'
        data = {}
        data['BaselineId'] = input[:baseline_id] unless input[:baseline_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteResourceDataSync
    class DeleteResourceDataSync
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.DeleteResourceDataSync'
        data = {}
        data['SyncName'] = input[:sync_name] unless input[:sync_name].nil?
        data['SyncType'] = input[:sync_type] unless input[:sync_type].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeregisterManagedInstance
    class DeregisterManagedInstance
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.DeregisterManagedInstance'
        data = {}
        data['InstanceId'] = input[:instance_id] unless input[:instance_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeregisterPatchBaselineForPatchGroup
    class DeregisterPatchBaselineForPatchGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.DeregisterPatchBaselineForPatchGroup'
        data = {}
        data['BaselineId'] = input[:baseline_id] unless input[:baseline_id].nil?
        data['PatchGroup'] = input[:patch_group] unless input[:patch_group].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeregisterTargetFromMaintenanceWindow
    class DeregisterTargetFromMaintenanceWindow
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.DeregisterTargetFromMaintenanceWindow'
        data = {}
        data['WindowId'] = input[:window_id] unless input[:window_id].nil?
        data['WindowTargetId'] = input[:window_target_id] unless input[:window_target_id].nil?
        data['Safe'] = input[:safe] unless input[:safe].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeregisterTaskFromMaintenanceWindow
    class DeregisterTaskFromMaintenanceWindow
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.DeregisterTaskFromMaintenanceWindow'
        data = {}
        data['WindowId'] = input[:window_id] unless input[:window_id].nil?
        data['WindowTaskId'] = input[:window_task_id] unless input[:window_task_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeActivations
    class DescribeActivations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.DescribeActivations'
        data = {}
        data['Filters'] = Builders::DescribeActivationsFilterList.build(input[:filters]) unless input[:filters].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for DescribeActivationsFilterList
    class DescribeActivationsFilterList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::DescribeActivationsFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for DescribeActivationsFilter
    class DescribeActivationsFilter
      def self.build(input)
        data = {}
        data['FilterKey'] = input[:filter_key] unless input[:filter_key].nil?
        data['FilterValues'] = Builders::StringList.build(input[:filter_values]) unless input[:filter_values].nil?
        data
      end
    end

    # List Builder for StringList
    class StringList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeAssociation
    class DescribeAssociation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.DescribeAssociation'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['InstanceId'] = input[:instance_id] unless input[:instance_id].nil?
        data['AssociationId'] = input[:association_id] unless input[:association_id].nil?
        data['AssociationVersion'] = input[:association_version] unless input[:association_version].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeAssociationExecutionTargets
    class DescribeAssociationExecutionTargets
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.DescribeAssociationExecutionTargets'
        data = {}
        data['AssociationId'] = input[:association_id] unless input[:association_id].nil?
        data['ExecutionId'] = input[:execution_id] unless input[:execution_id].nil?
        data['Filters'] = Builders::AssociationExecutionTargetsFilterList.build(input[:filters]) unless input[:filters].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for AssociationExecutionTargetsFilterList
    class AssociationExecutionTargetsFilterList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AssociationExecutionTargetsFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AssociationExecutionTargetsFilter
    class AssociationExecutionTargetsFilter
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for DescribeAssociationExecutions
    class DescribeAssociationExecutions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.DescribeAssociationExecutions'
        data = {}
        data['AssociationId'] = input[:association_id] unless input[:association_id].nil?
        data['Filters'] = Builders::AssociationExecutionFilterList.build(input[:filters]) unless input[:filters].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for AssociationExecutionFilterList
    class AssociationExecutionFilterList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AssociationExecutionFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AssociationExecutionFilter
    class AssociationExecutionFilter
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data
      end
    end

    # Operation Builder for DescribeAutomationExecutions
    class DescribeAutomationExecutions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.DescribeAutomationExecutions'
        data = {}
        data['Filters'] = Builders::AutomationExecutionFilterList.build(input[:filters]) unless input[:filters].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for AutomationExecutionFilterList
    class AutomationExecutionFilterList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AutomationExecutionFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AutomationExecutionFilter
    class AutomationExecutionFilter
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Values'] = Builders::AutomationExecutionFilterValueList.build(input[:values]) unless input[:values].nil?
        data
      end
    end

    # List Builder for AutomationExecutionFilterValueList
    class AutomationExecutionFilterValueList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeAutomationStepExecutions
    class DescribeAutomationStepExecutions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.DescribeAutomationStepExecutions'
        data = {}
        data['AutomationExecutionId'] = input[:automation_execution_id] unless input[:automation_execution_id].nil?
        data['Filters'] = Builders::StepExecutionFilterList.build(input[:filters]) unless input[:filters].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['ReverseOrder'] = input[:reverse_order] unless input[:reverse_order].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for StepExecutionFilterList
    class StepExecutionFilterList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::StepExecutionFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for StepExecutionFilter
    class StepExecutionFilter
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Values'] = Builders::StepExecutionFilterValueList.build(input[:values]) unless input[:values].nil?
        data
      end
    end

    # List Builder for StepExecutionFilterValueList
    class StepExecutionFilterValueList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeAvailablePatches
    class DescribeAvailablePatches
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.DescribeAvailablePatches'
        data = {}
        data['Filters'] = Builders::PatchOrchestratorFilterList.build(input[:filters]) unless input[:filters].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for PatchOrchestratorFilterList
    class PatchOrchestratorFilterList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::PatchOrchestratorFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for PatchOrchestratorFilter
    class PatchOrchestratorFilter
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Values'] = Builders::PatchOrchestratorFilterValues.build(input[:values]) unless input[:values].nil?
        data
      end
    end

    # List Builder for PatchOrchestratorFilterValues
    class PatchOrchestratorFilterValues
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeDocument
    class DescribeDocument
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.DescribeDocument'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['DocumentVersion'] = input[:document_version] unless input[:document_version].nil?
        data['VersionName'] = input[:version_name] unless input[:version_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeDocumentPermission
    class DescribeDocumentPermission
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.DescribeDocumentPermission'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['PermissionType'] = input[:permission_type] unless input[:permission_type].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeEffectiveInstanceAssociations
    class DescribeEffectiveInstanceAssociations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.DescribeEffectiveInstanceAssociations'
        data = {}
        data['InstanceId'] = input[:instance_id] unless input[:instance_id].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeEffectivePatchesForPatchBaseline
    class DescribeEffectivePatchesForPatchBaseline
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.DescribeEffectivePatchesForPatchBaseline'
        data = {}
        data['BaselineId'] = input[:baseline_id] unless input[:baseline_id].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeInstanceAssociationsStatus
    class DescribeInstanceAssociationsStatus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.DescribeInstanceAssociationsStatus'
        data = {}
        data['InstanceId'] = input[:instance_id] unless input[:instance_id].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeInstanceInformation
    class DescribeInstanceInformation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.DescribeInstanceInformation'
        data = {}
        data['InstanceInformationFilterList'] = Builders::InstanceInformationFilterList.build(input[:instance_information_filter_list]) unless input[:instance_information_filter_list].nil?
        data['Filters'] = Builders::InstanceInformationStringFilterList.build(input[:filters]) unless input[:filters].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for InstanceInformationStringFilterList
    class InstanceInformationStringFilterList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::InstanceInformationStringFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for InstanceInformationStringFilter
    class InstanceInformationStringFilter
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Values'] = Builders::InstanceInformationFilterValueSet.build(input[:values]) unless input[:values].nil?
        data
      end
    end

    # List Builder for InstanceInformationFilterValueSet
    class InstanceInformationFilterValueSet
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for InstanceInformationFilterList
    class InstanceInformationFilterList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::InstanceInformationFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for InstanceInformationFilter
    class InstanceInformationFilter
      def self.build(input)
        data = {}
        data['key'] = input[:key] unless input[:key].nil?
        data['valueSet'] = Builders::InstanceInformationFilterValueSet.build(input[:value_set]) unless input[:value_set].nil?
        data
      end
    end

    # Operation Builder for DescribeInstancePatchStates
    class DescribeInstancePatchStates
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.DescribeInstancePatchStates'
        data = {}
        data['InstanceIds'] = Builders::InstanceIdList.build(input[:instance_ids]) unless input[:instance_ids].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeInstancePatchStatesForPatchGroup
    class DescribeInstancePatchStatesForPatchGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.DescribeInstancePatchStatesForPatchGroup'
        data = {}
        data['PatchGroup'] = input[:patch_group] unless input[:patch_group].nil?
        data['Filters'] = Builders::InstancePatchStateFilterList.build(input[:filters]) unless input[:filters].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for InstancePatchStateFilterList
    class InstancePatchStateFilterList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::InstancePatchStateFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for InstancePatchStateFilter
    class InstancePatchStateFilter
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Values'] = Builders::InstancePatchStateFilterValues.build(input[:values]) unless input[:values].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data
      end
    end

    # List Builder for InstancePatchStateFilterValues
    class InstancePatchStateFilterValues
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeInstancePatches
    class DescribeInstancePatches
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.DescribeInstancePatches'
        data = {}
        data['InstanceId'] = input[:instance_id] unless input[:instance_id].nil?
        data['Filters'] = Builders::PatchOrchestratorFilterList.build(input[:filters]) unless input[:filters].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeInventoryDeletions
    class DescribeInventoryDeletions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.DescribeInventoryDeletions'
        data = {}
        data['DeletionId'] = input[:deletion_id] unless input[:deletion_id].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeMaintenanceWindowExecutionTaskInvocations
    class DescribeMaintenanceWindowExecutionTaskInvocations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.DescribeMaintenanceWindowExecutionTaskInvocations'
        data = {}
        data['WindowExecutionId'] = input[:window_execution_id] unless input[:window_execution_id].nil?
        data['TaskId'] = input[:task_id] unless input[:task_id].nil?
        data['Filters'] = Builders::MaintenanceWindowFilterList.build(input[:filters]) unless input[:filters].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for MaintenanceWindowFilterList
    class MaintenanceWindowFilterList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::MaintenanceWindowFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for MaintenanceWindowFilter
    class MaintenanceWindowFilter
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Values'] = Builders::MaintenanceWindowFilterValues.build(input[:values]) unless input[:values].nil?
        data
      end
    end

    # List Builder for MaintenanceWindowFilterValues
    class MaintenanceWindowFilterValues
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeMaintenanceWindowExecutionTasks
    class DescribeMaintenanceWindowExecutionTasks
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.DescribeMaintenanceWindowExecutionTasks'
        data = {}
        data['WindowExecutionId'] = input[:window_execution_id] unless input[:window_execution_id].nil?
        data['Filters'] = Builders::MaintenanceWindowFilterList.build(input[:filters]) unless input[:filters].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeMaintenanceWindowExecutions
    class DescribeMaintenanceWindowExecutions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.DescribeMaintenanceWindowExecutions'
        data = {}
        data['WindowId'] = input[:window_id] unless input[:window_id].nil?
        data['Filters'] = Builders::MaintenanceWindowFilterList.build(input[:filters]) unless input[:filters].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeMaintenanceWindowSchedule
    class DescribeMaintenanceWindowSchedule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.DescribeMaintenanceWindowSchedule'
        data = {}
        data['WindowId'] = input[:window_id] unless input[:window_id].nil?
        data['Targets'] = Builders::Targets.build(input[:targets]) unless input[:targets].nil?
        data['ResourceType'] = input[:resource_type] unless input[:resource_type].nil?
        data['Filters'] = Builders::PatchOrchestratorFilterList.build(input[:filters]) unless input[:filters].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeMaintenanceWindowTargets
    class DescribeMaintenanceWindowTargets
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.DescribeMaintenanceWindowTargets'
        data = {}
        data['WindowId'] = input[:window_id] unless input[:window_id].nil?
        data['Filters'] = Builders::MaintenanceWindowFilterList.build(input[:filters]) unless input[:filters].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeMaintenanceWindowTasks
    class DescribeMaintenanceWindowTasks
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.DescribeMaintenanceWindowTasks'
        data = {}
        data['WindowId'] = input[:window_id] unless input[:window_id].nil?
        data['Filters'] = Builders::MaintenanceWindowFilterList.build(input[:filters]) unless input[:filters].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeMaintenanceWindows
    class DescribeMaintenanceWindows
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.DescribeMaintenanceWindows'
        data = {}
        data['Filters'] = Builders::MaintenanceWindowFilterList.build(input[:filters]) unless input[:filters].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeMaintenanceWindowsForTarget
    class DescribeMaintenanceWindowsForTarget
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.DescribeMaintenanceWindowsForTarget'
        data = {}
        data['Targets'] = Builders::Targets.build(input[:targets]) unless input[:targets].nil?
        data['ResourceType'] = input[:resource_type] unless input[:resource_type].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeOpsItems
    class DescribeOpsItems
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.DescribeOpsItems'
        data = {}
        data['OpsItemFilters'] = Builders::OpsItemFilters.build(input[:ops_item_filters]) unless input[:ops_item_filters].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for OpsItemFilters
    class OpsItemFilters
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::OpsItemFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for OpsItemFilter
    class OpsItemFilter
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Values'] = Builders::OpsItemFilterValues.build(input[:values]) unless input[:values].nil?
        data['Operator'] = input[:operator] unless input[:operator].nil?
        data
      end
    end

    # List Builder for OpsItemFilterValues
    class OpsItemFilterValues
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeParameters
    class DescribeParameters
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.DescribeParameters'
        data = {}
        data['Filters'] = Builders::ParametersFilterList.build(input[:filters]) unless input[:filters].nil?
        data['ParameterFilters'] = Builders::ParameterStringFilterList.build(input[:parameter_filters]) unless input[:parameter_filters].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ParameterStringFilterList
    class ParameterStringFilterList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ParameterStringFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ParameterStringFilter
    class ParameterStringFilter
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Option'] = input[:option] unless input[:option].nil?
        data['Values'] = Builders::ParameterStringFilterValueList.build(input[:values]) unless input[:values].nil?
        data
      end
    end

    # List Builder for ParameterStringFilterValueList
    class ParameterStringFilterValueList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for ParametersFilterList
    class ParametersFilterList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ParametersFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ParametersFilter
    class ParametersFilter
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Values'] = Builders::ParametersFilterValueList.build(input[:values]) unless input[:values].nil?
        data
      end
    end

    # List Builder for ParametersFilterValueList
    class ParametersFilterValueList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribePatchBaselines
    class DescribePatchBaselines
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.DescribePatchBaselines'
        data = {}
        data['Filters'] = Builders::PatchOrchestratorFilterList.build(input[:filters]) unless input[:filters].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribePatchGroupState
    class DescribePatchGroupState
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.DescribePatchGroupState'
        data = {}
        data['PatchGroup'] = input[:patch_group] unless input[:patch_group].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribePatchGroups
    class DescribePatchGroups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.DescribePatchGroups'
        data = {}
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['Filters'] = Builders::PatchOrchestratorFilterList.build(input[:filters]) unless input[:filters].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribePatchProperties
    class DescribePatchProperties
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.DescribePatchProperties'
        data = {}
        data['OperatingSystem'] = input[:operating_system] unless input[:operating_system].nil?
        data['Property'] = input[:property] unless input[:property].nil?
        data['PatchSet'] = input[:patch_set] unless input[:patch_set].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeSessions
    class DescribeSessions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.DescribeSessions'
        data = {}
        data['State'] = input[:state] unless input[:state].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['Filters'] = Builders::SessionFilterList.build(input[:filters]) unless input[:filters].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for SessionFilterList
    class SessionFilterList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::SessionFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for SessionFilter
    class SessionFilter
      def self.build(input)
        data = {}
        data['key'] = input[:key] unless input[:key].nil?
        data['value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for DisassociateOpsItemRelatedItem
    class DisassociateOpsItemRelatedItem
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.DisassociateOpsItemRelatedItem'
        data = {}
        data['OpsItemId'] = input[:ops_item_id] unless input[:ops_item_id].nil?
        data['AssociationId'] = input[:association_id] unless input[:association_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetAutomationExecution
    class GetAutomationExecution
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.GetAutomationExecution'
        data = {}
        data['AutomationExecutionId'] = input[:automation_execution_id] unless input[:automation_execution_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetCalendarState
    class GetCalendarState
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.GetCalendarState'
        data = {}
        data['CalendarNames'] = Builders::CalendarNameOrARNList.build(input[:calendar_names]) unless input[:calendar_names].nil?
        data['AtTime'] = input[:at_time] unless input[:at_time].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetCommandInvocation
    class GetCommandInvocation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.GetCommandInvocation'
        data = {}
        data['CommandId'] = input[:command_id] unless input[:command_id].nil?
        data['InstanceId'] = input[:instance_id] unless input[:instance_id].nil?
        data['PluginName'] = input[:plugin_name] unless input[:plugin_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetConnectionStatus
    class GetConnectionStatus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.GetConnectionStatus'
        data = {}
        data['Target'] = input[:target] unless input[:target].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetDefaultPatchBaseline
    class GetDefaultPatchBaseline
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.GetDefaultPatchBaseline'
        data = {}
        data['OperatingSystem'] = input[:operating_system] unless input[:operating_system].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetDeployablePatchSnapshotForInstance
    class GetDeployablePatchSnapshotForInstance
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.GetDeployablePatchSnapshotForInstance'
        data = {}
        data['InstanceId'] = input[:instance_id] unless input[:instance_id].nil?
        data['SnapshotId'] = input[:snapshot_id] unless input[:snapshot_id].nil?
        data['BaselineOverride'] = Builders::BaselineOverride.build(input[:baseline_override]) unless input[:baseline_override].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for BaselineOverride
    class BaselineOverride
      def self.build(input)
        data = {}
        data['OperatingSystem'] = input[:operating_system] unless input[:operating_system].nil?
        data['GlobalFilters'] = Builders::PatchFilterGroup.build(input[:global_filters]) unless input[:global_filters].nil?
        data['ApprovalRules'] = Builders::PatchRuleGroup.build(input[:approval_rules]) unless input[:approval_rules].nil?
        data['ApprovedPatches'] = Builders::PatchIdList.build(input[:approved_patches]) unless input[:approved_patches].nil?
        data['ApprovedPatchesComplianceLevel'] = input[:approved_patches_compliance_level] unless input[:approved_patches_compliance_level].nil?
        data['RejectedPatches'] = Builders::PatchIdList.build(input[:rejected_patches]) unless input[:rejected_patches].nil?
        data['RejectedPatchesAction'] = input[:rejected_patches_action] unless input[:rejected_patches_action].nil?
        data['ApprovedPatchesEnableNonSecurity'] = input[:approved_patches_enable_non_security] unless input[:approved_patches_enable_non_security].nil?
        data['Sources'] = Builders::PatchSourceList.build(input[:sources]) unless input[:sources].nil?
        data
      end
    end

    # Operation Builder for GetDocument
    class GetDocument
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.GetDocument'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['VersionName'] = input[:version_name] unless input[:version_name].nil?
        data['DocumentVersion'] = input[:document_version] unless input[:document_version].nil?
        data['DocumentFormat'] = input[:document_format] unless input[:document_format].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetInventory
    class GetInventory
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.GetInventory'
        data = {}
        data['Filters'] = Builders::InventoryFilterList.build(input[:filters]) unless input[:filters].nil?
        data['Aggregators'] = Builders::InventoryAggregatorList.build(input[:aggregators]) unless input[:aggregators].nil?
        data['ResultAttributes'] = Builders::ResultAttributeList.build(input[:result_attributes]) unless input[:result_attributes].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ResultAttributeList
    class ResultAttributeList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ResultAttribute.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ResultAttribute
    class ResultAttribute
      def self.build(input)
        data = {}
        data['TypeName'] = input[:type_name] unless input[:type_name].nil?
        data
      end
    end

    # List Builder for InventoryAggregatorList
    class InventoryAggregatorList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::InventoryAggregator.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for InventoryAggregator
    class InventoryAggregator
      def self.build(input)
        data = {}
        data['Expression'] = input[:expression] unless input[:expression].nil?
        data['Aggregators'] = Builders::InventoryAggregatorList.build(input[:aggregators]) unless input[:aggregators].nil?
        data['Groups'] = Builders::InventoryGroupList.build(input[:groups]) unless input[:groups].nil?
        data
      end
    end

    # List Builder for InventoryGroupList
    class InventoryGroupList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::InventoryGroup.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for InventoryGroup
    class InventoryGroup
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Filters'] = Builders::InventoryFilterList.build(input[:filters]) unless input[:filters].nil?
        data
      end
    end

    # List Builder for InventoryFilterList
    class InventoryFilterList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::InventoryFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for InventoryFilter
    class InventoryFilter
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Values'] = Builders::InventoryFilterValueList.build(input[:values]) unless input[:values].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data
      end
    end

    # List Builder for InventoryFilterValueList
    class InventoryFilterValueList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for GetInventorySchema
    class GetInventorySchema
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.GetInventorySchema'
        data = {}
        data['TypeName'] = input[:type_name] unless input[:type_name].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['Aggregator'] = input[:aggregator] unless input[:aggregator].nil?
        data['SubType'] = input[:sub_type] unless input[:sub_type].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetMaintenanceWindow
    class GetMaintenanceWindow
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.GetMaintenanceWindow'
        data = {}
        data['WindowId'] = input[:window_id] unless input[:window_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetMaintenanceWindowExecution
    class GetMaintenanceWindowExecution
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.GetMaintenanceWindowExecution'
        data = {}
        data['WindowExecutionId'] = input[:window_execution_id] unless input[:window_execution_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetMaintenanceWindowExecutionTask
    class GetMaintenanceWindowExecutionTask
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.GetMaintenanceWindowExecutionTask'
        data = {}
        data['WindowExecutionId'] = input[:window_execution_id] unless input[:window_execution_id].nil?
        data['TaskId'] = input[:task_id] unless input[:task_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetMaintenanceWindowExecutionTaskInvocation
    class GetMaintenanceWindowExecutionTaskInvocation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.GetMaintenanceWindowExecutionTaskInvocation'
        data = {}
        data['WindowExecutionId'] = input[:window_execution_id] unless input[:window_execution_id].nil?
        data['TaskId'] = input[:task_id] unless input[:task_id].nil?
        data['InvocationId'] = input[:invocation_id] unless input[:invocation_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetMaintenanceWindowTask
    class GetMaintenanceWindowTask
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.GetMaintenanceWindowTask'
        data = {}
        data['WindowId'] = input[:window_id] unless input[:window_id].nil?
        data['WindowTaskId'] = input[:window_task_id] unless input[:window_task_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetOpsItem
    class GetOpsItem
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.GetOpsItem'
        data = {}
        data['OpsItemId'] = input[:ops_item_id] unless input[:ops_item_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetOpsMetadata
    class GetOpsMetadata
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.GetOpsMetadata'
        data = {}
        data['OpsMetadataArn'] = input[:ops_metadata_arn] unless input[:ops_metadata_arn].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetOpsSummary
    class GetOpsSummary
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.GetOpsSummary'
        data = {}
        data['SyncName'] = input[:sync_name] unless input[:sync_name].nil?
        data['Filters'] = Builders::OpsFilterList.build(input[:filters]) unless input[:filters].nil?
        data['Aggregators'] = Builders::OpsAggregatorList.build(input[:aggregators]) unless input[:aggregators].nil?
        data['ResultAttributes'] = Builders::OpsResultAttributeList.build(input[:result_attributes]) unless input[:result_attributes].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for OpsResultAttributeList
    class OpsResultAttributeList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::OpsResultAttribute.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for OpsResultAttribute
    class OpsResultAttribute
      def self.build(input)
        data = {}
        data['TypeName'] = input[:type_name] unless input[:type_name].nil?
        data
      end
    end

    # List Builder for OpsAggregatorList
    class OpsAggregatorList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::OpsAggregator.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for OpsAggregator
    class OpsAggregator
      def self.build(input)
        data = {}
        data['AggregatorType'] = input[:aggregator_type] unless input[:aggregator_type].nil?
        data['TypeName'] = input[:type_name] unless input[:type_name].nil?
        data['AttributeName'] = input[:attribute_name] unless input[:attribute_name].nil?
        data['Values'] = Builders::OpsAggregatorValueMap.build(input[:values]) unless input[:values].nil?
        data['Filters'] = Builders::OpsFilterList.build(input[:filters]) unless input[:filters].nil?
        data['Aggregators'] = Builders::OpsAggregatorList.build(input[:aggregators]) unless input[:aggregators].nil?
        data
      end
    end

    # List Builder for OpsFilterList
    class OpsFilterList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::OpsFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for OpsFilter
    class OpsFilter
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Values'] = Builders::OpsFilterValueList.build(input[:values]) unless input[:values].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data
      end
    end

    # List Builder for OpsFilterValueList
    class OpsFilterValueList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Map Builder for OpsAggregatorValueMap
    class OpsAggregatorValueMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for GetParameter
    class GetParameter
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.GetParameter'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['WithDecryption'] = input[:with_decryption] unless input[:with_decryption].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetParameterHistory
    class GetParameterHistory
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.GetParameterHistory'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['WithDecryption'] = input[:with_decryption] unless input[:with_decryption].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetParameters
    class GetParameters
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.GetParameters'
        data = {}
        data['Names'] = Builders::ParameterNameList.build(input[:names]) unless input[:names].nil?
        data['WithDecryption'] = input[:with_decryption] unless input[:with_decryption].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetParametersByPath
    class GetParametersByPath
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.GetParametersByPath'
        data = {}
        data['Path'] = input[:path] unless input[:path].nil?
        data['Recursive'] = input[:recursive] unless input[:recursive].nil?
        data['ParameterFilters'] = Builders::ParameterStringFilterList.build(input[:parameter_filters]) unless input[:parameter_filters].nil?
        data['WithDecryption'] = input[:with_decryption] unless input[:with_decryption].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetPatchBaseline
    class GetPatchBaseline
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.GetPatchBaseline'
        data = {}
        data['BaselineId'] = input[:baseline_id] unless input[:baseline_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetPatchBaselineForPatchGroup
    class GetPatchBaselineForPatchGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.GetPatchBaselineForPatchGroup'
        data = {}
        data['PatchGroup'] = input[:patch_group] unless input[:patch_group].nil?
        data['OperatingSystem'] = input[:operating_system] unless input[:operating_system].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetServiceSetting
    class GetServiceSetting
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.GetServiceSetting'
        data = {}
        data['SettingId'] = input[:setting_id] unless input[:setting_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for LabelParameterVersion
    class LabelParameterVersion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.LabelParameterVersion'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['ParameterVersion'] = input[:parameter_version] unless input[:parameter_version].nil?
        data['Labels'] = Builders::ParameterLabelList.build(input[:labels]) unless input[:labels].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ParameterLabelList
    class ParameterLabelList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ListAssociationVersions
    class ListAssociationVersions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.ListAssociationVersions'
        data = {}
        data['AssociationId'] = input[:association_id] unless input[:association_id].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListAssociations
    class ListAssociations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.ListAssociations'
        data = {}
        data['AssociationFilterList'] = Builders::AssociationFilterList.build(input[:association_filter_list]) unless input[:association_filter_list].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for AssociationFilterList
    class AssociationFilterList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AssociationFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AssociationFilter
    class AssociationFilter
      def self.build(input)
        data = {}
        data['key'] = input[:key] unless input[:key].nil?
        data['value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for ListCommandInvocations
    class ListCommandInvocations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.ListCommandInvocations'
        data = {}
        data['CommandId'] = input[:command_id] unless input[:command_id].nil?
        data['InstanceId'] = input[:instance_id] unless input[:instance_id].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['Filters'] = Builders::CommandFilterList.build(input[:filters]) unless input[:filters].nil?
        data['Details'] = input[:details] unless input[:details].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for CommandFilterList
    class CommandFilterList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::CommandFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for CommandFilter
    class CommandFilter
      def self.build(input)
        data = {}
        data['key'] = input[:key] unless input[:key].nil?
        data['value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for ListCommands
    class ListCommands
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.ListCommands'
        data = {}
        data['CommandId'] = input[:command_id] unless input[:command_id].nil?
        data['InstanceId'] = input[:instance_id] unless input[:instance_id].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['Filters'] = Builders::CommandFilterList.build(input[:filters]) unless input[:filters].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListComplianceItems
    class ListComplianceItems
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.ListComplianceItems'
        data = {}
        data['Filters'] = Builders::ComplianceStringFilterList.build(input[:filters]) unless input[:filters].nil?
        data['ResourceIds'] = Builders::ComplianceResourceIdList.build(input[:resource_ids]) unless input[:resource_ids].nil?
        data['ResourceTypes'] = Builders::ComplianceResourceTypeList.build(input[:resource_types]) unless input[:resource_types].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ComplianceResourceTypeList
    class ComplianceResourceTypeList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for ComplianceResourceIdList
    class ComplianceResourceIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for ComplianceStringFilterList
    class ComplianceStringFilterList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ComplianceStringFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ComplianceStringFilter
    class ComplianceStringFilter
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Values'] = Builders::ComplianceStringFilterValueList.build(input[:values]) unless input[:values].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data
      end
    end

    # List Builder for ComplianceStringFilterValueList
    class ComplianceStringFilterValueList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ListComplianceSummaries
    class ListComplianceSummaries
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.ListComplianceSummaries'
        data = {}
        data['Filters'] = Builders::ComplianceStringFilterList.build(input[:filters]) unless input[:filters].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListDocumentMetadataHistory
    class ListDocumentMetadataHistory
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.ListDocumentMetadataHistory'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['DocumentVersion'] = input[:document_version] unless input[:document_version].nil?
        data['Metadata'] = input[:metadata] unless input[:metadata].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListDocumentVersions
    class ListDocumentVersions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.ListDocumentVersions'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListDocuments
    class ListDocuments
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.ListDocuments'
        data = {}
        data['DocumentFilterList'] = Builders::DocumentFilterList.build(input[:document_filter_list]) unless input[:document_filter_list].nil?
        data['Filters'] = Builders::DocumentKeyValuesFilterList.build(input[:filters]) unless input[:filters].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for DocumentKeyValuesFilterList
    class DocumentKeyValuesFilterList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::DocumentKeyValuesFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for DocumentKeyValuesFilter
    class DocumentKeyValuesFilter
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Values'] = Builders::DocumentKeyValuesFilterValues.build(input[:values]) unless input[:values].nil?
        data
      end
    end

    # List Builder for DocumentKeyValuesFilterValues
    class DocumentKeyValuesFilterValues
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for DocumentFilterList
    class DocumentFilterList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::DocumentFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for DocumentFilter
    class DocumentFilter
      def self.build(input)
        data = {}
        data['key'] = input[:key] unless input[:key].nil?
        data['value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for ListInventoryEntries
    class ListInventoryEntries
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.ListInventoryEntries'
        data = {}
        data['InstanceId'] = input[:instance_id] unless input[:instance_id].nil?
        data['TypeName'] = input[:type_name] unless input[:type_name].nil?
        data['Filters'] = Builders::InventoryFilterList.build(input[:filters]) unless input[:filters].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListOpsItemEvents
    class ListOpsItemEvents
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.ListOpsItemEvents'
        data = {}
        data['Filters'] = Builders::OpsItemEventFilters.build(input[:filters]) unless input[:filters].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for OpsItemEventFilters
    class OpsItemEventFilters
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::OpsItemEventFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for OpsItemEventFilter
    class OpsItemEventFilter
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Values'] = Builders::OpsItemEventFilterValues.build(input[:values]) unless input[:values].nil?
        data['Operator'] = input[:operator] unless input[:operator].nil?
        data
      end
    end

    # List Builder for OpsItemEventFilterValues
    class OpsItemEventFilterValues
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ListOpsItemRelatedItems
    class ListOpsItemRelatedItems
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.ListOpsItemRelatedItems'
        data = {}
        data['OpsItemId'] = input[:ops_item_id] unless input[:ops_item_id].nil?
        data['Filters'] = Builders::OpsItemRelatedItemsFilters.build(input[:filters]) unless input[:filters].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for OpsItemRelatedItemsFilters
    class OpsItemRelatedItemsFilters
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::OpsItemRelatedItemsFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for OpsItemRelatedItemsFilter
    class OpsItemRelatedItemsFilter
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Values'] = Builders::OpsItemRelatedItemsFilterValues.build(input[:values]) unless input[:values].nil?
        data['Operator'] = input[:operator] unless input[:operator].nil?
        data
      end
    end

    # List Builder for OpsItemRelatedItemsFilterValues
    class OpsItemRelatedItemsFilterValues
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ListOpsMetadata
    class ListOpsMetadata
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.ListOpsMetadata'
        data = {}
        data['Filters'] = Builders::OpsMetadataFilterList.build(input[:filters]) unless input[:filters].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for OpsMetadataFilterList
    class OpsMetadataFilterList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::OpsMetadataFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for OpsMetadataFilter
    class OpsMetadataFilter
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Values'] = Builders::OpsMetadataFilterValueList.build(input[:values]) unless input[:values].nil?
        data
      end
    end

    # List Builder for OpsMetadataFilterValueList
    class OpsMetadataFilterValueList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ListResourceComplianceSummaries
    class ListResourceComplianceSummaries
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.ListResourceComplianceSummaries'
        data = {}
        data['Filters'] = Builders::ComplianceStringFilterList.build(input[:filters]) unless input[:filters].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListResourceDataSync
    class ListResourceDataSync
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.ListResourceDataSync'
        data = {}
        data['SyncType'] = input[:sync_type] unless input[:sync_type].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.ListTagsForResource'
        data = {}
        data['ResourceType'] = input[:resource_type] unless input[:resource_type].nil?
        data['ResourceId'] = input[:resource_id] unless input[:resource_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ModifyDocumentPermission
    class ModifyDocumentPermission
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.ModifyDocumentPermission'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['PermissionType'] = input[:permission_type] unless input[:permission_type].nil?
        data['AccountIdsToAdd'] = Builders::AccountIdList.build(input[:account_ids_to_add]) unless input[:account_ids_to_add].nil?
        data['AccountIdsToRemove'] = Builders::AccountIdList.build(input[:account_ids_to_remove]) unless input[:account_ids_to_remove].nil?
        data['SharedDocumentVersion'] = input[:shared_document_version] unless input[:shared_document_version].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for AccountIdList
    class AccountIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for PutComplianceItems
    class PutComplianceItems
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.PutComplianceItems'
        data = {}
        data['ResourceId'] = input[:resource_id] unless input[:resource_id].nil?
        data['ResourceType'] = input[:resource_type] unless input[:resource_type].nil?
        data['ComplianceType'] = input[:compliance_type] unless input[:compliance_type].nil?
        data['ExecutionSummary'] = Builders::ComplianceExecutionSummary.build(input[:execution_summary]) unless input[:execution_summary].nil?
        data['Items'] = Builders::ComplianceItemEntryList.build(input[:items]) unless input[:items].nil?
        data['ItemContentHash'] = input[:item_content_hash] unless input[:item_content_hash].nil?
        data['UploadType'] = input[:upload_type] unless input[:upload_type].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ComplianceItemEntryList
    class ComplianceItemEntryList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ComplianceItemEntry.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ComplianceItemEntry
    class ComplianceItemEntry
      def self.build(input)
        data = {}
        data['Id'] = input[:id] unless input[:id].nil?
        data['Title'] = input[:title] unless input[:title].nil?
        data['Severity'] = input[:severity] unless input[:severity].nil?
        data['Status'] = input[:status] unless input[:status].nil?
        data['Details'] = Builders::ComplianceItemDetails.build(input[:details]) unless input[:details].nil?
        data
      end
    end

    # Map Builder for ComplianceItemDetails
    class ComplianceItemDetails
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for ComplianceExecutionSummary
    class ComplianceExecutionSummary
      def self.build(input)
        data = {}
        data['ExecutionTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:execution_time]).to_i unless input[:execution_time].nil?
        data['ExecutionId'] = input[:execution_id] unless input[:execution_id].nil?
        data['ExecutionType'] = input[:execution_type] unless input[:execution_type].nil?
        data
      end
    end

    # Operation Builder for PutInventory
    class PutInventory
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.PutInventory'
        data = {}
        data['InstanceId'] = input[:instance_id] unless input[:instance_id].nil?
        data['Items'] = Builders::InventoryItemList.build(input[:items]) unless input[:items].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for InventoryItemList
    class InventoryItemList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::InventoryItem.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for InventoryItem
    class InventoryItem
      def self.build(input)
        data = {}
        data['TypeName'] = input[:type_name] unless input[:type_name].nil?
        data['SchemaVersion'] = input[:schema_version] unless input[:schema_version].nil?
        data['CaptureTime'] = input[:capture_time] unless input[:capture_time].nil?
        data['ContentHash'] = input[:content_hash] unless input[:content_hash].nil?
        data['Content'] = Builders::InventoryItemEntryList.build(input[:content]) unless input[:content].nil?
        data['Context'] = Builders::InventoryItemContentContext.build(input[:context]) unless input[:context].nil?
        data
      end
    end

    # Map Builder for InventoryItemContentContext
    class InventoryItemContentContext
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # List Builder for InventoryItemEntryList
    class InventoryItemEntryList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::InventoryItemEntry.build(element) unless element.nil?
        end
        data
      end
    end

    # Map Builder for InventoryItemEntry
    class InventoryItemEntry
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for PutParameter
    class PutParameter
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.PutParameter'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data['KeyId'] = input[:key_id] unless input[:key_id].nil?
        data['Overwrite'] = input[:overwrite] unless input[:overwrite].nil?
        data['AllowedPattern'] = input[:allowed_pattern] unless input[:allowed_pattern].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['Tier'] = input[:tier] unless input[:tier].nil?
        data['Policies'] = input[:policies] unless input[:policies].nil?
        data['DataType'] = input[:data_type] unless input[:data_type].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RegisterDefaultPatchBaseline
    class RegisterDefaultPatchBaseline
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.RegisterDefaultPatchBaseline'
        data = {}
        data['BaselineId'] = input[:baseline_id] unless input[:baseline_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RegisterPatchBaselineForPatchGroup
    class RegisterPatchBaselineForPatchGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.RegisterPatchBaselineForPatchGroup'
        data = {}
        data['BaselineId'] = input[:baseline_id] unless input[:baseline_id].nil?
        data['PatchGroup'] = input[:patch_group] unless input[:patch_group].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RegisterTargetWithMaintenanceWindow
    class RegisterTargetWithMaintenanceWindow
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.RegisterTargetWithMaintenanceWindow'
        data = {}
        data['WindowId'] = input[:window_id] unless input[:window_id].nil?
        data['ResourceType'] = input[:resource_type] unless input[:resource_type].nil?
        data['Targets'] = Builders::Targets.build(input[:targets]) unless input[:targets].nil?
        data['OwnerInformation'] = input[:owner_information] unless input[:owner_information].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RegisterTaskWithMaintenanceWindow
    class RegisterTaskWithMaintenanceWindow
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.RegisterTaskWithMaintenanceWindow'
        data = {}
        data['WindowId'] = input[:window_id] unless input[:window_id].nil?
        data['Targets'] = Builders::Targets.build(input[:targets]) unless input[:targets].nil?
        data['TaskArn'] = input[:task_arn] unless input[:task_arn].nil?
        data['ServiceRoleArn'] = input[:service_role_arn] unless input[:service_role_arn].nil?
        data['TaskType'] = input[:task_type] unless input[:task_type].nil?
        data['TaskParameters'] = Builders::MaintenanceWindowTaskParameters.build(input[:task_parameters]) unless input[:task_parameters].nil?
        data['TaskInvocationParameters'] = Builders::MaintenanceWindowTaskInvocationParameters.build(input[:task_invocation_parameters]) unless input[:task_invocation_parameters].nil?
        data['Priority'] = input[:priority] unless input[:priority].nil?
        data['MaxConcurrency'] = input[:max_concurrency] unless input[:max_concurrency].nil?
        data['MaxErrors'] = input[:max_errors] unless input[:max_errors].nil?
        data['LoggingInfo'] = Builders::LoggingInfo.build(input[:logging_info]) unless input[:logging_info].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        data['CutoffBehavior'] = input[:cutoff_behavior] unless input[:cutoff_behavior].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for LoggingInfo
    class LoggingInfo
      def self.build(input)
        data = {}
        data['S3BucketName'] = input[:s3_bucket_name] unless input[:s3_bucket_name].nil?
        data['S3KeyPrefix'] = input[:s3_key_prefix] unless input[:s3_key_prefix].nil?
        data['S3Region'] = input[:s3_region] unless input[:s3_region].nil?
        data
      end
    end

    # Structure Builder for MaintenanceWindowTaskInvocationParameters
    class MaintenanceWindowTaskInvocationParameters
      def self.build(input)
        data = {}
        data['RunCommand'] = Builders::MaintenanceWindowRunCommandParameters.build(input[:run_command]) unless input[:run_command].nil?
        data['Automation'] = Builders::MaintenanceWindowAutomationParameters.build(input[:automation]) unless input[:automation].nil?
        data['StepFunctions'] = Builders::MaintenanceWindowStepFunctionsParameters.build(input[:step_functions]) unless input[:step_functions].nil?
        data['Lambda'] = Builders::MaintenanceWindowLambdaParameters.build(input[:lambda]) unless input[:lambda].nil?
        data
      end
    end

    # Structure Builder for MaintenanceWindowLambdaParameters
    class MaintenanceWindowLambdaParameters
      def self.build(input)
        data = {}
        data['ClientContext'] = input[:client_context] unless input[:client_context].nil?
        data['Qualifier'] = input[:qualifier] unless input[:qualifier].nil?
        data['Payload'] = Base64::encode64(input[:payload]).strip unless input[:payload].nil?
        data
      end
    end

    # Structure Builder for MaintenanceWindowStepFunctionsParameters
    class MaintenanceWindowStepFunctionsParameters
      def self.build(input)
        data = {}
        data['Input'] = input[:input] unless input[:input].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data
      end
    end

    # Structure Builder for MaintenanceWindowAutomationParameters
    class MaintenanceWindowAutomationParameters
      def self.build(input)
        data = {}
        data['DocumentVersion'] = input[:document_version] unless input[:document_version].nil?
        data['Parameters'] = Builders::AutomationParameterMap.build(input[:parameters]) unless input[:parameters].nil?
        data
      end
    end

    # Map Builder for AutomationParameterMap
    class AutomationParameterMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::AutomationParameterValueList.build(value) unless value.nil?
        end
        data
      end
    end

    # List Builder for AutomationParameterValueList
    class AutomationParameterValueList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for MaintenanceWindowRunCommandParameters
    class MaintenanceWindowRunCommandParameters
      def self.build(input)
        data = {}
        data['Comment'] = input[:comment] unless input[:comment].nil?
        data['CloudWatchOutputConfig'] = Builders::CloudWatchOutputConfig.build(input[:cloud_watch_output_config]) unless input[:cloud_watch_output_config].nil?
        data['DocumentHash'] = input[:document_hash] unless input[:document_hash].nil?
        data['DocumentHashType'] = input[:document_hash_type] unless input[:document_hash_type].nil?
        data['DocumentVersion'] = input[:document_version] unless input[:document_version].nil?
        data['NotificationConfig'] = Builders::NotificationConfig.build(input[:notification_config]) unless input[:notification_config].nil?
        data['OutputS3BucketName'] = input[:output_s3_bucket_name] unless input[:output_s3_bucket_name].nil?
        data['OutputS3KeyPrefix'] = input[:output_s3_key_prefix] unless input[:output_s3_key_prefix].nil?
        data['Parameters'] = Builders::Parameters.build(input[:parameters]) unless input[:parameters].nil?
        data['ServiceRoleArn'] = input[:service_role_arn] unless input[:service_role_arn].nil?
        data['TimeoutSeconds'] = input[:timeout_seconds] unless input[:timeout_seconds].nil?
        data
      end
    end

    # Structure Builder for NotificationConfig
    class NotificationConfig
      def self.build(input)
        data = {}
        data['NotificationArn'] = input[:notification_arn] unless input[:notification_arn].nil?
        data['NotificationEvents'] = Builders::NotificationEventList.build(input[:notification_events]) unless input[:notification_events].nil?
        data['NotificationType'] = input[:notification_type] unless input[:notification_type].nil?
        data
      end
    end

    # List Builder for NotificationEventList
    class NotificationEventList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for CloudWatchOutputConfig
    class CloudWatchOutputConfig
      def self.build(input)
        data = {}
        data['CloudWatchLogGroupName'] = input[:cloud_watch_log_group_name] unless input[:cloud_watch_log_group_name].nil?
        data['CloudWatchOutputEnabled'] = input[:cloud_watch_output_enabled] unless input[:cloud_watch_output_enabled].nil?
        data
      end
    end

    # Map Builder for MaintenanceWindowTaskParameters
    class MaintenanceWindowTaskParameters
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::MaintenanceWindowTaskParameterValueExpression.build(value) unless value.nil?
        end
        data
      end
    end

    # Structure Builder for MaintenanceWindowTaskParameterValueExpression
    class MaintenanceWindowTaskParameterValueExpression
      def self.build(input)
        data = {}
        data['Values'] = Builders::MaintenanceWindowTaskParameterValueList.build(input[:values]) unless input[:values].nil?
        data
      end
    end

    # List Builder for MaintenanceWindowTaskParameterValueList
    class MaintenanceWindowTaskParameterValueList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for RemoveTagsFromResource
    class RemoveTagsFromResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.RemoveTagsFromResource'
        data = {}
        data['ResourceType'] = input[:resource_type] unless input[:resource_type].nil?
        data['ResourceId'] = input[:resource_id] unless input[:resource_id].nil?
        data['TagKeys'] = Builders::KeyList.build(input[:tag_keys]) unless input[:tag_keys].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for KeyList
    class KeyList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ResetServiceSetting
    class ResetServiceSetting
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.ResetServiceSetting'
        data = {}
        data['SettingId'] = input[:setting_id] unless input[:setting_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ResumeSession
    class ResumeSession
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.ResumeSession'
        data = {}
        data['SessionId'] = input[:session_id] unless input[:session_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for SendAutomationSignal
    class SendAutomationSignal
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.SendAutomationSignal'
        data = {}
        data['AutomationExecutionId'] = input[:automation_execution_id] unless input[:automation_execution_id].nil?
        data['SignalType'] = input[:signal_type] unless input[:signal_type].nil?
        data['Payload'] = Builders::AutomationParameterMap.build(input[:payload]) unless input[:payload].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for SendCommand
    class SendCommand
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.SendCommand'
        data = {}
        data['InstanceIds'] = Builders::InstanceIdList.build(input[:instance_ids]) unless input[:instance_ids].nil?
        data['Targets'] = Builders::Targets.build(input[:targets]) unless input[:targets].nil?
        data['DocumentName'] = input[:document_name] unless input[:document_name].nil?
        data['DocumentVersion'] = input[:document_version] unless input[:document_version].nil?
        data['DocumentHash'] = input[:document_hash] unless input[:document_hash].nil?
        data['DocumentHashType'] = input[:document_hash_type] unless input[:document_hash_type].nil?
        data['TimeoutSeconds'] = input[:timeout_seconds] unless input[:timeout_seconds].nil?
        data['Comment'] = input[:comment] unless input[:comment].nil?
        data['Parameters'] = Builders::Parameters.build(input[:parameters]) unless input[:parameters].nil?
        data['OutputS3Region'] = input[:output_s3_region] unless input[:output_s3_region].nil?
        data['OutputS3BucketName'] = input[:output_s3_bucket_name] unless input[:output_s3_bucket_name].nil?
        data['OutputS3KeyPrefix'] = input[:output_s3_key_prefix] unless input[:output_s3_key_prefix].nil?
        data['MaxConcurrency'] = input[:max_concurrency] unless input[:max_concurrency].nil?
        data['MaxErrors'] = input[:max_errors] unless input[:max_errors].nil?
        data['ServiceRoleArn'] = input[:service_role_arn] unless input[:service_role_arn].nil?
        data['NotificationConfig'] = Builders::NotificationConfig.build(input[:notification_config]) unless input[:notification_config].nil?
        data['CloudWatchOutputConfig'] = Builders::CloudWatchOutputConfig.build(input[:cloud_watch_output_config]) unless input[:cloud_watch_output_config].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartAssociationsOnce
    class StartAssociationsOnce
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.StartAssociationsOnce'
        data = {}
        data['AssociationIds'] = Builders::AssociationIdList.build(input[:association_ids]) unless input[:association_ids].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for AssociationIdList
    class AssociationIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for StartAutomationExecution
    class StartAutomationExecution
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.StartAutomationExecution'
        data = {}
        data['DocumentName'] = input[:document_name] unless input[:document_name].nil?
        data['DocumentVersion'] = input[:document_version] unless input[:document_version].nil?
        data['Parameters'] = Builders::AutomationParameterMap.build(input[:parameters]) unless input[:parameters].nil?
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        data['Mode'] = input[:mode] unless input[:mode].nil?
        data['TargetParameterName'] = input[:target_parameter_name] unless input[:target_parameter_name].nil?
        data['Targets'] = Builders::Targets.build(input[:targets]) unless input[:targets].nil?
        data['TargetMaps'] = Builders::TargetMaps.build(input[:target_maps]) unless input[:target_maps].nil?
        data['MaxConcurrency'] = input[:max_concurrency] unless input[:max_concurrency].nil?
        data['MaxErrors'] = input[:max_errors] unless input[:max_errors].nil?
        data['TargetLocations'] = Builders::TargetLocations.build(input[:target_locations]) unless input[:target_locations].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartChangeRequestExecution
    class StartChangeRequestExecution
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.StartChangeRequestExecution'
        data = {}
        data['ScheduledTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:scheduled_time]).to_i unless input[:scheduled_time].nil?
        data['DocumentName'] = input[:document_name] unless input[:document_name].nil?
        data['DocumentVersion'] = input[:document_version] unless input[:document_version].nil?
        data['Parameters'] = Builders::AutomationParameterMap.build(input[:parameters]) unless input[:parameters].nil?
        data['ChangeRequestName'] = input[:change_request_name] unless input[:change_request_name].nil?
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        data['AutoApprove'] = input[:auto_approve] unless input[:auto_approve].nil?
        data['Runbooks'] = Builders::Runbooks.build(input[:runbooks]) unless input[:runbooks].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['ScheduledEndTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:scheduled_end_time]).to_i unless input[:scheduled_end_time].nil?
        data['ChangeDetails'] = input[:change_details] unless input[:change_details].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for Runbooks
    class Runbooks
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Runbook.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Runbook
    class Runbook
      def self.build(input)
        data = {}
        data['DocumentName'] = input[:document_name] unless input[:document_name].nil?
        data['DocumentVersion'] = input[:document_version] unless input[:document_version].nil?
        data['Parameters'] = Builders::AutomationParameterMap.build(input[:parameters]) unless input[:parameters].nil?
        data['TargetParameterName'] = input[:target_parameter_name] unless input[:target_parameter_name].nil?
        data['Targets'] = Builders::Targets.build(input[:targets]) unless input[:targets].nil?
        data['TargetMaps'] = Builders::TargetMaps.build(input[:target_maps]) unless input[:target_maps].nil?
        data['MaxConcurrency'] = input[:max_concurrency] unless input[:max_concurrency].nil?
        data['MaxErrors'] = input[:max_errors] unless input[:max_errors].nil?
        data['TargetLocations'] = Builders::TargetLocations.build(input[:target_locations]) unless input[:target_locations].nil?
        data
      end
    end

    # Operation Builder for StartSession
    class StartSession
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.StartSession'
        data = {}
        data['Target'] = input[:target] unless input[:target].nil?
        data['DocumentName'] = input[:document_name] unless input[:document_name].nil?
        data['Reason'] = input[:reason] unless input[:reason].nil?
        data['Parameters'] = Builders::SessionManagerParameters.build(input[:parameters]) unless input[:parameters].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for SessionManagerParameters
    class SessionManagerParameters
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::SessionManagerParameterValueList.build(value) unless value.nil?
        end
        data
      end
    end

    # List Builder for SessionManagerParameterValueList
    class SessionManagerParameterValueList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for StopAutomationExecution
    class StopAutomationExecution
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.StopAutomationExecution'
        data = {}
        data['AutomationExecutionId'] = input[:automation_execution_id] unless input[:automation_execution_id].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TerminateSession
    class TerminateSession
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.TerminateSession'
        data = {}
        data['SessionId'] = input[:session_id] unless input[:session_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UnlabelParameterVersion
    class UnlabelParameterVersion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.UnlabelParameterVersion'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['ParameterVersion'] = input[:parameter_version] unless input[:parameter_version].nil?
        data['Labels'] = Builders::ParameterLabelList.build(input[:labels]) unless input[:labels].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateAssociation
    class UpdateAssociation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.UpdateAssociation'
        data = {}
        data['AssociationId'] = input[:association_id] unless input[:association_id].nil?
        data['Parameters'] = Builders::Parameters.build(input[:parameters]) unless input[:parameters].nil?
        data['DocumentVersion'] = input[:document_version] unless input[:document_version].nil?
        data['ScheduleExpression'] = input[:schedule_expression] unless input[:schedule_expression].nil?
        data['OutputLocation'] = Builders::InstanceAssociationOutputLocation.build(input[:output_location]) unless input[:output_location].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['Targets'] = Builders::Targets.build(input[:targets]) unless input[:targets].nil?
        data['AssociationName'] = input[:association_name] unless input[:association_name].nil?
        data['AssociationVersion'] = input[:association_version] unless input[:association_version].nil?
        data['AutomationTargetParameterName'] = input[:automation_target_parameter_name] unless input[:automation_target_parameter_name].nil?
        data['MaxErrors'] = input[:max_errors] unless input[:max_errors].nil?
        data['MaxConcurrency'] = input[:max_concurrency] unless input[:max_concurrency].nil?
        data['ComplianceSeverity'] = input[:compliance_severity] unless input[:compliance_severity].nil?
        data['SyncCompliance'] = input[:sync_compliance] unless input[:sync_compliance].nil?
        data['ApplyOnlyAtCronInterval'] = input[:apply_only_at_cron_interval] unless input[:apply_only_at_cron_interval].nil?
        data['CalendarNames'] = Builders::CalendarNameOrARNList.build(input[:calendar_names]) unless input[:calendar_names].nil?
        data['TargetLocations'] = Builders::TargetLocations.build(input[:target_locations]) unless input[:target_locations].nil?
        data['ScheduleOffset'] = input[:schedule_offset] unless input[:schedule_offset].nil?
        data['TargetMaps'] = Builders::TargetMaps.build(input[:target_maps]) unless input[:target_maps].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateAssociationStatus
    class UpdateAssociationStatus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.UpdateAssociationStatus'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['InstanceId'] = input[:instance_id] unless input[:instance_id].nil?
        data['AssociationStatus'] = Builders::AssociationStatus.build(input[:association_status]) unless input[:association_status].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for AssociationStatus
    class AssociationStatus
      def self.build(input)
        data = {}
        data['Date'] = Hearth::TimeHelper.to_epoch_seconds(input[:date]).to_i unless input[:date].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['Message'] = input[:message] unless input[:message].nil?
        data['AdditionalInfo'] = input[:additional_info] unless input[:additional_info].nil?
        data
      end
    end

    # Operation Builder for UpdateDocument
    class UpdateDocument
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.UpdateDocument'
        data = {}
        data['Content'] = input[:content] unless input[:content].nil?
        data['Attachments'] = Builders::AttachmentsSourceList.build(input[:attachments]) unless input[:attachments].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['DisplayName'] = input[:display_name] unless input[:display_name].nil?
        data['VersionName'] = input[:version_name] unless input[:version_name].nil?
        data['DocumentVersion'] = input[:document_version] unless input[:document_version].nil?
        data['DocumentFormat'] = input[:document_format] unless input[:document_format].nil?
        data['TargetType'] = input[:target_type] unless input[:target_type].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateDocumentDefaultVersion
    class UpdateDocumentDefaultVersion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.UpdateDocumentDefaultVersion'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['DocumentVersion'] = input[:document_version] unless input[:document_version].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateDocumentMetadata
    class UpdateDocumentMetadata
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.UpdateDocumentMetadata'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['DocumentVersion'] = input[:document_version] unless input[:document_version].nil?
        data['DocumentReviews'] = Builders::DocumentReviews.build(input[:document_reviews]) unless input[:document_reviews].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for DocumentReviews
    class DocumentReviews
      def self.build(input)
        data = {}
        data['Action'] = input[:action] unless input[:action].nil?
        data['Comment'] = Builders::DocumentReviewCommentList.build(input[:comment]) unless input[:comment].nil?
        data
      end
    end

    # List Builder for DocumentReviewCommentList
    class DocumentReviewCommentList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::DocumentReviewCommentSource.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for DocumentReviewCommentSource
    class DocumentReviewCommentSource
      def self.build(input)
        data = {}
        data['Type'] = input[:type] unless input[:type].nil?
        data['Content'] = input[:content] unless input[:content].nil?
        data
      end
    end

    # Operation Builder for UpdateMaintenanceWindow
    class UpdateMaintenanceWindow
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.UpdateMaintenanceWindow'
        data = {}
        data['WindowId'] = input[:window_id] unless input[:window_id].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['StartDate'] = input[:start_date] unless input[:start_date].nil?
        data['EndDate'] = input[:end_date] unless input[:end_date].nil?
        data['Schedule'] = input[:schedule] unless input[:schedule].nil?
        data['ScheduleTimezone'] = input[:schedule_timezone] unless input[:schedule_timezone].nil?
        data['ScheduleOffset'] = input[:schedule_offset] unless input[:schedule_offset].nil?
        data['Duration'] = input[:duration] unless input[:duration].nil?
        data['Cutoff'] = input[:cutoff] unless input[:cutoff].nil?
        data['AllowUnassociatedTargets'] = input[:allow_unassociated_targets] unless input[:allow_unassociated_targets].nil?
        data['Enabled'] = input[:enabled] unless input[:enabled].nil?
        data['Replace'] = input[:replace] unless input[:replace].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateMaintenanceWindowTarget
    class UpdateMaintenanceWindowTarget
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.UpdateMaintenanceWindowTarget'
        data = {}
        data['WindowId'] = input[:window_id] unless input[:window_id].nil?
        data['WindowTargetId'] = input[:window_target_id] unless input[:window_target_id].nil?
        data['Targets'] = Builders::Targets.build(input[:targets]) unless input[:targets].nil?
        data['OwnerInformation'] = input[:owner_information] unless input[:owner_information].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Replace'] = input[:replace] unless input[:replace].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateMaintenanceWindowTask
    class UpdateMaintenanceWindowTask
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.UpdateMaintenanceWindowTask'
        data = {}
        data['WindowId'] = input[:window_id] unless input[:window_id].nil?
        data['WindowTaskId'] = input[:window_task_id] unless input[:window_task_id].nil?
        data['Targets'] = Builders::Targets.build(input[:targets]) unless input[:targets].nil?
        data['TaskArn'] = input[:task_arn] unless input[:task_arn].nil?
        data['ServiceRoleArn'] = input[:service_role_arn] unless input[:service_role_arn].nil?
        data['TaskParameters'] = Builders::MaintenanceWindowTaskParameters.build(input[:task_parameters]) unless input[:task_parameters].nil?
        data['TaskInvocationParameters'] = Builders::MaintenanceWindowTaskInvocationParameters.build(input[:task_invocation_parameters]) unless input[:task_invocation_parameters].nil?
        data['Priority'] = input[:priority] unless input[:priority].nil?
        data['MaxConcurrency'] = input[:max_concurrency] unless input[:max_concurrency].nil?
        data['MaxErrors'] = input[:max_errors] unless input[:max_errors].nil?
        data['LoggingInfo'] = Builders::LoggingInfo.build(input[:logging_info]) unless input[:logging_info].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Replace'] = input[:replace] unless input[:replace].nil?
        data['CutoffBehavior'] = input[:cutoff_behavior] unless input[:cutoff_behavior].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateManagedInstanceRole
    class UpdateManagedInstanceRole
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.UpdateManagedInstanceRole'
        data = {}
        data['InstanceId'] = input[:instance_id] unless input[:instance_id].nil?
        data['IamRole'] = input[:iam_role] unless input[:iam_role].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateOpsItem
    class UpdateOpsItem
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.UpdateOpsItem'
        data = {}
        data['Description'] = input[:description] unless input[:description].nil?
        data['OperationalData'] = Builders::OpsItemOperationalData.build(input[:operational_data]) unless input[:operational_data].nil?
        data['OperationalDataToDelete'] = Builders::OpsItemOpsDataKeysList.build(input[:operational_data_to_delete]) unless input[:operational_data_to_delete].nil?
        data['Notifications'] = Builders::OpsItemNotifications.build(input[:notifications]) unless input[:notifications].nil?
        data['Priority'] = input[:priority] unless input[:priority].nil?
        data['RelatedOpsItems'] = Builders::RelatedOpsItems.build(input[:related_ops_items]) unless input[:related_ops_items].nil?
        data['Status'] = input[:status] unless input[:status].nil?
        data['OpsItemId'] = input[:ops_item_id] unless input[:ops_item_id].nil?
        data['Title'] = input[:title] unless input[:title].nil?
        data['Category'] = input[:category] unless input[:category].nil?
        data['Severity'] = input[:severity] unless input[:severity].nil?
        data['ActualStartTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:actual_start_time]).to_i unless input[:actual_start_time].nil?
        data['ActualEndTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:actual_end_time]).to_i unless input[:actual_end_time].nil?
        data['PlannedStartTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:planned_start_time]).to_i unless input[:planned_start_time].nil?
        data['PlannedEndTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:planned_end_time]).to_i unless input[:planned_end_time].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for OpsItemOpsDataKeysList
    class OpsItemOpsDataKeysList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateOpsMetadata
    class UpdateOpsMetadata
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.UpdateOpsMetadata'
        data = {}
        data['OpsMetadataArn'] = input[:ops_metadata_arn] unless input[:ops_metadata_arn].nil?
        data['MetadataToUpdate'] = Builders::MetadataMap.build(input[:metadata_to_update]) unless input[:metadata_to_update].nil?
        data['KeysToDelete'] = Builders::MetadataKeysToDeleteList.build(input[:keys_to_delete]) unless input[:keys_to_delete].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for MetadataKeysToDeleteList
    class MetadataKeysToDeleteList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdatePatchBaseline
    class UpdatePatchBaseline
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.UpdatePatchBaseline'
        data = {}
        data['BaselineId'] = input[:baseline_id] unless input[:baseline_id].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['GlobalFilters'] = Builders::PatchFilterGroup.build(input[:global_filters]) unless input[:global_filters].nil?
        data['ApprovalRules'] = Builders::PatchRuleGroup.build(input[:approval_rules]) unless input[:approval_rules].nil?
        data['ApprovedPatches'] = Builders::PatchIdList.build(input[:approved_patches]) unless input[:approved_patches].nil?
        data['ApprovedPatchesComplianceLevel'] = input[:approved_patches_compliance_level] unless input[:approved_patches_compliance_level].nil?
        data['ApprovedPatchesEnableNonSecurity'] = input[:approved_patches_enable_non_security] unless input[:approved_patches_enable_non_security].nil?
        data['RejectedPatches'] = Builders::PatchIdList.build(input[:rejected_patches]) unless input[:rejected_patches].nil?
        data['RejectedPatchesAction'] = input[:rejected_patches_action] unless input[:rejected_patches_action].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Sources'] = Builders::PatchSourceList.build(input[:sources]) unless input[:sources].nil?
        data['Replace'] = input[:replace] unless input[:replace].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateResourceDataSync
    class UpdateResourceDataSync
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.UpdateResourceDataSync'
        data = {}
        data['SyncName'] = input[:sync_name] unless input[:sync_name].nil?
        data['SyncType'] = input[:sync_type] unless input[:sync_type].nil?
        data['SyncSource'] = Builders::ResourceDataSyncSource.build(input[:sync_source]) unless input[:sync_source].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateServiceSetting
    class UpdateServiceSetting
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonSSM.UpdateServiceSetting'
        data = {}
        data['SettingId'] = input[:setting_id] unless input[:setting_id].nil?
        data['SettingValue'] = input[:setting_value] unless input[:setting_value].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
