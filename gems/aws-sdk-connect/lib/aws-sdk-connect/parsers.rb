# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Connect
  module Parsers

    # Operation Parser for AssociateApprovedOrigin
    class AssociateApprovedOrigin
      def self.parse(http_resp)
        data = Types::AssociateApprovedOriginOutput.new
        map = Hearth::JSON.load(http_resp.body)
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

    # Error Parser for ThrottlingException
    class ThrottlingException
      def self.parse(http_resp)
        data = Types::ThrottlingException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InternalServiceException
    class InternalServiceException
      def self.parse(http_resp)
        data = Types::InternalServiceException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidParameterException
    class InvalidParameterException
      def self.parse(http_resp)
        data = Types::InvalidParameterException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidRequestException
    class InvalidRequestException
      def self.parse(http_resp)
        data = Types::InvalidRequestException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ServiceQuotaExceededException
    class ServiceQuotaExceededException
      def self.parse(http_resp)
        data = Types::ServiceQuotaExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ResourceConflictException
    class ResourceConflictException
      def self.parse(http_resp)
        data = Types::ResourceConflictException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for AssociateBot
    class AssociateBot
      def self.parse(http_resp)
        data = Types::AssociateBotOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for LimitExceededException
    class LimitExceededException
      def self.parse(http_resp)
        data = Types::LimitExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for AssociateDefaultVocabulary
    class AssociateDefaultVocabulary
      def self.parse(http_resp)
        data = Types::AssociateDefaultVocabularyOutput.new
        map = Hearth::JSON.load(http_resp.body)
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

    # Operation Parser for AssociateInstanceStorageConfig
    class AssociateInstanceStorageConfig
      def self.parse(http_resp)
        data = Types::AssociateInstanceStorageConfigOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.association_id = map['AssociationId']
        data
      end
    end

    # Operation Parser for AssociateLambdaFunction
    class AssociateLambdaFunction
      def self.parse(http_resp)
        data = Types::AssociateLambdaFunctionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for AssociateLexBot
    class AssociateLexBot
      def self.parse(http_resp)
        data = Types::AssociateLexBotOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for AssociatePhoneNumberContactFlow
    class AssociatePhoneNumberContactFlow
      def self.parse(http_resp)
        data = Types::AssociatePhoneNumberContactFlowOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for AssociateQueueQuickConnects
    class AssociateQueueQuickConnects
      def self.parse(http_resp)
        data = Types::AssociateQueueQuickConnectsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for AssociateRoutingProfileQueues
    class AssociateRoutingProfileQueues
      def self.parse(http_resp)
        data = Types::AssociateRoutingProfileQueuesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for AssociateSecurityKey
    class AssociateSecurityKey
      def self.parse(http_resp)
        data = Types::AssociateSecurityKeyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.association_id = map['AssociationId']
        data
      end
    end

    # Operation Parser for ClaimPhoneNumber
    class ClaimPhoneNumber
      def self.parse(http_resp)
        data = Types::ClaimPhoneNumberOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.phone_number_id = map['PhoneNumberId']
        data.phone_number_arn = map['PhoneNumberArn']
        data
      end
    end

    # Error Parser for IdempotencyException
    class IdempotencyException
      def self.parse(http_resp)
        data = Types::IdempotencyException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateAgentStatus
    class CreateAgentStatus
      def self.parse(http_resp)
        data = Types::CreateAgentStatusOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.agent_status_arn = map['AgentStatusARN']
        data.agent_status_id = map['AgentStatusId']
        data
      end
    end

    # Error Parser for DuplicateResourceException
    class DuplicateResourceException
      def self.parse(http_resp)
        data = Types::DuplicateResourceException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateContactFlow
    class CreateContactFlow
      def self.parse(http_resp)
        data = Types::CreateContactFlowOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.contact_flow_id = map['ContactFlowId']
        data.contact_flow_arn = map['ContactFlowArn']
        data
      end
    end

    # Error Parser for InvalidContactFlowException
    class InvalidContactFlowException
      def self.parse(http_resp)
        data = Types::InvalidContactFlowException.new
        map = Hearth::JSON.load(http_resp.body)
        data.problems = (Problems.parse(map['problems']) unless map['problems'].nil?)
        data
      end
    end

    class Problems
      def self.parse(list)
        data = []
        list.map do |value|
          data << ProblemDetail.parse(value) unless value.nil?
        end
        data
      end
    end

    class ProblemDetail
      def self.parse(map)
        data = Types::ProblemDetail.new
        data.message = map['message'] || map['Message']
        return data
      end
    end

    # Operation Parser for CreateContactFlowModule
    class CreateContactFlowModule
      def self.parse(http_resp)
        data = Types::CreateContactFlowModuleOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.id = map['Id']
        data.arn = map['Arn']
        data
      end
    end

    # Error Parser for InvalidContactFlowModuleException
    class InvalidContactFlowModuleException
      def self.parse(http_resp)
        data = Types::InvalidContactFlowModuleException.new
        map = Hearth::JSON.load(http_resp.body)
        data.problems = (Problems.parse(map['Problems']) unless map['Problems'].nil?)
        data
      end
    end

    # Operation Parser for CreateHoursOfOperation
    class CreateHoursOfOperation
      def self.parse(http_resp)
        data = Types::CreateHoursOfOperationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.hours_of_operation_id = map['HoursOfOperationId']
        data.hours_of_operation_arn = map['HoursOfOperationArn']
        data
      end
    end

    # Operation Parser for CreateInstance
    class CreateInstance
      def self.parse(http_resp)
        data = Types::CreateInstanceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.id = map['Id']
        data.arn = map['Arn']
        data
      end
    end

    # Operation Parser for CreateIntegrationAssociation
    class CreateIntegrationAssociation
      def self.parse(http_resp)
        data = Types::CreateIntegrationAssociationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.integration_association_id = map['IntegrationAssociationId']
        data.integration_association_arn = map['IntegrationAssociationArn']
        data
      end
    end

    # Operation Parser for CreateQueue
    class CreateQueue
      def self.parse(http_resp)
        data = Types::CreateQueueOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.queue_arn = map['QueueArn']
        data.queue_id = map['QueueId']
        data
      end
    end

    # Operation Parser for CreateQuickConnect
    class CreateQuickConnect
      def self.parse(http_resp)
        data = Types::CreateQuickConnectOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.quick_connect_arn = map['QuickConnectARN']
        data.quick_connect_id = map['QuickConnectId']
        data
      end
    end

    # Operation Parser for CreateRoutingProfile
    class CreateRoutingProfile
      def self.parse(http_resp)
        data = Types::CreateRoutingProfileOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.routing_profile_arn = map['RoutingProfileArn']
        data.routing_profile_id = map['RoutingProfileId']
        data
      end
    end

    # Operation Parser for CreateSecurityProfile
    class CreateSecurityProfile
      def self.parse(http_resp)
        data = Types::CreateSecurityProfileOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.security_profile_id = map['SecurityProfileId']
        data.security_profile_arn = map['SecurityProfileArn']
        data
      end
    end

    # Operation Parser for CreateTaskTemplate
    class CreateTaskTemplate
      def self.parse(http_resp)
        data = Types::CreateTaskTemplateOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.id = map['Id']
        data.arn = map['Arn']
        data
      end
    end

    # Error Parser for PropertyValidationException
    class PropertyValidationException
      def self.parse(http_resp)
        data = Types::PropertyValidationException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.property_list = (PropertyValidationExceptionPropertyList.parse(map['PropertyList']) unless map['PropertyList'].nil?)
        data
      end
    end

    class PropertyValidationExceptionPropertyList
      def self.parse(list)
        data = []
        list.map do |value|
          data << PropertyValidationExceptionProperty.parse(value) unless value.nil?
        end
        data
      end
    end

    class PropertyValidationExceptionProperty
      def self.parse(map)
        data = Types::PropertyValidationExceptionProperty.new
        data.property_path = map['PropertyPath']
        data.reason = map['Reason']
        data.message = map['Message']
        return data
      end
    end

    # Operation Parser for CreateUseCase
    class CreateUseCase
      def self.parse(http_resp)
        data = Types::CreateUseCaseOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.use_case_id = map['UseCaseId']
        data.use_case_arn = map['UseCaseArn']
        data
      end
    end

    # Operation Parser for CreateUser
    class CreateUser
      def self.parse(http_resp)
        data = Types::CreateUserOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.user_id = map['UserId']
        data.user_arn = map['UserArn']
        data
      end
    end

    # Operation Parser for CreateUserHierarchyGroup
    class CreateUserHierarchyGroup
      def self.parse(http_resp)
        data = Types::CreateUserHierarchyGroupOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.hierarchy_group_id = map['HierarchyGroupId']
        data.hierarchy_group_arn = map['HierarchyGroupArn']
        data
      end
    end

    # Operation Parser for CreateVocabulary
    class CreateVocabulary
      def self.parse(http_resp)
        data = Types::CreateVocabularyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.vocabulary_arn = map['VocabularyArn']
        data.vocabulary_id = map['VocabularyId']
        data.state = map['State']
        data
      end
    end

    # Operation Parser for DeleteContactFlow
    class DeleteContactFlow
      def self.parse(http_resp)
        data = Types::DeleteContactFlowOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteContactFlowModule
    class DeleteContactFlowModule
      def self.parse(http_resp)
        data = Types::DeleteContactFlowModuleOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteHoursOfOperation
    class DeleteHoursOfOperation
      def self.parse(http_resp)
        data = Types::DeleteHoursOfOperationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteInstance
    class DeleteInstance
      def self.parse(http_resp)
        data = Types::DeleteInstanceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteIntegrationAssociation
    class DeleteIntegrationAssociation
      def self.parse(http_resp)
        data = Types::DeleteIntegrationAssociationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteQuickConnect
    class DeleteQuickConnect
      def self.parse(http_resp)
        data = Types::DeleteQuickConnectOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteSecurityProfile
    class DeleteSecurityProfile
      def self.parse(http_resp)
        data = Types::DeleteSecurityProfileOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for ResourceInUseException
    class ResourceInUseException
      def self.parse(http_resp)
        data = Types::ResourceInUseException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.resource_type = map['ResourceType']
        data.resource_id = map['ResourceId']
        data
      end
    end

    # Operation Parser for DeleteTaskTemplate
    class DeleteTaskTemplate
      def self.parse(http_resp)
        data = Types::DeleteTaskTemplateOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteUseCase
    class DeleteUseCase
      def self.parse(http_resp)
        data = Types::DeleteUseCaseOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteUser
    class DeleteUser
      def self.parse(http_resp)
        data = Types::DeleteUserOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteUserHierarchyGroup
    class DeleteUserHierarchyGroup
      def self.parse(http_resp)
        data = Types::DeleteUserHierarchyGroupOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteVocabulary
    class DeleteVocabulary
      def self.parse(http_resp)
        data = Types::DeleteVocabularyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.vocabulary_arn = map['VocabularyArn']
        data.vocabulary_id = map['VocabularyId']
        data.state = map['State']
        data
      end
    end

    # Operation Parser for DescribeAgentStatus
    class DescribeAgentStatus
      def self.parse(http_resp)
        data = Types::DescribeAgentStatusOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.agent_status = (AgentStatus.parse(map['AgentStatus']) unless map['AgentStatus'].nil?)
        data
      end
    end

    class AgentStatus
      def self.parse(map)
        data = Types::AgentStatus.new
        data.agent_status_arn = map['AgentStatusARN']
        data.agent_status_id = map['AgentStatusId']
        data.name = map['Name']
        data.description = map['Description']
        data.type = map['Type']
        data.display_order = map['DisplayOrder']
        data.state = map['State']
        data.tags = (TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        return data
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

    # Operation Parser for DescribeContact
    class DescribeContact
      def self.parse(http_resp)
        data = Types::DescribeContactOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.contact = (Contact.parse(map['Contact']) unless map['Contact'].nil?)
        data
      end
    end

    class Contact
      def self.parse(map)
        data = Types::Contact.new
        data.arn = map['Arn']
        data.id = map['Id']
        data.initial_contact_id = map['InitialContactId']
        data.previous_contact_id = map['PreviousContactId']
        data.initiation_method = map['InitiationMethod']
        data.name = map['Name']
        data.description = map['Description']
        data.channel = map['Channel']
        data.queue_info = (QueueInfo.parse(map['QueueInfo']) unless map['QueueInfo'].nil?)
        data.agent_info = (AgentInfo.parse(map['AgentInfo']) unless map['AgentInfo'].nil?)
        data.initiation_timestamp = Time.at(map['InitiationTimestamp'].to_i) if map['InitiationTimestamp']
        data.disconnect_timestamp = Time.at(map['DisconnectTimestamp'].to_i) if map['DisconnectTimestamp']
        data.last_update_timestamp = Time.at(map['LastUpdateTimestamp'].to_i) if map['LastUpdateTimestamp']
        data.scheduled_timestamp = Time.at(map['ScheduledTimestamp'].to_i) if map['ScheduledTimestamp']
        return data
      end
    end

    class AgentInfo
      def self.parse(map)
        data = Types::AgentInfo.new
        data.id = map['Id']
        data.connected_to_agent_timestamp = Time.at(map['ConnectedToAgentTimestamp'].to_i) if map['ConnectedToAgentTimestamp']
        return data
      end
    end

    class QueueInfo
      def self.parse(map)
        data = Types::QueueInfo.new
        data.id = map['Id']
        data.enqueue_timestamp = Time.at(map['EnqueueTimestamp'].to_i) if map['EnqueueTimestamp']
        return data
      end
    end

    # Operation Parser for DescribeContactFlow
    class DescribeContactFlow
      def self.parse(http_resp)
        data = Types::DescribeContactFlowOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.contact_flow = (ContactFlow.parse(map['ContactFlow']) unless map['ContactFlow'].nil?)
        data
      end
    end

    class ContactFlow
      def self.parse(map)
        data = Types::ContactFlow.new
        data.arn = map['Arn']
        data.id = map['Id']
        data.name = map['Name']
        data.type = map['Type']
        data.state = map['State']
        data.description = map['Description']
        data.content = map['Content']
        data.tags = (TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        return data
      end
    end

    # Error Parser for ContactFlowNotPublishedException
    class ContactFlowNotPublishedException
      def self.parse(http_resp)
        data = Types::ContactFlowNotPublishedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DescribeContactFlowModule
    class DescribeContactFlowModule
      def self.parse(http_resp)
        data = Types::DescribeContactFlowModuleOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.contact_flow_module = (ContactFlowModule.parse(map['ContactFlowModule']) unless map['ContactFlowModule'].nil?)
        data
      end
    end

    class ContactFlowModule
      def self.parse(map)
        data = Types::ContactFlowModule.new
        data.arn = map['Arn']
        data.id = map['Id']
        data.name = map['Name']
        data.content = map['Content']
        data.description = map['Description']
        data.state = map['State']
        data.status = map['Status']
        data.tags = (TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        return data
      end
    end

    # Operation Parser for DescribeHoursOfOperation
    class DescribeHoursOfOperation
      def self.parse(http_resp)
        data = Types::DescribeHoursOfOperationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.hours_of_operation = (HoursOfOperation.parse(map['HoursOfOperation']) unless map['HoursOfOperation'].nil?)
        data
      end
    end

    class HoursOfOperation
      def self.parse(map)
        data = Types::HoursOfOperation.new
        data.hours_of_operation_id = map['HoursOfOperationId']
        data.hours_of_operation_arn = map['HoursOfOperationArn']
        data.name = map['Name']
        data.description = map['Description']
        data.time_zone = map['TimeZone']
        data.config = (HoursOfOperationConfigList.parse(map['Config']) unless map['Config'].nil?)
        data.tags = (TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        return data
      end
    end

    class HoursOfOperationConfigList
      def self.parse(list)
        data = []
        list.map do |value|
          data << HoursOfOperationConfig.parse(value) unless value.nil?
        end
        data
      end
    end

    class HoursOfOperationConfig
      def self.parse(map)
        data = Types::HoursOfOperationConfig.new
        data.day = map['Day']
        data.start_time = (HoursOfOperationTimeSlice.parse(map['StartTime']) unless map['StartTime'].nil?)
        data.end_time = (HoursOfOperationTimeSlice.parse(map['EndTime']) unless map['EndTime'].nil?)
        return data
      end
    end

    class HoursOfOperationTimeSlice
      def self.parse(map)
        data = Types::HoursOfOperationTimeSlice.new
        data.hours = map['Hours']
        data.minutes = map['Minutes']
        return data
      end
    end

    # Operation Parser for DescribeInstance
    class DescribeInstance
      def self.parse(http_resp)
        data = Types::DescribeInstanceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.instance = (Instance.parse(map['Instance']) unless map['Instance'].nil?)
        data
      end
    end

    class Instance
      def self.parse(map)
        data = Types::Instance.new
        data.id = map['Id']
        data.arn = map['Arn']
        data.identity_management_type = map['IdentityManagementType']
        data.instance_alias = map['InstanceAlias']
        data.created_time = Time.at(map['CreatedTime'].to_i) if map['CreatedTime']
        data.service_role = map['ServiceRole']
        data.instance_status = map['InstanceStatus']
        data.status_reason = (InstanceStatusReason.parse(map['StatusReason']) unless map['StatusReason'].nil?)
        data.inbound_calls_enabled = map['InboundCallsEnabled']
        data.outbound_calls_enabled = map['OutboundCallsEnabled']
        return data
      end
    end

    class InstanceStatusReason
      def self.parse(map)
        data = Types::InstanceStatusReason.new
        data.message = map['Message']
        return data
      end
    end

    # Operation Parser for DescribeInstanceAttribute
    class DescribeInstanceAttribute
      def self.parse(http_resp)
        data = Types::DescribeInstanceAttributeOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.attribute = (Attribute.parse(map['Attribute']) unless map['Attribute'].nil?)
        data
      end
    end

    class Attribute
      def self.parse(map)
        data = Types::Attribute.new
        data.attribute_type = map['AttributeType']
        data.value = map['Value']
        return data
      end
    end

    # Operation Parser for DescribeInstanceStorageConfig
    class DescribeInstanceStorageConfig
      def self.parse(http_resp)
        data = Types::DescribeInstanceStorageConfigOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.storage_config = (InstanceStorageConfig.parse(map['StorageConfig']) unless map['StorageConfig'].nil?)
        data
      end
    end

    class InstanceStorageConfig
      def self.parse(map)
        data = Types::InstanceStorageConfig.new
        data.association_id = map['AssociationId']
        data.storage_type = map['StorageType']
        data.s3_config = (S3Config.parse(map['S3Config']) unless map['S3Config'].nil?)
        data.kinesis_video_stream_config = (KinesisVideoStreamConfig.parse(map['KinesisVideoStreamConfig']) unless map['KinesisVideoStreamConfig'].nil?)
        data.kinesis_stream_config = (KinesisStreamConfig.parse(map['KinesisStreamConfig']) unless map['KinesisStreamConfig'].nil?)
        data.kinesis_firehose_config = (KinesisFirehoseConfig.parse(map['KinesisFirehoseConfig']) unless map['KinesisFirehoseConfig'].nil?)
        return data
      end
    end

    class KinesisFirehoseConfig
      def self.parse(map)
        data = Types::KinesisFirehoseConfig.new
        data.firehose_arn = map['FirehoseArn']
        return data
      end
    end

    class KinesisStreamConfig
      def self.parse(map)
        data = Types::KinesisStreamConfig.new
        data.stream_arn = map['StreamArn']
        return data
      end
    end

    class KinesisVideoStreamConfig
      def self.parse(map)
        data = Types::KinesisVideoStreamConfig.new
        data.prefix = map['Prefix']
        data.retention_period_hours = map['RetentionPeriodHours']
        data.encryption_config = (EncryptionConfig.parse(map['EncryptionConfig']) unless map['EncryptionConfig'].nil?)
        return data
      end
    end

    class EncryptionConfig
      def self.parse(map)
        data = Types::EncryptionConfig.new
        data.encryption_type = map['EncryptionType']
        data.key_id = map['KeyId']
        return data
      end
    end

    class S3Config
      def self.parse(map)
        data = Types::S3Config.new
        data.bucket_name = map['BucketName']
        data.bucket_prefix = map['BucketPrefix']
        data.encryption_config = (EncryptionConfig.parse(map['EncryptionConfig']) unless map['EncryptionConfig'].nil?)
        return data
      end
    end

    # Operation Parser for DescribePhoneNumber
    class DescribePhoneNumber
      def self.parse(http_resp)
        data = Types::DescribePhoneNumberOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.claimed_phone_number_summary = (ClaimedPhoneNumberSummary.parse(map['ClaimedPhoneNumberSummary']) unless map['ClaimedPhoneNumberSummary'].nil?)
        data
      end
    end

    class ClaimedPhoneNumberSummary
      def self.parse(map)
        data = Types::ClaimedPhoneNumberSummary.new
        data.phone_number_id = map['PhoneNumberId']
        data.phone_number_arn = map['PhoneNumberArn']
        data.phone_number = map['PhoneNumber']
        data.phone_number_country_code = map['PhoneNumberCountryCode']
        data.phone_number_type = map['PhoneNumberType']
        data.phone_number_description = map['PhoneNumberDescription']
        data.target_arn = map['TargetArn']
        data.tags = (TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        data.phone_number_status = (PhoneNumberStatus.parse(map['PhoneNumberStatus']) unless map['PhoneNumberStatus'].nil?)
        return data
      end
    end

    class PhoneNumberStatus
      def self.parse(map)
        data = Types::PhoneNumberStatus.new
        data.status = map['Status']
        data.message = map['Message']
        return data
      end
    end

    # Operation Parser for DescribeQueue
    class DescribeQueue
      def self.parse(http_resp)
        data = Types::DescribeQueueOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.queue = (Queue.parse(map['Queue']) unless map['Queue'].nil?)
        data
      end
    end

    class Queue
      def self.parse(map)
        data = Types::Queue.new
        data.name = map['Name']
        data.queue_arn = map['QueueArn']
        data.queue_id = map['QueueId']
        data.description = map['Description']
        data.outbound_caller_config = (OutboundCallerConfig.parse(map['OutboundCallerConfig']) unless map['OutboundCallerConfig'].nil?)
        data.hours_of_operation_id = map['HoursOfOperationId']
        data.max_contacts = map['MaxContacts']
        data.status = map['Status']
        data.tags = (TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        return data
      end
    end

    class OutboundCallerConfig
      def self.parse(map)
        data = Types::OutboundCallerConfig.new
        data.outbound_caller_id_name = map['OutboundCallerIdName']
        data.outbound_caller_id_number_id = map['OutboundCallerIdNumberId']
        data.outbound_flow_id = map['OutboundFlowId']
        return data
      end
    end

    # Operation Parser for DescribeQuickConnect
    class DescribeQuickConnect
      def self.parse(http_resp)
        data = Types::DescribeQuickConnectOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.quick_connect = (QuickConnect.parse(map['QuickConnect']) unless map['QuickConnect'].nil?)
        data
      end
    end

    class QuickConnect
      def self.parse(map)
        data = Types::QuickConnect.new
        data.quick_connect_arn = map['QuickConnectARN']
        data.quick_connect_id = map['QuickConnectId']
        data.name = map['Name']
        data.description = map['Description']
        data.quick_connect_config = (QuickConnectConfig.parse(map['QuickConnectConfig']) unless map['QuickConnectConfig'].nil?)
        data.tags = (TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        return data
      end
    end

    class QuickConnectConfig
      def self.parse(map)
        data = Types::QuickConnectConfig.new
        data.quick_connect_type = map['QuickConnectType']
        data.user_config = (UserQuickConnectConfig.parse(map['UserConfig']) unless map['UserConfig'].nil?)
        data.queue_config = (QueueQuickConnectConfig.parse(map['QueueConfig']) unless map['QueueConfig'].nil?)
        data.phone_config = (PhoneNumberQuickConnectConfig.parse(map['PhoneConfig']) unless map['PhoneConfig'].nil?)
        return data
      end
    end

    class PhoneNumberQuickConnectConfig
      def self.parse(map)
        data = Types::PhoneNumberQuickConnectConfig.new
        data.phone_number = map['PhoneNumber']
        return data
      end
    end

    class QueueQuickConnectConfig
      def self.parse(map)
        data = Types::QueueQuickConnectConfig.new
        data.queue_id = map['QueueId']
        data.contact_flow_id = map['ContactFlowId']
        return data
      end
    end

    class UserQuickConnectConfig
      def self.parse(map)
        data = Types::UserQuickConnectConfig.new
        data.user_id = map['UserId']
        data.contact_flow_id = map['ContactFlowId']
        return data
      end
    end

    # Operation Parser for DescribeRoutingProfile
    class DescribeRoutingProfile
      def self.parse(http_resp)
        data = Types::DescribeRoutingProfileOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.routing_profile = (RoutingProfile.parse(map['RoutingProfile']) unless map['RoutingProfile'].nil?)
        data
      end
    end

    class RoutingProfile
      def self.parse(map)
        data = Types::RoutingProfile.new
        data.instance_id = map['InstanceId']
        data.name = map['Name']
        data.routing_profile_arn = map['RoutingProfileArn']
        data.routing_profile_id = map['RoutingProfileId']
        data.description = map['Description']
        data.media_concurrencies = (MediaConcurrencies.parse(map['MediaConcurrencies']) unless map['MediaConcurrencies'].nil?)
        data.default_outbound_queue_id = map['DefaultOutboundQueueId']
        data.tags = (TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        return data
      end
    end

    class MediaConcurrencies
      def self.parse(list)
        data = []
        list.map do |value|
          data << MediaConcurrency.parse(value) unless value.nil?
        end
        data
      end
    end

    class MediaConcurrency
      def self.parse(map)
        data = Types::MediaConcurrency.new
        data.channel = map['Channel']
        data.concurrency = map['Concurrency']
        return data
      end
    end

    # Operation Parser for DescribeSecurityProfile
    class DescribeSecurityProfile
      def self.parse(http_resp)
        data = Types::DescribeSecurityProfileOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.security_profile = (SecurityProfile.parse(map['SecurityProfile']) unless map['SecurityProfile'].nil?)
        data
      end
    end

    class SecurityProfile
      def self.parse(map)
        data = Types::SecurityProfile.new
        data.id = map['Id']
        data.organization_resource_id = map['OrganizationResourceId']
        data.arn = map['Arn']
        data.security_profile_name = map['SecurityProfileName']
        data.description = map['Description']
        data.tags = (TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        return data
      end
    end

    # Operation Parser for DescribeUser
    class DescribeUser
      def self.parse(http_resp)
        data = Types::DescribeUserOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.user = (User.parse(map['User']) unless map['User'].nil?)
        data
      end
    end

    class User
      def self.parse(map)
        data = Types::User.new
        data.id = map['Id']
        data.arn = map['Arn']
        data.username = map['Username']
        data.identity_info = (UserIdentityInfo.parse(map['IdentityInfo']) unless map['IdentityInfo'].nil?)
        data.phone_config = (UserPhoneConfig.parse(map['PhoneConfig']) unless map['PhoneConfig'].nil?)
        data.directory_user_id = map['DirectoryUserId']
        data.security_profile_ids = (SecurityProfileIds.parse(map['SecurityProfileIds']) unless map['SecurityProfileIds'].nil?)
        data.routing_profile_id = map['RoutingProfileId']
        data.hierarchy_group_id = map['HierarchyGroupId']
        data.tags = (TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        return data
      end
    end

    class SecurityProfileIds
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class UserPhoneConfig
      def self.parse(map)
        data = Types::UserPhoneConfig.new
        data.phone_type = map['PhoneType']
        data.auto_accept = map['AutoAccept']
        data.after_contact_work_time_limit = map['AfterContactWorkTimeLimit']
        data.desk_phone_number = map['DeskPhoneNumber']
        return data
      end
    end

    class UserIdentityInfo
      def self.parse(map)
        data = Types::UserIdentityInfo.new
        data.first_name = map['FirstName']
        data.last_name = map['LastName']
        data.email = map['Email']
        return data
      end
    end

    # Operation Parser for DescribeUserHierarchyGroup
    class DescribeUserHierarchyGroup
      def self.parse(http_resp)
        data = Types::DescribeUserHierarchyGroupOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.hierarchy_group = (HierarchyGroup.parse(map['HierarchyGroup']) unless map['HierarchyGroup'].nil?)
        data
      end
    end

    class HierarchyGroup
      def self.parse(map)
        data = Types::HierarchyGroup.new
        data.id = map['Id']
        data.arn = map['Arn']
        data.name = map['Name']
        data.level_id = map['LevelId']
        data.hierarchy_path = (HierarchyPath.parse(map['HierarchyPath']) unless map['HierarchyPath'].nil?)
        data.tags = (TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        return data
      end
    end

    class HierarchyPath
      def self.parse(map)
        data = Types::HierarchyPath.new
        data.level_one = (HierarchyGroupSummary.parse(map['LevelOne']) unless map['LevelOne'].nil?)
        data.level_two = (HierarchyGroupSummary.parse(map['LevelTwo']) unless map['LevelTwo'].nil?)
        data.level_three = (HierarchyGroupSummary.parse(map['LevelThree']) unless map['LevelThree'].nil?)
        data.level_four = (HierarchyGroupSummary.parse(map['LevelFour']) unless map['LevelFour'].nil?)
        data.level_five = (HierarchyGroupSummary.parse(map['LevelFive']) unless map['LevelFive'].nil?)
        return data
      end
    end

    class HierarchyGroupSummary
      def self.parse(map)
        data = Types::HierarchyGroupSummary.new
        data.id = map['Id']
        data.arn = map['Arn']
        data.name = map['Name']
        return data
      end
    end

    # Operation Parser for DescribeUserHierarchyStructure
    class DescribeUserHierarchyStructure
      def self.parse(http_resp)
        data = Types::DescribeUserHierarchyStructureOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.hierarchy_structure = (HierarchyStructure.parse(map['HierarchyStructure']) unless map['HierarchyStructure'].nil?)
        data
      end
    end

    class HierarchyStructure
      def self.parse(map)
        data = Types::HierarchyStructure.new
        data.level_one = (HierarchyLevel.parse(map['LevelOne']) unless map['LevelOne'].nil?)
        data.level_two = (HierarchyLevel.parse(map['LevelTwo']) unless map['LevelTwo'].nil?)
        data.level_three = (HierarchyLevel.parse(map['LevelThree']) unless map['LevelThree'].nil?)
        data.level_four = (HierarchyLevel.parse(map['LevelFour']) unless map['LevelFour'].nil?)
        data.level_five = (HierarchyLevel.parse(map['LevelFive']) unless map['LevelFive'].nil?)
        return data
      end
    end

    class HierarchyLevel
      def self.parse(map)
        data = Types::HierarchyLevel.new
        data.id = map['Id']
        data.arn = map['Arn']
        data.name = map['Name']
        return data
      end
    end

    # Operation Parser for DescribeVocabulary
    class DescribeVocabulary
      def self.parse(http_resp)
        data = Types::DescribeVocabularyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.vocabulary = (Vocabulary.parse(map['Vocabulary']) unless map['Vocabulary'].nil?)
        data
      end
    end

    class Vocabulary
      def self.parse(map)
        data = Types::Vocabulary.new
        data.name = map['Name']
        data.id = map['Id']
        data.arn = map['Arn']
        data.language_code = map['LanguageCode']
        data.state = map['State']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.failure_reason = map['FailureReason']
        data.content = map['Content']
        data.tags = (TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        return data
      end
    end

    # Operation Parser for DisassociateApprovedOrigin
    class DisassociateApprovedOrigin
      def self.parse(http_resp)
        data = Types::DisassociateApprovedOriginOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DisassociateBot
    class DisassociateBot
      def self.parse(http_resp)
        data = Types::DisassociateBotOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DisassociateInstanceStorageConfig
    class DisassociateInstanceStorageConfig
      def self.parse(http_resp)
        data = Types::DisassociateInstanceStorageConfigOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DisassociateLambdaFunction
    class DisassociateLambdaFunction
      def self.parse(http_resp)
        data = Types::DisassociateLambdaFunctionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DisassociateLexBot
    class DisassociateLexBot
      def self.parse(http_resp)
        data = Types::DisassociateLexBotOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DisassociatePhoneNumberContactFlow
    class DisassociatePhoneNumberContactFlow
      def self.parse(http_resp)
        data = Types::DisassociatePhoneNumberContactFlowOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DisassociateQueueQuickConnects
    class DisassociateQueueQuickConnects
      def self.parse(http_resp)
        data = Types::DisassociateQueueQuickConnectsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DisassociateRoutingProfileQueues
    class DisassociateRoutingProfileQueues
      def self.parse(http_resp)
        data = Types::DisassociateRoutingProfileQueuesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DisassociateSecurityKey
    class DisassociateSecurityKey
      def self.parse(http_resp)
        data = Types::DisassociateSecurityKeyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for GetContactAttributes
    class GetContactAttributes
      def self.parse(http_resp)
        data = Types::GetContactAttributesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.attributes = (Attributes.parse(map['Attributes']) unless map['Attributes'].nil?)
        data
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

    # Operation Parser for GetCurrentMetricData
    class GetCurrentMetricData
      def self.parse(http_resp)
        data = Types::GetCurrentMetricDataOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['NextToken']
        data.metric_results = (CurrentMetricResults.parse(map['MetricResults']) unless map['MetricResults'].nil?)
        data.data_snapshot_time = Time.at(map['DataSnapshotTime'].to_i) if map['DataSnapshotTime']
        data
      end
    end

    class CurrentMetricResults
      def self.parse(list)
        data = []
        list.map do |value|
          data << CurrentMetricResult.parse(value) unless value.nil?
        end
        data
      end
    end

    class CurrentMetricResult
      def self.parse(map)
        data = Types::CurrentMetricResult.new
        data.dimensions = (Dimensions.parse(map['Dimensions']) unless map['Dimensions'].nil?)
        data.collections = (CurrentMetricDataCollections.parse(map['Collections']) unless map['Collections'].nil?)
        return data
      end
    end

    class CurrentMetricDataCollections
      def self.parse(list)
        data = []
        list.map do |value|
          data << CurrentMetricData.parse(value) unless value.nil?
        end
        data
      end
    end

    class CurrentMetricData
      def self.parse(map)
        data = Types::CurrentMetricData.new
        data.metric = (CurrentMetric.parse(map['Metric']) unless map['Metric'].nil?)
        data.value = Hearth::NumberHelper.deserialize(map['Value'])
        return data
      end
    end

    class CurrentMetric
      def self.parse(map)
        data = Types::CurrentMetric.new
        data.name = map['Name']
        data.unit = map['Unit']
        return data
      end
    end

    class Dimensions
      def self.parse(map)
        data = Types::Dimensions.new
        data.queue = (QueueReference.parse(map['Queue']) unless map['Queue'].nil?)
        data.channel = map['Channel']
        return data
      end
    end

    class QueueReference
      def self.parse(map)
        data = Types::QueueReference.new
        data.id = map['Id']
        data.arn = map['Arn']
        return data
      end
    end

    # Operation Parser for GetCurrentUserData
    class GetCurrentUserData
      def self.parse(http_resp)
        data = Types::GetCurrentUserDataOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['NextToken']
        data.user_data_list = (UserDataList.parse(map['UserDataList']) unless map['UserDataList'].nil?)
        data
      end
    end

    class UserDataList
      def self.parse(list)
        data = []
        list.map do |value|
          data << UserData.parse(value) unless value.nil?
        end
        data
      end
    end

    class UserData
      def self.parse(map)
        data = Types::UserData.new
        data.user = (UserReference.parse(map['User']) unless map['User'].nil?)
        data.routing_profile = (RoutingProfileReference.parse(map['RoutingProfile']) unless map['RoutingProfile'].nil?)
        data.hierarchy_path = (HierarchyPathReference.parse(map['HierarchyPath']) unless map['HierarchyPath'].nil?)
        data.status = (AgentStatusReference.parse(map['Status']) unless map['Status'].nil?)
        data.available_slots_by_channel = (ChannelToCountMap.parse(map['AvailableSlotsByChannel']) unless map['AvailableSlotsByChannel'].nil?)
        data.max_slots_by_channel = (ChannelToCountMap.parse(map['MaxSlotsByChannel']) unless map['MaxSlotsByChannel'].nil?)
        data.active_slots_by_channel = (ChannelToCountMap.parse(map['ActiveSlotsByChannel']) unless map['ActiveSlotsByChannel'].nil?)
        data.contacts = (AgentContactReferenceList.parse(map['Contacts']) unless map['Contacts'].nil?)
        return data
      end
    end

    class AgentContactReferenceList
      def self.parse(list)
        data = []
        list.map do |value|
          data << AgentContactReference.parse(value) unless value.nil?
        end
        data
      end
    end

    class AgentContactReference
      def self.parse(map)
        data = Types::AgentContactReference.new
        data.contact_id = map['ContactId']
        data.channel = map['Channel']
        data.initiation_method = map['InitiationMethod']
        data.agent_contact_state = map['AgentContactState']
        data.state_start_timestamp = Time.at(map['StateStartTimestamp'].to_i) if map['StateStartTimestamp']
        data.connected_to_agent_timestamp = Time.at(map['ConnectedToAgentTimestamp'].to_i) if map['ConnectedToAgentTimestamp']
        data.queue = (QueueReference.parse(map['Queue']) unless map['Queue'].nil?)
        return data
      end
    end

    class ChannelToCountMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class AgentStatusReference
      def self.parse(map)
        data = Types::AgentStatusReference.new
        data.status_start_timestamp = Time.at(map['StatusStartTimestamp'].to_i) if map['StatusStartTimestamp']
        data.status_arn = map['StatusArn']
        return data
      end
    end

    class HierarchyPathReference
      def self.parse(map)
        data = Types::HierarchyPathReference.new
        data.level_one = (HierarchyGroupSummaryReference.parse(map['LevelOne']) unless map['LevelOne'].nil?)
        data.level_two = (HierarchyGroupSummaryReference.parse(map['LevelTwo']) unless map['LevelTwo'].nil?)
        data.level_three = (HierarchyGroupSummaryReference.parse(map['LevelThree']) unless map['LevelThree'].nil?)
        data.level_four = (HierarchyGroupSummaryReference.parse(map['LevelFour']) unless map['LevelFour'].nil?)
        data.level_five = (HierarchyGroupSummaryReference.parse(map['LevelFive']) unless map['LevelFive'].nil?)
        return data
      end
    end

    class HierarchyGroupSummaryReference
      def self.parse(map)
        data = Types::HierarchyGroupSummaryReference.new
        data.id = map['Id']
        data.arn = map['Arn']
        return data
      end
    end

    class RoutingProfileReference
      def self.parse(map)
        data = Types::RoutingProfileReference.new
        data.id = map['Id']
        data.arn = map['Arn']
        return data
      end
    end

    class UserReference
      def self.parse(map)
        data = Types::UserReference.new
        data.id = map['Id']
        data.arn = map['Arn']
        return data
      end
    end

    # Operation Parser for GetFederationToken
    class GetFederationToken
      def self.parse(http_resp)
        data = Types::GetFederationTokenOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.credentials = (Credentials.parse(map['Credentials']) unless map['Credentials'].nil?)
        data
      end
    end

    class Credentials
      def self.parse(map)
        data = Types::Credentials.new
        data.access_token = map['AccessToken']
        data.access_token_expiration = Time.at(map['AccessTokenExpiration'].to_i) if map['AccessTokenExpiration']
        data.refresh_token = map['RefreshToken']
        data.refresh_token_expiration = Time.at(map['RefreshTokenExpiration'].to_i) if map['RefreshTokenExpiration']
        return data
      end
    end

    # Error Parser for UserNotFoundException
    class UserNotFoundException
      def self.parse(http_resp)
        data = Types::UserNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for GetMetricData
    class GetMetricData
      def self.parse(http_resp)
        data = Types::GetMetricDataOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['NextToken']
        data.metric_results = (HistoricalMetricResults.parse(map['MetricResults']) unless map['MetricResults'].nil?)
        data
      end
    end

    class HistoricalMetricResults
      def self.parse(list)
        data = []
        list.map do |value|
          data << HistoricalMetricResult.parse(value) unless value.nil?
        end
        data
      end
    end

    class HistoricalMetricResult
      def self.parse(map)
        data = Types::HistoricalMetricResult.new
        data.dimensions = (Dimensions.parse(map['Dimensions']) unless map['Dimensions'].nil?)
        data.collections = (HistoricalMetricDataCollections.parse(map['Collections']) unless map['Collections'].nil?)
        return data
      end
    end

    class HistoricalMetricDataCollections
      def self.parse(list)
        data = []
        list.map do |value|
          data << HistoricalMetricData.parse(value) unless value.nil?
        end
        data
      end
    end

    class HistoricalMetricData
      def self.parse(map)
        data = Types::HistoricalMetricData.new
        data.metric = (HistoricalMetric.parse(map['Metric']) unless map['Metric'].nil?)
        data.value = Hearth::NumberHelper.deserialize(map['Value'])
        return data
      end
    end

    class HistoricalMetric
      def self.parse(map)
        data = Types::HistoricalMetric.new
        data.name = map['Name']
        data.threshold = (Threshold.parse(map['Threshold']) unless map['Threshold'].nil?)
        data.statistic = map['Statistic']
        data.unit = map['Unit']
        return data
      end
    end

    class Threshold
      def self.parse(map)
        data = Types::Threshold.new
        data.comparison = map['Comparison']
        data.threshold_value = Hearth::NumberHelper.deserialize(map['ThresholdValue'])
        return data
      end
    end

    # Operation Parser for GetTaskTemplate
    class GetTaskTemplate
      def self.parse(http_resp)
        data = Types::GetTaskTemplateOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.instance_id = map['InstanceId']
        data.id = map['Id']
        data.arn = map['Arn']
        data.name = map['Name']
        data.description = map['Description']
        data.contact_flow_id = map['ContactFlowId']
        data.constraints = (TaskTemplateConstraints.parse(map['Constraints']) unless map['Constraints'].nil?)
        data.defaults = (TaskTemplateDefaults.parse(map['Defaults']) unless map['Defaults'].nil?)
        data.fields = (TaskTemplateFields.parse(map['Fields']) unless map['Fields'].nil?)
        data.status = map['Status']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.created_time = Time.at(map['CreatedTime'].to_i) if map['CreatedTime']
        data.tags = (TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    class TaskTemplateFields
      def self.parse(list)
        data = []
        list.map do |value|
          data << TaskTemplateField.parse(value) unless value.nil?
        end
        data
      end
    end

    class TaskTemplateField
      def self.parse(map)
        data = Types::TaskTemplateField.new
        data.id = (TaskTemplateFieldIdentifier.parse(map['Id']) unless map['Id'].nil?)
        data.description = map['Description']
        data.type = map['Type']
        data.single_select_options = (SingleSelectOptions.parse(map['SingleSelectOptions']) unless map['SingleSelectOptions'].nil?)
        return data
      end
    end

    class SingleSelectOptions
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class TaskTemplateFieldIdentifier
      def self.parse(map)
        data = Types::TaskTemplateFieldIdentifier.new
        data.name = map['Name']
        return data
      end
    end

    class TaskTemplateDefaults
      def self.parse(map)
        data = Types::TaskTemplateDefaults.new
        data.default_field_values = (TaskTemplateDefaultFieldValueList.parse(map['DefaultFieldValues']) unless map['DefaultFieldValues'].nil?)
        return data
      end
    end

    class TaskTemplateDefaultFieldValueList
      def self.parse(list)
        data = []
        list.map do |value|
          data << TaskTemplateDefaultFieldValue.parse(value) unless value.nil?
        end
        data
      end
    end

    class TaskTemplateDefaultFieldValue
      def self.parse(map)
        data = Types::TaskTemplateDefaultFieldValue.new
        data.id = (TaskTemplateFieldIdentifier.parse(map['Id']) unless map['Id'].nil?)
        data.default_value = map['DefaultValue']
        return data
      end
    end

    class TaskTemplateConstraints
      def self.parse(map)
        data = Types::TaskTemplateConstraints.new
        data.required_fields = (RequiredTaskTemplateFields.parse(map['RequiredFields']) unless map['RequiredFields'].nil?)
        data.read_only_fields = (ReadOnlyTaskTemplateFields.parse(map['ReadOnlyFields']) unless map['ReadOnlyFields'].nil?)
        data.invisible_fields = (InvisibleTaskTemplateFields.parse(map['InvisibleFields']) unless map['InvisibleFields'].nil?)
        return data
      end
    end

    class InvisibleTaskTemplateFields
      def self.parse(list)
        data = []
        list.map do |value|
          data << InvisibleFieldInfo.parse(value) unless value.nil?
        end
        data
      end
    end

    class InvisibleFieldInfo
      def self.parse(map)
        data = Types::InvisibleFieldInfo.new
        data.id = (TaskTemplateFieldIdentifier.parse(map['Id']) unless map['Id'].nil?)
        return data
      end
    end

    class ReadOnlyTaskTemplateFields
      def self.parse(list)
        data = []
        list.map do |value|
          data << ReadOnlyFieldInfo.parse(value) unless value.nil?
        end
        data
      end
    end

    class ReadOnlyFieldInfo
      def self.parse(map)
        data = Types::ReadOnlyFieldInfo.new
        data.id = (TaskTemplateFieldIdentifier.parse(map['Id']) unless map['Id'].nil?)
        return data
      end
    end

    class RequiredTaskTemplateFields
      def self.parse(list)
        data = []
        list.map do |value|
          data << RequiredFieldInfo.parse(value) unless value.nil?
        end
        data
      end
    end

    class RequiredFieldInfo
      def self.parse(map)
        data = Types::RequiredFieldInfo.new
        data.id = (TaskTemplateFieldIdentifier.parse(map['Id']) unless map['Id'].nil?)
        return data
      end
    end

    # Operation Parser for ListAgentStatuses
    class ListAgentStatuses
      def self.parse(http_resp)
        data = Types::ListAgentStatusesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['NextToken']
        data.agent_status_summary_list = (AgentStatusSummaryList.parse(map['AgentStatusSummaryList']) unless map['AgentStatusSummaryList'].nil?)
        data
      end
    end

    class AgentStatusSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << AgentStatusSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class AgentStatusSummary
      def self.parse(map)
        data = Types::AgentStatusSummary.new
        data.id = map['Id']
        data.arn = map['Arn']
        data.name = map['Name']
        data.type = map['Type']
        return data
      end
    end

    # Operation Parser for ListApprovedOrigins
    class ListApprovedOrigins
      def self.parse(http_resp)
        data = Types::ListApprovedOriginsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.origins = (OriginsList.parse(map['Origins']) unless map['Origins'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class OriginsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListBots
    class ListBots
      def self.parse(http_resp)
        data = Types::ListBotsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.lex_bots = (LexBotConfigList.parse(map['LexBots']) unless map['LexBots'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class LexBotConfigList
      def self.parse(list)
        data = []
        list.map do |value|
          data << LexBotConfig.parse(value) unless value.nil?
        end
        data
      end
    end

    class LexBotConfig
      def self.parse(map)
        data = Types::LexBotConfig.new
        data.lex_bot = (LexBot.parse(map['LexBot']) unless map['LexBot'].nil?)
        data.lex_v2_bot = (LexV2Bot.parse(map['LexV2Bot']) unless map['LexV2Bot'].nil?)
        return data
      end
    end

    class LexV2Bot
      def self.parse(map)
        data = Types::LexV2Bot.new
        data.alias_arn = map['AliasArn']
        return data
      end
    end

    class LexBot
      def self.parse(map)
        data = Types::LexBot.new
        data.name = map['Name']
        data.lex_region = map['LexRegion']
        return data
      end
    end

    # Operation Parser for ListContactFlowModules
    class ListContactFlowModules
      def self.parse(http_resp)
        data = Types::ListContactFlowModulesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.contact_flow_modules_summary_list = (ContactFlowModulesSummaryList.parse(map['ContactFlowModulesSummaryList']) unless map['ContactFlowModulesSummaryList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ContactFlowModulesSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << ContactFlowModuleSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class ContactFlowModuleSummary
      def self.parse(map)
        data = Types::ContactFlowModuleSummary.new
        data.id = map['Id']
        data.arn = map['Arn']
        data.name = map['Name']
        data.state = map['State']
        return data
      end
    end

    # Operation Parser for ListContactFlows
    class ListContactFlows
      def self.parse(http_resp)
        data = Types::ListContactFlowsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.contact_flow_summary_list = (ContactFlowSummaryList.parse(map['ContactFlowSummaryList']) unless map['ContactFlowSummaryList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ContactFlowSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << ContactFlowSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class ContactFlowSummary
      def self.parse(map)
        data = Types::ContactFlowSummary.new
        data.id = map['Id']
        data.arn = map['Arn']
        data.name = map['Name']
        data.contact_flow_type = map['ContactFlowType']
        data.contact_flow_state = map['ContactFlowState']
        return data
      end
    end

    # Operation Parser for ListContactReferences
    class ListContactReferences
      def self.parse(http_resp)
        data = Types::ListContactReferencesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.reference_summary_list = (ReferenceSummaryList.parse(map['ReferenceSummaryList']) unless map['ReferenceSummaryList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ReferenceSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << ReferenceSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class ReferenceSummary
      def self.parse(map)
        key, value = map.flatten
        case key
        when 'Url'
          value = (UrlReference.parse(value) unless value.nil?)
          Types::ReferenceSummary::Url.new(value) if value
        when 'Attachment'
          value = (AttachmentReference.parse(value) unless value.nil?)
          Types::ReferenceSummary::Attachment.new(value) if value
        when 'String'
          value = (StringReference.parse(value) unless value.nil?)
          Types::ReferenceSummary::String.new(value) if value
        when 'Number'
          value = (NumberReference.parse(value) unless value.nil?)
          Types::ReferenceSummary::Number.new(value) if value
        when 'Date'
          value = (DateReference.parse(value) unless value.nil?)
          Types::ReferenceSummary::Date.new(value) if value
        when 'Email'
          value = (EmailReference.parse(value) unless value.nil?)
          Types::ReferenceSummary::Email.new(value) if value
        else
          Types::ReferenceSummary::Unknown.new({name: key, value: value})
        end
      end
    end

    class EmailReference
      def self.parse(map)
        data = Types::EmailReference.new
        data.name = map['Name']
        data.value = map['Value']
        return data
      end
    end

    class DateReference
      def self.parse(map)
        data = Types::DateReference.new
        data.name = map['Name']
        data.value = map['Value']
        return data
      end
    end

    class NumberReference
      def self.parse(map)
        data = Types::NumberReference.new
        data.name = map['Name']
        data.value = map['Value']
        return data
      end
    end

    class StringReference
      def self.parse(map)
        data = Types::StringReference.new
        data.name = map['Name']
        data.value = map['Value']
        return data
      end
    end

    class AttachmentReference
      def self.parse(map)
        data = Types::AttachmentReference.new
        data.name = map['Name']
        data.value = map['Value']
        data.status = map['Status']
        return data
      end
    end

    class UrlReference
      def self.parse(map)
        data = Types::UrlReference.new
        data.name = map['Name']
        data.value = map['Value']
        return data
      end
    end

    # Operation Parser for ListDefaultVocabularies
    class ListDefaultVocabularies
      def self.parse(http_resp)
        data = Types::ListDefaultVocabulariesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.default_vocabulary_list = (DefaultVocabularyList.parse(map['DefaultVocabularyList']) unless map['DefaultVocabularyList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class DefaultVocabularyList
      def self.parse(list)
        data = []
        list.map do |value|
          data << DefaultVocabulary.parse(value) unless value.nil?
        end
        data
      end
    end

    class DefaultVocabulary
      def self.parse(map)
        data = Types::DefaultVocabulary.new
        data.instance_id = map['InstanceId']
        data.language_code = map['LanguageCode']
        data.vocabulary_id = map['VocabularyId']
        data.vocabulary_name = map['VocabularyName']
        return data
      end
    end

    # Operation Parser for ListHoursOfOperations
    class ListHoursOfOperations
      def self.parse(http_resp)
        data = Types::ListHoursOfOperationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.hours_of_operation_summary_list = (HoursOfOperationSummaryList.parse(map['HoursOfOperationSummaryList']) unless map['HoursOfOperationSummaryList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class HoursOfOperationSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << HoursOfOperationSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class HoursOfOperationSummary
      def self.parse(map)
        data = Types::HoursOfOperationSummary.new
        data.id = map['Id']
        data.arn = map['Arn']
        data.name = map['Name']
        return data
      end
    end

    # Operation Parser for ListInstanceAttributes
    class ListInstanceAttributes
      def self.parse(http_resp)
        data = Types::ListInstanceAttributesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.attributes = (AttributesList.parse(map['Attributes']) unless map['Attributes'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class AttributesList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Attribute.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListInstanceStorageConfigs
    class ListInstanceStorageConfigs
      def self.parse(http_resp)
        data = Types::ListInstanceStorageConfigsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.storage_configs = (InstanceStorageConfigs.parse(map['StorageConfigs']) unless map['StorageConfigs'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class InstanceStorageConfigs
      def self.parse(list)
        data = []
        list.map do |value|
          data << InstanceStorageConfig.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListInstances
    class ListInstances
      def self.parse(http_resp)
        data = Types::ListInstancesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.instance_summary_list = (InstanceSummaryList.parse(map['InstanceSummaryList']) unless map['InstanceSummaryList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class InstanceSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << InstanceSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class InstanceSummary
      def self.parse(map)
        data = Types::InstanceSummary.new
        data.id = map['Id']
        data.arn = map['Arn']
        data.identity_management_type = map['IdentityManagementType']
        data.instance_alias = map['InstanceAlias']
        data.created_time = Time.at(map['CreatedTime'].to_i) if map['CreatedTime']
        data.service_role = map['ServiceRole']
        data.instance_status = map['InstanceStatus']
        data.inbound_calls_enabled = map['InboundCallsEnabled']
        data.outbound_calls_enabled = map['OutboundCallsEnabled']
        return data
      end
    end

    # Operation Parser for ListIntegrationAssociations
    class ListIntegrationAssociations
      def self.parse(http_resp)
        data = Types::ListIntegrationAssociationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.integration_association_summary_list = (IntegrationAssociationSummaryList.parse(map['IntegrationAssociationSummaryList']) unless map['IntegrationAssociationSummaryList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class IntegrationAssociationSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << IntegrationAssociationSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class IntegrationAssociationSummary
      def self.parse(map)
        data = Types::IntegrationAssociationSummary.new
        data.integration_association_id = map['IntegrationAssociationId']
        data.integration_association_arn = map['IntegrationAssociationArn']
        data.instance_id = map['InstanceId']
        data.integration_type = map['IntegrationType']
        data.integration_arn = map['IntegrationArn']
        data.source_application_url = map['SourceApplicationUrl']
        data.source_application_name = map['SourceApplicationName']
        data.source_type = map['SourceType']
        return data
      end
    end

    # Operation Parser for ListLambdaFunctions
    class ListLambdaFunctions
      def self.parse(http_resp)
        data = Types::ListLambdaFunctionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.lambda_functions = (FunctionArnsList.parse(map['LambdaFunctions']) unless map['LambdaFunctions'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class FunctionArnsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListLexBots
    class ListLexBots
      def self.parse(http_resp)
        data = Types::ListLexBotsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.lex_bots = (LexBotsList.parse(map['LexBots']) unless map['LexBots'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class LexBotsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << LexBot.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListPhoneNumbers
    class ListPhoneNumbers
      def self.parse(http_resp)
        data = Types::ListPhoneNumbersOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.phone_number_summary_list = (PhoneNumberSummaryList.parse(map['PhoneNumberSummaryList']) unless map['PhoneNumberSummaryList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class PhoneNumberSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << PhoneNumberSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class PhoneNumberSummary
      def self.parse(map)
        data = Types::PhoneNumberSummary.new
        data.id = map['Id']
        data.arn = map['Arn']
        data.phone_number = map['PhoneNumber']
        data.phone_number_type = map['PhoneNumberType']
        data.phone_number_country_code = map['PhoneNumberCountryCode']
        return data
      end
    end

    # Operation Parser for ListPhoneNumbersV2
    class ListPhoneNumbersV2
      def self.parse(http_resp)
        data = Types::ListPhoneNumbersV2Output.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['NextToken']
        data.list_phone_numbers_summary_list = (ListPhoneNumbersSummaryList.parse(map['ListPhoneNumbersSummaryList']) unless map['ListPhoneNumbersSummaryList'].nil?)
        data
      end
    end

    class ListPhoneNumbersSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << ListPhoneNumbersSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class ListPhoneNumbersSummary
      def self.parse(map)
        data = Types::ListPhoneNumbersSummary.new
        data.phone_number_id = map['PhoneNumberId']
        data.phone_number_arn = map['PhoneNumberArn']
        data.phone_number = map['PhoneNumber']
        data.phone_number_country_code = map['PhoneNumberCountryCode']
        data.phone_number_type = map['PhoneNumberType']
        data.target_arn = map['TargetArn']
        return data
      end
    end

    # Operation Parser for ListPrompts
    class ListPrompts
      def self.parse(http_resp)
        data = Types::ListPromptsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.prompt_summary_list = (PromptSummaryList.parse(map['PromptSummaryList']) unless map['PromptSummaryList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class PromptSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << PromptSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class PromptSummary
      def self.parse(map)
        data = Types::PromptSummary.new
        data.id = map['Id']
        data.arn = map['Arn']
        data.name = map['Name']
        return data
      end
    end

    # Operation Parser for ListQueueQuickConnects
    class ListQueueQuickConnects
      def self.parse(http_resp)
        data = Types::ListQueueQuickConnectsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['NextToken']
        data.quick_connect_summary_list = (QuickConnectSummaryList.parse(map['QuickConnectSummaryList']) unless map['QuickConnectSummaryList'].nil?)
        data
      end
    end

    class QuickConnectSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << QuickConnectSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class QuickConnectSummary
      def self.parse(map)
        data = Types::QuickConnectSummary.new
        data.id = map['Id']
        data.arn = map['Arn']
        data.name = map['Name']
        data.quick_connect_type = map['QuickConnectType']
        return data
      end
    end

    # Operation Parser for ListQueues
    class ListQueues
      def self.parse(http_resp)
        data = Types::ListQueuesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.queue_summary_list = (QueueSummaryList.parse(map['QueueSummaryList']) unless map['QueueSummaryList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class QueueSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << QueueSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class QueueSummary
      def self.parse(map)
        data = Types::QueueSummary.new
        data.id = map['Id']
        data.arn = map['Arn']
        data.name = map['Name']
        data.queue_type = map['QueueType']
        return data
      end
    end

    # Operation Parser for ListQuickConnects
    class ListQuickConnects
      def self.parse(http_resp)
        data = Types::ListQuickConnectsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.quick_connect_summary_list = (QuickConnectSummaryList.parse(map['QuickConnectSummaryList']) unless map['QuickConnectSummaryList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    # Operation Parser for ListRoutingProfileQueues
    class ListRoutingProfileQueues
      def self.parse(http_resp)
        data = Types::ListRoutingProfileQueuesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['NextToken']
        data.routing_profile_queue_config_summary_list = (RoutingProfileQueueConfigSummaryList.parse(map['RoutingProfileQueueConfigSummaryList']) unless map['RoutingProfileQueueConfigSummaryList'].nil?)
        data
      end
    end

    class RoutingProfileQueueConfigSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << RoutingProfileQueueConfigSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class RoutingProfileQueueConfigSummary
      def self.parse(map)
        data = Types::RoutingProfileQueueConfigSummary.new
        data.queue_id = map['QueueId']
        data.queue_arn = map['QueueArn']
        data.queue_name = map['QueueName']
        data.priority = map['Priority']
        data.delay = map['Delay']
        data.channel = map['Channel']
        return data
      end
    end

    # Operation Parser for ListRoutingProfiles
    class ListRoutingProfiles
      def self.parse(http_resp)
        data = Types::ListRoutingProfilesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.routing_profile_summary_list = (RoutingProfileSummaryList.parse(map['RoutingProfileSummaryList']) unless map['RoutingProfileSummaryList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class RoutingProfileSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << RoutingProfileSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class RoutingProfileSummary
      def self.parse(map)
        data = Types::RoutingProfileSummary.new
        data.id = map['Id']
        data.arn = map['Arn']
        data.name = map['Name']
        return data
      end
    end

    # Operation Parser for ListSecurityKeys
    class ListSecurityKeys
      def self.parse(http_resp)
        data = Types::ListSecurityKeysOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.security_keys = (SecurityKeysList.parse(map['SecurityKeys']) unless map['SecurityKeys'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class SecurityKeysList
      def self.parse(list)
        data = []
        list.map do |value|
          data << SecurityKey.parse(value) unless value.nil?
        end
        data
      end
    end

    class SecurityKey
      def self.parse(map)
        data = Types::SecurityKey.new
        data.association_id = map['AssociationId']
        data.key = map['Key']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        return data
      end
    end

    # Operation Parser for ListSecurityProfilePermissions
    class ListSecurityProfilePermissions
      def self.parse(http_resp)
        data = Types::ListSecurityProfilePermissionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.permissions = (PermissionsList.parse(map['Permissions']) unless map['Permissions'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class PermissionsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListSecurityProfiles
    class ListSecurityProfiles
      def self.parse(http_resp)
        data = Types::ListSecurityProfilesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.security_profile_summary_list = (SecurityProfileSummaryList.parse(map['SecurityProfileSummaryList']) unless map['SecurityProfileSummaryList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class SecurityProfileSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << SecurityProfileSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class SecurityProfileSummary
      def self.parse(map)
        data = Types::SecurityProfileSummary.new
        data.id = map['Id']
        data.arn = map['Arn']
        data.name = map['Name']
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

    # Operation Parser for ListTaskTemplates
    class ListTaskTemplates
      def self.parse(http_resp)
        data = Types::ListTaskTemplatesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.task_templates = (TaskTemplateList.parse(map['TaskTemplates']) unless map['TaskTemplates'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class TaskTemplateList
      def self.parse(list)
        data = []
        list.map do |value|
          data << TaskTemplateMetadata.parse(value) unless value.nil?
        end
        data
      end
    end

    class TaskTemplateMetadata
      def self.parse(map)
        data = Types::TaskTemplateMetadata.new
        data.id = map['Id']
        data.arn = map['Arn']
        data.name = map['Name']
        data.description = map['Description']
        data.status = map['Status']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.created_time = Time.at(map['CreatedTime'].to_i) if map['CreatedTime']
        return data
      end
    end

    # Operation Parser for ListUseCases
    class ListUseCases
      def self.parse(http_resp)
        data = Types::ListUseCasesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.use_case_summary_list = (UseCaseSummaryList.parse(map['UseCaseSummaryList']) unless map['UseCaseSummaryList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class UseCaseSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << UseCase.parse(value) unless value.nil?
        end
        data
      end
    end

    class UseCase
      def self.parse(map)
        data = Types::UseCase.new
        data.use_case_id = map['UseCaseId']
        data.use_case_arn = map['UseCaseArn']
        data.use_case_type = map['UseCaseType']
        return data
      end
    end

    # Operation Parser for ListUserHierarchyGroups
    class ListUserHierarchyGroups
      def self.parse(http_resp)
        data = Types::ListUserHierarchyGroupsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.user_hierarchy_group_summary_list = (HierarchyGroupSummaryList.parse(map['UserHierarchyGroupSummaryList']) unless map['UserHierarchyGroupSummaryList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class HierarchyGroupSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << HierarchyGroupSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListUsers
    class ListUsers
      def self.parse(http_resp)
        data = Types::ListUsersOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.user_summary_list = (UserSummaryList.parse(map['UserSummaryList']) unless map['UserSummaryList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class UserSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << UserSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class UserSummary
      def self.parse(map)
        data = Types::UserSummary.new
        data.id = map['Id']
        data.arn = map['Arn']
        data.username = map['Username']
        return data
      end
    end

    # Operation Parser for PutUserStatus
    class PutUserStatus
      def self.parse(http_resp)
        data = Types::PutUserStatusOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for ReleasePhoneNumber
    class ReleasePhoneNumber
      def self.parse(http_resp)
        data = Types::ReleasePhoneNumberOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for ResumeContactRecording
    class ResumeContactRecording
      def self.parse(http_resp)
        data = Types::ResumeContactRecordingOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for SearchAvailablePhoneNumbers
    class SearchAvailablePhoneNumbers
      def self.parse(http_resp)
        data = Types::SearchAvailablePhoneNumbersOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['NextToken']
        data.available_numbers_list = (AvailableNumbersList.parse(map['AvailableNumbersList']) unless map['AvailableNumbersList'].nil?)
        data
      end
    end

    class AvailableNumbersList
      def self.parse(list)
        data = []
        list.map do |value|
          data << AvailableNumberSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class AvailableNumberSummary
      def self.parse(map)
        data = Types::AvailableNumberSummary.new
        data.phone_number = map['PhoneNumber']
        data.phone_number_country_code = map['PhoneNumberCountryCode']
        data.phone_number_type = map['PhoneNumberType']
        return data
      end
    end

    # Operation Parser for SearchUsers
    class SearchUsers
      def self.parse(http_resp)
        data = Types::SearchUsersOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.users = (UserSearchSummaryList.parse(map['Users']) unless map['Users'].nil?)
        data.next_token = map['NextToken']
        data.approximate_total_count = map['ApproximateTotalCount']
        data
      end
    end

    class UserSearchSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << UserSearchSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class UserSearchSummary
      def self.parse(map)
        data = Types::UserSearchSummary.new
        data.arn = map['Arn']
        data.directory_user_id = map['DirectoryUserId']
        data.hierarchy_group_id = map['HierarchyGroupId']
        data.id = map['Id']
        data.identity_info = (UserIdentityInfoLite.parse(map['IdentityInfo']) unless map['IdentityInfo'].nil?)
        data.phone_config = (UserPhoneConfig.parse(map['PhoneConfig']) unless map['PhoneConfig'].nil?)
        data.routing_profile_id = map['RoutingProfileId']
        data.security_profile_ids = (SecurityProfileIds.parse(map['SecurityProfileIds']) unless map['SecurityProfileIds'].nil?)
        data.tags = (TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        data.username = map['Username']
        return data
      end
    end

    class UserIdentityInfoLite
      def self.parse(map)
        data = Types::UserIdentityInfoLite.new
        data.first_name = map['FirstName']
        data.last_name = map['LastName']
        return data
      end
    end

    # Operation Parser for SearchVocabularies
    class SearchVocabularies
      def self.parse(http_resp)
        data = Types::SearchVocabulariesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.vocabulary_summary_list = (VocabularySummaryList.parse(map['VocabularySummaryList']) unless map['VocabularySummaryList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class VocabularySummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << VocabularySummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class VocabularySummary
      def self.parse(map)
        data = Types::VocabularySummary.new
        data.name = map['Name']
        data.id = map['Id']
        data.arn = map['Arn']
        data.language_code = map['LanguageCode']
        data.state = map['State']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.failure_reason = map['FailureReason']
        return data
      end
    end

    # Operation Parser for StartChatContact
    class StartChatContact
      def self.parse(http_resp)
        data = Types::StartChatContactOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.contact_id = map['ContactId']
        data.participant_id = map['ParticipantId']
        data.participant_token = map['ParticipantToken']
        data
      end
    end

    # Operation Parser for StartContactRecording
    class StartContactRecording
      def self.parse(http_resp)
        data = Types::StartContactRecordingOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for StartContactStreaming
    class StartContactStreaming
      def self.parse(http_resp)
        data = Types::StartContactStreamingOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.streaming_id = map['StreamingId']
        data
      end
    end

    # Operation Parser for StartOutboundVoiceContact
    class StartOutboundVoiceContact
      def self.parse(http_resp)
        data = Types::StartOutboundVoiceContactOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.contact_id = map['ContactId']
        data
      end
    end

    # Error Parser for DestinationNotAllowedException
    class DestinationNotAllowedException
      def self.parse(http_resp)
        data = Types::DestinationNotAllowedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for OutboundContactNotPermittedException
    class OutboundContactNotPermittedException
      def self.parse(http_resp)
        data = Types::OutboundContactNotPermittedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for StartTaskContact
    class StartTaskContact
      def self.parse(http_resp)
        data = Types::StartTaskContactOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.contact_id = map['ContactId']
        data
      end
    end

    # Operation Parser for StopContact
    class StopContact
      def self.parse(http_resp)
        data = Types::StopContactOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for ContactNotFoundException
    class ContactNotFoundException
      def self.parse(http_resp)
        data = Types::ContactNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for StopContactRecording
    class StopContactRecording
      def self.parse(http_resp)
        data = Types::StopContactRecordingOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for StopContactStreaming
    class StopContactStreaming
      def self.parse(http_resp)
        data = Types::StopContactStreamingOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for SuspendContactRecording
    class SuspendContactRecording
      def self.parse(http_resp)
        data = Types::SuspendContactRecordingOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
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

    # Operation Parser for TransferContact
    class TransferContact
      def self.parse(http_resp)
        data = Types::TransferContactOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.contact_id = map['ContactId']
        data.contact_arn = map['ContactArn']
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

    # Operation Parser for UpdateAgentStatus
    class UpdateAgentStatus
      def self.parse(http_resp)
        data = Types::UpdateAgentStatusOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateContact
    class UpdateContact
      def self.parse(http_resp)
        data = Types::UpdateContactOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateContactAttributes
    class UpdateContactAttributes
      def self.parse(http_resp)
        data = Types::UpdateContactAttributesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateContactFlowContent
    class UpdateContactFlowContent
      def self.parse(http_resp)
        data = Types::UpdateContactFlowContentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateContactFlowMetadata
    class UpdateContactFlowMetadata
      def self.parse(http_resp)
        data = Types::UpdateContactFlowMetadataOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateContactFlowModuleContent
    class UpdateContactFlowModuleContent
      def self.parse(http_resp)
        data = Types::UpdateContactFlowModuleContentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateContactFlowModuleMetadata
    class UpdateContactFlowModuleMetadata
      def self.parse(http_resp)
        data = Types::UpdateContactFlowModuleMetadataOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateContactFlowName
    class UpdateContactFlowName
      def self.parse(http_resp)
        data = Types::UpdateContactFlowNameOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateContactSchedule
    class UpdateContactSchedule
      def self.parse(http_resp)
        data = Types::UpdateContactScheduleOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateHoursOfOperation
    class UpdateHoursOfOperation
      def self.parse(http_resp)
        data = Types::UpdateHoursOfOperationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateInstanceAttribute
    class UpdateInstanceAttribute
      def self.parse(http_resp)
        data = Types::UpdateInstanceAttributeOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateInstanceStorageConfig
    class UpdateInstanceStorageConfig
      def self.parse(http_resp)
        data = Types::UpdateInstanceStorageConfigOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdatePhoneNumber
    class UpdatePhoneNumber
      def self.parse(http_resp)
        data = Types::UpdatePhoneNumberOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.phone_number_id = map['PhoneNumberId']
        data.phone_number_arn = map['PhoneNumberArn']
        data
      end
    end

    # Operation Parser for UpdateQueueHoursOfOperation
    class UpdateQueueHoursOfOperation
      def self.parse(http_resp)
        data = Types::UpdateQueueHoursOfOperationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateQueueMaxContacts
    class UpdateQueueMaxContacts
      def self.parse(http_resp)
        data = Types::UpdateQueueMaxContactsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateQueueName
    class UpdateQueueName
      def self.parse(http_resp)
        data = Types::UpdateQueueNameOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateQueueOutboundCallerConfig
    class UpdateQueueOutboundCallerConfig
      def self.parse(http_resp)
        data = Types::UpdateQueueOutboundCallerConfigOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateQueueStatus
    class UpdateQueueStatus
      def self.parse(http_resp)
        data = Types::UpdateQueueStatusOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateQuickConnectConfig
    class UpdateQuickConnectConfig
      def self.parse(http_resp)
        data = Types::UpdateQuickConnectConfigOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateQuickConnectName
    class UpdateQuickConnectName
      def self.parse(http_resp)
        data = Types::UpdateQuickConnectNameOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateRoutingProfileConcurrency
    class UpdateRoutingProfileConcurrency
      def self.parse(http_resp)
        data = Types::UpdateRoutingProfileConcurrencyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateRoutingProfileDefaultOutboundQueue
    class UpdateRoutingProfileDefaultOutboundQueue
      def self.parse(http_resp)
        data = Types::UpdateRoutingProfileDefaultOutboundQueueOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateRoutingProfileName
    class UpdateRoutingProfileName
      def self.parse(http_resp)
        data = Types::UpdateRoutingProfileNameOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateRoutingProfileQueues
    class UpdateRoutingProfileQueues
      def self.parse(http_resp)
        data = Types::UpdateRoutingProfileQueuesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateSecurityProfile
    class UpdateSecurityProfile
      def self.parse(http_resp)
        data = Types::UpdateSecurityProfileOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateTaskTemplate
    class UpdateTaskTemplate
      def self.parse(http_resp)
        data = Types::UpdateTaskTemplateOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.instance_id = map['InstanceId']
        data.id = map['Id']
        data.arn = map['Arn']
        data.name = map['Name']
        data.description = map['Description']
        data.contact_flow_id = map['ContactFlowId']
        data.constraints = (TaskTemplateConstraints.parse(map['Constraints']) unless map['Constraints'].nil?)
        data.defaults = (TaskTemplateDefaults.parse(map['Defaults']) unless map['Defaults'].nil?)
        data.fields = (TaskTemplateFields.parse(map['Fields']) unless map['Fields'].nil?)
        data.status = map['Status']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.created_time = Time.at(map['CreatedTime'].to_i) if map['CreatedTime']
        data
      end
    end

    # Operation Parser for UpdateUserHierarchy
    class UpdateUserHierarchy
      def self.parse(http_resp)
        data = Types::UpdateUserHierarchyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateUserHierarchyGroupName
    class UpdateUserHierarchyGroupName
      def self.parse(http_resp)
        data = Types::UpdateUserHierarchyGroupNameOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateUserHierarchyStructure
    class UpdateUserHierarchyStructure
      def self.parse(http_resp)
        data = Types::UpdateUserHierarchyStructureOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateUserIdentityInfo
    class UpdateUserIdentityInfo
      def self.parse(http_resp)
        data = Types::UpdateUserIdentityInfoOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateUserPhoneConfig
    class UpdateUserPhoneConfig
      def self.parse(http_resp)
        data = Types::UpdateUserPhoneConfigOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateUserRoutingProfile
    class UpdateUserRoutingProfile
      def self.parse(http_resp)
        data = Types::UpdateUserRoutingProfileOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateUserSecurityProfiles
    class UpdateUserSecurityProfiles
      def self.parse(http_resp)
        data = Types::UpdateUserSecurityProfilesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end
  end
end
