# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CustomerProfiles
  module Parsers

    # Operation Parser for AddProfileKey
    class AddProfileKey
      def self.parse(http_resp)
        data = Types::AddProfileKeyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.key_name = map['KeyName']
        data.values = (RequestValueList.parse(map['Values']) unless map['Values'].nil?)
        data
      end
    end

    class RequestValueList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Error Parser for ThrottlingException
    class ThrottlingException
      def self.parse(http_resp)
        data = Types::ThrottlingException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InternalServerException
    class InternalServerException
      def self.parse(http_resp)
        data = Types::InternalServerException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for BadRequestException
    class BadRequestException
      def self.parse(http_resp)
        data = Types::BadRequestException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateDomain
    class CreateDomain
      def self.parse(http_resp)
        data = Types::CreateDomainOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.domain_name = map['DomainName']
        data.default_expiration_days = map['DefaultExpirationDays']
        data.default_encryption_key = map['DefaultEncryptionKey']
        data.dead_letter_queue_url = map['DeadLetterQueueUrl']
        data.matching = (MatchingResponse.parse(map['Matching']) unless map['Matching'].nil?)
        data.created_at = Time.at(map['CreatedAt'].to_i) if map['CreatedAt']
        data.last_updated_at = Time.at(map['LastUpdatedAt'].to_i) if map['LastUpdatedAt']
        data.tags = (TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    class TagMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class MatchingResponse
      def self.parse(map)
        data = Types::MatchingResponse.new
        data.enabled = map['Enabled']
        data.job_schedule = (JobSchedule.parse(map['JobSchedule']) unless map['JobSchedule'].nil?)
        data.auto_merging = (AutoMerging.parse(map['AutoMerging']) unless map['AutoMerging'].nil?)
        data.exporting_config = (ExportingConfig.parse(map['ExportingConfig']) unless map['ExportingConfig'].nil?)
        return data
      end
    end

    class ExportingConfig
      def self.parse(map)
        data = Types::ExportingConfig.new
        data.s3_exporting = (S3ExportingConfig.parse(map['S3Exporting']) unless map['S3Exporting'].nil?)
        return data
      end
    end

    class S3ExportingConfig
      def self.parse(map)
        data = Types::S3ExportingConfig.new
        data.s3_bucket_name = map['S3BucketName']
        data.s3_key_name = map['S3KeyName']
        return data
      end
    end

    class AutoMerging
      def self.parse(map)
        data = Types::AutoMerging.new
        data.enabled = map['Enabled']
        data.consolidation = (Consolidation.parse(map['Consolidation']) unless map['Consolidation'].nil?)
        data.conflict_resolution = (ConflictResolution.parse(map['ConflictResolution']) unless map['ConflictResolution'].nil?)
        return data
      end
    end

    class ConflictResolution
      def self.parse(map)
        data = Types::ConflictResolution.new
        data.conflict_resolving_model = map['ConflictResolvingModel']
        data.source_name = map['SourceName']
        return data
      end
    end

    class Consolidation
      def self.parse(map)
        data = Types::Consolidation.new
        data.matching_attributes_list = (MatchingAttributesList.parse(map['MatchingAttributesList']) unless map['MatchingAttributesList'].nil?)
        return data
      end
    end

    class MatchingAttributesList
      def self.parse(list)
        data = []
        list.map do |value|
          data << MatchingAttributes.parse(value) unless value.nil?
        end
        data
      end
    end

    class MatchingAttributes
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class JobSchedule
      def self.parse(map)
        data = Types::JobSchedule.new
        data.day_of_the_week = map['DayOfTheWeek']
        data.time = map['Time']
        return data
      end
    end

    # Operation Parser for CreateIntegrationWorkflow
    class CreateIntegrationWorkflow
      def self.parse(http_resp)
        data = Types::CreateIntegrationWorkflowOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.workflow_id = map['WorkflowId']
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateProfile
    class CreateProfile
      def self.parse(http_resp)
        data = Types::CreateProfileOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.profile_id = map['ProfileId']
        data
      end
    end

    # Operation Parser for DeleteDomain
    class DeleteDomain
      def self.parse(http_resp)
        data = Types::DeleteDomainOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DeleteIntegration
    class DeleteIntegration
      def self.parse(http_resp)
        data = Types::DeleteIntegrationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DeleteProfile
    class DeleteProfile
      def self.parse(http_resp)
        data = Types::DeleteProfileOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DeleteProfileKey
    class DeleteProfileKey
      def self.parse(http_resp)
        data = Types::DeleteProfileKeyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DeleteProfileObject
    class DeleteProfileObject
      def self.parse(http_resp)
        data = Types::DeleteProfileObjectOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DeleteProfileObjectType
    class DeleteProfileObjectType
      def self.parse(http_resp)
        data = Types::DeleteProfileObjectTypeOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DeleteWorkflow
    class DeleteWorkflow
      def self.parse(http_resp)
        data = Types::DeleteWorkflowOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for GetAutoMergingPreview
    class GetAutoMergingPreview
      def self.parse(http_resp)
        data = Types::GetAutoMergingPreviewOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.domain_name = map['DomainName']
        data.number_of_matches_in_sample = map['NumberOfMatchesInSample']
        data.number_of_profiles_in_sample = map['NumberOfProfilesInSample']
        data.number_of_profiles_will_be_merged = map['NumberOfProfilesWillBeMerged']
        data
      end
    end

    # Operation Parser for GetDomain
    class GetDomain
      def self.parse(http_resp)
        data = Types::GetDomainOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.domain_name = map['DomainName']
        data.default_expiration_days = map['DefaultExpirationDays']
        data.default_encryption_key = map['DefaultEncryptionKey']
        data.dead_letter_queue_url = map['DeadLetterQueueUrl']
        data.stats = (DomainStats.parse(map['Stats']) unless map['Stats'].nil?)
        data.matching = (MatchingResponse.parse(map['Matching']) unless map['Matching'].nil?)
        data.created_at = Time.at(map['CreatedAt'].to_i) if map['CreatedAt']
        data.last_updated_at = Time.at(map['LastUpdatedAt'].to_i) if map['LastUpdatedAt']
        data.tags = (TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    class DomainStats
      def self.parse(map)
        data = Types::DomainStats.new
        data.profile_count = map['ProfileCount']
        data.metering_profile_count = map['MeteringProfileCount']
        data.object_count = map['ObjectCount']
        data.total_size = map['TotalSize']
        return data
      end
    end

    # Operation Parser for GetIdentityResolutionJob
    class GetIdentityResolutionJob
      def self.parse(http_resp)
        data = Types::GetIdentityResolutionJobOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.domain_name = map['DomainName']
        data.job_id = map['JobId']
        data.status = map['Status']
        data.message = map['Message']
        data.job_start_time = Time.at(map['JobStartTime'].to_i) if map['JobStartTime']
        data.job_end_time = Time.at(map['JobEndTime'].to_i) if map['JobEndTime']
        data.last_updated_at = Time.at(map['LastUpdatedAt'].to_i) if map['LastUpdatedAt']
        data.job_expiration_time = Time.at(map['JobExpirationTime'].to_i) if map['JobExpirationTime']
        data.auto_merging = (AutoMerging.parse(map['AutoMerging']) unless map['AutoMerging'].nil?)
        data.exporting_location = (ExportingLocation.parse(map['ExportingLocation']) unless map['ExportingLocation'].nil?)
        data.job_stats = (JobStats.parse(map['JobStats']) unless map['JobStats'].nil?)
        data
      end
    end

    class JobStats
      def self.parse(map)
        data = Types::JobStats.new
        data.number_of_profiles_reviewed = map['NumberOfProfilesReviewed']
        data.number_of_matches_found = map['NumberOfMatchesFound']
        data.number_of_merges_done = map['NumberOfMergesDone']
        return data
      end
    end

    class ExportingLocation
      def self.parse(map)
        data = Types::ExportingLocation.new
        data.s3_exporting = (S3ExportingLocation.parse(map['S3Exporting']) unless map['S3Exporting'].nil?)
        return data
      end
    end

    class S3ExportingLocation
      def self.parse(map)
        data = Types::S3ExportingLocation.new
        data.s3_bucket_name = map['S3BucketName']
        data.s3_key_name = map['S3KeyName']
        return data
      end
    end

    # Operation Parser for GetIntegration
    class GetIntegration
      def self.parse(http_resp)
        data = Types::GetIntegrationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.domain_name = map['DomainName']
        data.uri = map['Uri']
        data.object_type_name = map['ObjectTypeName']
        data.created_at = Time.at(map['CreatedAt'].to_i) if map['CreatedAt']
        data.last_updated_at = Time.at(map['LastUpdatedAt'].to_i) if map['LastUpdatedAt']
        data.tags = (TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        data.object_type_names = (ObjectTypeNames.parse(map['ObjectTypeNames']) unless map['ObjectTypeNames'].nil?)
        data.workflow_id = map['WorkflowId']
        data
      end
    end

    class ObjectTypeNames
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetMatches
    class GetMatches
      def self.parse(http_resp)
        data = Types::GetMatchesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['NextToken']
        data.match_generation_date = Time.at(map['MatchGenerationDate'].to_i) if map['MatchGenerationDate']
        data.potential_matches = map['PotentialMatches']
        data.matches = (MatchesList.parse(map['Matches']) unless map['Matches'].nil?)
        data
      end
    end

    class MatchesList
      def self.parse(list)
        data = []
        list.map do |value|
          data << MatchItem.parse(value) unless value.nil?
        end
        data
      end
    end

    class MatchItem
      def self.parse(map)
        data = Types::MatchItem.new
        data.match_id = map['MatchId']
        data.profile_ids = (ProfileIdList.parse(map['ProfileIds']) unless map['ProfileIds'].nil?)
        data.confidence_score = Hearth::NumberHelper.deserialize(map['ConfidenceScore'])
        return data
      end
    end

    class ProfileIdList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetProfileObjectType
    class GetProfileObjectType
      def self.parse(http_resp)
        data = Types::GetProfileObjectTypeOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.object_type_name = map['ObjectTypeName']
        data.description = map['Description']
        data.template_id = map['TemplateId']
        data.expiration_days = map['ExpirationDays']
        data.encryption_key = map['EncryptionKey']
        data.allow_profile_creation = map['AllowProfileCreation']
        data.source_last_updated_timestamp_format = map['SourceLastUpdatedTimestampFormat']
        data.fields = (FieldMap.parse(map['Fields']) unless map['Fields'].nil?)
        data.keys = (KeyMap.parse(map['Keys']) unless map['Keys'].nil?)
        data.created_at = Time.at(map['CreatedAt'].to_i) if map['CreatedAt']
        data.last_updated_at = Time.at(map['LastUpdatedAt'].to_i) if map['LastUpdatedAt']
        data.tags = (TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    class KeyMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = ObjectTypeKeyList.parse(value) unless value.nil?
        end
        data
      end
    end

    class ObjectTypeKeyList
      def self.parse(list)
        data = []
        list.map do |value|
          data << ObjectTypeKey.parse(value) unless value.nil?
        end
        data
      end
    end

    class ObjectTypeKey
      def self.parse(map)
        data = Types::ObjectTypeKey.new
        data.standard_identifiers = (StandardIdentifierList.parse(map['StandardIdentifiers']) unless map['StandardIdentifiers'].nil?)
        data.field_names = (FieldNameList.parse(map['FieldNames']) unless map['FieldNames'].nil?)
        return data
      end
    end

    class FieldNameList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class StandardIdentifierList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class FieldMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = ObjectTypeField.parse(value) unless value.nil?
        end
        data
      end
    end

    class ObjectTypeField
      def self.parse(map)
        data = Types::ObjectTypeField.new
        data.source = map['Source']
        data.target = map['Target']
        data.content_type = map['ContentType']
        return data
      end
    end

    # Operation Parser for GetProfileObjectTypeTemplate
    class GetProfileObjectTypeTemplate
      def self.parse(http_resp)
        data = Types::GetProfileObjectTypeTemplateOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.template_id = map['TemplateId']
        data.source_name = map['SourceName']
        data.source_object = map['SourceObject']
        data.allow_profile_creation = map['AllowProfileCreation']
        data.source_last_updated_timestamp_format = map['SourceLastUpdatedTimestampFormat']
        data.fields = (FieldMap.parse(map['Fields']) unless map['Fields'].nil?)
        data.keys = (KeyMap.parse(map['Keys']) unless map['Keys'].nil?)
        data
      end
    end

    # Operation Parser for GetWorkflow
    class GetWorkflow
      def self.parse(http_resp)
        data = Types::GetWorkflowOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.workflow_id = map['WorkflowId']
        data.workflow_type = map['WorkflowType']
        data.status = map['Status']
        data.error_description = map['ErrorDescription']
        data.start_date = Time.at(map['StartDate'].to_i) if map['StartDate']
        data.last_updated_at = Time.at(map['LastUpdatedAt'].to_i) if map['LastUpdatedAt']
        data.attributes = (WorkflowAttributes.parse(map['Attributes']) unless map['Attributes'].nil?)
        data.metrics = (WorkflowMetrics.parse(map['Metrics']) unless map['Metrics'].nil?)
        data
      end
    end

    class WorkflowMetrics
      def self.parse(map)
        data = Types::WorkflowMetrics.new
        data.appflow_integration = (AppflowIntegrationWorkflowMetrics.parse(map['AppflowIntegration']) unless map['AppflowIntegration'].nil?)
        return data
      end
    end

    class AppflowIntegrationWorkflowMetrics
      def self.parse(map)
        data = Types::AppflowIntegrationWorkflowMetrics.new
        data.records_processed = map['RecordsProcessed']
        data.steps_completed = map['StepsCompleted']
        data.total_steps = map['TotalSteps']
        return data
      end
    end

    class WorkflowAttributes
      def self.parse(map)
        data = Types::WorkflowAttributes.new
        data.appflow_integration = (AppflowIntegrationWorkflowAttributes.parse(map['AppflowIntegration']) unless map['AppflowIntegration'].nil?)
        return data
      end
    end

    class AppflowIntegrationWorkflowAttributes
      def self.parse(map)
        data = Types::AppflowIntegrationWorkflowAttributes.new
        data.source_connector_type = map['SourceConnectorType']
        data.connector_profile_name = map['ConnectorProfileName']
        data.role_arn = map['RoleArn']
        return data
      end
    end

    # Operation Parser for GetWorkflowSteps
    class GetWorkflowSteps
      def self.parse(http_resp)
        data = Types::GetWorkflowStepsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.workflow_id = map['WorkflowId']
        data.workflow_type = map['WorkflowType']
        data.items = (WorkflowStepsList.parse(map['Items']) unless map['Items'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class WorkflowStepsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << WorkflowStepItem.parse(value) unless value.nil?
        end
        data
      end
    end

    class WorkflowStepItem
      def self.parse(map)
        data = Types::WorkflowStepItem.new
        data.appflow_integration = (AppflowIntegrationWorkflowStep.parse(map['AppflowIntegration']) unless map['AppflowIntegration'].nil?)
        return data
      end
    end

    class AppflowIntegrationWorkflowStep
      def self.parse(map)
        data = Types::AppflowIntegrationWorkflowStep.new
        data.flow_name = map['FlowName']
        data.status = map['Status']
        data.execution_message = map['ExecutionMessage']
        data.records_processed = map['RecordsProcessed']
        data.batch_records_start_time = map['BatchRecordsStartTime']
        data.batch_records_end_time = map['BatchRecordsEndTime']
        data.created_at = Time.at(map['CreatedAt'].to_i) if map['CreatedAt']
        data.last_updated_at = Time.at(map['LastUpdatedAt'].to_i) if map['LastUpdatedAt']
        return data
      end
    end

    # Operation Parser for ListAccountIntegrations
    class ListAccountIntegrations
      def self.parse(http_resp)
        data = Types::ListAccountIntegrationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.items = (IntegrationList.parse(map['Items']) unless map['Items'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class IntegrationList
      def self.parse(list)
        data = []
        list.map do |value|
          data << ListIntegrationItem.parse(value) unless value.nil?
        end
        data
      end
    end

    class ListIntegrationItem
      def self.parse(map)
        data = Types::ListIntegrationItem.new
        data.domain_name = map['DomainName']
        data.uri = map['Uri']
        data.object_type_name = map['ObjectTypeName']
        data.created_at = Time.at(map['CreatedAt'].to_i) if map['CreatedAt']
        data.last_updated_at = Time.at(map['LastUpdatedAt'].to_i) if map['LastUpdatedAt']
        data.tags = (TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        data.object_type_names = (ObjectTypeNames.parse(map['ObjectTypeNames']) unless map['ObjectTypeNames'].nil?)
        data.workflow_id = map['WorkflowId']
        return data
      end
    end

    # Operation Parser for ListDomains
    class ListDomains
      def self.parse(http_resp)
        data = Types::ListDomainsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.items = (DomainList.parse(map['Items']) unless map['Items'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class DomainList
      def self.parse(list)
        data = []
        list.map do |value|
          data << ListDomainItem.parse(value) unless value.nil?
        end
        data
      end
    end

    class ListDomainItem
      def self.parse(map)
        data = Types::ListDomainItem.new
        data.domain_name = map['DomainName']
        data.created_at = Time.at(map['CreatedAt'].to_i) if map['CreatedAt']
        data.last_updated_at = Time.at(map['LastUpdatedAt'].to_i) if map['LastUpdatedAt']
        data.tags = (TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        return data
      end
    end

    # Operation Parser for ListIdentityResolutionJobs
    class ListIdentityResolutionJobs
      def self.parse(http_resp)
        data = Types::ListIdentityResolutionJobsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.identity_resolution_jobs_list = (IdentityResolutionJobsList.parse(map['IdentityResolutionJobsList']) unless map['IdentityResolutionJobsList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class IdentityResolutionJobsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << IdentityResolutionJob.parse(value) unless value.nil?
        end
        data
      end
    end

    class IdentityResolutionJob
      def self.parse(map)
        data = Types::IdentityResolutionJob.new
        data.domain_name = map['DomainName']
        data.job_id = map['JobId']
        data.status = map['Status']
        data.job_start_time = Time.at(map['JobStartTime'].to_i) if map['JobStartTime']
        data.job_end_time = Time.at(map['JobEndTime'].to_i) if map['JobEndTime']
        data.job_stats = (JobStats.parse(map['JobStats']) unless map['JobStats'].nil?)
        data.exporting_location = (ExportingLocation.parse(map['ExportingLocation']) unless map['ExportingLocation'].nil?)
        data.message = map['Message']
        return data
      end
    end

    # Operation Parser for ListIntegrations
    class ListIntegrations
      def self.parse(http_resp)
        data = Types::ListIntegrationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.items = (IntegrationList.parse(map['Items']) unless map['Items'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    # Operation Parser for ListProfileObjectTypeTemplates
    class ListProfileObjectTypeTemplates
      def self.parse(http_resp)
        data = Types::ListProfileObjectTypeTemplatesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.items = (ProfileObjectTypeTemplateList.parse(map['Items']) unless map['Items'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ProfileObjectTypeTemplateList
      def self.parse(list)
        data = []
        list.map do |value|
          data << ListProfileObjectTypeTemplateItem.parse(value) unless value.nil?
        end
        data
      end
    end

    class ListProfileObjectTypeTemplateItem
      def self.parse(map)
        data = Types::ListProfileObjectTypeTemplateItem.new
        data.template_id = map['TemplateId']
        data.source_name = map['SourceName']
        data.source_object = map['SourceObject']
        return data
      end
    end

    # Operation Parser for ListProfileObjectTypes
    class ListProfileObjectTypes
      def self.parse(http_resp)
        data = Types::ListProfileObjectTypesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.items = (ProfileObjectTypeList.parse(map['Items']) unless map['Items'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ProfileObjectTypeList
      def self.parse(list)
        data = []
        list.map do |value|
          data << ListProfileObjectTypeItem.parse(value) unless value.nil?
        end
        data
      end
    end

    class ListProfileObjectTypeItem
      def self.parse(map)
        data = Types::ListProfileObjectTypeItem.new
        data.object_type_name = map['ObjectTypeName']
        data.description = map['Description']
        data.created_at = Time.at(map['CreatedAt'].to_i) if map['CreatedAt']
        data.last_updated_at = Time.at(map['LastUpdatedAt'].to_i) if map['LastUpdatedAt']
        data.tags = (TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        return data
      end
    end

    # Operation Parser for ListProfileObjects
    class ListProfileObjects
      def self.parse(http_resp)
        data = Types::ListProfileObjectsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.items = (ProfileObjectList.parse(map['Items']) unless map['Items'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ProfileObjectList
      def self.parse(list)
        data = []
        list.map do |value|
          data << ListProfileObjectsItem.parse(value) unless value.nil?
        end
        data
      end
    end

    class ListProfileObjectsItem
      def self.parse(map)
        data = Types::ListProfileObjectsItem.new
        data.object_type_name = map['ObjectTypeName']
        data.profile_object_unique_key = map['ProfileObjectUniqueKey']
        data.object = map['Object']
        return data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (TagMap.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for ListWorkflows
    class ListWorkflows
      def self.parse(http_resp)
        data = Types::ListWorkflowsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.items = (WorkflowList.parse(map['Items']) unless map['Items'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class WorkflowList
      def self.parse(list)
        data = []
        list.map do |value|
          data << ListWorkflowsItem.parse(value) unless value.nil?
        end
        data
      end
    end

    class ListWorkflowsItem
      def self.parse(map)
        data = Types::ListWorkflowsItem.new
        data.workflow_type = map['WorkflowType']
        data.workflow_id = map['WorkflowId']
        data.status = map['Status']
        data.status_description = map['StatusDescription']
        data.created_at = Time.at(map['CreatedAt'].to_i) if map['CreatedAt']
        data.last_updated_at = Time.at(map['LastUpdatedAt'].to_i) if map['LastUpdatedAt']
        return data
      end
    end

    # Operation Parser for MergeProfiles
    class MergeProfiles
      def self.parse(http_resp)
        data = Types::MergeProfilesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for PutIntegration
    class PutIntegration
      def self.parse(http_resp)
        data = Types::PutIntegrationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.domain_name = map['DomainName']
        data.uri = map['Uri']
        data.object_type_name = map['ObjectTypeName']
        data.created_at = Time.at(map['CreatedAt'].to_i) if map['CreatedAt']
        data.last_updated_at = Time.at(map['LastUpdatedAt'].to_i) if map['LastUpdatedAt']
        data.tags = (TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        data.object_type_names = (ObjectTypeNames.parse(map['ObjectTypeNames']) unless map['ObjectTypeNames'].nil?)
        data.workflow_id = map['WorkflowId']
        data
      end
    end

    # Operation Parser for PutProfileObject
    class PutProfileObject
      def self.parse(http_resp)
        data = Types::PutProfileObjectOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.profile_object_unique_key = map['ProfileObjectUniqueKey']
        data
      end
    end

    # Operation Parser for PutProfileObjectType
    class PutProfileObjectType
      def self.parse(http_resp)
        data = Types::PutProfileObjectTypeOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.object_type_name = map['ObjectTypeName']
        data.description = map['Description']
        data.template_id = map['TemplateId']
        data.expiration_days = map['ExpirationDays']
        data.encryption_key = map['EncryptionKey']
        data.allow_profile_creation = map['AllowProfileCreation']
        data.source_last_updated_timestamp_format = map['SourceLastUpdatedTimestampFormat']
        data.fields = (FieldMap.parse(map['Fields']) unless map['Fields'].nil?)
        data.keys = (KeyMap.parse(map['Keys']) unless map['Keys'].nil?)
        data.created_at = Time.at(map['CreatedAt'].to_i) if map['CreatedAt']
        data.last_updated_at = Time.at(map['LastUpdatedAt'].to_i) if map['LastUpdatedAt']
        data.tags = (TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    # Operation Parser for SearchProfiles
    class SearchProfiles
      def self.parse(http_resp)
        data = Types::SearchProfilesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.items = (ProfileList.parse(map['Items']) unless map['Items'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ProfileList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Profile.parse(value) unless value.nil?
        end
        data
      end
    end

    class Profile
      def self.parse(map)
        data = Types::Profile.new
        data.profile_id = map['ProfileId']
        data.account_number = map['AccountNumber']
        data.additional_information = map['AdditionalInformation']
        data.party_type = map['PartyType']
        data.business_name = map['BusinessName']
        data.first_name = map['FirstName']
        data.middle_name = map['MiddleName']
        data.last_name = map['LastName']
        data.birth_date = map['BirthDate']
        data.gender = map['Gender']
        data.phone_number = map['PhoneNumber']
        data.mobile_phone_number = map['MobilePhoneNumber']
        data.home_phone_number = map['HomePhoneNumber']
        data.business_phone_number = map['BusinessPhoneNumber']
        data.email_address = map['EmailAddress']
        data.personal_email_address = map['PersonalEmailAddress']
        data.business_email_address = map['BusinessEmailAddress']
        data.address = (Address.parse(map['Address']) unless map['Address'].nil?)
        data.shipping_address = (Address.parse(map['ShippingAddress']) unless map['ShippingAddress'].nil?)
        data.mailing_address = (Address.parse(map['MailingAddress']) unless map['MailingAddress'].nil?)
        data.billing_address = (Address.parse(map['BillingAddress']) unless map['BillingAddress'].nil?)
        data.attributes = (Attributes.parse(map['Attributes']) unless map['Attributes'].nil?)
        return data
      end
    end

    class Attributes
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class Address
      def self.parse(map)
        data = Types::Address.new
        data.address1 = map['Address1']
        data.address2 = map['Address2']
        data.address3 = map['Address3']
        data.address4 = map['Address4']
        data.city = map['City']
        data.county = map['County']
        data.state = map['State']
        data.province = map['Province']
        data.country = map['Country']
        data.postal_code = map['PostalCode']
        return data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateDomain
    class UpdateDomain
      def self.parse(http_resp)
        data = Types::UpdateDomainOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.domain_name = map['DomainName']
        data.default_expiration_days = map['DefaultExpirationDays']
        data.default_encryption_key = map['DefaultEncryptionKey']
        data.dead_letter_queue_url = map['DeadLetterQueueUrl']
        data.matching = (MatchingResponse.parse(map['Matching']) unless map['Matching'].nil?)
        data.created_at = Time.at(map['CreatedAt'].to_i) if map['CreatedAt']
        data.last_updated_at = Time.at(map['LastUpdatedAt'].to_i) if map['LastUpdatedAt']
        data.tags = (TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    # Operation Parser for UpdateProfile
    class UpdateProfile
      def self.parse(http_resp)
        data = Types::UpdateProfileOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.profile_id = map['ProfileId']
        data
      end
    end
  end
end
