# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CloudTrail
  module Parsers

    # Operation Parser for AddTags
    class AddTags
      def self.parse(http_resp)
        data = Types::AddTagsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for NotOrganizationMasterAccountException
    class NotOrganizationMasterAccountException
      def self.parse(http_resp)
        data = Types::NotOrganizationMasterAccountException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidTagParameterException
    class InvalidTagParameterException
      def self.parse(http_resp)
        data = Types::InvalidTagParameterException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidTrailNameException
    class InvalidTrailNameException
      def self.parse(http_resp)
        data = Types::InvalidTrailNameException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for EventDataStoreNotFoundException
    class EventDataStoreNotFoundException
      def self.parse(http_resp)
        data = Types::EventDataStoreNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InactiveEventDataStoreException
    class InactiveEventDataStoreException
      def self.parse(http_resp)
        data = Types::InactiveEventDataStoreException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for OperationNotPermittedException
    class OperationNotPermittedException
      def self.parse(http_resp)
        data = Types::OperationNotPermittedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for TagsLimitExceededException
    class TagsLimitExceededException
      def self.parse(http_resp)
        data = Types::TagsLimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for UnsupportedOperationException
    class UnsupportedOperationException
      def self.parse(http_resp)
        data = Types::UnsupportedOperationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ResourceTypeNotSupportedException
    class ResourceTypeNotSupportedException
      def self.parse(http_resp)
        data = Types::ResourceTypeNotSupportedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for CloudTrailARNInvalidException
    class CloudTrailARNInvalidException
      def self.parse(http_resp)
        data = Types::CloudTrailARNInvalidException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CancelQuery
    class CancelQuery
      def self.parse(http_resp)
        data = Types::CancelQueryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.query_id = map['QueryId']
        data.query_status = map['QueryStatus']
        data
      end
    end

    # Error Parser for InactiveQueryException
    class InactiveQueryException
      def self.parse(http_resp)
        data = Types::InactiveQueryException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidParameterException
    class InvalidParameterException
      def self.parse(http_resp)
        data = Types::InvalidParameterException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for QueryIdNotFoundException
    class QueryIdNotFoundException
      def self.parse(http_resp)
        data = Types::QueryIdNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for EventDataStoreARNInvalidException
    class EventDataStoreARNInvalidException
      def self.parse(http_resp)
        data = Types::EventDataStoreARNInvalidException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateEventDataStore
    class CreateEventDataStore
      def self.parse(http_resp)
        data = Types::CreateEventDataStoreOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.event_data_store_arn = map['EventDataStoreArn']
        data.name = map['Name']
        data.status = map['Status']
        data.advanced_event_selectors = (Parsers::AdvancedEventSelectors.parse(map['AdvancedEventSelectors']) unless map['AdvancedEventSelectors'].nil?)
        data.multi_region_enabled = map['MultiRegionEnabled']
        data.organization_enabled = map['OrganizationEnabled']
        data.retention_period = map['RetentionPeriod']
        data.termination_protection_enabled = map['TerminationProtectionEnabled']
        data.tags_list = (Parsers::TagsList.parse(map['TagsList']) unless map['TagsList'].nil?)
        data.created_timestamp = Time.at(map['CreatedTimestamp'].to_i) if map['CreatedTimestamp']
        data.updated_timestamp = Time.at(map['UpdatedTimestamp'].to_i) if map['UpdatedTimestamp']
        data
      end
    end

    class TagsList
      def self.parse(list)
        list.map do |value|
          Parsers::Tag.parse(value) unless value.nil?
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

    class AdvancedEventSelectors
      def self.parse(list)
        list.map do |value|
          Parsers::AdvancedEventSelector.parse(value) unless value.nil?
        end
      end
    end

    class AdvancedEventSelector
      def self.parse(map)
        data = Types::AdvancedEventSelector.new
        data.name = map['Name']
        data.field_selectors = (Parsers::AdvancedFieldSelectors.parse(map['FieldSelectors']) unless map['FieldSelectors'].nil?)
        return data
      end
    end

    class AdvancedFieldSelectors
      def self.parse(list)
        list.map do |value|
          Parsers::AdvancedFieldSelector.parse(value) unless value.nil?
        end
      end
    end

    class AdvancedFieldSelector
      def self.parse(map)
        data = Types::AdvancedFieldSelector.new
        data.field = map['Field']
        data.equals = (Parsers::Operator.parse(map['Equals']) unless map['Equals'].nil?)
        data.starts_with = (Parsers::Operator.parse(map['StartsWith']) unless map['StartsWith'].nil?)
        data.ends_with = (Parsers::Operator.parse(map['EndsWith']) unless map['EndsWith'].nil?)
        data.not_equals = (Parsers::Operator.parse(map['NotEquals']) unless map['NotEquals'].nil?)
        data.not_starts_with = (Parsers::Operator.parse(map['NotStartsWith']) unless map['NotStartsWith'].nil?)
        data.not_ends_with = (Parsers::Operator.parse(map['NotEndsWith']) unless map['NotEndsWith'].nil?)
        return data
      end
    end

    class Operator
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Error Parser for EventDataStoreAlreadyExistsException
    class EventDataStoreAlreadyExistsException
      def self.parse(http_resp)
        data = Types::EventDataStoreAlreadyExistsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for OrganizationsNotInUseException
    class OrganizationsNotInUseException
      def self.parse(http_resp)
        data = Types::OrganizationsNotInUseException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for CloudTrailAccessNotEnabledException
    class CloudTrailAccessNotEnabledException
      def self.parse(http_resp)
        data = Types::CloudTrailAccessNotEnabledException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for EventDataStoreMaxLimitExceededException
    class EventDataStoreMaxLimitExceededException
      def self.parse(http_resp)
        data = Types::EventDataStoreMaxLimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for OrganizationNotInAllFeaturesModeException
    class OrganizationNotInAllFeaturesModeException
      def self.parse(http_resp)
        data = Types::OrganizationNotInAllFeaturesModeException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InsufficientDependencyServiceAccessPermissionException
    class InsufficientDependencyServiceAccessPermissionException
      def self.parse(http_resp)
        data = Types::InsufficientDependencyServiceAccessPermissionException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateTrail
    class CreateTrail
      def self.parse(http_resp)
        data = Types::CreateTrailOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.name = map['Name']
        data.s3_bucket_name = map['S3BucketName']
        data.s3_key_prefix = map['S3KeyPrefix']
        data.sns_topic_name = map['SnsTopicName']
        data.sns_topic_arn = map['SnsTopicARN']
        data.include_global_service_events = map['IncludeGlobalServiceEvents']
        data.is_multi_region_trail = map['IsMultiRegionTrail']
        data.trail_arn = map['TrailARN']
        data.log_file_validation_enabled = map['LogFileValidationEnabled']
        data.cloud_watch_logs_log_group_arn = map['CloudWatchLogsLogGroupArn']
        data.cloud_watch_logs_role_arn = map['CloudWatchLogsRoleArn']
        data.kms_key_id = map['KmsKeyId']
        data.is_organization_trail = map['IsOrganizationTrail']
        data
      end
    end

    # Error Parser for TrailNotProvidedException
    class TrailNotProvidedException
      def self.parse(http_resp)
        data = Types::TrailNotProvidedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for KmsKeyDisabledException
    class KmsKeyDisabledException
      def self.parse(http_resp)
        data = Types::KmsKeyDisabledException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidS3BucketNameException
    class InvalidS3BucketNameException
      def self.parse(http_resp)
        data = Types::InvalidS3BucketNameException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InsufficientEncryptionPolicyException
    class InsufficientEncryptionPolicyException
      def self.parse(http_resp)
        data = Types::InsufficientEncryptionPolicyException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InsufficientS3BucketPolicyException
    class InsufficientS3BucketPolicyException
      def self.parse(http_resp)
        data = Types::InsufficientS3BucketPolicyException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidCloudWatchLogsLogGroupArnException
    class InvalidCloudWatchLogsLogGroupArnException
      def self.parse(http_resp)
        data = Types::InvalidCloudWatchLogsLogGroupArnException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidParameterCombinationException
    class InvalidParameterCombinationException
      def self.parse(http_resp)
        data = Types::InvalidParameterCombinationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InsufficientSnsTopicPolicyException
    class InsufficientSnsTopicPolicyException
      def self.parse(http_resp)
        data = Types::InsufficientSnsTopicPolicyException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidS3PrefixException
    class InvalidS3PrefixException
      def self.parse(http_resp)
        data = Types::InvalidS3PrefixException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidKmsKeyIdException
    class InvalidKmsKeyIdException
      def self.parse(http_resp)
        data = Types::InvalidKmsKeyIdException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidSnsTopicNameException
    class InvalidSnsTopicNameException
      def self.parse(http_resp)
        data = Types::InvalidSnsTopicNameException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidCloudWatchLogsRoleArnException
    class InvalidCloudWatchLogsRoleArnException
      def self.parse(http_resp)
        data = Types::InvalidCloudWatchLogsRoleArnException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for MaximumNumberOfTrailsExceededException
    class MaximumNumberOfTrailsExceededException
      def self.parse(http_resp)
        data = Types::MaximumNumberOfTrailsExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for S3BucketDoesNotExistException
    class S3BucketDoesNotExistException
      def self.parse(http_resp)
        data = Types::S3BucketDoesNotExistException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for KmsException
    class KmsException
      def self.parse(http_resp)
        data = Types::KmsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for TrailAlreadyExistsException
    class TrailAlreadyExistsException
      def self.parse(http_resp)
        data = Types::TrailAlreadyExistsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for CloudTrailInvalidClientTokenIdException
    class CloudTrailInvalidClientTokenIdException
      def self.parse(http_resp)
        data = Types::CloudTrailInvalidClientTokenIdException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for CloudWatchLogsDeliveryUnavailableException
    class CloudWatchLogsDeliveryUnavailableException
      def self.parse(http_resp)
        data = Types::CloudWatchLogsDeliveryUnavailableException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for KmsKeyNotFoundException
    class KmsKeyNotFoundException
      def self.parse(http_resp)
        data = Types::KmsKeyNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DeleteEventDataStore
    class DeleteEventDataStore
      def self.parse(http_resp)
        data = Types::DeleteEventDataStoreOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for EventDataStoreTerminationProtectedException
    class EventDataStoreTerminationProtectedException
      def self.parse(http_resp)
        data = Types::EventDataStoreTerminationProtectedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DeleteTrail
    class DeleteTrail
      def self.parse(http_resp)
        data = Types::DeleteTrailOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for InvalidHomeRegionException
    class InvalidHomeRegionException
      def self.parse(http_resp)
        data = Types::InvalidHomeRegionException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for TrailNotFoundException
    class TrailNotFoundException
      def self.parse(http_resp)
        data = Types::TrailNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DescribeQuery
    class DescribeQuery
      def self.parse(http_resp)
        data = Types::DescribeQueryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.query_id = map['QueryId']
        data.query_string = map['QueryString']
        data.query_status = map['QueryStatus']
        data.query_statistics = (Parsers::QueryStatisticsForDescribeQuery.parse(map['QueryStatistics']) unless map['QueryStatistics'].nil?)
        data.error_message = map['ErrorMessage']
        data
      end
    end

    class QueryStatisticsForDescribeQuery
      def self.parse(map)
        data = Types::QueryStatisticsForDescribeQuery.new
        data.events_matched = map['EventsMatched']
        data.events_scanned = map['EventsScanned']
        data.bytes_scanned = map['BytesScanned']
        data.execution_time_in_millis = map['ExecutionTimeInMillis']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        return data
      end
    end

    # Operation Parser for DescribeTrails
    class DescribeTrails
      def self.parse(http_resp)
        data = Types::DescribeTrailsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.trail_list = (Parsers::TrailList.parse(map['trailList']) unless map['trailList'].nil?)
        data
      end
    end

    class TrailList
      def self.parse(list)
        list.map do |value|
          Parsers::Trail.parse(value) unless value.nil?
        end
      end
    end

    class Trail
      def self.parse(map)
        data = Types::Trail.new
        data.name = map['Name']
        data.s3_bucket_name = map['S3BucketName']
        data.s3_key_prefix = map['S3KeyPrefix']
        data.sns_topic_name = map['SnsTopicName']
        data.sns_topic_arn = map['SnsTopicARN']
        data.include_global_service_events = map['IncludeGlobalServiceEvents']
        data.is_multi_region_trail = map['IsMultiRegionTrail']
        data.home_region = map['HomeRegion']
        data.trail_arn = map['TrailARN']
        data.log_file_validation_enabled = map['LogFileValidationEnabled']
        data.cloud_watch_logs_log_group_arn = map['CloudWatchLogsLogGroupArn']
        data.cloud_watch_logs_role_arn = map['CloudWatchLogsRoleArn']
        data.kms_key_id = map['KmsKeyId']
        data.has_custom_event_selectors = map['HasCustomEventSelectors']
        data.has_insight_selectors = map['HasInsightSelectors']
        data.is_organization_trail = map['IsOrganizationTrail']
        return data
      end
    end

    # Operation Parser for GetEventDataStore
    class GetEventDataStore
      def self.parse(http_resp)
        data = Types::GetEventDataStoreOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.event_data_store_arn = map['EventDataStoreArn']
        data.name = map['Name']
        data.status = map['Status']
        data.advanced_event_selectors = (Parsers::AdvancedEventSelectors.parse(map['AdvancedEventSelectors']) unless map['AdvancedEventSelectors'].nil?)
        data.multi_region_enabled = map['MultiRegionEnabled']
        data.organization_enabled = map['OrganizationEnabled']
        data.retention_period = map['RetentionPeriod']
        data.termination_protection_enabled = map['TerminationProtectionEnabled']
        data.created_timestamp = Time.at(map['CreatedTimestamp'].to_i) if map['CreatedTimestamp']
        data.updated_timestamp = Time.at(map['UpdatedTimestamp'].to_i) if map['UpdatedTimestamp']
        data
      end
    end

    # Operation Parser for GetEventSelectors
    class GetEventSelectors
      def self.parse(http_resp)
        data = Types::GetEventSelectorsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.trail_arn = map['TrailARN']
        data.event_selectors = (Parsers::EventSelectors.parse(map['EventSelectors']) unless map['EventSelectors'].nil?)
        data.advanced_event_selectors = (Parsers::AdvancedEventSelectors.parse(map['AdvancedEventSelectors']) unless map['AdvancedEventSelectors'].nil?)
        data
      end
    end

    class EventSelectors
      def self.parse(list)
        list.map do |value|
          Parsers::EventSelector.parse(value) unless value.nil?
        end
      end
    end

    class EventSelector
      def self.parse(map)
        data = Types::EventSelector.new
        data.read_write_type = map['ReadWriteType']
        data.include_management_events = map['IncludeManagementEvents']
        data.data_resources = (Parsers::DataResources.parse(map['DataResources']) unless map['DataResources'].nil?)
        data.exclude_management_event_sources = (Parsers::ExcludeManagementEventSources.parse(map['ExcludeManagementEventSources']) unless map['ExcludeManagementEventSources'].nil?)
        return data
      end
    end

    class ExcludeManagementEventSources
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class DataResources
      def self.parse(list)
        list.map do |value|
          Parsers::DataResource.parse(value) unless value.nil?
        end
      end
    end

    class DataResource
      def self.parse(map)
        data = Types::DataResource.new
        data.type = map['Type']
        data.values = (Parsers::DataResourceValues.parse(map['Values']) unless map['Values'].nil?)
        return data
      end
    end

    class DataResourceValues
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for GetInsightSelectors
    class GetInsightSelectors
      def self.parse(http_resp)
        data = Types::GetInsightSelectorsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.trail_arn = map['TrailARN']
        data.insight_selectors = (Parsers::InsightSelectors.parse(map['InsightSelectors']) unless map['InsightSelectors'].nil?)
        data
      end
    end

    class InsightSelectors
      def self.parse(list)
        list.map do |value|
          Parsers::InsightSelector.parse(value) unless value.nil?
        end
      end
    end

    class InsightSelector
      def self.parse(map)
        data = Types::InsightSelector.new
        data.insight_type = map['InsightType']
        return data
      end
    end

    # Error Parser for InsightNotEnabledException
    class InsightNotEnabledException
      def self.parse(http_resp)
        data = Types::InsightNotEnabledException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for GetQueryResults
    class GetQueryResults
      def self.parse(http_resp)
        data = Types::GetQueryResultsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.query_status = map['QueryStatus']
        data.query_statistics = (Parsers::QueryStatistics.parse(map['QueryStatistics']) unless map['QueryStatistics'].nil?)
        data.query_result_rows = (Parsers::QueryResultRows.parse(map['QueryResultRows']) unless map['QueryResultRows'].nil?)
        data.next_token = map['NextToken']
        data.error_message = map['ErrorMessage']
        data
      end
    end

    class QueryResultRows
      def self.parse(list)
        list.map do |value|
          Parsers::QueryResultRow.parse(value) unless value.nil?
        end
      end
    end

    class QueryResultRow
      def self.parse(list)
        list.map do |value|
          Parsers::QueryResultColumn.parse(value) unless value.nil?
        end
      end
    end

    class QueryResultColumn
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class QueryStatistics
      def self.parse(map)
        data = Types::QueryStatistics.new
        data.results_count = map['ResultsCount']
        data.total_results_count = map['TotalResultsCount']
        data.bytes_scanned = map['BytesScanned']
        return data
      end
    end

    # Error Parser for InvalidMaxResultsException
    class InvalidMaxResultsException
      def self.parse(http_resp)
        data = Types::InvalidMaxResultsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidNextTokenException
    class InvalidNextTokenException
      def self.parse(http_resp)
        data = Types::InvalidNextTokenException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for GetTrail
    class GetTrail
      def self.parse(http_resp)
        data = Types::GetTrailOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.trail = (Parsers::Trail.parse(map['Trail']) unless map['Trail'].nil?)
        data
      end
    end

    # Operation Parser for GetTrailStatus
    class GetTrailStatus
      def self.parse(http_resp)
        data = Types::GetTrailStatusOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.is_logging = map['IsLogging']
        data.latest_delivery_error = map['LatestDeliveryError']
        data.latest_notification_error = map['LatestNotificationError']
        data.latest_delivery_time = Time.at(map['LatestDeliveryTime'].to_i) if map['LatestDeliveryTime']
        data.latest_notification_time = Time.at(map['LatestNotificationTime'].to_i) if map['LatestNotificationTime']
        data.start_logging_time = Time.at(map['StartLoggingTime'].to_i) if map['StartLoggingTime']
        data.stop_logging_time = Time.at(map['StopLoggingTime'].to_i) if map['StopLoggingTime']
        data.latest_cloud_watch_logs_delivery_error = map['LatestCloudWatchLogsDeliveryError']
        data.latest_cloud_watch_logs_delivery_time = Time.at(map['LatestCloudWatchLogsDeliveryTime'].to_i) if map['LatestCloudWatchLogsDeliveryTime']
        data.latest_digest_delivery_time = Time.at(map['LatestDigestDeliveryTime'].to_i) if map['LatestDigestDeliveryTime']
        data.latest_digest_delivery_error = map['LatestDigestDeliveryError']
        data.latest_delivery_attempt_time = map['LatestDeliveryAttemptTime']
        data.latest_notification_attempt_time = map['LatestNotificationAttemptTime']
        data.latest_notification_attempt_succeeded = map['LatestNotificationAttemptSucceeded']
        data.latest_delivery_attempt_succeeded = map['LatestDeliveryAttemptSucceeded']
        data.time_logging_started = map['TimeLoggingStarted']
        data.time_logging_stopped = map['TimeLoggingStopped']
        data
      end
    end

    # Operation Parser for ListEventDataStores
    class ListEventDataStores
      def self.parse(http_resp)
        data = Types::ListEventDataStoresOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.event_data_stores = (Parsers::EventDataStores.parse(map['EventDataStores']) unless map['EventDataStores'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class EventDataStores
      def self.parse(list)
        list.map do |value|
          Parsers::EventDataStore.parse(value) unless value.nil?
        end
      end
    end

    class EventDataStore
      def self.parse(map)
        data = Types::EventDataStore.new
        data.event_data_store_arn = map['EventDataStoreArn']
        data.name = map['Name']
        data.termination_protection_enabled = map['TerminationProtectionEnabled']
        data.status = map['Status']
        data.advanced_event_selectors = (Parsers::AdvancedEventSelectors.parse(map['AdvancedEventSelectors']) unless map['AdvancedEventSelectors'].nil?)
        data.multi_region_enabled = map['MultiRegionEnabled']
        data.organization_enabled = map['OrganizationEnabled']
        data.retention_period = map['RetentionPeriod']
        data.created_timestamp = Time.at(map['CreatedTimestamp'].to_i) if map['CreatedTimestamp']
        data.updated_timestamp = Time.at(map['UpdatedTimestamp'].to_i) if map['UpdatedTimestamp']
        return data
      end
    end

    # Operation Parser for ListPublicKeys
    class ListPublicKeys
      def self.parse(http_resp)
        data = Types::ListPublicKeysOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.public_key_list = (Parsers::PublicKeyList.parse(map['PublicKeyList']) unless map['PublicKeyList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class PublicKeyList
      def self.parse(list)
        list.map do |value|
          Parsers::PublicKey.parse(value) unless value.nil?
        end
      end
    end

    class PublicKey
      def self.parse(map)
        data = Types::PublicKey.new
        data.value = Base64::decode64(map['Value']) unless map['Value'].nil?
        data.validity_start_time = Time.at(map['ValidityStartTime'].to_i) if map['ValidityStartTime']
        data.validity_end_time = Time.at(map['ValidityEndTime'].to_i) if map['ValidityEndTime']
        data.fingerprint = map['Fingerprint']
        return data
      end
    end

    # Error Parser for InvalidTimeRangeException
    class InvalidTimeRangeException
      def self.parse(http_resp)
        data = Types::InvalidTimeRangeException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidTokenException
    class InvalidTokenException
      def self.parse(http_resp)
        data = Types::InvalidTokenException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for ListQueries
    class ListQueries
      def self.parse(http_resp)
        data = Types::ListQueriesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.queries = (Parsers::Queries.parse(map['Queries']) unless map['Queries'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class Queries
      def self.parse(list)
        list.map do |value|
          Parsers::Query.parse(value) unless value.nil?
        end
      end
    end

    class Query
      def self.parse(map)
        data = Types::Query.new
        data.query_id = map['QueryId']
        data.query_status = map['QueryStatus']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        return data
      end
    end

    # Error Parser for InvalidDateRangeException
    class InvalidDateRangeException
      def self.parse(http_resp)
        data = Types::InvalidDateRangeException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidQueryStatusException
    class InvalidQueryStatusException
      def self.parse(http_resp)
        data = Types::InvalidQueryStatusException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for ListTags
    class ListTags
      def self.parse(http_resp)
        data = Types::ListTagsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.resource_tag_list = (Parsers::ResourceTagList.parse(map['ResourceTagList']) unless map['ResourceTagList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ResourceTagList
      def self.parse(list)
        list.map do |value|
          Parsers::ResourceTag.parse(value) unless value.nil?
        end
      end
    end

    class ResourceTag
      def self.parse(map)
        data = Types::ResourceTag.new
        data.resource_id = map['ResourceId']
        data.tags_list = (Parsers::TagsList.parse(map['TagsList']) unless map['TagsList'].nil?)
        return data
      end
    end

    # Operation Parser for ListTrails
    class ListTrails
      def self.parse(http_resp)
        data = Types::ListTrailsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.trails = (Parsers::Trails.parse(map['Trails']) unless map['Trails'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class Trails
      def self.parse(list)
        list.map do |value|
          Parsers::TrailInfo.parse(value) unless value.nil?
        end
      end
    end

    class TrailInfo
      def self.parse(map)
        data = Types::TrailInfo.new
        data.trail_arn = map['TrailARN']
        data.name = map['Name']
        data.home_region = map['HomeRegion']
        return data
      end
    end

    # Operation Parser for LookupEvents
    class LookupEvents
      def self.parse(http_resp)
        data = Types::LookupEventsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.events = (Parsers::EventsList.parse(map['Events']) unless map['Events'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class EventsList
      def self.parse(list)
        list.map do |value|
          Parsers::Event.parse(value) unless value.nil?
        end
      end
    end

    class Event
      def self.parse(map)
        data = Types::Event.new
        data.event_id = map['EventId']
        data.event_name = map['EventName']
        data.read_only = map['ReadOnly']
        data.access_key_id = map['AccessKeyId']
        data.event_time = Time.at(map['EventTime'].to_i) if map['EventTime']
        data.event_source = map['EventSource']
        data.username = map['Username']
        data.resources = (Parsers::ResourceList.parse(map['Resources']) unless map['Resources'].nil?)
        data.cloud_trail_event = map['CloudTrailEvent']
        return data
      end
    end

    class ResourceList
      def self.parse(list)
        list.map do |value|
          Parsers::Resource.parse(value) unless value.nil?
        end
      end
    end

    class Resource
      def self.parse(map)
        data = Types::Resource.new
        data.resource_type = map['ResourceType']
        data.resource_name = map['ResourceName']
        return data
      end
    end

    # Error Parser for InvalidLookupAttributesException
    class InvalidLookupAttributesException
      def self.parse(http_resp)
        data = Types::InvalidLookupAttributesException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidEventCategoryException
    class InvalidEventCategoryException
      def self.parse(http_resp)
        data = Types::InvalidEventCategoryException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for PutEventSelectors
    class PutEventSelectors
      def self.parse(http_resp)
        data = Types::PutEventSelectorsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.trail_arn = map['TrailARN']
        data.event_selectors = (Parsers::EventSelectors.parse(map['EventSelectors']) unless map['EventSelectors'].nil?)
        data.advanced_event_selectors = (Parsers::AdvancedEventSelectors.parse(map['AdvancedEventSelectors']) unless map['AdvancedEventSelectors'].nil?)
        data
      end
    end

    # Error Parser for InvalidEventSelectorsException
    class InvalidEventSelectorsException
      def self.parse(http_resp)
        data = Types::InvalidEventSelectorsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for PutInsightSelectors
    class PutInsightSelectors
      def self.parse(http_resp)
        data = Types::PutInsightSelectorsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.trail_arn = map['TrailARN']
        data.insight_selectors = (Parsers::InsightSelectors.parse(map['InsightSelectors']) unless map['InsightSelectors'].nil?)
        data
      end
    end

    # Error Parser for InvalidInsightSelectorsException
    class InvalidInsightSelectorsException
      def self.parse(http_resp)
        data = Types::InvalidInsightSelectorsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for RemoveTags
    class RemoveTags
      def self.parse(http_resp)
        data = Types::RemoveTagsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for RestoreEventDataStore
    class RestoreEventDataStore
      def self.parse(http_resp)
        data = Types::RestoreEventDataStoreOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.event_data_store_arn = map['EventDataStoreArn']
        data.name = map['Name']
        data.status = map['Status']
        data.advanced_event_selectors = (Parsers::AdvancedEventSelectors.parse(map['AdvancedEventSelectors']) unless map['AdvancedEventSelectors'].nil?)
        data.multi_region_enabled = map['MultiRegionEnabled']
        data.organization_enabled = map['OrganizationEnabled']
        data.retention_period = map['RetentionPeriod']
        data.termination_protection_enabled = map['TerminationProtectionEnabled']
        data.created_timestamp = Time.at(map['CreatedTimestamp'].to_i) if map['CreatedTimestamp']
        data.updated_timestamp = Time.at(map['UpdatedTimestamp'].to_i) if map['UpdatedTimestamp']
        data
      end
    end

    # Error Parser for InvalidEventDataStoreStatusException
    class InvalidEventDataStoreStatusException
      def self.parse(http_resp)
        data = Types::InvalidEventDataStoreStatusException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for StartLogging
    class StartLogging
      def self.parse(http_resp)
        data = Types::StartLoggingOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for StartQuery
    class StartQuery
      def self.parse(http_resp)
        data = Types::StartQueryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.query_id = map['QueryId']
        data
      end
    end

    # Error Parser for InvalidQueryStatementException
    class InvalidQueryStatementException
      def self.parse(http_resp)
        data = Types::InvalidQueryStatementException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for MaxConcurrentQueriesException
    class MaxConcurrentQueriesException
      def self.parse(http_resp)
        data = Types::MaxConcurrentQueriesException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for StopLogging
    class StopLogging
      def self.parse(http_resp)
        data = Types::StopLoggingOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateEventDataStore
    class UpdateEventDataStore
      def self.parse(http_resp)
        data = Types::UpdateEventDataStoreOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.event_data_store_arn = map['EventDataStoreArn']
        data.name = map['Name']
        data.status = map['Status']
        data.advanced_event_selectors = (Parsers::AdvancedEventSelectors.parse(map['AdvancedEventSelectors']) unless map['AdvancedEventSelectors'].nil?)
        data.multi_region_enabled = map['MultiRegionEnabled']
        data.organization_enabled = map['OrganizationEnabled']
        data.retention_period = map['RetentionPeriod']
        data.termination_protection_enabled = map['TerminationProtectionEnabled']
        data.created_timestamp = Time.at(map['CreatedTimestamp'].to_i) if map['CreatedTimestamp']
        data.updated_timestamp = Time.at(map['UpdatedTimestamp'].to_i) if map['UpdatedTimestamp']
        data
      end
    end

    # Operation Parser for UpdateTrail
    class UpdateTrail
      def self.parse(http_resp)
        data = Types::UpdateTrailOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.name = map['Name']
        data.s3_bucket_name = map['S3BucketName']
        data.s3_key_prefix = map['S3KeyPrefix']
        data.sns_topic_name = map['SnsTopicName']
        data.sns_topic_arn = map['SnsTopicARN']
        data.include_global_service_events = map['IncludeGlobalServiceEvents']
        data.is_multi_region_trail = map['IsMultiRegionTrail']
        data.trail_arn = map['TrailARN']
        data.log_file_validation_enabled = map['LogFileValidationEnabled']
        data.cloud_watch_logs_log_group_arn = map['CloudWatchLogsLogGroupArn']
        data.cloud_watch_logs_role_arn = map['CloudWatchLogsRoleArn']
        data.kms_key_id = map['KmsKeyId']
        data.is_organization_trail = map['IsOrganizationTrail']
        data
      end
    end
  end
end
