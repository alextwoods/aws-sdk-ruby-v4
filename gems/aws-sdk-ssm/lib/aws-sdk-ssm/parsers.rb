# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::SSM
  module Parsers

    # Operation Parser for AddTagsToResource
    class AddTagsToResource
      def self.parse(http_resp)
        data = Types::AddTagsToResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for TooManyUpdates
    class TooManyUpdates
      def self.parse(http_resp)
        data = Types::TooManyUpdates.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidResourceId
    class InvalidResourceId
      def self.parse(http_resp)
        data = Types::InvalidResourceId.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for InternalServerError
    class InternalServerError
      def self.parse(http_resp)
        data = Types::InternalServerError.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for TooManyTagsError
    class TooManyTagsError
      def self.parse(http_resp)
        data = Types::TooManyTagsError.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for InvalidResourceType
    class InvalidResourceType
      def self.parse(http_resp)
        data = Types::InvalidResourceType.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for AssociateOpsItemRelatedItem
    class AssociateOpsItemRelatedItem
      def self.parse(http_resp)
        data = Types::AssociateOpsItemRelatedItemOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.association_id = map['AssociationId']
        data
      end
    end

    # Error Parser for OpsItemNotFoundException
    class OpsItemNotFoundException
      def self.parse(http_resp)
        data = Types::OpsItemNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for OpsItemRelatedItemAlreadyExistsException
    class OpsItemRelatedItemAlreadyExistsException
      def self.parse(http_resp)
        data = Types::OpsItemRelatedItemAlreadyExistsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.resource_uri = map['ResourceUri']
        data.ops_item_id = map['OpsItemId']
        data
      end
    end

    # Error Parser for OpsItemLimitExceededException
    class OpsItemLimitExceededException
      def self.parse(http_resp)
        data = Types::OpsItemLimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.resource_types = (OpsItemParameterNamesList.parse(map['ResourceTypes']) unless map['ResourceTypes'].nil?)
        data.limit = map['Limit']
        data.limit_type = map['LimitType']
        data.message = map['Message']
        data
      end
    end

    class OpsItemParameterNamesList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Error Parser for OpsItemInvalidParameterException
    class OpsItemInvalidParameterException
      def self.parse(http_resp)
        data = Types::OpsItemInvalidParameterException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.parameter_names = (OpsItemParameterNamesList.parse(map['ParameterNames']) unless map['ParameterNames'].nil?)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CancelCommand
    class CancelCommand
      def self.parse(http_resp)
        data = Types::CancelCommandOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for InvalidInstanceId
    class InvalidInstanceId
      def self.parse(http_resp)
        data = Types::InvalidInstanceId.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidCommandId
    class InvalidCommandId
      def self.parse(http_resp)
        data = Types::InvalidCommandId.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for DuplicateInstanceId
    class DuplicateInstanceId
      def self.parse(http_resp)
        data = Types::DuplicateInstanceId.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for CancelMaintenanceWindowExecution
    class CancelMaintenanceWindowExecution
      def self.parse(http_resp)
        data = Types::CancelMaintenanceWindowExecutionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.window_execution_id = map['WindowExecutionId']
        data
      end
    end

    # Error Parser for DoesNotExistException
    class DoesNotExistException
      def self.parse(http_resp)
        data = Types::DoesNotExistException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateActivation
    class CreateActivation
      def self.parse(http_resp)
        data = Types::CreateActivationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.activation_id = map['ActivationId']
        data.activation_code = map['ActivationCode']
        data
      end
    end

    # Error Parser for InvalidParameters
    class InvalidParameters
      def self.parse(http_resp)
        data = Types::InvalidParameters.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateAssociation
    class CreateAssociation
      def self.parse(http_resp)
        data = Types::CreateAssociationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.association_description = (AssociationDescription.parse(map['AssociationDescription']) unless map['AssociationDescription'].nil?)
        data
      end
    end

    class AssociationDescription
      def self.parse(map)
        data = Types::AssociationDescription.new
        data.name = map['Name']
        data.instance_id = map['InstanceId']
        data.association_version = map['AssociationVersion']
        data.date = Time.at(map['Date'].to_i) if map['Date']
        data.last_update_association_date = Time.at(map['LastUpdateAssociationDate'].to_i) if map['LastUpdateAssociationDate']
        data.status = (AssociationStatus.parse(map['Status']) unless map['Status'].nil?)
        data.overview = (AssociationOverview.parse(map['Overview']) unless map['Overview'].nil?)
        data.document_version = map['DocumentVersion']
        data.automation_target_parameter_name = map['AutomationTargetParameterName']
        data.parameters = (Parameters.parse(map['Parameters']) unless map['Parameters'].nil?)
        data.association_id = map['AssociationId']
        data.targets = (Targets.parse(map['Targets']) unless map['Targets'].nil?)
        data.schedule_expression = map['ScheduleExpression']
        data.output_location = (InstanceAssociationOutputLocation.parse(map['OutputLocation']) unless map['OutputLocation'].nil?)
        data.last_execution_date = Time.at(map['LastExecutionDate'].to_i) if map['LastExecutionDate']
        data.last_successful_execution_date = Time.at(map['LastSuccessfulExecutionDate'].to_i) if map['LastSuccessfulExecutionDate']
        data.association_name = map['AssociationName']
        data.max_errors = map['MaxErrors']
        data.max_concurrency = map['MaxConcurrency']
        data.compliance_severity = map['ComplianceSeverity']
        data.sync_compliance = map['SyncCompliance']
        data.apply_only_at_cron_interval = map['ApplyOnlyAtCronInterval']
        data.calendar_names = (CalendarNameOrARNList.parse(map['CalendarNames']) unless map['CalendarNames'].nil?)
        data.target_locations = (TargetLocations.parse(map['TargetLocations']) unless map['TargetLocations'].nil?)
        data.schedule_offset = map['ScheduleOffset']
        data.target_maps = (TargetMaps.parse(map['TargetMaps']) unless map['TargetMaps'].nil?)
        return data
      end
    end

    class TargetMaps
      def self.parse(list)
        list.map do |value|
          TargetMap.parse(value) unless value.nil?
        end
      end
    end

    class TargetMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = TargetMapValueList.parse(value) unless value.nil?
        end
        data
      end
    end

    class TargetMapValueList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class TargetLocations
      def self.parse(list)
        list.map do |value|
          TargetLocation.parse(value) unless value.nil?
        end
      end
    end

    class TargetLocation
      def self.parse(map)
        data = Types::TargetLocation.new
        data.accounts = (Accounts.parse(map['Accounts']) unless map['Accounts'].nil?)
        data.regions = (Regions.parse(map['Regions']) unless map['Regions'].nil?)
        data.target_location_max_concurrency = map['TargetLocationMaxConcurrency']
        data.target_location_max_errors = map['TargetLocationMaxErrors']
        data.execution_role_name = map['ExecutionRoleName']
        return data
      end
    end

    class Regions
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class Accounts
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class CalendarNameOrARNList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class InstanceAssociationOutputLocation
      def self.parse(map)
        data = Types::InstanceAssociationOutputLocation.new
        data.s3_location = (S3OutputLocation.parse(map['S3Location']) unless map['S3Location'].nil?)
        return data
      end
    end

    class S3OutputLocation
      def self.parse(map)
        data = Types::S3OutputLocation.new
        data.output_s3_region = map['OutputS3Region']
        data.output_s3_bucket_name = map['OutputS3BucketName']
        data.output_s3_key_prefix = map['OutputS3KeyPrefix']
        return data
      end
    end

    class Targets
      def self.parse(list)
        list.map do |value|
          Target.parse(value) unless value.nil?
        end
      end
    end

    class Target
      def self.parse(map)
        data = Types::Target.new
        data.key = map['Key']
        data.values = (TargetValues.parse(map['Values']) unless map['Values'].nil?)
        return data
      end
    end

    class TargetValues
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class Parameters
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = ParameterValueList.parse(value) unless value.nil?
        end
        data
      end
    end

    class ParameterValueList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class AssociationOverview
      def self.parse(map)
        data = Types::AssociationOverview.new
        data.status = map['Status']
        data.detailed_status = map['DetailedStatus']
        data.association_status_aggregated_count = (AssociationStatusAggregatedCount.parse(map['AssociationStatusAggregatedCount']) unless map['AssociationStatusAggregatedCount'].nil?)
        return data
      end
    end

    class AssociationStatusAggregatedCount
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class AssociationStatus
      def self.parse(map)
        data = Types::AssociationStatus.new
        data.date = Time.at(map['Date'].to_i) if map['Date']
        data.name = map['Name']
        data.message = map['Message']
        data.additional_info = map['AdditionalInfo']
        return data
      end
    end

    # Error Parser for InvalidTarget
    class InvalidTarget
      def self.parse(http_resp)
        data = Types::InvalidTarget.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for UnsupportedPlatformType
    class UnsupportedPlatformType
      def self.parse(http_resp)
        data = Types::UnsupportedPlatformType.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for AssociationLimitExceeded
    class AssociationLimitExceeded
      def self.parse(http_resp)
        data = Types::AssociationLimitExceeded.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for InvalidSchedule
    class InvalidSchedule
      def self.parse(http_resp)
        data = Types::InvalidSchedule.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidDocumentVersion
    class InvalidDocumentVersion
      def self.parse(http_resp)
        data = Types::InvalidDocumentVersion.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidTargetMaps
    class InvalidTargetMaps
      def self.parse(http_resp)
        data = Types::InvalidTargetMaps.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidDocument
    class InvalidDocument
      def self.parse(http_resp)
        data = Types::InvalidDocument.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for AssociationAlreadyExists
    class AssociationAlreadyExists
      def self.parse(http_resp)
        data = Types::AssociationAlreadyExists.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for InvalidOutputLocation
    class InvalidOutputLocation
      def self.parse(http_resp)
        data = Types::InvalidOutputLocation.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for CreateAssociationBatch
    class CreateAssociationBatch
      def self.parse(http_resp)
        data = Types::CreateAssociationBatchOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.successful = (AssociationDescriptionList.parse(map['Successful']) unless map['Successful'].nil?)
        data.failed = (FailedCreateAssociationList.parse(map['Failed']) unless map['Failed'].nil?)
        data
      end
    end

    class FailedCreateAssociationList
      def self.parse(list)
        list.map do |value|
          FailedCreateAssociation.parse(value) unless value.nil?
        end
      end
    end

    class FailedCreateAssociation
      def self.parse(map)
        data = Types::FailedCreateAssociation.new
        data.entry = (CreateAssociationBatchRequestEntry.parse(map['Entry']) unless map['Entry'].nil?)
        data.message = map['Message']
        data.fault = map['Fault']
        return data
      end
    end

    class CreateAssociationBatchRequestEntry
      def self.parse(map)
        data = Types::CreateAssociationBatchRequestEntry.new
        data.name = map['Name']
        data.instance_id = map['InstanceId']
        data.parameters = (Parameters.parse(map['Parameters']) unless map['Parameters'].nil?)
        data.automation_target_parameter_name = map['AutomationTargetParameterName']
        data.document_version = map['DocumentVersion']
        data.targets = (Targets.parse(map['Targets']) unless map['Targets'].nil?)
        data.schedule_expression = map['ScheduleExpression']
        data.output_location = (InstanceAssociationOutputLocation.parse(map['OutputLocation']) unless map['OutputLocation'].nil?)
        data.association_name = map['AssociationName']
        data.max_errors = map['MaxErrors']
        data.max_concurrency = map['MaxConcurrency']
        data.compliance_severity = map['ComplianceSeverity']
        data.sync_compliance = map['SyncCompliance']
        data.apply_only_at_cron_interval = map['ApplyOnlyAtCronInterval']
        data.calendar_names = (CalendarNameOrARNList.parse(map['CalendarNames']) unless map['CalendarNames'].nil?)
        data.target_locations = (TargetLocations.parse(map['TargetLocations']) unless map['TargetLocations'].nil?)
        data.schedule_offset = map['ScheduleOffset']
        data.target_maps = (TargetMaps.parse(map['TargetMaps']) unless map['TargetMaps'].nil?)
        return data
      end
    end

    class AssociationDescriptionList
      def self.parse(list)
        list.map do |value|
          AssociationDescription.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for CreateDocument
    class CreateDocument
      def self.parse(http_resp)
        data = Types::CreateDocumentOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.document_description = (DocumentDescription.parse(map['DocumentDescription']) unless map['DocumentDescription'].nil?)
        data
      end
    end

    class DocumentDescription
      def self.parse(map)
        data = Types::DocumentDescription.new
        data.sha1 = map['Sha1']
        data.member_hash = map['Hash']
        data.hash_type = map['HashType']
        data.name = map['Name']
        data.display_name = map['DisplayName']
        data.version_name = map['VersionName']
        data.owner = map['Owner']
        data.created_date = Time.at(map['CreatedDate'].to_i) if map['CreatedDate']
        data.status = map['Status']
        data.status_information = map['StatusInformation']
        data.document_version = map['DocumentVersion']
        data.description = map['Description']
        data.parameters = (DocumentParameterList.parse(map['Parameters']) unless map['Parameters'].nil?)
        data.platform_types = (PlatformTypeList.parse(map['PlatformTypes']) unless map['PlatformTypes'].nil?)
        data.document_type = map['DocumentType']
        data.schema_version = map['SchemaVersion']
        data.latest_version = map['LatestVersion']
        data.default_version = map['DefaultVersion']
        data.document_format = map['DocumentFormat']
        data.target_type = map['TargetType']
        data.tags = (TagList.parse(map['Tags']) unless map['Tags'].nil?)
        data.attachments_information = (AttachmentInformationList.parse(map['AttachmentsInformation']) unless map['AttachmentsInformation'].nil?)
        data.requires = (DocumentRequiresList.parse(map['Requires']) unless map['Requires'].nil?)
        data.author = map['Author']
        data.review_information = (ReviewInformationList.parse(map['ReviewInformation']) unless map['ReviewInformation'].nil?)
        data.approved_version = map['ApprovedVersion']
        data.pending_review_version = map['PendingReviewVersion']
        data.review_status = map['ReviewStatus']
        data.category = (CategoryList.parse(map['Category']) unless map['Category'].nil?)
        data.category_enum = (CategoryEnumList.parse(map['CategoryEnum']) unless map['CategoryEnum'].nil?)
        return data
      end
    end

    class CategoryEnumList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class CategoryList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class ReviewInformationList
      def self.parse(list)
        list.map do |value|
          ReviewInformation.parse(value) unless value.nil?
        end
      end
    end

    class ReviewInformation
      def self.parse(map)
        data = Types::ReviewInformation.new
        data.reviewed_time = Time.at(map['ReviewedTime'].to_i) if map['ReviewedTime']
        data.status = map['Status']
        data.reviewer = map['Reviewer']
        return data
      end
    end

    class DocumentRequiresList
      def self.parse(list)
        list.map do |value|
          DocumentRequires.parse(value) unless value.nil?
        end
      end
    end

    class DocumentRequires
      def self.parse(map)
        data = Types::DocumentRequires.new
        data.name = map['Name']
        data.version = map['Version']
        return data
      end
    end

    class AttachmentInformationList
      def self.parse(list)
        list.map do |value|
          AttachmentInformation.parse(value) unless value.nil?
        end
      end
    end

    class AttachmentInformation
      def self.parse(map)
        data = Types::AttachmentInformation.new
        data.name = map['Name']
        return data
      end
    end

    class TagList
      def self.parse(list)
        list.map do |value|
          Tag.parse(value) unless value.nil?
        end
      end
    end

    class Tag
      def self.parse(map)
        data = Types::Tag.new
        data.key = map['Key']
        data.value = map['Value']
        return data
      end
    end

    class PlatformTypeList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class DocumentParameterList
      def self.parse(list)
        list.map do |value|
          DocumentParameter.parse(value) unless value.nil?
        end
      end
    end

    class DocumentParameter
      def self.parse(map)
        data = Types::DocumentParameter.new
        data.name = map['Name']
        data.type = map['Type']
        data.description = map['Description']
        data.default_value = map['DefaultValue']
        return data
      end
    end

    # Error Parser for DocumentLimitExceeded
    class DocumentLimitExceeded
      def self.parse(http_resp)
        data = Types::DocumentLimitExceeded.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidDocumentContent
    class InvalidDocumentContent
      def self.parse(http_resp)
        data = Types::InvalidDocumentContent.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for MaxDocumentSizeExceeded
    class MaxDocumentSizeExceeded
      def self.parse(http_resp)
        data = Types::MaxDocumentSizeExceeded.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidDocumentSchemaVersion
    class InvalidDocumentSchemaVersion
      def self.parse(http_resp)
        data = Types::InvalidDocumentSchemaVersion.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for DocumentAlreadyExists
    class DocumentAlreadyExists
      def self.parse(http_resp)
        data = Types::DocumentAlreadyExists.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateMaintenanceWindow
    class CreateMaintenanceWindow
      def self.parse(http_resp)
        data = Types::CreateMaintenanceWindowOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.window_id = map['WindowId']
        data
      end
    end

    # Error Parser for IdempotentParameterMismatch
    class IdempotentParameterMismatch
      def self.parse(http_resp)
        data = Types::IdempotentParameterMismatch.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ResourceLimitExceededException
    class ResourceLimitExceededException
      def self.parse(http_resp)
        data = Types::ResourceLimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateOpsItem
    class CreateOpsItem
      def self.parse(http_resp)
        data = Types::CreateOpsItemOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.ops_item_id = map['OpsItemId']
        data
      end
    end

    # Error Parser for OpsItemAlreadyExistsException
    class OpsItemAlreadyExistsException
      def self.parse(http_resp)
        data = Types::OpsItemAlreadyExistsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.ops_item_id = map['OpsItemId']
        data
      end
    end

    # Operation Parser for CreateOpsMetadata
    class CreateOpsMetadata
      def self.parse(http_resp)
        data = Types::CreateOpsMetadataOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.ops_metadata_arn = map['OpsMetadataArn']
        data
      end
    end

    # Error Parser for OpsMetadataAlreadyExistsException
    class OpsMetadataAlreadyExistsException
      def self.parse(http_resp)
        data = Types::OpsMetadataAlreadyExistsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for OpsMetadataInvalidArgumentException
    class OpsMetadataInvalidArgumentException
      def self.parse(http_resp)
        data = Types::OpsMetadataInvalidArgumentException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for OpsMetadataLimitExceededException
    class OpsMetadataLimitExceededException
      def self.parse(http_resp)
        data = Types::OpsMetadataLimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for OpsMetadataTooManyUpdatesException
    class OpsMetadataTooManyUpdatesException
      def self.parse(http_resp)
        data = Types::OpsMetadataTooManyUpdatesException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for CreatePatchBaseline
    class CreatePatchBaseline
      def self.parse(http_resp)
        data = Types::CreatePatchBaselineOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.baseline_id = map['BaselineId']
        data
      end
    end

    # Operation Parser for CreateResourceDataSync
    class CreateResourceDataSync
      def self.parse(http_resp)
        data = Types::CreateResourceDataSyncOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for ResourceDataSyncInvalidConfigurationException
    class ResourceDataSyncInvalidConfigurationException
      def self.parse(http_resp)
        data = Types::ResourceDataSyncInvalidConfigurationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ResourceDataSyncAlreadyExistsException
    class ResourceDataSyncAlreadyExistsException
      def self.parse(http_resp)
        data = Types::ResourceDataSyncAlreadyExistsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.sync_name = map['SyncName']
        data
      end
    end

    # Error Parser for ResourceDataSyncCountExceededException
    class ResourceDataSyncCountExceededException
      def self.parse(http_resp)
        data = Types::ResourceDataSyncCountExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DeleteActivation
    class DeleteActivation
      def self.parse(http_resp)
        data = Types::DeleteActivationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for InvalidActivationId
    class InvalidActivationId
      def self.parse(http_resp)
        data = Types::InvalidActivationId.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidActivation
    class InvalidActivation
      def self.parse(http_resp)
        data = Types::InvalidActivation.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DeleteAssociation
    class DeleteAssociation
      def self.parse(http_resp)
        data = Types::DeleteAssociationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for AssociationDoesNotExist
    class AssociationDoesNotExist
      def self.parse(http_resp)
        data = Types::AssociationDoesNotExist.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DeleteDocument
    class DeleteDocument
      def self.parse(http_resp)
        data = Types::DeleteDocumentOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for AssociatedInstances
    class AssociatedInstances
      def self.parse(http_resp)
        data = Types::AssociatedInstances.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for InvalidDocumentOperation
    class InvalidDocumentOperation
      def self.parse(http_resp)
        data = Types::InvalidDocumentOperation.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DeleteInventory
    class DeleteInventory
      def self.parse(http_resp)
        data = Types::DeleteInventoryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.deletion_id = map['DeletionId']
        data.type_name = map['TypeName']
        data.deletion_summary = (InventoryDeletionSummary.parse(map['DeletionSummary']) unless map['DeletionSummary'].nil?)
        data
      end
    end

    class InventoryDeletionSummary
      def self.parse(map)
        data = Types::InventoryDeletionSummary.new
        data.total_count = map['TotalCount']
        data.remaining_count = map['RemainingCount']
        data.summary_items = (InventoryDeletionSummaryItems.parse(map['SummaryItems']) unless map['SummaryItems'].nil?)
        return data
      end
    end

    class InventoryDeletionSummaryItems
      def self.parse(list)
        list.map do |value|
          InventoryDeletionSummaryItem.parse(value) unless value.nil?
        end
      end
    end

    class InventoryDeletionSummaryItem
      def self.parse(map)
        data = Types::InventoryDeletionSummaryItem.new
        data.version = map['Version']
        data.count = map['Count']
        data.remaining_count = map['RemainingCount']
        return data
      end
    end

    # Error Parser for InvalidInventoryRequestException
    class InvalidInventoryRequestException
      def self.parse(http_resp)
        data = Types::InvalidInventoryRequestException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidOptionException
    class InvalidOptionException
      def self.parse(http_resp)
        data = Types::InvalidOptionException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidDeleteInventoryParametersException
    class InvalidDeleteInventoryParametersException
      def self.parse(http_resp)
        data = Types::InvalidDeleteInventoryParametersException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidTypeNameException
    class InvalidTypeNameException
      def self.parse(http_resp)
        data = Types::InvalidTypeNameException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DeleteMaintenanceWindow
    class DeleteMaintenanceWindow
      def self.parse(http_resp)
        data = Types::DeleteMaintenanceWindowOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.window_id = map['WindowId']
        data
      end
    end

    # Operation Parser for DeleteOpsMetadata
    class DeleteOpsMetadata
      def self.parse(http_resp)
        data = Types::DeleteOpsMetadataOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for OpsMetadataNotFoundException
    class OpsMetadataNotFoundException
      def self.parse(http_resp)
        data = Types::OpsMetadataNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for DeleteParameter
    class DeleteParameter
      def self.parse(http_resp)
        data = Types::DeleteParameterOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for ParameterNotFound
    class ParameterNotFound
      def self.parse(http_resp)
        data = Types::ParameterNotFound.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for DeleteParameters
    class DeleteParameters
      def self.parse(http_resp)
        data = Types::DeleteParametersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.deleted_parameters = (ParameterNameList.parse(map['DeletedParameters']) unless map['DeletedParameters'].nil?)
        data.invalid_parameters = (ParameterNameList.parse(map['InvalidParameters']) unless map['InvalidParameters'].nil?)
        data
      end
    end

    class ParameterNameList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for DeletePatchBaseline
    class DeletePatchBaseline
      def self.parse(http_resp)
        data = Types::DeletePatchBaselineOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.baseline_id = map['BaselineId']
        data
      end
    end

    # Error Parser for ResourceInUseException
    class ResourceInUseException
      def self.parse(http_resp)
        data = Types::ResourceInUseException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DeleteResourceDataSync
    class DeleteResourceDataSync
      def self.parse(http_resp)
        data = Types::DeleteResourceDataSyncOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for ResourceDataSyncNotFoundException
    class ResourceDataSyncNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceDataSyncNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.sync_name = map['SyncName']
        data.sync_type = map['SyncType']
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DeregisterManagedInstance
    class DeregisterManagedInstance
      def self.parse(http_resp)
        data = Types::DeregisterManagedInstanceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeregisterPatchBaselineForPatchGroup
    class DeregisterPatchBaselineForPatchGroup
      def self.parse(http_resp)
        data = Types::DeregisterPatchBaselineForPatchGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.baseline_id = map['BaselineId']
        data.patch_group = map['PatchGroup']
        data
      end
    end

    # Operation Parser for DeregisterTargetFromMaintenanceWindow
    class DeregisterTargetFromMaintenanceWindow
      def self.parse(http_resp)
        data = Types::DeregisterTargetFromMaintenanceWindowOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.window_id = map['WindowId']
        data.window_target_id = map['WindowTargetId']
        data
      end
    end

    # Error Parser for TargetInUseException
    class TargetInUseException
      def self.parse(http_resp)
        data = Types::TargetInUseException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DeregisterTaskFromMaintenanceWindow
    class DeregisterTaskFromMaintenanceWindow
      def self.parse(http_resp)
        data = Types::DeregisterTaskFromMaintenanceWindowOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.window_id = map['WindowId']
        data.window_task_id = map['WindowTaskId']
        data
      end
    end

    # Operation Parser for DescribeActivations
    class DescribeActivations
      def self.parse(http_resp)
        data = Types::DescribeActivationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.activation_list = (ActivationList.parse(map['ActivationList']) unless map['ActivationList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ActivationList
      def self.parse(list)
        list.map do |value|
          Activation.parse(value) unless value.nil?
        end
      end
    end

    class Activation
      def self.parse(map)
        data = Types::Activation.new
        data.activation_id = map['ActivationId']
        data.description = map['Description']
        data.default_instance_name = map['DefaultInstanceName']
        data.iam_role = map['IamRole']
        data.registration_limit = map['RegistrationLimit']
        data.registrations_count = map['RegistrationsCount']
        data.expiration_date = Time.at(map['ExpirationDate'].to_i) if map['ExpirationDate']
        data.expired = map['Expired']
        data.created_date = Time.at(map['CreatedDate'].to_i) if map['CreatedDate']
        data.tags = (TagList.parse(map['Tags']) unless map['Tags'].nil?)
        return data
      end
    end

    # Error Parser for InvalidFilter
    class InvalidFilter
      def self.parse(http_resp)
        data = Types::InvalidFilter.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidNextToken
    class InvalidNextToken
      def self.parse(http_resp)
        data = Types::InvalidNextToken.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DescribeAssociation
    class DescribeAssociation
      def self.parse(http_resp)
        data = Types::DescribeAssociationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.association_description = (AssociationDescription.parse(map['AssociationDescription']) unless map['AssociationDescription'].nil?)
        data
      end
    end

    # Error Parser for InvalidAssociationVersion
    class InvalidAssociationVersion
      def self.parse(http_resp)
        data = Types::InvalidAssociationVersion.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DescribeAssociationExecutionTargets
    class DescribeAssociationExecutionTargets
      def self.parse(http_resp)
        data = Types::DescribeAssociationExecutionTargetsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.association_execution_targets = (AssociationExecutionTargetsList.parse(map['AssociationExecutionTargets']) unless map['AssociationExecutionTargets'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class AssociationExecutionTargetsList
      def self.parse(list)
        list.map do |value|
          AssociationExecutionTarget.parse(value) unless value.nil?
        end
      end
    end

    class AssociationExecutionTarget
      def self.parse(map)
        data = Types::AssociationExecutionTarget.new
        data.association_id = map['AssociationId']
        data.association_version = map['AssociationVersion']
        data.execution_id = map['ExecutionId']
        data.resource_id = map['ResourceId']
        data.resource_type = map['ResourceType']
        data.status = map['Status']
        data.detailed_status = map['DetailedStatus']
        data.last_execution_date = Time.at(map['LastExecutionDate'].to_i) if map['LastExecutionDate']
        data.output_source = (OutputSource.parse(map['OutputSource']) unless map['OutputSource'].nil?)
        return data
      end
    end

    class OutputSource
      def self.parse(map)
        data = Types::OutputSource.new
        data.output_source_id = map['OutputSourceId']
        data.output_source_type = map['OutputSourceType']
        return data
      end
    end

    # Error Parser for AssociationExecutionDoesNotExist
    class AssociationExecutionDoesNotExist
      def self.parse(http_resp)
        data = Types::AssociationExecutionDoesNotExist.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DescribeAssociationExecutions
    class DescribeAssociationExecutions
      def self.parse(http_resp)
        data = Types::DescribeAssociationExecutionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.association_executions = (AssociationExecutionsList.parse(map['AssociationExecutions']) unless map['AssociationExecutions'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class AssociationExecutionsList
      def self.parse(list)
        list.map do |value|
          AssociationExecution.parse(value) unless value.nil?
        end
      end
    end

    class AssociationExecution
      def self.parse(map)
        data = Types::AssociationExecution.new
        data.association_id = map['AssociationId']
        data.association_version = map['AssociationVersion']
        data.execution_id = map['ExecutionId']
        data.status = map['Status']
        data.detailed_status = map['DetailedStatus']
        data.created_time = Time.at(map['CreatedTime'].to_i) if map['CreatedTime']
        data.last_execution_date = Time.at(map['LastExecutionDate'].to_i) if map['LastExecutionDate']
        data.resource_count_by_status = map['ResourceCountByStatus']
        return data
      end
    end

    # Operation Parser for DescribeAutomationExecutions
    class DescribeAutomationExecutions
      def self.parse(http_resp)
        data = Types::DescribeAutomationExecutionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.automation_execution_metadata_list = (AutomationExecutionMetadataList.parse(map['AutomationExecutionMetadataList']) unless map['AutomationExecutionMetadataList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class AutomationExecutionMetadataList
      def self.parse(list)
        list.map do |value|
          AutomationExecutionMetadata.parse(value) unless value.nil?
        end
      end
    end

    class AutomationExecutionMetadata
      def self.parse(map)
        data = Types::AutomationExecutionMetadata.new
        data.automation_execution_id = map['AutomationExecutionId']
        data.document_name = map['DocumentName']
        data.document_version = map['DocumentVersion']
        data.automation_execution_status = map['AutomationExecutionStatus']
        data.execution_start_time = Time.at(map['ExecutionStartTime'].to_i) if map['ExecutionStartTime']
        data.execution_end_time = Time.at(map['ExecutionEndTime'].to_i) if map['ExecutionEndTime']
        data.executed_by = map['ExecutedBy']
        data.log_file = map['LogFile']
        data.outputs = (AutomationParameterMap.parse(map['Outputs']) unless map['Outputs'].nil?)
        data.mode = map['Mode']
        data.parent_automation_execution_id = map['ParentAutomationExecutionId']
        data.current_step_name = map['CurrentStepName']
        data.current_action = map['CurrentAction']
        data.failure_message = map['FailureMessage']
        data.target_parameter_name = map['TargetParameterName']
        data.targets = (Targets.parse(map['Targets']) unless map['Targets'].nil?)
        data.target_maps = (TargetMaps.parse(map['TargetMaps']) unless map['TargetMaps'].nil?)
        data.resolved_targets = (ResolvedTargets.parse(map['ResolvedTargets']) unless map['ResolvedTargets'].nil?)
        data.max_concurrency = map['MaxConcurrency']
        data.max_errors = map['MaxErrors']
        data.target = map['Target']
        data.automation_type = map['AutomationType']
        data.automation_subtype = map['AutomationSubtype']
        data.scheduled_time = Time.at(map['ScheduledTime'].to_i) if map['ScheduledTime']
        data.runbooks = (Runbooks.parse(map['Runbooks']) unless map['Runbooks'].nil?)
        data.ops_item_id = map['OpsItemId']
        data.association_id = map['AssociationId']
        data.change_request_name = map['ChangeRequestName']
        return data
      end
    end

    class Runbooks
      def self.parse(list)
        list.map do |value|
          Runbook.parse(value) unless value.nil?
        end
      end
    end

    class Runbook
      def self.parse(map)
        data = Types::Runbook.new
        data.document_name = map['DocumentName']
        data.document_version = map['DocumentVersion']
        data.parameters = (AutomationParameterMap.parse(map['Parameters']) unless map['Parameters'].nil?)
        data.target_parameter_name = map['TargetParameterName']
        data.targets = (Targets.parse(map['Targets']) unless map['Targets'].nil?)
        data.target_maps = (TargetMaps.parse(map['TargetMaps']) unless map['TargetMaps'].nil?)
        data.max_concurrency = map['MaxConcurrency']
        data.max_errors = map['MaxErrors']
        data.target_locations = (TargetLocations.parse(map['TargetLocations']) unless map['TargetLocations'].nil?)
        return data
      end
    end

    class AutomationParameterMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = AutomationParameterValueList.parse(value) unless value.nil?
        end
        data
      end
    end

    class AutomationParameterValueList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class ResolvedTargets
      def self.parse(map)
        data = Types::ResolvedTargets.new
        data.parameter_values = (TargetParameterList.parse(map['ParameterValues']) unless map['ParameterValues'].nil?)
        data.truncated = map['Truncated']
        return data
      end
    end

    class TargetParameterList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Error Parser for InvalidFilterKey
    class InvalidFilterKey
      def self.parse(http_resp)
        data = Types::InvalidFilterKey.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for InvalidFilterValue
    class InvalidFilterValue
      def self.parse(http_resp)
        data = Types::InvalidFilterValue.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DescribeAutomationStepExecutions
    class DescribeAutomationStepExecutions
      def self.parse(http_resp)
        data = Types::DescribeAutomationStepExecutionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.step_executions = (StepExecutionList.parse(map['StepExecutions']) unless map['StepExecutions'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class StepExecutionList
      def self.parse(list)
        list.map do |value|
          StepExecution.parse(value) unless value.nil?
        end
      end
    end

    class StepExecution
      def self.parse(map)
        data = Types::StepExecution.new
        data.step_name = map['StepName']
        data.action = map['Action']
        data.timeout_seconds = map['TimeoutSeconds']
        data.on_failure = map['OnFailure']
        data.max_attempts = map['MaxAttempts']
        data.execution_start_time = Time.at(map['ExecutionStartTime'].to_i) if map['ExecutionStartTime']
        data.execution_end_time = Time.at(map['ExecutionEndTime'].to_i) if map['ExecutionEndTime']
        data.step_status = map['StepStatus']
        data.response_code = map['ResponseCode']
        data.inputs = (NormalStringMap.parse(map['Inputs']) unless map['Inputs'].nil?)
        data.outputs = (AutomationParameterMap.parse(map['Outputs']) unless map['Outputs'].nil?)
        data.response = map['Response']
        data.failure_message = map['FailureMessage']
        data.failure_details = (FailureDetails.parse(map['FailureDetails']) unless map['FailureDetails'].nil?)
        data.step_execution_id = map['StepExecutionId']
        data.overridden_parameters = (AutomationParameterMap.parse(map['OverriddenParameters']) unless map['OverriddenParameters'].nil?)
        data.is_end = map['IsEnd']
        data.next_step = map['NextStep']
        data.is_critical = map['IsCritical']
        data.valid_next_steps = (ValidNextStepList.parse(map['ValidNextSteps']) unless map['ValidNextSteps'].nil?)
        data.targets = (Targets.parse(map['Targets']) unless map['Targets'].nil?)
        data.target_location = (TargetLocation.parse(map['TargetLocation']) unless map['TargetLocation'].nil?)
        return data
      end
    end

    class ValidNextStepList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class FailureDetails
      def self.parse(map)
        data = Types::FailureDetails.new
        data.failure_stage = map['FailureStage']
        data.failure_type = map['FailureType']
        data.details = (AutomationParameterMap.parse(map['Details']) unless map['Details'].nil?)
        return data
      end
    end

    class NormalStringMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Error Parser for AutomationExecutionNotFoundException
    class AutomationExecutionNotFoundException
      def self.parse(http_resp)
        data = Types::AutomationExecutionNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DescribeAvailablePatches
    class DescribeAvailablePatches
      def self.parse(http_resp)
        data = Types::DescribeAvailablePatchesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.patches = (PatchList.parse(map['Patches']) unless map['Patches'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class PatchList
      def self.parse(list)
        list.map do |value|
          Patch.parse(value) unless value.nil?
        end
      end
    end

    class Patch
      def self.parse(map)
        data = Types::Patch.new
        data.id = map['Id']
        data.release_date = Time.at(map['ReleaseDate'].to_i) if map['ReleaseDate']
        data.title = map['Title']
        data.description = map['Description']
        data.content_url = map['ContentUrl']
        data.vendor = map['Vendor']
        data.product_family = map['ProductFamily']
        data.product = map['Product']
        data.classification = map['Classification']
        data.msrc_severity = map['MsrcSeverity']
        data.kb_number = map['KbNumber']
        data.msrc_number = map['MsrcNumber']
        data.language = map['Language']
        data.advisory_ids = (PatchAdvisoryIdList.parse(map['AdvisoryIds']) unless map['AdvisoryIds'].nil?)
        data.bugzilla_ids = (PatchBugzillaIdList.parse(map['BugzillaIds']) unless map['BugzillaIds'].nil?)
        data.cve_ids = (PatchCVEIdList.parse(map['CVEIds']) unless map['CVEIds'].nil?)
        data.name = map['Name']
        data.epoch = map['Epoch']
        data.version = map['Version']
        data.release = map['Release']
        data.arch = map['Arch']
        data.severity = map['Severity']
        data.repository = map['Repository']
        return data
      end
    end

    class PatchCVEIdList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class PatchBugzillaIdList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class PatchAdvisoryIdList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for DescribeDocument
    class DescribeDocument
      def self.parse(http_resp)
        data = Types::DescribeDocumentOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.document = (DocumentDescription.parse(map['Document']) unless map['Document'].nil?)
        data
      end
    end

    # Operation Parser for DescribeDocumentPermission
    class DescribeDocumentPermission
      def self.parse(http_resp)
        data = Types::DescribeDocumentPermissionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.account_ids = (AccountIdList.parse(map['AccountIds']) unless map['AccountIds'].nil?)
        data.account_sharing_info_list = (AccountSharingInfoList.parse(map['AccountSharingInfoList']) unless map['AccountSharingInfoList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class AccountSharingInfoList
      def self.parse(list)
        list.map do |value|
          AccountSharingInfo.parse(value) unless value.nil?
        end
      end
    end

    class AccountSharingInfo
      def self.parse(map)
        data = Types::AccountSharingInfo.new
        data.account_id = map['AccountId']
        data.shared_document_version = map['SharedDocumentVersion']
        return data
      end
    end

    class AccountIdList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Error Parser for InvalidPermissionType
    class InvalidPermissionType
      def self.parse(http_resp)
        data = Types::InvalidPermissionType.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DescribeEffectiveInstanceAssociations
    class DescribeEffectiveInstanceAssociations
      def self.parse(http_resp)
        data = Types::DescribeEffectiveInstanceAssociationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.associations = (InstanceAssociationList.parse(map['Associations']) unless map['Associations'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class InstanceAssociationList
      def self.parse(list)
        list.map do |value|
          InstanceAssociation.parse(value) unless value.nil?
        end
      end
    end

    class InstanceAssociation
      def self.parse(map)
        data = Types::InstanceAssociation.new
        data.association_id = map['AssociationId']
        data.instance_id = map['InstanceId']
        data.content = map['Content']
        data.association_version = map['AssociationVersion']
        return data
      end
    end

    # Operation Parser for DescribeEffectivePatchesForPatchBaseline
    class DescribeEffectivePatchesForPatchBaseline
      def self.parse(http_resp)
        data = Types::DescribeEffectivePatchesForPatchBaselineOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.effective_patches = (EffectivePatchList.parse(map['EffectivePatches']) unless map['EffectivePatches'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class EffectivePatchList
      def self.parse(list)
        list.map do |value|
          EffectivePatch.parse(value) unless value.nil?
        end
      end
    end

    class EffectivePatch
      def self.parse(map)
        data = Types::EffectivePatch.new
        data.patch = (Patch.parse(map['Patch']) unless map['Patch'].nil?)
        data.patch_status = (PatchStatus.parse(map['PatchStatus']) unless map['PatchStatus'].nil?)
        return data
      end
    end

    class PatchStatus
      def self.parse(map)
        data = Types::PatchStatus.new
        data.deployment_status = map['DeploymentStatus']
        data.compliance_level = map['ComplianceLevel']
        data.approval_date = Time.at(map['ApprovalDate'].to_i) if map['ApprovalDate']
        return data
      end
    end

    # Error Parser for UnsupportedOperatingSystem
    class UnsupportedOperatingSystem
      def self.parse(http_resp)
        data = Types::UnsupportedOperatingSystem.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DescribeInstanceAssociationsStatus
    class DescribeInstanceAssociationsStatus
      def self.parse(http_resp)
        data = Types::DescribeInstanceAssociationsStatusOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.instance_association_status_infos = (InstanceAssociationStatusInfos.parse(map['InstanceAssociationStatusInfos']) unless map['InstanceAssociationStatusInfos'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class InstanceAssociationStatusInfos
      def self.parse(list)
        list.map do |value|
          InstanceAssociationStatusInfo.parse(value) unless value.nil?
        end
      end
    end

    class InstanceAssociationStatusInfo
      def self.parse(map)
        data = Types::InstanceAssociationStatusInfo.new
        data.association_id = map['AssociationId']
        data.name = map['Name']
        data.document_version = map['DocumentVersion']
        data.association_version = map['AssociationVersion']
        data.instance_id = map['InstanceId']
        data.execution_date = Time.at(map['ExecutionDate'].to_i) if map['ExecutionDate']
        data.status = map['Status']
        data.detailed_status = map['DetailedStatus']
        data.execution_summary = map['ExecutionSummary']
        data.error_code = map['ErrorCode']
        data.output_url = (InstanceAssociationOutputUrl.parse(map['OutputUrl']) unless map['OutputUrl'].nil?)
        data.association_name = map['AssociationName']
        return data
      end
    end

    class InstanceAssociationOutputUrl
      def self.parse(map)
        data = Types::InstanceAssociationOutputUrl.new
        data.s3_output_url = (S3OutputUrl.parse(map['S3OutputUrl']) unless map['S3OutputUrl'].nil?)
        return data
      end
    end

    class S3OutputUrl
      def self.parse(map)
        data = Types::S3OutputUrl.new
        data.output_url = map['OutputUrl']
        return data
      end
    end

    # Operation Parser for DescribeInstanceInformation
    class DescribeInstanceInformation
      def self.parse(http_resp)
        data = Types::DescribeInstanceInformationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.instance_information_list = (InstanceInformationList.parse(map['InstanceInformationList']) unless map['InstanceInformationList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class InstanceInformationList
      def self.parse(list)
        list.map do |value|
          InstanceInformation.parse(value) unless value.nil?
        end
      end
    end

    class InstanceInformation
      def self.parse(map)
        data = Types::InstanceInformation.new
        data.instance_id = map['InstanceId']
        data.ping_status = map['PingStatus']
        data.last_ping_date_time = Time.at(map['LastPingDateTime'].to_i) if map['LastPingDateTime']
        data.agent_version = map['AgentVersion']
        data.is_latest_version = map['IsLatestVersion']
        data.platform_type = map['PlatformType']
        data.platform_name = map['PlatformName']
        data.platform_version = map['PlatformVersion']
        data.activation_id = map['ActivationId']
        data.iam_role = map['IamRole']
        data.registration_date = Time.at(map['RegistrationDate'].to_i) if map['RegistrationDate']
        data.resource_type = map['ResourceType']
        data.name = map['Name']
        data.ip_address = map['IPAddress']
        data.computer_name = map['ComputerName']
        data.association_status = map['AssociationStatus']
        data.last_association_execution_date = Time.at(map['LastAssociationExecutionDate'].to_i) if map['LastAssociationExecutionDate']
        data.last_successful_association_execution_date = Time.at(map['LastSuccessfulAssociationExecutionDate'].to_i) if map['LastSuccessfulAssociationExecutionDate']
        data.association_overview = (InstanceAggregatedAssociationOverview.parse(map['AssociationOverview']) unless map['AssociationOverview'].nil?)
        data.source_id = map['SourceId']
        data.source_type = map['SourceType']
        return data
      end
    end

    class InstanceAggregatedAssociationOverview
      def self.parse(map)
        data = Types::InstanceAggregatedAssociationOverview.new
        data.detailed_status = map['DetailedStatus']
        data.instance_association_status_aggregated_count = (InstanceAssociationStatusAggregatedCount.parse(map['InstanceAssociationStatusAggregatedCount']) unless map['InstanceAssociationStatusAggregatedCount'].nil?)
        return data
      end
    end

    class InstanceAssociationStatusAggregatedCount
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Error Parser for InvalidInstanceInformationFilterValue
    class InvalidInstanceInformationFilterValue
      def self.parse(http_resp)
        data = Types::InvalidInstanceInformationFilterValue.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for DescribeInstancePatchStates
    class DescribeInstancePatchStates
      def self.parse(http_resp)
        data = Types::DescribeInstancePatchStatesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.instance_patch_states = (InstancePatchStateList.parse(map['InstancePatchStates']) unless map['InstancePatchStates'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class InstancePatchStateList
      def self.parse(list)
        list.map do |value|
          InstancePatchState.parse(value) unless value.nil?
        end
      end
    end

    class InstancePatchState
      def self.parse(map)
        data = Types::InstancePatchState.new
        data.instance_id = map['InstanceId']
        data.patch_group = map['PatchGroup']
        data.baseline_id = map['BaselineId']
        data.snapshot_id = map['SnapshotId']
        data.install_override_list = map['InstallOverrideList']
        data.owner_information = map['OwnerInformation']
        data.installed_count = map['InstalledCount']
        data.installed_other_count = map['InstalledOtherCount']
        data.installed_pending_reboot_count = map['InstalledPendingRebootCount']
        data.installed_rejected_count = map['InstalledRejectedCount']
        data.missing_count = map['MissingCount']
        data.failed_count = map['FailedCount']
        data.unreported_not_applicable_count = map['UnreportedNotApplicableCount']
        data.not_applicable_count = map['NotApplicableCount']
        data.operation_start_time = Time.at(map['OperationStartTime'].to_i) if map['OperationStartTime']
        data.operation_end_time = Time.at(map['OperationEndTime'].to_i) if map['OperationEndTime']
        data.operation = map['Operation']
        data.last_no_reboot_install_operation_time = Time.at(map['LastNoRebootInstallOperationTime'].to_i) if map['LastNoRebootInstallOperationTime']
        data.reboot_option = map['RebootOption']
        data.critical_non_compliant_count = map['CriticalNonCompliantCount']
        data.security_non_compliant_count = map['SecurityNonCompliantCount']
        data.other_non_compliant_count = map['OtherNonCompliantCount']
        return data
      end
    end

    # Operation Parser for DescribeInstancePatchStatesForPatchGroup
    class DescribeInstancePatchStatesForPatchGroup
      def self.parse(http_resp)
        data = Types::DescribeInstancePatchStatesForPatchGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.instance_patch_states = (InstancePatchStatesList.parse(map['InstancePatchStates']) unless map['InstancePatchStates'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class InstancePatchStatesList
      def self.parse(list)
        list.map do |value|
          InstancePatchState.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for DescribeInstancePatches
    class DescribeInstancePatches
      def self.parse(http_resp)
        data = Types::DescribeInstancePatchesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.patches = (PatchComplianceDataList.parse(map['Patches']) unless map['Patches'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class PatchComplianceDataList
      def self.parse(list)
        list.map do |value|
          PatchComplianceData.parse(value) unless value.nil?
        end
      end
    end

    class PatchComplianceData
      def self.parse(map)
        data = Types::PatchComplianceData.new
        data.title = map['Title']
        data.kb_id = map['KBId']
        data.classification = map['Classification']
        data.severity = map['Severity']
        data.state = map['State']
        data.installed_time = Time.at(map['InstalledTime'].to_i) if map['InstalledTime']
        data.cve_ids = map['CVEIds']
        return data
      end
    end

    # Operation Parser for DescribeInventoryDeletions
    class DescribeInventoryDeletions
      def self.parse(http_resp)
        data = Types::DescribeInventoryDeletionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.inventory_deletions = (InventoryDeletionsList.parse(map['InventoryDeletions']) unless map['InventoryDeletions'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class InventoryDeletionsList
      def self.parse(list)
        list.map do |value|
          InventoryDeletionStatusItem.parse(value) unless value.nil?
        end
      end
    end

    class InventoryDeletionStatusItem
      def self.parse(map)
        data = Types::InventoryDeletionStatusItem.new
        data.deletion_id = map['DeletionId']
        data.type_name = map['TypeName']
        data.deletion_start_time = Time.at(map['DeletionStartTime'].to_i) if map['DeletionStartTime']
        data.last_status = map['LastStatus']
        data.last_status_message = map['LastStatusMessage']
        data.deletion_summary = (InventoryDeletionSummary.parse(map['DeletionSummary']) unless map['DeletionSummary'].nil?)
        data.last_status_update_time = Time.at(map['LastStatusUpdateTime'].to_i) if map['LastStatusUpdateTime']
        return data
      end
    end

    # Error Parser for InvalidDeletionIdException
    class InvalidDeletionIdException
      def self.parse(http_resp)
        data = Types::InvalidDeletionIdException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DescribeMaintenanceWindowExecutionTaskInvocations
    class DescribeMaintenanceWindowExecutionTaskInvocations
      def self.parse(http_resp)
        data = Types::DescribeMaintenanceWindowExecutionTaskInvocationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.window_execution_task_invocation_identities = (MaintenanceWindowExecutionTaskInvocationIdentityList.parse(map['WindowExecutionTaskInvocationIdentities']) unless map['WindowExecutionTaskInvocationIdentities'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class MaintenanceWindowExecutionTaskInvocationIdentityList
      def self.parse(list)
        list.map do |value|
          MaintenanceWindowExecutionTaskInvocationIdentity.parse(value) unless value.nil?
        end
      end
    end

    class MaintenanceWindowExecutionTaskInvocationIdentity
      def self.parse(map)
        data = Types::MaintenanceWindowExecutionTaskInvocationIdentity.new
        data.window_execution_id = map['WindowExecutionId']
        data.task_execution_id = map['TaskExecutionId']
        data.invocation_id = map['InvocationId']
        data.execution_id = map['ExecutionId']
        data.task_type = map['TaskType']
        data.parameters = map['Parameters']
        data.status = map['Status']
        data.status_details = map['StatusDetails']
        data.start_time = Time.at(map['StartTime'].to_i) if map['StartTime']
        data.end_time = Time.at(map['EndTime'].to_i) if map['EndTime']
        data.owner_information = map['OwnerInformation']
        data.window_target_id = map['WindowTargetId']
        return data
      end
    end

    # Operation Parser for DescribeMaintenanceWindowExecutionTasks
    class DescribeMaintenanceWindowExecutionTasks
      def self.parse(http_resp)
        data = Types::DescribeMaintenanceWindowExecutionTasksOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.window_execution_task_identities = (MaintenanceWindowExecutionTaskIdentityList.parse(map['WindowExecutionTaskIdentities']) unless map['WindowExecutionTaskIdentities'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class MaintenanceWindowExecutionTaskIdentityList
      def self.parse(list)
        list.map do |value|
          MaintenanceWindowExecutionTaskIdentity.parse(value) unless value.nil?
        end
      end
    end

    class MaintenanceWindowExecutionTaskIdentity
      def self.parse(map)
        data = Types::MaintenanceWindowExecutionTaskIdentity.new
        data.window_execution_id = map['WindowExecutionId']
        data.task_execution_id = map['TaskExecutionId']
        data.status = map['Status']
        data.status_details = map['StatusDetails']
        data.start_time = Time.at(map['StartTime'].to_i) if map['StartTime']
        data.end_time = Time.at(map['EndTime'].to_i) if map['EndTime']
        data.task_arn = map['TaskArn']
        data.task_type = map['TaskType']
        return data
      end
    end

    # Operation Parser for DescribeMaintenanceWindowExecutions
    class DescribeMaintenanceWindowExecutions
      def self.parse(http_resp)
        data = Types::DescribeMaintenanceWindowExecutionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.window_executions = (MaintenanceWindowExecutionList.parse(map['WindowExecutions']) unless map['WindowExecutions'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class MaintenanceWindowExecutionList
      def self.parse(list)
        list.map do |value|
          MaintenanceWindowExecution.parse(value) unless value.nil?
        end
      end
    end

    class MaintenanceWindowExecution
      def self.parse(map)
        data = Types::MaintenanceWindowExecution.new
        data.window_id = map['WindowId']
        data.window_execution_id = map['WindowExecutionId']
        data.status = map['Status']
        data.status_details = map['StatusDetails']
        data.start_time = Time.at(map['StartTime'].to_i) if map['StartTime']
        data.end_time = Time.at(map['EndTime'].to_i) if map['EndTime']
        return data
      end
    end

    # Operation Parser for DescribeMaintenanceWindowSchedule
    class DescribeMaintenanceWindowSchedule
      def self.parse(http_resp)
        data = Types::DescribeMaintenanceWindowScheduleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.scheduled_window_executions = (ScheduledWindowExecutionList.parse(map['ScheduledWindowExecutions']) unless map['ScheduledWindowExecutions'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ScheduledWindowExecutionList
      def self.parse(list)
        list.map do |value|
          ScheduledWindowExecution.parse(value) unless value.nil?
        end
      end
    end

    class ScheduledWindowExecution
      def self.parse(map)
        data = Types::ScheduledWindowExecution.new
        data.window_id = map['WindowId']
        data.name = map['Name']
        data.execution_time = map['ExecutionTime']
        return data
      end
    end

    # Operation Parser for DescribeMaintenanceWindowTargets
    class DescribeMaintenanceWindowTargets
      def self.parse(http_resp)
        data = Types::DescribeMaintenanceWindowTargetsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.targets = (MaintenanceWindowTargetList.parse(map['Targets']) unless map['Targets'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class MaintenanceWindowTargetList
      def self.parse(list)
        list.map do |value|
          MaintenanceWindowTarget.parse(value) unless value.nil?
        end
      end
    end

    class MaintenanceWindowTarget
      def self.parse(map)
        data = Types::MaintenanceWindowTarget.new
        data.window_id = map['WindowId']
        data.window_target_id = map['WindowTargetId']
        data.resource_type = map['ResourceType']
        data.targets = (Targets.parse(map['Targets']) unless map['Targets'].nil?)
        data.owner_information = map['OwnerInformation']
        data.name = map['Name']
        data.description = map['Description']
        return data
      end
    end

    # Operation Parser for DescribeMaintenanceWindowTasks
    class DescribeMaintenanceWindowTasks
      def self.parse(http_resp)
        data = Types::DescribeMaintenanceWindowTasksOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tasks = (MaintenanceWindowTaskList.parse(map['Tasks']) unless map['Tasks'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class MaintenanceWindowTaskList
      def self.parse(list)
        list.map do |value|
          MaintenanceWindowTask.parse(value) unless value.nil?
        end
      end
    end

    class MaintenanceWindowTask
      def self.parse(map)
        data = Types::MaintenanceWindowTask.new
        data.window_id = map['WindowId']
        data.window_task_id = map['WindowTaskId']
        data.task_arn = map['TaskArn']
        data.type = map['Type']
        data.targets = (Targets.parse(map['Targets']) unless map['Targets'].nil?)
        data.task_parameters = (MaintenanceWindowTaskParameters.parse(map['TaskParameters']) unless map['TaskParameters'].nil?)
        data.priority = map['Priority']
        data.logging_info = (LoggingInfo.parse(map['LoggingInfo']) unless map['LoggingInfo'].nil?)
        data.service_role_arn = map['ServiceRoleArn']
        data.max_concurrency = map['MaxConcurrency']
        data.max_errors = map['MaxErrors']
        data.name = map['Name']
        data.description = map['Description']
        data.cutoff_behavior = map['CutoffBehavior']
        return data
      end
    end

    class LoggingInfo
      def self.parse(map)
        data = Types::LoggingInfo.new
        data.s3_bucket_name = map['S3BucketName']
        data.s3_key_prefix = map['S3KeyPrefix']
        data.s3_region = map['S3Region']
        return data
      end
    end

    class MaintenanceWindowTaskParameters
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = MaintenanceWindowTaskParameterValueExpression.parse(value) unless value.nil?
        end
        data
      end
    end

    class MaintenanceWindowTaskParameterValueExpression
      def self.parse(map)
        data = Types::MaintenanceWindowTaskParameterValueExpression.new
        data.values = (MaintenanceWindowTaskParameterValueList.parse(map['Values']) unless map['Values'].nil?)
        return data
      end
    end

    class MaintenanceWindowTaskParameterValueList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for DescribeMaintenanceWindows
    class DescribeMaintenanceWindows
      def self.parse(http_resp)
        data = Types::DescribeMaintenanceWindowsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.window_identities = (MaintenanceWindowIdentityList.parse(map['WindowIdentities']) unless map['WindowIdentities'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class MaintenanceWindowIdentityList
      def self.parse(list)
        list.map do |value|
          MaintenanceWindowIdentity.parse(value) unless value.nil?
        end
      end
    end

    class MaintenanceWindowIdentity
      def self.parse(map)
        data = Types::MaintenanceWindowIdentity.new
        data.window_id = map['WindowId']
        data.name = map['Name']
        data.description = map['Description']
        data.enabled = map['Enabled']
        data.duration = map['Duration']
        data.cutoff = map['Cutoff']
        data.schedule = map['Schedule']
        data.schedule_timezone = map['ScheduleTimezone']
        data.schedule_offset = map['ScheduleOffset']
        data.end_date = map['EndDate']
        data.start_date = map['StartDate']
        data.next_execution_time = map['NextExecutionTime']
        return data
      end
    end

    # Operation Parser for DescribeMaintenanceWindowsForTarget
    class DescribeMaintenanceWindowsForTarget
      def self.parse(http_resp)
        data = Types::DescribeMaintenanceWindowsForTargetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.window_identities = (MaintenanceWindowsForTargetList.parse(map['WindowIdentities']) unless map['WindowIdentities'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class MaintenanceWindowsForTargetList
      def self.parse(list)
        list.map do |value|
          MaintenanceWindowIdentityForTarget.parse(value) unless value.nil?
        end
      end
    end

    class MaintenanceWindowIdentityForTarget
      def self.parse(map)
        data = Types::MaintenanceWindowIdentityForTarget.new
        data.window_id = map['WindowId']
        data.name = map['Name']
        return data
      end
    end

    # Operation Parser for DescribeOpsItems
    class DescribeOpsItems
      def self.parse(http_resp)
        data = Types::DescribeOpsItemsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['NextToken']
        data.ops_item_summaries = (OpsItemSummaries.parse(map['OpsItemSummaries']) unless map['OpsItemSummaries'].nil?)
        data
      end
    end

    class OpsItemSummaries
      def self.parse(list)
        list.map do |value|
          OpsItemSummary.parse(value) unless value.nil?
        end
      end
    end

    class OpsItemSummary
      def self.parse(map)
        data = Types::OpsItemSummary.new
        data.created_by = map['CreatedBy']
        data.created_time = Time.at(map['CreatedTime'].to_i) if map['CreatedTime']
        data.last_modified_by = map['LastModifiedBy']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.priority = map['Priority']
        data.source = map['Source']
        data.status = map['Status']
        data.ops_item_id = map['OpsItemId']
        data.title = map['Title']
        data.operational_data = (OpsItemOperationalData.parse(map['OperationalData']) unless map['OperationalData'].nil?)
        data.category = map['Category']
        data.severity = map['Severity']
        data.ops_item_type = map['OpsItemType']
        data.actual_start_time = Time.at(map['ActualStartTime'].to_i) if map['ActualStartTime']
        data.actual_end_time = Time.at(map['ActualEndTime'].to_i) if map['ActualEndTime']
        data.planned_start_time = Time.at(map['PlannedStartTime'].to_i) if map['PlannedStartTime']
        data.planned_end_time = Time.at(map['PlannedEndTime'].to_i) if map['PlannedEndTime']
        return data
      end
    end

    class OpsItemOperationalData
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = OpsItemDataValue.parse(value) unless value.nil?
        end
        data
      end
    end

    class OpsItemDataValue
      def self.parse(map)
        data = Types::OpsItemDataValue.new
        data.value = map['Value']
        data.type = map['Type']
        return data
      end
    end

    # Operation Parser for DescribeParameters
    class DescribeParameters
      def self.parse(http_resp)
        data = Types::DescribeParametersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.parameters = (ParameterMetadataList.parse(map['Parameters']) unless map['Parameters'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ParameterMetadataList
      def self.parse(list)
        list.map do |value|
          ParameterMetadata.parse(value) unless value.nil?
        end
      end
    end

    class ParameterMetadata
      def self.parse(map)
        data = Types::ParameterMetadata.new
        data.name = map['Name']
        data.type = map['Type']
        data.key_id = map['KeyId']
        data.last_modified_date = Time.at(map['LastModifiedDate'].to_i) if map['LastModifiedDate']
        data.last_modified_user = map['LastModifiedUser']
        data.description = map['Description']
        data.allowed_pattern = map['AllowedPattern']
        data.version = map['Version']
        data.tier = map['Tier']
        data.policies = (ParameterPolicyList.parse(map['Policies']) unless map['Policies'].nil?)
        data.data_type = map['DataType']
        return data
      end
    end

    class ParameterPolicyList
      def self.parse(list)
        list.map do |value|
          ParameterInlinePolicy.parse(value) unless value.nil?
        end
      end
    end

    class ParameterInlinePolicy
      def self.parse(map)
        data = Types::ParameterInlinePolicy.new
        data.policy_text = map['PolicyText']
        data.policy_type = map['PolicyType']
        data.policy_status = map['PolicyStatus']
        return data
      end
    end

    # Error Parser for InvalidFilterOption
    class InvalidFilterOption
      def self.parse(http_resp)
        data = Types::InvalidFilterOption.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for DescribePatchBaselines
    class DescribePatchBaselines
      def self.parse(http_resp)
        data = Types::DescribePatchBaselinesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.baseline_identities = (PatchBaselineIdentityList.parse(map['BaselineIdentities']) unless map['BaselineIdentities'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class PatchBaselineIdentityList
      def self.parse(list)
        list.map do |value|
          PatchBaselineIdentity.parse(value) unless value.nil?
        end
      end
    end

    class PatchBaselineIdentity
      def self.parse(map)
        data = Types::PatchBaselineIdentity.new
        data.baseline_id = map['BaselineId']
        data.baseline_name = map['BaselineName']
        data.operating_system = map['OperatingSystem']
        data.baseline_description = map['BaselineDescription']
        data.default_baseline = map['DefaultBaseline']
        return data
      end
    end

    # Operation Parser for DescribePatchGroupState
    class DescribePatchGroupState
      def self.parse(http_resp)
        data = Types::DescribePatchGroupStateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.instances = map['Instances']
        data.instances_with_installed_patches = map['InstancesWithInstalledPatches']
        data.instances_with_installed_other_patches = map['InstancesWithInstalledOtherPatches']
        data.instances_with_installed_pending_reboot_patches = map['InstancesWithInstalledPendingRebootPatches']
        data.instances_with_installed_rejected_patches = map['InstancesWithInstalledRejectedPatches']
        data.instances_with_missing_patches = map['InstancesWithMissingPatches']
        data.instances_with_failed_patches = map['InstancesWithFailedPatches']
        data.instances_with_not_applicable_patches = map['InstancesWithNotApplicablePatches']
        data.instances_with_unreported_not_applicable_patches = map['InstancesWithUnreportedNotApplicablePatches']
        data.instances_with_critical_non_compliant_patches = map['InstancesWithCriticalNonCompliantPatches']
        data.instances_with_security_non_compliant_patches = map['InstancesWithSecurityNonCompliantPatches']
        data.instances_with_other_non_compliant_patches = map['InstancesWithOtherNonCompliantPatches']
        data
      end
    end

    # Operation Parser for DescribePatchGroups
    class DescribePatchGroups
      def self.parse(http_resp)
        data = Types::DescribePatchGroupsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.mappings = (PatchGroupPatchBaselineMappingList.parse(map['Mappings']) unless map['Mappings'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class PatchGroupPatchBaselineMappingList
      def self.parse(list)
        list.map do |value|
          PatchGroupPatchBaselineMapping.parse(value) unless value.nil?
        end
      end
    end

    class PatchGroupPatchBaselineMapping
      def self.parse(map)
        data = Types::PatchGroupPatchBaselineMapping.new
        data.patch_group = map['PatchGroup']
        data.baseline_identity = (PatchBaselineIdentity.parse(map['BaselineIdentity']) unless map['BaselineIdentity'].nil?)
        return data
      end
    end

    # Operation Parser for DescribePatchProperties
    class DescribePatchProperties
      def self.parse(http_resp)
        data = Types::DescribePatchPropertiesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.properties = (PatchPropertiesList.parse(map['Properties']) unless map['Properties'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class PatchPropertiesList
      def self.parse(list)
        list.map do |value|
          PatchPropertyEntry.parse(value) unless value.nil?
        end
      end
    end

    class PatchPropertyEntry
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for DescribeSessions
    class DescribeSessions
      def self.parse(http_resp)
        data = Types::DescribeSessionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.sessions = (SessionList.parse(map['Sessions']) unless map['Sessions'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class SessionList
      def self.parse(list)
        list.map do |value|
          Session.parse(value) unless value.nil?
        end
      end
    end

    class Session
      def self.parse(map)
        data = Types::Session.new
        data.session_id = map['SessionId']
        data.target = map['Target']
        data.status = map['Status']
        data.start_date = Time.at(map['StartDate'].to_i) if map['StartDate']
        data.end_date = Time.at(map['EndDate'].to_i) if map['EndDate']
        data.document_name = map['DocumentName']
        data.owner = map['Owner']
        data.reason = map['Reason']
        data.details = map['Details']
        data.output_url = (SessionManagerOutputUrl.parse(map['OutputUrl']) unless map['OutputUrl'].nil?)
        data.max_session_duration = map['MaxSessionDuration']
        return data
      end
    end

    class SessionManagerOutputUrl
      def self.parse(map)
        data = Types::SessionManagerOutputUrl.new
        data.s3_output_url = map['S3OutputUrl']
        data.cloud_watch_output_url = map['CloudWatchOutputUrl']
        return data
      end
    end

    # Operation Parser for DisassociateOpsItemRelatedItem
    class DisassociateOpsItemRelatedItem
      def self.parse(http_resp)
        data = Types::DisassociateOpsItemRelatedItemOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for OpsItemRelatedItemAssociationNotFoundException
    class OpsItemRelatedItemAssociationNotFoundException
      def self.parse(http_resp)
        data = Types::OpsItemRelatedItemAssociationNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for GetAutomationExecution
    class GetAutomationExecution
      def self.parse(http_resp)
        data = Types::GetAutomationExecutionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.automation_execution = (AutomationExecution.parse(map['AutomationExecution']) unless map['AutomationExecution'].nil?)
        data
      end
    end

    class AutomationExecution
      def self.parse(map)
        data = Types::AutomationExecution.new
        data.automation_execution_id = map['AutomationExecutionId']
        data.document_name = map['DocumentName']
        data.document_version = map['DocumentVersion']
        data.execution_start_time = Time.at(map['ExecutionStartTime'].to_i) if map['ExecutionStartTime']
        data.execution_end_time = Time.at(map['ExecutionEndTime'].to_i) if map['ExecutionEndTime']
        data.automation_execution_status = map['AutomationExecutionStatus']
        data.step_executions = (StepExecutionList.parse(map['StepExecutions']) unless map['StepExecutions'].nil?)
        data.step_executions_truncated = map['StepExecutionsTruncated']
        data.parameters = (AutomationParameterMap.parse(map['Parameters']) unless map['Parameters'].nil?)
        data.outputs = (AutomationParameterMap.parse(map['Outputs']) unless map['Outputs'].nil?)
        data.failure_message = map['FailureMessage']
        data.mode = map['Mode']
        data.parent_automation_execution_id = map['ParentAutomationExecutionId']
        data.executed_by = map['ExecutedBy']
        data.current_step_name = map['CurrentStepName']
        data.current_action = map['CurrentAction']
        data.target_parameter_name = map['TargetParameterName']
        data.targets = (Targets.parse(map['Targets']) unless map['Targets'].nil?)
        data.target_maps = (TargetMaps.parse(map['TargetMaps']) unless map['TargetMaps'].nil?)
        data.resolved_targets = (ResolvedTargets.parse(map['ResolvedTargets']) unless map['ResolvedTargets'].nil?)
        data.max_concurrency = map['MaxConcurrency']
        data.max_errors = map['MaxErrors']
        data.target = map['Target']
        data.target_locations = (TargetLocations.parse(map['TargetLocations']) unless map['TargetLocations'].nil?)
        data.progress_counters = (ProgressCounters.parse(map['ProgressCounters']) unless map['ProgressCounters'].nil?)
        data.automation_subtype = map['AutomationSubtype']
        data.scheduled_time = Time.at(map['ScheduledTime'].to_i) if map['ScheduledTime']
        data.runbooks = (Runbooks.parse(map['Runbooks']) unless map['Runbooks'].nil?)
        data.ops_item_id = map['OpsItemId']
        data.association_id = map['AssociationId']
        data.change_request_name = map['ChangeRequestName']
        return data
      end
    end

    class ProgressCounters
      def self.parse(map)
        data = Types::ProgressCounters.new
        data.total_steps = map['TotalSteps']
        data.success_steps = map['SuccessSteps']
        data.failed_steps = map['FailedSteps']
        data.cancelled_steps = map['CancelledSteps']
        data.timed_out_steps = map['TimedOutSteps']
        return data
      end
    end

    # Operation Parser for GetCalendarState
    class GetCalendarState
      def self.parse(http_resp)
        data = Types::GetCalendarStateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.state = map['State']
        data.at_time = map['AtTime']
        data.next_transition_time = map['NextTransitionTime']
        data
      end
    end

    # Error Parser for InvalidDocumentType
    class InvalidDocumentType
      def self.parse(http_resp)
        data = Types::InvalidDocumentType.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for UnsupportedCalendarException
    class UnsupportedCalendarException
      def self.parse(http_resp)
        data = Types::UnsupportedCalendarException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for GetCommandInvocation
    class GetCommandInvocation
      def self.parse(http_resp)
        data = Types::GetCommandInvocationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.command_id = map['CommandId']
        data.instance_id = map['InstanceId']
        data.comment = map['Comment']
        data.document_name = map['DocumentName']
        data.document_version = map['DocumentVersion']
        data.plugin_name = map['PluginName']
        data.response_code = map['ResponseCode']
        data.execution_start_date_time = map['ExecutionStartDateTime']
        data.execution_elapsed_time = map['ExecutionElapsedTime']
        data.execution_end_date_time = map['ExecutionEndDateTime']
        data.status = map['Status']
        data.status_details = map['StatusDetails']
        data.standard_output_content = map['StandardOutputContent']
        data.standard_output_url = map['StandardOutputUrl']
        data.standard_error_content = map['StandardErrorContent']
        data.standard_error_url = map['StandardErrorUrl']
        data.cloud_watch_output_config = (CloudWatchOutputConfig.parse(map['CloudWatchOutputConfig']) unless map['CloudWatchOutputConfig'].nil?)
        data
      end
    end

    class CloudWatchOutputConfig
      def self.parse(map)
        data = Types::CloudWatchOutputConfig.new
        data.cloud_watch_log_group_name = map['CloudWatchLogGroupName']
        data.cloud_watch_output_enabled = map['CloudWatchOutputEnabled']
        return data
      end
    end

    # Error Parser for InvalidPluginName
    class InvalidPluginName
      def self.parse(http_resp)
        data = Types::InvalidPluginName.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for InvocationDoesNotExist
    class InvocationDoesNotExist
      def self.parse(http_resp)
        data = Types::InvocationDoesNotExist.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for GetConnectionStatus
    class GetConnectionStatus
      def self.parse(http_resp)
        data = Types::GetConnectionStatusOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.target = map['Target']
        data.status = map['Status']
        data
      end
    end

    # Operation Parser for GetDefaultPatchBaseline
    class GetDefaultPatchBaseline
      def self.parse(http_resp)
        data = Types::GetDefaultPatchBaselineOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.baseline_id = map['BaselineId']
        data.operating_system = map['OperatingSystem']
        data
      end
    end

    # Operation Parser for GetDeployablePatchSnapshotForInstance
    class GetDeployablePatchSnapshotForInstance
      def self.parse(http_resp)
        data = Types::GetDeployablePatchSnapshotForInstanceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.instance_id = map['InstanceId']
        data.snapshot_id = map['SnapshotId']
        data.snapshot_download_url = map['SnapshotDownloadUrl']
        data.product = map['Product']
        data
      end
    end

    # Error Parser for UnsupportedFeatureRequiredException
    class UnsupportedFeatureRequiredException
      def self.parse(http_resp)
        data = Types::UnsupportedFeatureRequiredException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for GetDocument
    class GetDocument
      def self.parse(http_resp)
        data = Types::GetDocumentOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.name = map['Name']
        data.created_date = Time.at(map['CreatedDate'].to_i) if map['CreatedDate']
        data.display_name = map['DisplayName']
        data.version_name = map['VersionName']
        data.document_version = map['DocumentVersion']
        data.status = map['Status']
        data.status_information = map['StatusInformation']
        data.content = map['Content']
        data.document_type = map['DocumentType']
        data.document_format = map['DocumentFormat']
        data.requires = (DocumentRequiresList.parse(map['Requires']) unless map['Requires'].nil?)
        data.attachments_content = (AttachmentContentList.parse(map['AttachmentsContent']) unless map['AttachmentsContent'].nil?)
        data.review_status = map['ReviewStatus']
        data
      end
    end

    class AttachmentContentList
      def self.parse(list)
        list.map do |value|
          AttachmentContent.parse(value) unless value.nil?
        end
      end
    end

    class AttachmentContent
      def self.parse(map)
        data = Types::AttachmentContent.new
        data.name = map['Name']
        data.size = map['Size']
        data.member_hash = map['Hash']
        data.hash_type = map['HashType']
        data.url = map['Url']
        return data
      end
    end

    # Operation Parser for GetInventory
    class GetInventory
      def self.parse(http_resp)
        data = Types::GetInventoryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.entities = (InventoryResultEntityList.parse(map['Entities']) unless map['Entities'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class InventoryResultEntityList
      def self.parse(list)
        list.map do |value|
          InventoryResultEntity.parse(value) unless value.nil?
        end
      end
    end

    class InventoryResultEntity
      def self.parse(map)
        data = Types::InventoryResultEntity.new
        data.id = map['Id']
        data.data = (InventoryResultItemMap.parse(map['Data']) unless map['Data'].nil?)
        return data
      end
    end

    class InventoryResultItemMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = InventoryResultItem.parse(value) unless value.nil?
        end
        data
      end
    end

    class InventoryResultItem
      def self.parse(map)
        data = Types::InventoryResultItem.new
        data.type_name = map['TypeName']
        data.schema_version = map['SchemaVersion']
        data.capture_time = map['CaptureTime']
        data.content_hash = map['ContentHash']
        data.content = (InventoryItemEntryList.parse(map['Content']) unless map['Content'].nil?)
        return data
      end
    end

    class InventoryItemEntryList
      def self.parse(list)
        list.map do |value|
          InventoryItemEntry.parse(value) unless value.nil?
        end
      end
    end

    class InventoryItemEntry
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Error Parser for InvalidResultAttributeException
    class InvalidResultAttributeException
      def self.parse(http_resp)
        data = Types::InvalidResultAttributeException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidInventoryGroupException
    class InvalidInventoryGroupException
      def self.parse(http_resp)
        data = Types::InvalidInventoryGroupException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidAggregatorException
    class InvalidAggregatorException
      def self.parse(http_resp)
        data = Types::InvalidAggregatorException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for GetInventorySchema
    class GetInventorySchema
      def self.parse(http_resp)
        data = Types::GetInventorySchemaOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.schemas = (InventoryItemSchemaResultList.parse(map['Schemas']) unless map['Schemas'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class InventoryItemSchemaResultList
      def self.parse(list)
        list.map do |value|
          InventoryItemSchema.parse(value) unless value.nil?
        end
      end
    end

    class InventoryItemSchema
      def self.parse(map)
        data = Types::InventoryItemSchema.new
        data.type_name = map['TypeName']
        data.version = map['Version']
        data.attributes = (InventoryItemAttributeList.parse(map['Attributes']) unless map['Attributes'].nil?)
        data.display_name = map['DisplayName']
        return data
      end
    end

    class InventoryItemAttributeList
      def self.parse(list)
        list.map do |value|
          InventoryItemAttribute.parse(value) unless value.nil?
        end
      end
    end

    class InventoryItemAttribute
      def self.parse(map)
        data = Types::InventoryItemAttribute.new
        data.name = map['Name']
        data.data_type = map['DataType']
        return data
      end
    end

    # Operation Parser for GetMaintenanceWindow
    class GetMaintenanceWindow
      def self.parse(http_resp)
        data = Types::GetMaintenanceWindowOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.window_id = map['WindowId']
        data.name = map['Name']
        data.description = map['Description']
        data.start_date = map['StartDate']
        data.end_date = map['EndDate']
        data.schedule = map['Schedule']
        data.schedule_timezone = map['ScheduleTimezone']
        data.schedule_offset = map['ScheduleOffset']
        data.next_execution_time = map['NextExecutionTime']
        data.duration = map['Duration']
        data.cutoff = map['Cutoff']
        data.allow_unassociated_targets = map['AllowUnassociatedTargets']
        data.enabled = map['Enabled']
        data.created_date = Time.at(map['CreatedDate'].to_i) if map['CreatedDate']
        data.modified_date = Time.at(map['ModifiedDate'].to_i) if map['ModifiedDate']
        data
      end
    end

    # Operation Parser for GetMaintenanceWindowExecution
    class GetMaintenanceWindowExecution
      def self.parse(http_resp)
        data = Types::GetMaintenanceWindowExecutionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.window_execution_id = map['WindowExecutionId']
        data.task_ids = (MaintenanceWindowExecutionTaskIdList.parse(map['TaskIds']) unless map['TaskIds'].nil?)
        data.status = map['Status']
        data.status_details = map['StatusDetails']
        data.start_time = Time.at(map['StartTime'].to_i) if map['StartTime']
        data.end_time = Time.at(map['EndTime'].to_i) if map['EndTime']
        data
      end
    end

    class MaintenanceWindowExecutionTaskIdList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for GetMaintenanceWindowExecutionTask
    class GetMaintenanceWindowExecutionTask
      def self.parse(http_resp)
        data = Types::GetMaintenanceWindowExecutionTaskOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.window_execution_id = map['WindowExecutionId']
        data.task_execution_id = map['TaskExecutionId']
        data.task_arn = map['TaskArn']
        data.service_role = map['ServiceRole']
        data.type = map['Type']
        data.task_parameters = (MaintenanceWindowTaskParametersList.parse(map['TaskParameters']) unless map['TaskParameters'].nil?)
        data.priority = map['Priority']
        data.max_concurrency = map['MaxConcurrency']
        data.max_errors = map['MaxErrors']
        data.status = map['Status']
        data.status_details = map['StatusDetails']
        data.start_time = Time.at(map['StartTime'].to_i) if map['StartTime']
        data.end_time = Time.at(map['EndTime'].to_i) if map['EndTime']
        data
      end
    end

    class MaintenanceWindowTaskParametersList
      def self.parse(list)
        list.map do |value|
          MaintenanceWindowTaskParameters.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for GetMaintenanceWindowExecutionTaskInvocation
    class GetMaintenanceWindowExecutionTaskInvocation
      def self.parse(http_resp)
        data = Types::GetMaintenanceWindowExecutionTaskInvocationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.window_execution_id = map['WindowExecutionId']
        data.task_execution_id = map['TaskExecutionId']
        data.invocation_id = map['InvocationId']
        data.execution_id = map['ExecutionId']
        data.task_type = map['TaskType']
        data.parameters = map['Parameters']
        data.status = map['Status']
        data.status_details = map['StatusDetails']
        data.start_time = Time.at(map['StartTime'].to_i) if map['StartTime']
        data.end_time = Time.at(map['EndTime'].to_i) if map['EndTime']
        data.owner_information = map['OwnerInformation']
        data.window_target_id = map['WindowTargetId']
        data
      end
    end

    # Operation Parser for GetMaintenanceWindowTask
    class GetMaintenanceWindowTask
      def self.parse(http_resp)
        data = Types::GetMaintenanceWindowTaskOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.window_id = map['WindowId']
        data.window_task_id = map['WindowTaskId']
        data.targets = (Targets.parse(map['Targets']) unless map['Targets'].nil?)
        data.task_arn = map['TaskArn']
        data.service_role_arn = map['ServiceRoleArn']
        data.task_type = map['TaskType']
        data.task_parameters = (MaintenanceWindowTaskParameters.parse(map['TaskParameters']) unless map['TaskParameters'].nil?)
        data.task_invocation_parameters = (MaintenanceWindowTaskInvocationParameters.parse(map['TaskInvocationParameters']) unless map['TaskInvocationParameters'].nil?)
        data.priority = map['Priority']
        data.max_concurrency = map['MaxConcurrency']
        data.max_errors = map['MaxErrors']
        data.logging_info = (LoggingInfo.parse(map['LoggingInfo']) unless map['LoggingInfo'].nil?)
        data.name = map['Name']
        data.description = map['Description']
        data.cutoff_behavior = map['CutoffBehavior']
        data
      end
    end

    class MaintenanceWindowTaskInvocationParameters
      def self.parse(map)
        data = Types::MaintenanceWindowTaskInvocationParameters.new
        data.run_command = (MaintenanceWindowRunCommandParameters.parse(map['RunCommand']) unless map['RunCommand'].nil?)
        data.automation = (MaintenanceWindowAutomationParameters.parse(map['Automation']) unless map['Automation'].nil?)
        data.step_functions = (MaintenanceWindowStepFunctionsParameters.parse(map['StepFunctions']) unless map['StepFunctions'].nil?)
        data.lambda = (MaintenanceWindowLambdaParameters.parse(map['Lambda']) unless map['Lambda'].nil?)
        return data
      end
    end

    class MaintenanceWindowLambdaParameters
      def self.parse(map)
        data = Types::MaintenanceWindowLambdaParameters.new
        data.client_context = map['ClientContext']
        data.qualifier = map['Qualifier']
        data.payload = ::Base64::decode64(map['Payload']) unless map['Payload'].nil?
        return data
      end
    end

    class MaintenanceWindowStepFunctionsParameters
      def self.parse(map)
        data = Types::MaintenanceWindowStepFunctionsParameters.new
        data.input = map['Input']
        data.name = map['Name']
        return data
      end
    end

    class MaintenanceWindowAutomationParameters
      def self.parse(map)
        data = Types::MaintenanceWindowAutomationParameters.new
        data.document_version = map['DocumentVersion']
        data.parameters = (AutomationParameterMap.parse(map['Parameters']) unless map['Parameters'].nil?)
        return data
      end
    end

    class MaintenanceWindowRunCommandParameters
      def self.parse(map)
        data = Types::MaintenanceWindowRunCommandParameters.new
        data.comment = map['Comment']
        data.cloud_watch_output_config = (CloudWatchOutputConfig.parse(map['CloudWatchOutputConfig']) unless map['CloudWatchOutputConfig'].nil?)
        data.document_hash = map['DocumentHash']
        data.document_hash_type = map['DocumentHashType']
        data.document_version = map['DocumentVersion']
        data.notification_config = (NotificationConfig.parse(map['NotificationConfig']) unless map['NotificationConfig'].nil?)
        data.output_s3_bucket_name = map['OutputS3BucketName']
        data.output_s3_key_prefix = map['OutputS3KeyPrefix']
        data.parameters = (Parameters.parse(map['Parameters']) unless map['Parameters'].nil?)
        data.service_role_arn = map['ServiceRoleArn']
        data.timeout_seconds = map['TimeoutSeconds']
        return data
      end
    end

    class NotificationConfig
      def self.parse(map)
        data = Types::NotificationConfig.new
        data.notification_arn = map['NotificationArn']
        data.notification_events = (NotificationEventList.parse(map['NotificationEvents']) unless map['NotificationEvents'].nil?)
        data.notification_type = map['NotificationType']
        return data
      end
    end

    class NotificationEventList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for GetOpsItem
    class GetOpsItem
      def self.parse(http_resp)
        data = Types::GetOpsItemOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.ops_item = (OpsItem.parse(map['OpsItem']) unless map['OpsItem'].nil?)
        data
      end
    end

    class OpsItem
      def self.parse(map)
        data = Types::OpsItem.new
        data.created_by = map['CreatedBy']
        data.ops_item_type = map['OpsItemType']
        data.created_time = Time.at(map['CreatedTime'].to_i) if map['CreatedTime']
        data.description = map['Description']
        data.last_modified_by = map['LastModifiedBy']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.notifications = (OpsItemNotifications.parse(map['Notifications']) unless map['Notifications'].nil?)
        data.priority = map['Priority']
        data.related_ops_items = (RelatedOpsItems.parse(map['RelatedOpsItems']) unless map['RelatedOpsItems'].nil?)
        data.status = map['Status']
        data.ops_item_id = map['OpsItemId']
        data.version = map['Version']
        data.title = map['Title']
        data.source = map['Source']
        data.operational_data = (OpsItemOperationalData.parse(map['OperationalData']) unless map['OperationalData'].nil?)
        data.category = map['Category']
        data.severity = map['Severity']
        data.actual_start_time = Time.at(map['ActualStartTime'].to_i) if map['ActualStartTime']
        data.actual_end_time = Time.at(map['ActualEndTime'].to_i) if map['ActualEndTime']
        data.planned_start_time = Time.at(map['PlannedStartTime'].to_i) if map['PlannedStartTime']
        data.planned_end_time = Time.at(map['PlannedEndTime'].to_i) if map['PlannedEndTime']
        return data
      end
    end

    class RelatedOpsItems
      def self.parse(list)
        list.map do |value|
          RelatedOpsItem.parse(value) unless value.nil?
        end
      end
    end

    class RelatedOpsItem
      def self.parse(map)
        data = Types::RelatedOpsItem.new
        data.ops_item_id = map['OpsItemId']
        return data
      end
    end

    class OpsItemNotifications
      def self.parse(list)
        list.map do |value|
          OpsItemNotification.parse(value) unless value.nil?
        end
      end
    end

    class OpsItemNotification
      def self.parse(map)
        data = Types::OpsItemNotification.new
        data.arn = map['Arn']
        return data
      end
    end

    # Operation Parser for GetOpsMetadata
    class GetOpsMetadata
      def self.parse(http_resp)
        data = Types::GetOpsMetadataOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.resource_id = map['ResourceId']
        data.metadata = (MetadataMap.parse(map['Metadata']) unless map['Metadata'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class MetadataMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = MetadataValue.parse(value) unless value.nil?
        end
        data
      end
    end

    class MetadataValue
      def self.parse(map)
        data = Types::MetadataValue.new
        data.value = map['Value']
        return data
      end
    end

    # Operation Parser for GetOpsSummary
    class GetOpsSummary
      def self.parse(http_resp)
        data = Types::GetOpsSummaryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.entities = (OpsEntityList.parse(map['Entities']) unless map['Entities'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class OpsEntityList
      def self.parse(list)
        list.map do |value|
          OpsEntity.parse(value) unless value.nil?
        end
      end
    end

    class OpsEntity
      def self.parse(map)
        data = Types::OpsEntity.new
        data.id = map['Id']
        data.data = (OpsEntityItemMap.parse(map['Data']) unless map['Data'].nil?)
        return data
      end
    end

    class OpsEntityItemMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = OpsEntityItem.parse(value) unless value.nil?
        end
        data
      end
    end

    class OpsEntityItem
      def self.parse(map)
        data = Types::OpsEntityItem.new
        data.capture_time = map['CaptureTime']
        data.content = (OpsEntityItemEntryList.parse(map['Content']) unless map['Content'].nil?)
        return data
      end
    end

    class OpsEntityItemEntryList
      def self.parse(list)
        list.map do |value|
          OpsEntityItemEntry.parse(value) unless value.nil?
        end
      end
    end

    class OpsEntityItemEntry
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetParameter
    class GetParameter
      def self.parse(http_resp)
        data = Types::GetParameterOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.parameter = (Parameter.parse(map['Parameter']) unless map['Parameter'].nil?)
        data
      end
    end

    class Parameter
      def self.parse(map)
        data = Types::Parameter.new
        data.name = map['Name']
        data.type = map['Type']
        data.value = map['Value']
        data.version = map['Version']
        data.selector = map['Selector']
        data.source_result = map['SourceResult']
        data.last_modified_date = Time.at(map['LastModifiedDate'].to_i) if map['LastModifiedDate']
        data.arn = map['ARN']
        data.data_type = map['DataType']
        return data
      end
    end

    # Error Parser for InvalidKeyId
    class InvalidKeyId
      def self.parse(http_resp)
        data = Types::InvalidKeyId.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for ParameterVersionNotFound
    class ParameterVersionNotFound
      def self.parse(http_resp)
        data = Types::ParameterVersionNotFound.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for GetParameterHistory
    class GetParameterHistory
      def self.parse(http_resp)
        data = Types::GetParameterHistoryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.parameters = (ParameterHistoryList.parse(map['Parameters']) unless map['Parameters'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ParameterHistoryList
      def self.parse(list)
        list.map do |value|
          ParameterHistory.parse(value) unless value.nil?
        end
      end
    end

    class ParameterHistory
      def self.parse(map)
        data = Types::ParameterHistory.new
        data.name = map['Name']
        data.type = map['Type']
        data.key_id = map['KeyId']
        data.last_modified_date = Time.at(map['LastModifiedDate'].to_i) if map['LastModifiedDate']
        data.last_modified_user = map['LastModifiedUser']
        data.description = map['Description']
        data.value = map['Value']
        data.allowed_pattern = map['AllowedPattern']
        data.version = map['Version']
        data.labels = (ParameterLabelList.parse(map['Labels']) unless map['Labels'].nil?)
        data.tier = map['Tier']
        data.policies = (ParameterPolicyList.parse(map['Policies']) unless map['Policies'].nil?)
        data.data_type = map['DataType']
        return data
      end
    end

    class ParameterLabelList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for GetParameters
    class GetParameters
      def self.parse(http_resp)
        data = Types::GetParametersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.parameters = (ParameterList.parse(map['Parameters']) unless map['Parameters'].nil?)
        data.invalid_parameters = (ParameterNameList.parse(map['InvalidParameters']) unless map['InvalidParameters'].nil?)
        data
      end
    end

    class ParameterList
      def self.parse(list)
        list.map do |value|
          Parameter.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for GetParametersByPath
    class GetParametersByPath
      def self.parse(http_resp)
        data = Types::GetParametersByPathOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.parameters = (ParameterList.parse(map['Parameters']) unless map['Parameters'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    # Operation Parser for GetPatchBaseline
    class GetPatchBaseline
      def self.parse(http_resp)
        data = Types::GetPatchBaselineOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.baseline_id = map['BaselineId']
        data.name = map['Name']
        data.operating_system = map['OperatingSystem']
        data.global_filters = (PatchFilterGroup.parse(map['GlobalFilters']) unless map['GlobalFilters'].nil?)
        data.approval_rules = (PatchRuleGroup.parse(map['ApprovalRules']) unless map['ApprovalRules'].nil?)
        data.approved_patches = (PatchIdList.parse(map['ApprovedPatches']) unless map['ApprovedPatches'].nil?)
        data.approved_patches_compliance_level = map['ApprovedPatchesComplianceLevel']
        data.approved_patches_enable_non_security = map['ApprovedPatchesEnableNonSecurity']
        data.rejected_patches = (PatchIdList.parse(map['RejectedPatches']) unless map['RejectedPatches'].nil?)
        data.rejected_patches_action = map['RejectedPatchesAction']
        data.patch_groups = (PatchGroupList.parse(map['PatchGroups']) unless map['PatchGroups'].nil?)
        data.created_date = Time.at(map['CreatedDate'].to_i) if map['CreatedDate']
        data.modified_date = Time.at(map['ModifiedDate'].to_i) if map['ModifiedDate']
        data.description = map['Description']
        data.sources = (PatchSourceList.parse(map['Sources']) unless map['Sources'].nil?)
        data
      end
    end

    class PatchSourceList
      def self.parse(list)
        list.map do |value|
          PatchSource.parse(value) unless value.nil?
        end
      end
    end

    class PatchSource
      def self.parse(map)
        data = Types::PatchSource.new
        data.name = map['Name']
        data.products = (PatchSourceProductList.parse(map['Products']) unless map['Products'].nil?)
        data.configuration = map['Configuration']
        return data
      end
    end

    class PatchSourceProductList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class PatchGroupList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class PatchIdList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class PatchRuleGroup
      def self.parse(map)
        data = Types::PatchRuleGroup.new
        data.patch_rules = (PatchRuleList.parse(map['PatchRules']) unless map['PatchRules'].nil?)
        return data
      end
    end

    class PatchRuleList
      def self.parse(list)
        list.map do |value|
          PatchRule.parse(value) unless value.nil?
        end
      end
    end

    class PatchRule
      def self.parse(map)
        data = Types::PatchRule.new
        data.patch_filter_group = (PatchFilterGroup.parse(map['PatchFilterGroup']) unless map['PatchFilterGroup'].nil?)
        data.compliance_level = map['ComplianceLevel']
        data.approve_after_days = map['ApproveAfterDays']
        data.approve_until_date = map['ApproveUntilDate']
        data.enable_non_security = map['EnableNonSecurity']
        return data
      end
    end

    class PatchFilterGroup
      def self.parse(map)
        data = Types::PatchFilterGroup.new
        data.patch_filters = (PatchFilterList.parse(map['PatchFilters']) unless map['PatchFilters'].nil?)
        return data
      end
    end

    class PatchFilterList
      def self.parse(list)
        list.map do |value|
          PatchFilter.parse(value) unless value.nil?
        end
      end
    end

    class PatchFilter
      def self.parse(map)
        data = Types::PatchFilter.new
        data.key = map['Key']
        data.values = (PatchFilterValueList.parse(map['Values']) unless map['Values'].nil?)
        return data
      end
    end

    class PatchFilterValueList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for GetPatchBaselineForPatchGroup
    class GetPatchBaselineForPatchGroup
      def self.parse(http_resp)
        data = Types::GetPatchBaselineForPatchGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.baseline_id = map['BaselineId']
        data.patch_group = map['PatchGroup']
        data.operating_system = map['OperatingSystem']
        data
      end
    end

    # Operation Parser for GetServiceSetting
    class GetServiceSetting
      def self.parse(http_resp)
        data = Types::GetServiceSettingOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.service_setting = (ServiceSetting.parse(map['ServiceSetting']) unless map['ServiceSetting'].nil?)
        data
      end
    end

    class ServiceSetting
      def self.parse(map)
        data = Types::ServiceSetting.new
        data.setting_id = map['SettingId']
        data.setting_value = map['SettingValue']
        data.last_modified_date = Time.at(map['LastModifiedDate'].to_i) if map['LastModifiedDate']
        data.last_modified_user = map['LastModifiedUser']
        data.arn = map['ARN']
        data.status = map['Status']
        return data
      end
    end

    # Error Parser for ServiceSettingNotFound
    class ServiceSettingNotFound
      def self.parse(http_resp)
        data = Types::ServiceSettingNotFound.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for LabelParameterVersion
    class LabelParameterVersion
      def self.parse(http_resp)
        data = Types::LabelParameterVersionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.invalid_labels = (ParameterLabelList.parse(map['InvalidLabels']) unless map['InvalidLabels'].nil?)
        data.parameter_version = map['ParameterVersion']
        data
      end
    end

    # Error Parser for ParameterVersionLabelLimitExceeded
    class ParameterVersionLabelLimitExceeded
      def self.parse(http_resp)
        data = Types::ParameterVersionLabelLimitExceeded.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for ListAssociationVersions
    class ListAssociationVersions
      def self.parse(http_resp)
        data = Types::ListAssociationVersionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.association_versions = (AssociationVersionList.parse(map['AssociationVersions']) unless map['AssociationVersions'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class AssociationVersionList
      def self.parse(list)
        list.map do |value|
          AssociationVersionInfo.parse(value) unless value.nil?
        end
      end
    end

    class AssociationVersionInfo
      def self.parse(map)
        data = Types::AssociationVersionInfo.new
        data.association_id = map['AssociationId']
        data.association_version = map['AssociationVersion']
        data.created_date = Time.at(map['CreatedDate'].to_i) if map['CreatedDate']
        data.name = map['Name']
        data.document_version = map['DocumentVersion']
        data.parameters = (Parameters.parse(map['Parameters']) unless map['Parameters'].nil?)
        data.targets = (Targets.parse(map['Targets']) unless map['Targets'].nil?)
        data.schedule_expression = map['ScheduleExpression']
        data.output_location = (InstanceAssociationOutputLocation.parse(map['OutputLocation']) unless map['OutputLocation'].nil?)
        data.association_name = map['AssociationName']
        data.max_errors = map['MaxErrors']
        data.max_concurrency = map['MaxConcurrency']
        data.compliance_severity = map['ComplianceSeverity']
        data.sync_compliance = map['SyncCompliance']
        data.apply_only_at_cron_interval = map['ApplyOnlyAtCronInterval']
        data.calendar_names = (CalendarNameOrARNList.parse(map['CalendarNames']) unless map['CalendarNames'].nil?)
        data.target_locations = (TargetLocations.parse(map['TargetLocations']) unless map['TargetLocations'].nil?)
        data.schedule_offset = map['ScheduleOffset']
        data.target_maps = (TargetMaps.parse(map['TargetMaps']) unless map['TargetMaps'].nil?)
        return data
      end
    end

    # Operation Parser for ListAssociations
    class ListAssociations
      def self.parse(http_resp)
        data = Types::ListAssociationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.associations = (AssociationList.parse(map['Associations']) unless map['Associations'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class AssociationList
      def self.parse(list)
        list.map do |value|
          Association.parse(value) unless value.nil?
        end
      end
    end

    class Association
      def self.parse(map)
        data = Types::Association.new
        data.name = map['Name']
        data.instance_id = map['InstanceId']
        data.association_id = map['AssociationId']
        data.association_version = map['AssociationVersion']
        data.document_version = map['DocumentVersion']
        data.targets = (Targets.parse(map['Targets']) unless map['Targets'].nil?)
        data.last_execution_date = Time.at(map['LastExecutionDate'].to_i) if map['LastExecutionDate']
        data.overview = (AssociationOverview.parse(map['Overview']) unless map['Overview'].nil?)
        data.schedule_expression = map['ScheduleExpression']
        data.association_name = map['AssociationName']
        data.schedule_offset = map['ScheduleOffset']
        data.target_maps = (TargetMaps.parse(map['TargetMaps']) unless map['TargetMaps'].nil?)
        return data
      end
    end

    # Operation Parser for ListCommandInvocations
    class ListCommandInvocations
      def self.parse(http_resp)
        data = Types::ListCommandInvocationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.command_invocations = (CommandInvocationList.parse(map['CommandInvocations']) unless map['CommandInvocations'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class CommandInvocationList
      def self.parse(list)
        list.map do |value|
          CommandInvocation.parse(value) unless value.nil?
        end
      end
    end

    class CommandInvocation
      def self.parse(map)
        data = Types::CommandInvocation.new
        data.command_id = map['CommandId']
        data.instance_id = map['InstanceId']
        data.instance_name = map['InstanceName']
        data.comment = map['Comment']
        data.document_name = map['DocumentName']
        data.document_version = map['DocumentVersion']
        data.requested_date_time = Time.at(map['RequestedDateTime'].to_i) if map['RequestedDateTime']
        data.status = map['Status']
        data.status_details = map['StatusDetails']
        data.trace_output = map['TraceOutput']
        data.standard_output_url = map['StandardOutputUrl']
        data.standard_error_url = map['StandardErrorUrl']
        data.command_plugins = (CommandPluginList.parse(map['CommandPlugins']) unless map['CommandPlugins'].nil?)
        data.service_role = map['ServiceRole']
        data.notification_config = (NotificationConfig.parse(map['NotificationConfig']) unless map['NotificationConfig'].nil?)
        data.cloud_watch_output_config = (CloudWatchOutputConfig.parse(map['CloudWatchOutputConfig']) unless map['CloudWatchOutputConfig'].nil?)
        return data
      end
    end

    class CommandPluginList
      def self.parse(list)
        list.map do |value|
          CommandPlugin.parse(value) unless value.nil?
        end
      end
    end

    class CommandPlugin
      def self.parse(map)
        data = Types::CommandPlugin.new
        data.name = map['Name']
        data.status = map['Status']
        data.status_details = map['StatusDetails']
        data.response_code = map['ResponseCode']
        data.response_start_date_time = Time.at(map['ResponseStartDateTime'].to_i) if map['ResponseStartDateTime']
        data.response_finish_date_time = Time.at(map['ResponseFinishDateTime'].to_i) if map['ResponseFinishDateTime']
        data.output = map['Output']
        data.standard_output_url = map['StandardOutputUrl']
        data.standard_error_url = map['StandardErrorUrl']
        data.output_s3_region = map['OutputS3Region']
        data.output_s3_bucket_name = map['OutputS3BucketName']
        data.output_s3_key_prefix = map['OutputS3KeyPrefix']
        return data
      end
    end

    # Operation Parser for ListCommands
    class ListCommands
      def self.parse(http_resp)
        data = Types::ListCommandsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.commands = (CommandList.parse(map['Commands']) unless map['Commands'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class CommandList
      def self.parse(list)
        list.map do |value|
          Command.parse(value) unless value.nil?
        end
      end
    end

    class Command
      def self.parse(map)
        data = Types::Command.new
        data.command_id = map['CommandId']
        data.document_name = map['DocumentName']
        data.document_version = map['DocumentVersion']
        data.comment = map['Comment']
        data.expires_after = Time.at(map['ExpiresAfter'].to_i) if map['ExpiresAfter']
        data.parameters = (Parameters.parse(map['Parameters']) unless map['Parameters'].nil?)
        data.instance_ids = (InstanceIdList.parse(map['InstanceIds']) unless map['InstanceIds'].nil?)
        data.targets = (Targets.parse(map['Targets']) unless map['Targets'].nil?)
        data.requested_date_time = Time.at(map['RequestedDateTime'].to_i) if map['RequestedDateTime']
        data.status = map['Status']
        data.status_details = map['StatusDetails']
        data.output_s3_region = map['OutputS3Region']
        data.output_s3_bucket_name = map['OutputS3BucketName']
        data.output_s3_key_prefix = map['OutputS3KeyPrefix']
        data.max_concurrency = map['MaxConcurrency']
        data.max_errors = map['MaxErrors']
        data.target_count = map['TargetCount']
        data.completed_count = map['CompletedCount']
        data.error_count = map['ErrorCount']
        data.delivery_timed_out_count = map['DeliveryTimedOutCount']
        data.service_role = map['ServiceRole']
        data.notification_config = (NotificationConfig.parse(map['NotificationConfig']) unless map['NotificationConfig'].nil?)
        data.cloud_watch_output_config = (CloudWatchOutputConfig.parse(map['CloudWatchOutputConfig']) unless map['CloudWatchOutputConfig'].nil?)
        data.timeout_seconds = map['TimeoutSeconds']
        return data
      end
    end

    class InstanceIdList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for ListComplianceItems
    class ListComplianceItems
      def self.parse(http_resp)
        data = Types::ListComplianceItemsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.compliance_items = (ComplianceItemList.parse(map['ComplianceItems']) unless map['ComplianceItems'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ComplianceItemList
      def self.parse(list)
        list.map do |value|
          ComplianceItem.parse(value) unless value.nil?
        end
      end
    end

    class ComplianceItem
      def self.parse(map)
        data = Types::ComplianceItem.new
        data.compliance_type = map['ComplianceType']
        data.resource_type = map['ResourceType']
        data.resource_id = map['ResourceId']
        data.id = map['Id']
        data.title = map['Title']
        data.status = map['Status']
        data.severity = map['Severity']
        data.execution_summary = (ComplianceExecutionSummary.parse(map['ExecutionSummary']) unless map['ExecutionSummary'].nil?)
        data.details = (ComplianceItemDetails.parse(map['Details']) unless map['Details'].nil?)
        return data
      end
    end

    class ComplianceItemDetails
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class ComplianceExecutionSummary
      def self.parse(map)
        data = Types::ComplianceExecutionSummary.new
        data.execution_time = Time.at(map['ExecutionTime'].to_i) if map['ExecutionTime']
        data.execution_id = map['ExecutionId']
        data.execution_type = map['ExecutionType']
        return data
      end
    end

    # Operation Parser for ListComplianceSummaries
    class ListComplianceSummaries
      def self.parse(http_resp)
        data = Types::ListComplianceSummariesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.compliance_summary_items = (ComplianceSummaryItemList.parse(map['ComplianceSummaryItems']) unless map['ComplianceSummaryItems'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ComplianceSummaryItemList
      def self.parse(list)
        list.map do |value|
          ComplianceSummaryItem.parse(value) unless value.nil?
        end
      end
    end

    class ComplianceSummaryItem
      def self.parse(map)
        data = Types::ComplianceSummaryItem.new
        data.compliance_type = map['ComplianceType']
        data.compliant_summary = (CompliantSummary.parse(map['CompliantSummary']) unless map['CompliantSummary'].nil?)
        data.non_compliant_summary = (NonCompliantSummary.parse(map['NonCompliantSummary']) unless map['NonCompliantSummary'].nil?)
        return data
      end
    end

    class NonCompliantSummary
      def self.parse(map)
        data = Types::NonCompliantSummary.new
        data.non_compliant_count = map['NonCompliantCount']
        data.severity_summary = (SeveritySummary.parse(map['SeveritySummary']) unless map['SeveritySummary'].nil?)
        return data
      end
    end

    class SeveritySummary
      def self.parse(map)
        data = Types::SeveritySummary.new
        data.critical_count = map['CriticalCount']
        data.high_count = map['HighCount']
        data.medium_count = map['MediumCount']
        data.low_count = map['LowCount']
        data.informational_count = map['InformationalCount']
        data.unspecified_count = map['UnspecifiedCount']
        return data
      end
    end

    class CompliantSummary
      def self.parse(map)
        data = Types::CompliantSummary.new
        data.compliant_count = map['CompliantCount']
        data.severity_summary = (SeveritySummary.parse(map['SeveritySummary']) unless map['SeveritySummary'].nil?)
        return data
      end
    end

    # Operation Parser for ListDocumentMetadataHistory
    class ListDocumentMetadataHistory
      def self.parse(http_resp)
        data = Types::ListDocumentMetadataHistoryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.name = map['Name']
        data.document_version = map['DocumentVersion']
        data.author = map['Author']
        data.metadata = (DocumentMetadataResponseInfo.parse(map['Metadata']) unless map['Metadata'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class DocumentMetadataResponseInfo
      def self.parse(map)
        data = Types::DocumentMetadataResponseInfo.new
        data.reviewer_response = (DocumentReviewerResponseList.parse(map['ReviewerResponse']) unless map['ReviewerResponse'].nil?)
        return data
      end
    end

    class DocumentReviewerResponseList
      def self.parse(list)
        list.map do |value|
          DocumentReviewerResponseSource.parse(value) unless value.nil?
        end
      end
    end

    class DocumentReviewerResponseSource
      def self.parse(map)
        data = Types::DocumentReviewerResponseSource.new
        data.create_time = Time.at(map['CreateTime'].to_i) if map['CreateTime']
        data.updated_time = Time.at(map['UpdatedTime'].to_i) if map['UpdatedTime']
        data.review_status = map['ReviewStatus']
        data.comment = (DocumentReviewCommentList.parse(map['Comment']) unless map['Comment'].nil?)
        data.reviewer = map['Reviewer']
        return data
      end
    end

    class DocumentReviewCommentList
      def self.parse(list)
        list.map do |value|
          DocumentReviewCommentSource.parse(value) unless value.nil?
        end
      end
    end

    class DocumentReviewCommentSource
      def self.parse(map)
        data = Types::DocumentReviewCommentSource.new
        data.type = map['Type']
        data.content = map['Content']
        return data
      end
    end

    # Operation Parser for ListDocumentVersions
    class ListDocumentVersions
      def self.parse(http_resp)
        data = Types::ListDocumentVersionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.document_versions = (DocumentVersionList.parse(map['DocumentVersions']) unless map['DocumentVersions'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class DocumentVersionList
      def self.parse(list)
        list.map do |value|
          DocumentVersionInfo.parse(value) unless value.nil?
        end
      end
    end

    class DocumentVersionInfo
      def self.parse(map)
        data = Types::DocumentVersionInfo.new
        data.name = map['Name']
        data.display_name = map['DisplayName']
        data.document_version = map['DocumentVersion']
        data.version_name = map['VersionName']
        data.created_date = Time.at(map['CreatedDate'].to_i) if map['CreatedDate']
        data.is_default_version = map['IsDefaultVersion']
        data.document_format = map['DocumentFormat']
        data.status = map['Status']
        data.status_information = map['StatusInformation']
        data.review_status = map['ReviewStatus']
        return data
      end
    end

    # Operation Parser for ListDocuments
    class ListDocuments
      def self.parse(http_resp)
        data = Types::ListDocumentsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.document_identifiers = (DocumentIdentifierList.parse(map['DocumentIdentifiers']) unless map['DocumentIdentifiers'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class DocumentIdentifierList
      def self.parse(list)
        list.map do |value|
          DocumentIdentifier.parse(value) unless value.nil?
        end
      end
    end

    class DocumentIdentifier
      def self.parse(map)
        data = Types::DocumentIdentifier.new
        data.name = map['Name']
        data.created_date = Time.at(map['CreatedDate'].to_i) if map['CreatedDate']
        data.display_name = map['DisplayName']
        data.owner = map['Owner']
        data.version_name = map['VersionName']
        data.platform_types = (PlatformTypeList.parse(map['PlatformTypes']) unless map['PlatformTypes'].nil?)
        data.document_version = map['DocumentVersion']
        data.document_type = map['DocumentType']
        data.schema_version = map['SchemaVersion']
        data.document_format = map['DocumentFormat']
        data.target_type = map['TargetType']
        data.tags = (TagList.parse(map['Tags']) unless map['Tags'].nil?)
        data.requires = (DocumentRequiresList.parse(map['Requires']) unless map['Requires'].nil?)
        data.review_status = map['ReviewStatus']
        data.author = map['Author']
        return data
      end
    end

    # Operation Parser for ListInventoryEntries
    class ListInventoryEntries
      def self.parse(http_resp)
        data = Types::ListInventoryEntriesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.type_name = map['TypeName']
        data.instance_id = map['InstanceId']
        data.schema_version = map['SchemaVersion']
        data.capture_time = map['CaptureTime']
        data.entries = (InventoryItemEntryList.parse(map['Entries']) unless map['Entries'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    # Operation Parser for ListOpsItemEvents
    class ListOpsItemEvents
      def self.parse(http_resp)
        data = Types::ListOpsItemEventsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['NextToken']
        data.summaries = (OpsItemEventSummaries.parse(map['Summaries']) unless map['Summaries'].nil?)
        data
      end
    end

    class OpsItemEventSummaries
      def self.parse(list)
        list.map do |value|
          OpsItemEventSummary.parse(value) unless value.nil?
        end
      end
    end

    class OpsItemEventSummary
      def self.parse(map)
        data = Types::OpsItemEventSummary.new
        data.ops_item_id = map['OpsItemId']
        data.event_id = map['EventId']
        data.source = map['Source']
        data.detail_type = map['DetailType']
        data.detail = map['Detail']
        data.created_by = (OpsItemIdentity.parse(map['CreatedBy']) unless map['CreatedBy'].nil?)
        data.created_time = Time.at(map['CreatedTime'].to_i) if map['CreatedTime']
        return data
      end
    end

    class OpsItemIdentity
      def self.parse(map)
        data = Types::OpsItemIdentity.new
        data.arn = map['Arn']
        return data
      end
    end

    # Operation Parser for ListOpsItemRelatedItems
    class ListOpsItemRelatedItems
      def self.parse(http_resp)
        data = Types::ListOpsItemRelatedItemsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['NextToken']
        data.summaries = (OpsItemRelatedItemSummaries.parse(map['Summaries']) unless map['Summaries'].nil?)
        data
      end
    end

    class OpsItemRelatedItemSummaries
      def self.parse(list)
        list.map do |value|
          OpsItemRelatedItemSummary.parse(value) unless value.nil?
        end
      end
    end

    class OpsItemRelatedItemSummary
      def self.parse(map)
        data = Types::OpsItemRelatedItemSummary.new
        data.ops_item_id = map['OpsItemId']
        data.association_id = map['AssociationId']
        data.resource_type = map['ResourceType']
        data.association_type = map['AssociationType']
        data.resource_uri = map['ResourceUri']
        data.created_by = (OpsItemIdentity.parse(map['CreatedBy']) unless map['CreatedBy'].nil?)
        data.created_time = Time.at(map['CreatedTime'].to_i) if map['CreatedTime']
        data.last_modified_by = (OpsItemIdentity.parse(map['LastModifiedBy']) unless map['LastModifiedBy'].nil?)
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        return data
      end
    end

    # Operation Parser for ListOpsMetadata
    class ListOpsMetadata
      def self.parse(http_resp)
        data = Types::ListOpsMetadataOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.ops_metadata_list = (OpsMetadataList.parse(map['OpsMetadataList']) unless map['OpsMetadataList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class OpsMetadataList
      def self.parse(list)
        list.map do |value|
          OpsMetadata.parse(value) unless value.nil?
        end
      end
    end

    class OpsMetadata
      def self.parse(map)
        data = Types::OpsMetadata.new
        data.resource_id = map['ResourceId']
        data.ops_metadata_arn = map['OpsMetadataArn']
        data.last_modified_date = Time.at(map['LastModifiedDate'].to_i) if map['LastModifiedDate']
        data.last_modified_user = map['LastModifiedUser']
        data.creation_date = Time.at(map['CreationDate'].to_i) if map['CreationDate']
        return data
      end
    end

    # Operation Parser for ListResourceComplianceSummaries
    class ListResourceComplianceSummaries
      def self.parse(http_resp)
        data = Types::ListResourceComplianceSummariesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.resource_compliance_summary_items = (ResourceComplianceSummaryItemList.parse(map['ResourceComplianceSummaryItems']) unless map['ResourceComplianceSummaryItems'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ResourceComplianceSummaryItemList
      def self.parse(list)
        list.map do |value|
          ResourceComplianceSummaryItem.parse(value) unless value.nil?
        end
      end
    end

    class ResourceComplianceSummaryItem
      def self.parse(map)
        data = Types::ResourceComplianceSummaryItem.new
        data.compliance_type = map['ComplianceType']
        data.resource_type = map['ResourceType']
        data.resource_id = map['ResourceId']
        data.status = map['Status']
        data.overall_severity = map['OverallSeverity']
        data.execution_summary = (ComplianceExecutionSummary.parse(map['ExecutionSummary']) unless map['ExecutionSummary'].nil?)
        data.compliant_summary = (CompliantSummary.parse(map['CompliantSummary']) unless map['CompliantSummary'].nil?)
        data.non_compliant_summary = (NonCompliantSummary.parse(map['NonCompliantSummary']) unless map['NonCompliantSummary'].nil?)
        return data
      end
    end

    # Operation Parser for ListResourceDataSync
    class ListResourceDataSync
      def self.parse(http_resp)
        data = Types::ListResourceDataSyncOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.resource_data_sync_items = (ResourceDataSyncItemList.parse(map['ResourceDataSyncItems']) unless map['ResourceDataSyncItems'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ResourceDataSyncItemList
      def self.parse(list)
        list.map do |value|
          ResourceDataSyncItem.parse(value) unless value.nil?
        end
      end
    end

    class ResourceDataSyncItem
      def self.parse(map)
        data = Types::ResourceDataSyncItem.new
        data.sync_name = map['SyncName']
        data.sync_type = map['SyncType']
        data.sync_source = (ResourceDataSyncSourceWithState.parse(map['SyncSource']) unless map['SyncSource'].nil?)
        data.s3_destination = (ResourceDataSyncS3Destination.parse(map['S3Destination']) unless map['S3Destination'].nil?)
        data.last_sync_time = Time.at(map['LastSyncTime'].to_i) if map['LastSyncTime']
        data.last_successful_sync_time = Time.at(map['LastSuccessfulSyncTime'].to_i) if map['LastSuccessfulSyncTime']
        data.sync_last_modified_time = Time.at(map['SyncLastModifiedTime'].to_i) if map['SyncLastModifiedTime']
        data.last_status = map['LastStatus']
        data.sync_created_time = Time.at(map['SyncCreatedTime'].to_i) if map['SyncCreatedTime']
        data.last_sync_status_message = map['LastSyncStatusMessage']
        return data
      end
    end

    class ResourceDataSyncS3Destination
      def self.parse(map)
        data = Types::ResourceDataSyncS3Destination.new
        data.bucket_name = map['BucketName']
        data.prefix = map['Prefix']
        data.sync_format = map['SyncFormat']
        data.region = map['Region']
        data.awskms_key_arn = map['AWSKMSKeyARN']
        data.destination_data_sharing = (ResourceDataSyncDestinationDataSharing.parse(map['DestinationDataSharing']) unless map['DestinationDataSharing'].nil?)
        return data
      end
    end

    class ResourceDataSyncDestinationDataSharing
      def self.parse(map)
        data = Types::ResourceDataSyncDestinationDataSharing.new
        data.destination_data_sharing_type = map['DestinationDataSharingType']
        return data
      end
    end

    class ResourceDataSyncSourceWithState
      def self.parse(map)
        data = Types::ResourceDataSyncSourceWithState.new
        data.source_type = map['SourceType']
        data.aws_organizations_source = (ResourceDataSyncAwsOrganizationsSource.parse(map['AwsOrganizationsSource']) unless map['AwsOrganizationsSource'].nil?)
        data.source_regions = (ResourceDataSyncSourceRegionList.parse(map['SourceRegions']) unless map['SourceRegions'].nil?)
        data.include_future_regions = map['IncludeFutureRegions']
        data.state = map['State']
        data.enable_all_ops_data_sources = map['EnableAllOpsDataSources']
        return data
      end
    end

    class ResourceDataSyncSourceRegionList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class ResourceDataSyncAwsOrganizationsSource
      def self.parse(map)
        data = Types::ResourceDataSyncAwsOrganizationsSource.new
        data.organization_source_type = map['OrganizationSourceType']
        data.organizational_units = (ResourceDataSyncOrganizationalUnitList.parse(map['OrganizationalUnits']) unless map['OrganizationalUnits'].nil?)
        return data
      end
    end

    class ResourceDataSyncOrganizationalUnitList
      def self.parse(list)
        list.map do |value|
          ResourceDataSyncOrganizationalUnit.parse(value) unless value.nil?
        end
      end
    end

    class ResourceDataSyncOrganizationalUnit
      def self.parse(map)
        data = Types::ResourceDataSyncOrganizationalUnit.new
        data.organizational_unit_id = map['OrganizationalUnitId']
        return data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tag_list = (TagList.parse(map['TagList']) unless map['TagList'].nil?)
        data
      end
    end

    # Operation Parser for ModifyDocumentPermission
    class ModifyDocumentPermission
      def self.parse(http_resp)
        data = Types::ModifyDocumentPermissionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for DocumentPermissionLimit
    class DocumentPermissionLimit
      def self.parse(http_resp)
        data = Types::DocumentPermissionLimit.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for PutComplianceItems
    class PutComplianceItems
      def self.parse(http_resp)
        data = Types::PutComplianceItemsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for ItemSizeLimitExceededException
    class ItemSizeLimitExceededException
      def self.parse(http_resp)
        data = Types::ItemSizeLimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.type_name = map['TypeName']
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ComplianceTypeCountLimitExceededException
    class ComplianceTypeCountLimitExceededException
      def self.parse(http_resp)
        data = Types::ComplianceTypeCountLimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidItemContentException
    class InvalidItemContentException
      def self.parse(http_resp)
        data = Types::InvalidItemContentException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.type_name = map['TypeName']
        data.message = map['Message']
        data
      end
    end

    # Error Parser for TotalSizeLimitExceededException
    class TotalSizeLimitExceededException
      def self.parse(http_resp)
        data = Types::TotalSizeLimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for PutInventory
    class PutInventory
      def self.parse(http_resp)
        data = Types::PutInventoryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ItemContentMismatchException
    class ItemContentMismatchException
      def self.parse(http_resp)
        data = Types::ItemContentMismatchException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.type_name = map['TypeName']
        data.message = map['Message']
        data
      end
    end

    # Error Parser for CustomSchemaCountLimitExceededException
    class CustomSchemaCountLimitExceededException
      def self.parse(http_resp)
        data = Types::CustomSchemaCountLimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for UnsupportedInventorySchemaVersionException
    class UnsupportedInventorySchemaVersionException
      def self.parse(http_resp)
        data = Types::UnsupportedInventorySchemaVersionException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for UnsupportedInventoryItemContextException
    class UnsupportedInventoryItemContextException
      def self.parse(http_resp)
        data = Types::UnsupportedInventoryItemContextException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.type_name = map['TypeName']
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidInventoryItemContextException
    class InvalidInventoryItemContextException
      def self.parse(http_resp)
        data = Types::InvalidInventoryItemContextException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for SubTypeCountLimitExceededException
    class SubTypeCountLimitExceededException
      def self.parse(http_resp)
        data = Types::SubTypeCountLimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for PutParameter
    class PutParameter
      def self.parse(http_resp)
        data = Types::PutParameterOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.version = map['Version']
        data.tier = map['Tier']
        data
      end
    end

    # Error Parser for PoliciesLimitExceededException
    class PoliciesLimitExceededException
      def self.parse(http_resp)
        data = Types::PoliciesLimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for HierarchyTypeMismatchException
    class HierarchyTypeMismatchException
      def self.parse(http_resp)
        data = Types::HierarchyTypeMismatchException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for ParameterAlreadyExists
    class ParameterAlreadyExists
      def self.parse(http_resp)
        data = Types::ParameterAlreadyExists.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for HierarchyLevelLimitExceededException
    class HierarchyLevelLimitExceededException
      def self.parse(http_resp)
        data = Types::HierarchyLevelLimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidPolicyTypeException
    class InvalidPolicyTypeException
      def self.parse(http_resp)
        data = Types::InvalidPolicyTypeException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidAllowedPatternException
    class InvalidAllowedPatternException
      def self.parse(http_resp)
        data = Types::InvalidAllowedPatternException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for IncompatiblePolicyException
    class IncompatiblePolicyException
      def self.parse(http_resp)
        data = Types::IncompatiblePolicyException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for ParameterLimitExceeded
    class ParameterLimitExceeded
      def self.parse(http_resp)
        data = Types::ParameterLimitExceeded.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for ParameterPatternMismatchException
    class ParameterPatternMismatchException
      def self.parse(http_resp)
        data = Types::ParameterPatternMismatchException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for UnsupportedParameterType
    class UnsupportedParameterType
      def self.parse(http_resp)
        data = Types::UnsupportedParameterType.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for ParameterMaxVersionLimitExceeded
    class ParameterMaxVersionLimitExceeded
      def self.parse(http_resp)
        data = Types::ParameterMaxVersionLimitExceeded.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidPolicyAttributeException
    class InvalidPolicyAttributeException
      def self.parse(http_resp)
        data = Types::InvalidPolicyAttributeException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for RegisterDefaultPatchBaseline
    class RegisterDefaultPatchBaseline
      def self.parse(http_resp)
        data = Types::RegisterDefaultPatchBaselineOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.baseline_id = map['BaselineId']
        data
      end
    end

    # Operation Parser for RegisterPatchBaselineForPatchGroup
    class RegisterPatchBaselineForPatchGroup
      def self.parse(http_resp)
        data = Types::RegisterPatchBaselineForPatchGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.baseline_id = map['BaselineId']
        data.patch_group = map['PatchGroup']
        data
      end
    end

    # Error Parser for AlreadyExistsException
    class AlreadyExistsException
      def self.parse(http_resp)
        data = Types::AlreadyExistsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for RegisterTargetWithMaintenanceWindow
    class RegisterTargetWithMaintenanceWindow
      def self.parse(http_resp)
        data = Types::RegisterTargetWithMaintenanceWindowOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.window_target_id = map['WindowTargetId']
        data
      end
    end

    # Operation Parser for RegisterTaskWithMaintenanceWindow
    class RegisterTaskWithMaintenanceWindow
      def self.parse(http_resp)
        data = Types::RegisterTaskWithMaintenanceWindowOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.window_task_id = map['WindowTaskId']
        data
      end
    end

    # Error Parser for FeatureNotAvailableException
    class FeatureNotAvailableException
      def self.parse(http_resp)
        data = Types::FeatureNotAvailableException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for RemoveTagsFromResource
    class RemoveTagsFromResource
      def self.parse(http_resp)
        data = Types::RemoveTagsFromResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for ResetServiceSetting
    class ResetServiceSetting
      def self.parse(http_resp)
        data = Types::ResetServiceSettingOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.service_setting = (ServiceSetting.parse(map['ServiceSetting']) unless map['ServiceSetting'].nil?)
        data
      end
    end

    # Operation Parser for ResumeSession
    class ResumeSession
      def self.parse(http_resp)
        data = Types::ResumeSessionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.session_id = map['SessionId']
        data.token_value = map['TokenValue']
        data.stream_url = map['StreamUrl']
        data
      end
    end

    # Operation Parser for SendAutomationSignal
    class SendAutomationSignal
      def self.parse(http_resp)
        data = Types::SendAutomationSignalOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for InvalidAutomationSignalException
    class InvalidAutomationSignalException
      def self.parse(http_resp)
        data = Types::InvalidAutomationSignalException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for AutomationStepNotFoundException
    class AutomationStepNotFoundException
      def self.parse(http_resp)
        data = Types::AutomationStepNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for SendCommand
    class SendCommand
      def self.parse(http_resp)
        data = Types::SendCommandOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.command = (Command.parse(map['Command']) unless map['Command'].nil?)
        data
      end
    end

    # Error Parser for InvalidRole
    class InvalidRole
      def self.parse(http_resp)
        data = Types::InvalidRole.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidNotificationConfig
    class InvalidNotificationConfig
      def self.parse(http_resp)
        data = Types::InvalidNotificationConfig.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidOutputFolder
    class InvalidOutputFolder
      def self.parse(http_resp)
        data = Types::InvalidOutputFolder.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for StartAssociationsOnce
    class StartAssociationsOnce
      def self.parse(http_resp)
        data = Types::StartAssociationsOnceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for InvalidAssociation
    class InvalidAssociation
      def self.parse(http_resp)
        data = Types::InvalidAssociation.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for StartAutomationExecution
    class StartAutomationExecution
      def self.parse(http_resp)
        data = Types::StartAutomationExecutionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.automation_execution_id = map['AutomationExecutionId']
        data
      end
    end

    # Error Parser for AutomationDefinitionNotFoundException
    class AutomationDefinitionNotFoundException
      def self.parse(http_resp)
        data = Types::AutomationDefinitionNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for AutomationDefinitionVersionNotFoundException
    class AutomationDefinitionVersionNotFoundException
      def self.parse(http_resp)
        data = Types::AutomationDefinitionVersionNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for AutomationExecutionLimitExceededException
    class AutomationExecutionLimitExceededException
      def self.parse(http_resp)
        data = Types::AutomationExecutionLimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidAutomationExecutionParametersException
    class InvalidAutomationExecutionParametersException
      def self.parse(http_resp)
        data = Types::InvalidAutomationExecutionParametersException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for StartChangeRequestExecution
    class StartChangeRequestExecution
      def self.parse(http_resp)
        data = Types::StartChangeRequestExecutionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.automation_execution_id = map['AutomationExecutionId']
        data
      end
    end

    # Error Parser for AutomationDefinitionNotApprovedException
    class AutomationDefinitionNotApprovedException
      def self.parse(http_resp)
        data = Types::AutomationDefinitionNotApprovedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for StartSession
    class StartSession
      def self.parse(http_resp)
        data = Types::StartSessionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.session_id = map['SessionId']
        data.token_value = map['TokenValue']
        data.stream_url = map['StreamUrl']
        data
      end
    end

    # Error Parser for TargetNotConnected
    class TargetNotConnected
      def self.parse(http_resp)
        data = Types::TargetNotConnected.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for StopAutomationExecution
    class StopAutomationExecution
      def self.parse(http_resp)
        data = Types::StopAutomationExecutionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for InvalidAutomationStatusUpdateException
    class InvalidAutomationStatusUpdateException
      def self.parse(http_resp)
        data = Types::InvalidAutomationStatusUpdateException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for TerminateSession
    class TerminateSession
      def self.parse(http_resp)
        data = Types::TerminateSessionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.session_id = map['SessionId']
        data
      end
    end

    # Operation Parser for UnlabelParameterVersion
    class UnlabelParameterVersion
      def self.parse(http_resp)
        data = Types::UnlabelParameterVersionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.removed_labels = (ParameterLabelList.parse(map['RemovedLabels']) unless map['RemovedLabels'].nil?)
        data.invalid_labels = (ParameterLabelList.parse(map['InvalidLabels']) unless map['InvalidLabels'].nil?)
        data
      end
    end

    # Operation Parser for UpdateAssociation
    class UpdateAssociation
      def self.parse(http_resp)
        data = Types::UpdateAssociationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.association_description = (AssociationDescription.parse(map['AssociationDescription']) unless map['AssociationDescription'].nil?)
        data
      end
    end

    # Error Parser for AssociationVersionLimitExceeded
    class AssociationVersionLimitExceeded
      def self.parse(http_resp)
        data = Types::AssociationVersionLimitExceeded.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidUpdate
    class InvalidUpdate
      def self.parse(http_resp)
        data = Types::InvalidUpdate.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for UpdateAssociationStatus
    class UpdateAssociationStatus
      def self.parse(http_resp)
        data = Types::UpdateAssociationStatusOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.association_description = (AssociationDescription.parse(map['AssociationDescription']) unless map['AssociationDescription'].nil?)
        data
      end
    end

    # Error Parser for StatusUnchanged
    class StatusUnchanged
      def self.parse(http_resp)
        data = Types::StatusUnchanged.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateDocument
    class UpdateDocument
      def self.parse(http_resp)
        data = Types::UpdateDocumentOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.document_description = (DocumentDescription.parse(map['DocumentDescription']) unless map['DocumentDescription'].nil?)
        data
      end
    end

    # Error Parser for DuplicateDocumentContent
    class DuplicateDocumentContent
      def self.parse(http_resp)
        data = Types::DuplicateDocumentContent.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for DocumentVersionLimitExceeded
    class DocumentVersionLimitExceeded
      def self.parse(http_resp)
        data = Types::DocumentVersionLimitExceeded.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for DuplicateDocumentVersionName
    class DuplicateDocumentVersionName
      def self.parse(http_resp)
        data = Types::DuplicateDocumentVersionName.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for UpdateDocumentDefaultVersion
    class UpdateDocumentDefaultVersion
      def self.parse(http_resp)
        data = Types::UpdateDocumentDefaultVersionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.description = (DocumentDefaultVersionDescription.parse(map['Description']) unless map['Description'].nil?)
        data
      end
    end

    class DocumentDefaultVersionDescription
      def self.parse(map)
        data = Types::DocumentDefaultVersionDescription.new
        data.name = map['Name']
        data.default_version = map['DefaultVersion']
        data.default_version_name = map['DefaultVersionName']
        return data
      end
    end

    # Operation Parser for UpdateDocumentMetadata
    class UpdateDocumentMetadata
      def self.parse(http_resp)
        data = Types::UpdateDocumentMetadataOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateMaintenanceWindow
    class UpdateMaintenanceWindow
      def self.parse(http_resp)
        data = Types::UpdateMaintenanceWindowOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.window_id = map['WindowId']
        data.name = map['Name']
        data.description = map['Description']
        data.start_date = map['StartDate']
        data.end_date = map['EndDate']
        data.schedule = map['Schedule']
        data.schedule_timezone = map['ScheduleTimezone']
        data.schedule_offset = map['ScheduleOffset']
        data.duration = map['Duration']
        data.cutoff = map['Cutoff']
        data.allow_unassociated_targets = map['AllowUnassociatedTargets']
        data.enabled = map['Enabled']
        data
      end
    end

    # Operation Parser for UpdateMaintenanceWindowTarget
    class UpdateMaintenanceWindowTarget
      def self.parse(http_resp)
        data = Types::UpdateMaintenanceWindowTargetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.window_id = map['WindowId']
        data.window_target_id = map['WindowTargetId']
        data.targets = (Targets.parse(map['Targets']) unless map['Targets'].nil?)
        data.owner_information = map['OwnerInformation']
        data.name = map['Name']
        data.description = map['Description']
        data
      end
    end

    # Operation Parser for UpdateMaintenanceWindowTask
    class UpdateMaintenanceWindowTask
      def self.parse(http_resp)
        data = Types::UpdateMaintenanceWindowTaskOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.window_id = map['WindowId']
        data.window_task_id = map['WindowTaskId']
        data.targets = (Targets.parse(map['Targets']) unless map['Targets'].nil?)
        data.task_arn = map['TaskArn']
        data.service_role_arn = map['ServiceRoleArn']
        data.task_parameters = (MaintenanceWindowTaskParameters.parse(map['TaskParameters']) unless map['TaskParameters'].nil?)
        data.task_invocation_parameters = (MaintenanceWindowTaskInvocationParameters.parse(map['TaskInvocationParameters']) unless map['TaskInvocationParameters'].nil?)
        data.priority = map['Priority']
        data.max_concurrency = map['MaxConcurrency']
        data.max_errors = map['MaxErrors']
        data.logging_info = (LoggingInfo.parse(map['LoggingInfo']) unless map['LoggingInfo'].nil?)
        data.name = map['Name']
        data.description = map['Description']
        data.cutoff_behavior = map['CutoffBehavior']
        data
      end
    end

    # Operation Parser for UpdateManagedInstanceRole
    class UpdateManagedInstanceRole
      def self.parse(http_resp)
        data = Types::UpdateManagedInstanceRoleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateOpsItem
    class UpdateOpsItem
      def self.parse(http_resp)
        data = Types::UpdateOpsItemOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateOpsMetadata
    class UpdateOpsMetadata
      def self.parse(http_resp)
        data = Types::UpdateOpsMetadataOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.ops_metadata_arn = map['OpsMetadataArn']
        data
      end
    end

    # Error Parser for OpsMetadataKeyLimitExceededException
    class OpsMetadataKeyLimitExceededException
      def self.parse(http_resp)
        data = Types::OpsMetadataKeyLimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for UpdatePatchBaseline
    class UpdatePatchBaseline
      def self.parse(http_resp)
        data = Types::UpdatePatchBaselineOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.baseline_id = map['BaselineId']
        data.name = map['Name']
        data.operating_system = map['OperatingSystem']
        data.global_filters = (PatchFilterGroup.parse(map['GlobalFilters']) unless map['GlobalFilters'].nil?)
        data.approval_rules = (PatchRuleGroup.parse(map['ApprovalRules']) unless map['ApprovalRules'].nil?)
        data.approved_patches = (PatchIdList.parse(map['ApprovedPatches']) unless map['ApprovedPatches'].nil?)
        data.approved_patches_compliance_level = map['ApprovedPatchesComplianceLevel']
        data.approved_patches_enable_non_security = map['ApprovedPatchesEnableNonSecurity']
        data.rejected_patches = (PatchIdList.parse(map['RejectedPatches']) unless map['RejectedPatches'].nil?)
        data.rejected_patches_action = map['RejectedPatchesAction']
        data.created_date = Time.at(map['CreatedDate'].to_i) if map['CreatedDate']
        data.modified_date = Time.at(map['ModifiedDate'].to_i) if map['ModifiedDate']
        data.description = map['Description']
        data.sources = (PatchSourceList.parse(map['Sources']) unless map['Sources'].nil?)
        data
      end
    end

    # Operation Parser for UpdateResourceDataSync
    class UpdateResourceDataSync
      def self.parse(http_resp)
        data = Types::UpdateResourceDataSyncOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for ResourceDataSyncConflictException
    class ResourceDataSyncConflictException
      def self.parse(http_resp)
        data = Types::ResourceDataSyncConflictException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for UpdateServiceSetting
    class UpdateServiceSetting
      def self.parse(http_resp)
        data = Types::UpdateServiceSettingOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end
  end
end
