# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Pinpoint
  module Parsers

    # Operation Parser for CreateApp
    class CreateApp
      def self.parse(http_resp)
        data = Types::CreateAppOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.application_response = ApplicationResponse.parse(json)
        data
      end
    end

    class ApplicationResponse
      def self.parse(map)
        data = Types::ApplicationResponse.new
        data.arn = map['Arn']
        data.id = map['Id']
        data.name = map['Name']
        data.tags = (MapOf__string.parse(map['tags']) unless map['tags'].nil?)
        data.creation_date = map['CreationDate']
        return data
      end
    end

    class MapOf__string
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Error Parser for BadRequestException
    class BadRequestException
      def self.parse(http_resp)
        data = Types::BadRequestException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.request_id = map['RequestID']
        data
      end
    end

    # Error Parser for TooManyRequestsException
    class TooManyRequestsException
      def self.parse(http_resp)
        data = Types::TooManyRequestsException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.request_id = map['RequestID']
        data
      end
    end

    # Error Parser for PayloadTooLargeException
    class PayloadTooLargeException
      def self.parse(http_resp)
        data = Types::PayloadTooLargeException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.request_id = map['RequestID']
        data
      end
    end

    # Error Parser for ForbiddenException
    class ForbiddenException
      def self.parse(http_resp)
        data = Types::ForbiddenException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.request_id = map['RequestID']
        data
      end
    end

    # Error Parser for InternalServerErrorException
    class InternalServerErrorException
      def self.parse(http_resp)
        data = Types::InternalServerErrorException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.request_id = map['RequestID']
        data
      end
    end

    # Error Parser for MethodNotAllowedException
    class MethodNotAllowedException
      def self.parse(http_resp)
        data = Types::MethodNotAllowedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.request_id = map['RequestID']
        data
      end
    end

    # Error Parser for NotFoundException
    class NotFoundException
      def self.parse(http_resp)
        data = Types::NotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.request_id = map['RequestID']
        data
      end
    end

    # Operation Parser for CreateCampaign
    class CreateCampaign
      def self.parse(http_resp)
        data = Types::CreateCampaignOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.campaign_response = CampaignResponse.parse(json)
        data
      end
    end

    class CampaignResponse
      def self.parse(map)
        data = Types::CampaignResponse.new
        data.additional_treatments = (ListOfTreatmentResource.parse(map['AdditionalTreatments']) unless map['AdditionalTreatments'].nil?)
        data.application_id = map['ApplicationId']
        data.arn = map['Arn']
        data.creation_date = map['CreationDate']
        data.custom_delivery_configuration = (CustomDeliveryConfiguration.parse(map['CustomDeliveryConfiguration']) unless map['CustomDeliveryConfiguration'].nil?)
        data.default_state = (CampaignState.parse(map['DefaultState']) unless map['DefaultState'].nil?)
        data.description = map['Description']
        data.holdout_percent = map['HoldoutPercent']
        data.hook = (CampaignHook.parse(map['Hook']) unless map['Hook'].nil?)
        data.id = map['Id']
        data.is_paused = map['IsPaused']
        data.last_modified_date = map['LastModifiedDate']
        data.limits = (CampaignLimits.parse(map['Limits']) unless map['Limits'].nil?)
        data.message_configuration = (MessageConfiguration.parse(map['MessageConfiguration']) unless map['MessageConfiguration'].nil?)
        data.name = map['Name']
        data.schedule = (Schedule.parse(map['Schedule']) unless map['Schedule'].nil?)
        data.segment_id = map['SegmentId']
        data.segment_version = map['SegmentVersion']
        data.state = (CampaignState.parse(map['State']) unless map['State'].nil?)
        data.tags = (MapOf__string.parse(map['tags']) unless map['tags'].nil?)
        data.template_configuration = (TemplateConfiguration.parse(map['TemplateConfiguration']) unless map['TemplateConfiguration'].nil?)
        data.treatment_description = map['TreatmentDescription']
        data.treatment_name = map['TreatmentName']
        data.version = map['Version']
        data.priority = map['Priority']
        return data
      end
    end

    class TemplateConfiguration
      def self.parse(map)
        data = Types::TemplateConfiguration.new
        data.email_template = (Template.parse(map['EmailTemplate']) unless map['EmailTemplate'].nil?)
        data.push_template = (Template.parse(map['PushTemplate']) unless map['PushTemplate'].nil?)
        data.sms_template = (Template.parse(map['SMSTemplate']) unless map['SMSTemplate'].nil?)
        data.voice_template = (Template.parse(map['VoiceTemplate']) unless map['VoiceTemplate'].nil?)
        return data
      end
    end

    class Template
      def self.parse(map)
        data = Types::Template.new
        data.name = map['Name']
        data.version = map['Version']
        return data
      end
    end

    class CampaignState
      def self.parse(map)
        data = Types::CampaignState.new
        data.campaign_status = map['CampaignStatus']
        return data
      end
    end

    class Schedule
      def self.parse(map)
        data = Types::Schedule.new
        data.end_time = map['EndTime']
        data.event_filter = (CampaignEventFilter.parse(map['EventFilter']) unless map['EventFilter'].nil?)
        data.frequency = map['Frequency']
        data.is_local_time = map['IsLocalTime']
        data.quiet_time = (QuietTime.parse(map['QuietTime']) unless map['QuietTime'].nil?)
        data.start_time = map['StartTime']
        data.timezone = map['Timezone']
        return data
      end
    end

    class QuietTime
      def self.parse(map)
        data = Types::QuietTime.new
        data.end = map['End']
        data.start = map['Start']
        return data
      end
    end

    class CampaignEventFilter
      def self.parse(map)
        data = Types::CampaignEventFilter.new
        data.dimensions = (EventDimensions.parse(map['Dimensions']) unless map['Dimensions'].nil?)
        data.filter_type = map['FilterType']
        return data
      end
    end

    class EventDimensions
      def self.parse(map)
        data = Types::EventDimensions.new
        data.attributes = (MapOfAttributeDimension.parse(map['Attributes']) unless map['Attributes'].nil?)
        data.event_type = (SetDimension.parse(map['EventType']) unless map['EventType'].nil?)
        data.metrics = (MapOfMetricDimension.parse(map['Metrics']) unless map['Metrics'].nil?)
        return data
      end
    end

    class MapOfMetricDimension
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = MetricDimension.parse(value) unless value.nil?
        end
        data
      end
    end

    class MetricDimension
      def self.parse(map)
        data = Types::MetricDimension.new
        data.comparison_operator = map['ComparisonOperator']
        data.value = Hearth::NumberHelper.deserialize(map['Value'])
        return data
      end
    end

    class SetDimension
      def self.parse(map)
        data = Types::SetDimension.new
        data.dimension_type = map['DimensionType']
        data.values = (ListOf__string.parse(map['Values']) unless map['Values'].nil?)
        return data
      end
    end

    class ListOf__string
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class MapOfAttributeDimension
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = AttributeDimension.parse(value) unless value.nil?
        end
        data
      end
    end

    class AttributeDimension
      def self.parse(map)
        data = Types::AttributeDimension.new
        data.attribute_type = map['AttributeType']
        data.values = (ListOf__string.parse(map['Values']) unless map['Values'].nil?)
        return data
      end
    end

    class MessageConfiguration
      def self.parse(map)
        data = Types::MessageConfiguration.new
        data.adm_message = (Message.parse(map['ADMMessage']) unless map['ADMMessage'].nil?)
        data.apns_message = (Message.parse(map['APNSMessage']) unless map['APNSMessage'].nil?)
        data.baidu_message = (Message.parse(map['BaiduMessage']) unless map['BaiduMessage'].nil?)
        data.custom_message = (CampaignCustomMessage.parse(map['CustomMessage']) unless map['CustomMessage'].nil?)
        data.default_message = (Message.parse(map['DefaultMessage']) unless map['DefaultMessage'].nil?)
        data.email_message = (CampaignEmailMessage.parse(map['EmailMessage']) unless map['EmailMessage'].nil?)
        data.gcm_message = (Message.parse(map['GCMMessage']) unless map['GCMMessage'].nil?)
        data.sms_message = (CampaignSmsMessage.parse(map['SMSMessage']) unless map['SMSMessage'].nil?)
        data.in_app_message = (CampaignInAppMessage.parse(map['InAppMessage']) unless map['InAppMessage'].nil?)
        return data
      end
    end

    class CampaignInAppMessage
      def self.parse(map)
        data = Types::CampaignInAppMessage.new
        data.body = map['Body']
        data.content = (ListOfInAppMessageContent.parse(map['Content']) unless map['Content'].nil?)
        data.custom_config = (MapOf__string.parse(map['CustomConfig']) unless map['CustomConfig'].nil?)
        data.layout = map['Layout']
        return data
      end
    end

    class ListOfInAppMessageContent
      def self.parse(list)
        data = []
        list.map do |value|
          data << InAppMessageContent.parse(value) unless value.nil?
        end
        data
      end
    end

    class InAppMessageContent
      def self.parse(map)
        data = Types::InAppMessageContent.new
        data.background_color = map['BackgroundColor']
        data.body_config = (InAppMessageBodyConfig.parse(map['BodyConfig']) unless map['BodyConfig'].nil?)
        data.header_config = (InAppMessageHeaderConfig.parse(map['HeaderConfig']) unless map['HeaderConfig'].nil?)
        data.image_url = map['ImageUrl']
        data.primary_btn = (InAppMessageButton.parse(map['PrimaryBtn']) unless map['PrimaryBtn'].nil?)
        data.secondary_btn = (InAppMessageButton.parse(map['SecondaryBtn']) unless map['SecondaryBtn'].nil?)
        return data
      end
    end

    class InAppMessageButton
      def self.parse(map)
        data = Types::InAppMessageButton.new
        data.android = (OverrideButtonConfiguration.parse(map['Android']) unless map['Android'].nil?)
        data.default_config = (DefaultButtonConfiguration.parse(map['DefaultConfig']) unless map['DefaultConfig'].nil?)
        data.ios = (OverrideButtonConfiguration.parse(map['IOS']) unless map['IOS'].nil?)
        data.web = (OverrideButtonConfiguration.parse(map['Web']) unless map['Web'].nil?)
        return data
      end
    end

    class OverrideButtonConfiguration
      def self.parse(map)
        data = Types::OverrideButtonConfiguration.new
        data.button_action = map['ButtonAction']
        data.link = map['Link']
        return data
      end
    end

    class DefaultButtonConfiguration
      def self.parse(map)
        data = Types::DefaultButtonConfiguration.new
        data.background_color = map['BackgroundColor']
        data.border_radius = map['BorderRadius']
        data.button_action = map['ButtonAction']
        data.link = map['Link']
        data.text = map['Text']
        data.text_color = map['TextColor']
        return data
      end
    end

    class InAppMessageHeaderConfig
      def self.parse(map)
        data = Types::InAppMessageHeaderConfig.new
        data.alignment = map['Alignment']
        data.header = map['Header']
        data.text_color = map['TextColor']
        return data
      end
    end

    class InAppMessageBodyConfig
      def self.parse(map)
        data = Types::InAppMessageBodyConfig.new
        data.alignment = map['Alignment']
        data.body = map['Body']
        data.text_color = map['TextColor']
        return data
      end
    end

    class CampaignSmsMessage
      def self.parse(map)
        data = Types::CampaignSmsMessage.new
        data.body = map['Body']
        data.message_type = map['MessageType']
        data.origination_number = map['OriginationNumber']
        data.sender_id = map['SenderId']
        data.entity_id = map['EntityId']
        data.template_id = map['TemplateId']
        return data
      end
    end

    class Message
      def self.parse(map)
        data = Types::Message.new
        data.action = map['Action']
        data.body = map['Body']
        data.image_icon_url = map['ImageIconUrl']
        data.image_small_icon_url = map['ImageSmallIconUrl']
        data.image_url = map['ImageUrl']
        data.json_body = map['JsonBody']
        data.media_url = map['MediaUrl']
        data.raw_content = map['RawContent']
        data.silent_push = map['SilentPush']
        data.time_to_live = map['TimeToLive']
        data.title = map['Title']
        data.url = map['Url']
        return data
      end
    end

    class CampaignEmailMessage
      def self.parse(map)
        data = Types::CampaignEmailMessage.new
        data.body = map['Body']
        data.from_address = map['FromAddress']
        data.html_body = map['HtmlBody']
        data.title = map['Title']
        return data
      end
    end

    class CampaignCustomMessage
      def self.parse(map)
        data = Types::CampaignCustomMessage.new
        data.data = map['Data']
        return data
      end
    end

    class CampaignLimits
      def self.parse(map)
        data = Types::CampaignLimits.new
        data.daily = map['Daily']
        data.maximum_duration = map['MaximumDuration']
        data.messages_per_second = map['MessagesPerSecond']
        data.total = map['Total']
        data.session = map['Session']
        return data
      end
    end

    class CampaignHook
      def self.parse(map)
        data = Types::CampaignHook.new
        data.lambda_function_name = map['LambdaFunctionName']
        data.mode = map['Mode']
        data.web_url = map['WebUrl']
        return data
      end
    end

    class CustomDeliveryConfiguration
      def self.parse(map)
        data = Types::CustomDeliveryConfiguration.new
        data.delivery_uri = map['DeliveryUri']
        data.endpoint_types = (ListOf__EndpointTypesElement.parse(map['EndpointTypes']) unless map['EndpointTypes'].nil?)
        return data
      end
    end

    class ListOf__EndpointTypesElement
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class ListOfTreatmentResource
      def self.parse(list)
        data = []
        list.map do |value|
          data << TreatmentResource.parse(value) unless value.nil?
        end
        data
      end
    end

    class TreatmentResource
      def self.parse(map)
        data = Types::TreatmentResource.new
        data.custom_delivery_configuration = (CustomDeliveryConfiguration.parse(map['CustomDeliveryConfiguration']) unless map['CustomDeliveryConfiguration'].nil?)
        data.id = map['Id']
        data.message_configuration = (MessageConfiguration.parse(map['MessageConfiguration']) unless map['MessageConfiguration'].nil?)
        data.schedule = (Schedule.parse(map['Schedule']) unless map['Schedule'].nil?)
        data.size_percent = map['SizePercent']
        data.state = (CampaignState.parse(map['State']) unless map['State'].nil?)
        data.template_configuration = (TemplateConfiguration.parse(map['TemplateConfiguration']) unless map['TemplateConfiguration'].nil?)
        data.treatment_description = map['TreatmentDescription']
        data.treatment_name = map['TreatmentName']
        return data
      end
    end

    # Operation Parser for CreateEmailTemplate
    class CreateEmailTemplate
      def self.parse(http_resp)
        data = Types::CreateEmailTemplateOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.create_template_message_body = CreateTemplateMessageBody.parse(json)
        data
      end
    end

    class CreateTemplateMessageBody
      def self.parse(map)
        data = Types::CreateTemplateMessageBody.new
        data.arn = map['Arn']
        data.message = map['Message']
        data.request_id = map['RequestID']
        return data
      end
    end

    # Operation Parser for CreateExportJob
    class CreateExportJob
      def self.parse(http_resp)
        data = Types::CreateExportJobOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.export_job_response = ExportJobResponse.parse(json)
        data
      end
    end

    class ExportJobResponse
      def self.parse(map)
        data = Types::ExportJobResponse.new
        data.application_id = map['ApplicationId']
        data.completed_pieces = map['CompletedPieces']
        data.completion_date = map['CompletionDate']
        data.creation_date = map['CreationDate']
        data.definition = (ExportJobResource.parse(map['Definition']) unless map['Definition'].nil?)
        data.failed_pieces = map['FailedPieces']
        data.failures = (ListOf__string.parse(map['Failures']) unless map['Failures'].nil?)
        data.id = map['Id']
        data.job_status = map['JobStatus']
        data.total_failures = map['TotalFailures']
        data.total_pieces = map['TotalPieces']
        data.total_processed = map['TotalProcessed']
        data.type = map['Type']
        return data
      end
    end

    class ExportJobResource
      def self.parse(map)
        data = Types::ExportJobResource.new
        data.role_arn = map['RoleArn']
        data.s3_url_prefix = map['S3UrlPrefix']
        data.segment_id = map['SegmentId']
        data.segment_version = map['SegmentVersion']
        return data
      end
    end

    # Operation Parser for CreateImportJob
    class CreateImportJob
      def self.parse(http_resp)
        data = Types::CreateImportJobOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.import_job_response = ImportJobResponse.parse(json)
        data
      end
    end

    class ImportJobResponse
      def self.parse(map)
        data = Types::ImportJobResponse.new
        data.application_id = map['ApplicationId']
        data.completed_pieces = map['CompletedPieces']
        data.completion_date = map['CompletionDate']
        data.creation_date = map['CreationDate']
        data.definition = (ImportJobResource.parse(map['Definition']) unless map['Definition'].nil?)
        data.failed_pieces = map['FailedPieces']
        data.failures = (ListOf__string.parse(map['Failures']) unless map['Failures'].nil?)
        data.id = map['Id']
        data.job_status = map['JobStatus']
        data.total_failures = map['TotalFailures']
        data.total_pieces = map['TotalPieces']
        data.total_processed = map['TotalProcessed']
        data.type = map['Type']
        return data
      end
    end

    class ImportJobResource
      def self.parse(map)
        data = Types::ImportJobResource.new
        data.define_segment = map['DefineSegment']
        data.external_id = map['ExternalId']
        data.format = map['Format']
        data.register_endpoints = map['RegisterEndpoints']
        data.role_arn = map['RoleArn']
        data.s3_url = map['S3Url']
        data.segment_id = map['SegmentId']
        data.segment_name = map['SegmentName']
        return data
      end
    end

    # Operation Parser for CreateInAppTemplate
    class CreateInAppTemplate
      def self.parse(http_resp)
        data = Types::CreateInAppTemplateOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.template_create_message_body = TemplateCreateMessageBody.parse(json)
        data
      end
    end

    class TemplateCreateMessageBody
      def self.parse(map)
        data = Types::TemplateCreateMessageBody.new
        data.arn = map['Arn']
        data.message = map['Message']
        data.request_id = map['RequestID']
        return data
      end
    end

    # Operation Parser for CreateJourney
    class CreateJourney
      def self.parse(http_resp)
        data = Types::CreateJourneyOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.journey_response = JourneyResponse.parse(json)
        data
      end
    end

    class JourneyResponse
      def self.parse(map)
        data = Types::JourneyResponse.new
        data.activities = (MapOfActivity.parse(map['Activities']) unless map['Activities'].nil?)
        data.application_id = map['ApplicationId']
        data.creation_date = map['CreationDate']
        data.id = map['Id']
        data.last_modified_date = map['LastModifiedDate']
        data.limits = (JourneyLimits.parse(map['Limits']) unless map['Limits'].nil?)
        data.local_time = map['LocalTime']
        data.name = map['Name']
        data.quiet_time = (QuietTime.parse(map['QuietTime']) unless map['QuietTime'].nil?)
        data.refresh_frequency = map['RefreshFrequency']
        data.schedule = (JourneySchedule.parse(map['Schedule']) unless map['Schedule'].nil?)
        data.start_activity = map['StartActivity']
        data.start_condition = (StartCondition.parse(map['StartCondition']) unless map['StartCondition'].nil?)
        data.state = map['State']
        data.tags = (MapOf__string.parse(map['tags']) unless map['tags'].nil?)
        data.wait_for_quiet_time = map['WaitForQuietTime']
        data.refresh_on_segment_update = map['RefreshOnSegmentUpdate']
        data.journey_channel_settings = (JourneyChannelSettings.parse(map['JourneyChannelSettings']) unless map['JourneyChannelSettings'].nil?)
        return data
      end
    end

    class JourneyChannelSettings
      def self.parse(map)
        data = Types::JourneyChannelSettings.new
        data.connect_campaign_arn = map['ConnectCampaignArn']
        data.connect_campaign_execution_role_arn = map['ConnectCampaignExecutionRoleArn']
        return data
      end
    end

    class StartCondition
      def self.parse(map)
        data = Types::StartCondition.new
        data.description = map['Description']
        data.event_start_condition = (EventStartCondition.parse(map['EventStartCondition']) unless map['EventStartCondition'].nil?)
        data.segment_start_condition = (SegmentCondition.parse(map['SegmentStartCondition']) unless map['SegmentStartCondition'].nil?)
        return data
      end
    end

    class SegmentCondition
      def self.parse(map)
        data = Types::SegmentCondition.new
        data.segment_id = map['SegmentId']
        return data
      end
    end

    class EventStartCondition
      def self.parse(map)
        data = Types::EventStartCondition.new
        data.event_filter = (EventFilter.parse(map['EventFilter']) unless map['EventFilter'].nil?)
        data.segment_id = map['SegmentId']
        return data
      end
    end

    class EventFilter
      def self.parse(map)
        data = Types::EventFilter.new
        data.dimensions = (EventDimensions.parse(map['Dimensions']) unless map['Dimensions'].nil?)
        data.filter_type = map['FilterType']
        return data
      end
    end

    class JourneySchedule
      def self.parse(map)
        data = Types::JourneySchedule.new
        data.end_time = Time.parse(map['EndTime']) if map['EndTime']
        data.start_time = Time.parse(map['StartTime']) if map['StartTime']
        data.timezone = map['Timezone']
        return data
      end
    end

    class JourneyLimits
      def self.parse(map)
        data = Types::JourneyLimits.new
        data.daily_cap = map['DailyCap']
        data.endpoint_reentry_cap = map['EndpointReentryCap']
        data.messages_per_second = map['MessagesPerSecond']
        data.endpoint_reentry_interval = map['EndpointReentryInterval']
        return data
      end
    end

    class MapOfActivity
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Activity.parse(value) unless value.nil?
        end
        data
      end
    end

    class Activity
      def self.parse(map)
        data = Types::Activity.new
        data.custom = (CustomMessageActivity.parse(map['CUSTOM']) unless map['CUSTOM'].nil?)
        data.conditional_split = (ConditionalSplitActivity.parse(map['ConditionalSplit']) unless map['ConditionalSplit'].nil?)
        data.description = map['Description']
        data.email = (EmailMessageActivity.parse(map['EMAIL']) unless map['EMAIL'].nil?)
        data.holdout = (HoldoutActivity.parse(map['Holdout']) unless map['Holdout'].nil?)
        data.multi_condition = (MultiConditionalSplitActivity.parse(map['MultiCondition']) unless map['MultiCondition'].nil?)
        data.push = (PushMessageActivity.parse(map['PUSH']) unless map['PUSH'].nil?)
        data.random_split = (RandomSplitActivity.parse(map['RandomSplit']) unless map['RandomSplit'].nil?)
        data.sms = (SMSMessageActivity.parse(map['SMS']) unless map['SMS'].nil?)
        data.wait = (WaitActivity.parse(map['Wait']) unless map['Wait'].nil?)
        data.contact_center = (ContactCenterActivity.parse(map['ContactCenter']) unless map['ContactCenter'].nil?)
        return data
      end
    end

    class ContactCenterActivity
      def self.parse(map)
        data = Types::ContactCenterActivity.new
        data.next_activity = map['NextActivity']
        return data
      end
    end

    class WaitActivity
      def self.parse(map)
        data = Types::WaitActivity.new
        data.next_activity = map['NextActivity']
        data.wait_time = (WaitTime.parse(map['WaitTime']) unless map['WaitTime'].nil?)
        return data
      end
    end

    class WaitTime
      def self.parse(map)
        data = Types::WaitTime.new
        data.wait_for = map['WaitFor']
        data.wait_until = map['WaitUntil']
        return data
      end
    end

    class SMSMessageActivity
      def self.parse(map)
        data = Types::SMSMessageActivity.new
        data.message_config = (JourneySMSMessage.parse(map['MessageConfig']) unless map['MessageConfig'].nil?)
        data.next_activity = map['NextActivity']
        data.template_name = map['TemplateName']
        data.template_version = map['TemplateVersion']
        return data
      end
    end

    class JourneySMSMessage
      def self.parse(map)
        data = Types::JourneySMSMessage.new
        data.message_type = map['MessageType']
        data.origination_number = map['OriginationNumber']
        data.sender_id = map['SenderId']
        data.entity_id = map['EntityId']
        data.template_id = map['TemplateId']
        return data
      end
    end

    class RandomSplitActivity
      def self.parse(map)
        data = Types::RandomSplitActivity.new
        data.branches = (ListOfRandomSplitEntry.parse(map['Branches']) unless map['Branches'].nil?)
        return data
      end
    end

    class ListOfRandomSplitEntry
      def self.parse(list)
        data = []
        list.map do |value|
          data << RandomSplitEntry.parse(value) unless value.nil?
        end
        data
      end
    end

    class RandomSplitEntry
      def self.parse(map)
        data = Types::RandomSplitEntry.new
        data.next_activity = map['NextActivity']
        data.percentage = map['Percentage']
        return data
      end
    end

    class PushMessageActivity
      def self.parse(map)
        data = Types::PushMessageActivity.new
        data.message_config = (JourneyPushMessage.parse(map['MessageConfig']) unless map['MessageConfig'].nil?)
        data.next_activity = map['NextActivity']
        data.template_name = map['TemplateName']
        data.template_version = map['TemplateVersion']
        return data
      end
    end

    class JourneyPushMessage
      def self.parse(map)
        data = Types::JourneyPushMessage.new
        data.time_to_live = map['TimeToLive']
        return data
      end
    end

    class MultiConditionalSplitActivity
      def self.parse(map)
        data = Types::MultiConditionalSplitActivity.new
        data.branches = (ListOfMultiConditionalBranch.parse(map['Branches']) unless map['Branches'].nil?)
        data.default_activity = map['DefaultActivity']
        data.evaluation_wait_time = (WaitTime.parse(map['EvaluationWaitTime']) unless map['EvaluationWaitTime'].nil?)
        return data
      end
    end

    class ListOfMultiConditionalBranch
      def self.parse(list)
        data = []
        list.map do |value|
          data << MultiConditionalBranch.parse(value) unless value.nil?
        end
        data
      end
    end

    class MultiConditionalBranch
      def self.parse(map)
        data = Types::MultiConditionalBranch.new
        data.condition = (SimpleCondition.parse(map['Condition']) unless map['Condition'].nil?)
        data.next_activity = map['NextActivity']
        return data
      end
    end

    class SimpleCondition
      def self.parse(map)
        data = Types::SimpleCondition.new
        data.event_condition = (EventCondition.parse(map['EventCondition']) unless map['EventCondition'].nil?)
        data.segment_condition = (SegmentCondition.parse(map['SegmentCondition']) unless map['SegmentCondition'].nil?)
        data.segment_dimensions = (SegmentDimensions.parse(map['segmentDimensions']) unless map['segmentDimensions'].nil?)
        return data
      end
    end

    class SegmentDimensions
      def self.parse(map)
        data = Types::SegmentDimensions.new
        data.attributes = (MapOfAttributeDimension.parse(map['Attributes']) unless map['Attributes'].nil?)
        data.behavior = (SegmentBehaviors.parse(map['Behavior']) unless map['Behavior'].nil?)
        data.demographic = (SegmentDemographics.parse(map['Demographic']) unless map['Demographic'].nil?)
        data.location = (SegmentLocation.parse(map['Location']) unless map['Location'].nil?)
        data.metrics = (MapOfMetricDimension.parse(map['Metrics']) unless map['Metrics'].nil?)
        data.user_attributes = (MapOfAttributeDimension.parse(map['UserAttributes']) unless map['UserAttributes'].nil?)
        return data
      end
    end

    class SegmentLocation
      def self.parse(map)
        data = Types::SegmentLocation.new
        data.country = (SetDimension.parse(map['Country']) unless map['Country'].nil?)
        data.gps_point = (GPSPointDimension.parse(map['GPSPoint']) unless map['GPSPoint'].nil?)
        return data
      end
    end

    class GPSPointDimension
      def self.parse(map)
        data = Types::GPSPointDimension.new
        data.coordinates = (GPSCoordinates.parse(map['Coordinates']) unless map['Coordinates'].nil?)
        data.range_in_kilometers = Hearth::NumberHelper.deserialize(map['RangeInKilometers'])
        return data
      end
    end

    class GPSCoordinates
      def self.parse(map)
        data = Types::GPSCoordinates.new
        data.latitude = Hearth::NumberHelper.deserialize(map['Latitude'])
        data.longitude = Hearth::NumberHelper.deserialize(map['Longitude'])
        return data
      end
    end

    class SegmentDemographics
      def self.parse(map)
        data = Types::SegmentDemographics.new
        data.app_version = (SetDimension.parse(map['AppVersion']) unless map['AppVersion'].nil?)
        data.channel = (SetDimension.parse(map['Channel']) unless map['Channel'].nil?)
        data.device_type = (SetDimension.parse(map['DeviceType']) unless map['DeviceType'].nil?)
        data.make = (SetDimension.parse(map['Make']) unless map['Make'].nil?)
        data.model = (SetDimension.parse(map['Model']) unless map['Model'].nil?)
        data.platform = (SetDimension.parse(map['Platform']) unless map['Platform'].nil?)
        return data
      end
    end

    class SegmentBehaviors
      def self.parse(map)
        data = Types::SegmentBehaviors.new
        data.recency = (RecencyDimension.parse(map['Recency']) unless map['Recency'].nil?)
        return data
      end
    end

    class RecencyDimension
      def self.parse(map)
        data = Types::RecencyDimension.new
        data.duration = map['Duration']
        data.recency_type = map['RecencyType']
        return data
      end
    end

    class EventCondition
      def self.parse(map)
        data = Types::EventCondition.new
        data.dimensions = (EventDimensions.parse(map['Dimensions']) unless map['Dimensions'].nil?)
        data.message_activity = map['MessageActivity']
        return data
      end
    end

    class HoldoutActivity
      def self.parse(map)
        data = Types::HoldoutActivity.new
        data.next_activity = map['NextActivity']
        data.percentage = map['Percentage']
        return data
      end
    end

    class EmailMessageActivity
      def self.parse(map)
        data = Types::EmailMessageActivity.new
        data.message_config = (JourneyEmailMessage.parse(map['MessageConfig']) unless map['MessageConfig'].nil?)
        data.next_activity = map['NextActivity']
        data.template_name = map['TemplateName']
        data.template_version = map['TemplateVersion']
        return data
      end
    end

    class JourneyEmailMessage
      def self.parse(map)
        data = Types::JourneyEmailMessage.new
        data.from_address = map['FromAddress']
        return data
      end
    end

    class ConditionalSplitActivity
      def self.parse(map)
        data = Types::ConditionalSplitActivity.new
        data.condition = (Condition.parse(map['Condition']) unless map['Condition'].nil?)
        data.evaluation_wait_time = (WaitTime.parse(map['EvaluationWaitTime']) unless map['EvaluationWaitTime'].nil?)
        data.false_activity = map['FalseActivity']
        data.true_activity = map['TrueActivity']
        return data
      end
    end

    class Condition
      def self.parse(map)
        data = Types::Condition.new
        data.conditions = (ListOfSimpleCondition.parse(map['Conditions']) unless map['Conditions'].nil?)
        data.operator = map['Operator']
        return data
      end
    end

    class ListOfSimpleCondition
      def self.parse(list)
        data = []
        list.map do |value|
          data << SimpleCondition.parse(value) unless value.nil?
        end
        data
      end
    end

    class CustomMessageActivity
      def self.parse(map)
        data = Types::CustomMessageActivity.new
        data.delivery_uri = map['DeliveryUri']
        data.endpoint_types = (ListOf__EndpointTypesElement.parse(map['EndpointTypes']) unless map['EndpointTypes'].nil?)
        data.message_config = (JourneyCustomMessage.parse(map['MessageConfig']) unless map['MessageConfig'].nil?)
        data.next_activity = map['NextActivity']
        data.template_name = map['TemplateName']
        data.template_version = map['TemplateVersion']
        return data
      end
    end

    class JourneyCustomMessage
      def self.parse(map)
        data = Types::JourneyCustomMessage.new
        data.data = map['Data']
        return data
      end
    end

    # Operation Parser for CreatePushTemplate
    class CreatePushTemplate
      def self.parse(http_resp)
        data = Types::CreatePushTemplateOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.create_template_message_body = CreateTemplateMessageBody.parse(json)
        data
      end
    end

    # Operation Parser for CreateRecommenderConfiguration
    class CreateRecommenderConfiguration
      def self.parse(http_resp)
        data = Types::CreateRecommenderConfigurationOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.recommender_configuration_response = RecommenderConfigurationResponse.parse(json)
        data
      end
    end

    class RecommenderConfigurationResponse
      def self.parse(map)
        data = Types::RecommenderConfigurationResponse.new
        data.attributes = (MapOf__string.parse(map['Attributes']) unless map['Attributes'].nil?)
        data.creation_date = map['CreationDate']
        data.description = map['Description']
        data.id = map['Id']
        data.last_modified_date = map['LastModifiedDate']
        data.name = map['Name']
        data.recommendation_provider_id_type = map['RecommendationProviderIdType']
        data.recommendation_provider_role_arn = map['RecommendationProviderRoleArn']
        data.recommendation_provider_uri = map['RecommendationProviderUri']
        data.recommendation_transformer_uri = map['RecommendationTransformerUri']
        data.recommendations_display_name = map['RecommendationsDisplayName']
        data.recommendations_per_message = map['RecommendationsPerMessage']
        return data
      end
    end

    # Operation Parser for CreateSegment
    class CreateSegment
      def self.parse(http_resp)
        data = Types::CreateSegmentOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.segment_response = SegmentResponse.parse(json)
        data
      end
    end

    class SegmentResponse
      def self.parse(map)
        data = Types::SegmentResponse.new
        data.application_id = map['ApplicationId']
        data.arn = map['Arn']
        data.creation_date = map['CreationDate']
        data.dimensions = (SegmentDimensions.parse(map['Dimensions']) unless map['Dimensions'].nil?)
        data.id = map['Id']
        data.import_definition = (SegmentImportResource.parse(map['ImportDefinition']) unless map['ImportDefinition'].nil?)
        data.last_modified_date = map['LastModifiedDate']
        data.name = map['Name']
        data.segment_groups = (SegmentGroupList.parse(map['SegmentGroups']) unless map['SegmentGroups'].nil?)
        data.segment_type = map['SegmentType']
        data.tags = (MapOf__string.parse(map['tags']) unless map['tags'].nil?)
        data.version = map['Version']
        return data
      end
    end

    class SegmentGroupList
      def self.parse(map)
        data = Types::SegmentGroupList.new
        data.groups = (ListOfSegmentGroup.parse(map['Groups']) unless map['Groups'].nil?)
        data.include = map['Include']
        return data
      end
    end

    class ListOfSegmentGroup
      def self.parse(list)
        data = []
        list.map do |value|
          data << SegmentGroup.parse(value) unless value.nil?
        end
        data
      end
    end

    class SegmentGroup
      def self.parse(map)
        data = Types::SegmentGroup.new
        data.dimensions = (ListOfSegmentDimensions.parse(map['Dimensions']) unless map['Dimensions'].nil?)
        data.source_segments = (ListOfSegmentReference.parse(map['SourceSegments']) unless map['SourceSegments'].nil?)
        data.source_type = map['SourceType']
        data.type = map['Type']
        return data
      end
    end

    class ListOfSegmentReference
      def self.parse(list)
        data = []
        list.map do |value|
          data << SegmentReference.parse(value) unless value.nil?
        end
        data
      end
    end

    class SegmentReference
      def self.parse(map)
        data = Types::SegmentReference.new
        data.id = map['Id']
        data.version = map['Version']
        return data
      end
    end

    class ListOfSegmentDimensions
      def self.parse(list)
        data = []
        list.map do |value|
          data << SegmentDimensions.parse(value) unless value.nil?
        end
        data
      end
    end

    class SegmentImportResource
      def self.parse(map)
        data = Types::SegmentImportResource.new
        data.channel_counts = (MapOf__integer.parse(map['ChannelCounts']) unless map['ChannelCounts'].nil?)
        data.external_id = map['ExternalId']
        data.format = map['Format']
        data.role_arn = map['RoleArn']
        data.s3_url = map['S3Url']
        data.size = map['Size']
        return data
      end
    end

    class MapOf__integer
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for CreateSmsTemplate
    class CreateSmsTemplate
      def self.parse(http_resp)
        data = Types::CreateSmsTemplateOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.create_template_message_body = CreateTemplateMessageBody.parse(json)
        data
      end
    end

    # Operation Parser for CreateVoiceTemplate
    class CreateVoiceTemplate
      def self.parse(http_resp)
        data = Types::CreateVoiceTemplateOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.create_template_message_body = CreateTemplateMessageBody.parse(json)
        data
      end
    end

    # Operation Parser for DeleteAdmChannel
    class DeleteAdmChannel
      def self.parse(http_resp)
        data = Types::DeleteAdmChannelOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.adm_channel_response = ADMChannelResponse.parse(json)
        data
      end
    end

    class ADMChannelResponse
      def self.parse(map)
        data = Types::ADMChannelResponse.new
        data.application_id = map['ApplicationId']
        data.creation_date = map['CreationDate']
        data.enabled = map['Enabled']
        data.has_credential = map['HasCredential']
        data.id = map['Id']
        data.is_archived = map['IsArchived']
        data.last_modified_by = map['LastModifiedBy']
        data.last_modified_date = map['LastModifiedDate']
        data.platform = map['Platform']
        data.version = map['Version']
        return data
      end
    end

    # Operation Parser for DeleteApnsChannel
    class DeleteApnsChannel
      def self.parse(http_resp)
        data = Types::DeleteApnsChannelOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.apns_channel_response = APNSChannelResponse.parse(json)
        data
      end
    end

    class APNSChannelResponse
      def self.parse(map)
        data = Types::APNSChannelResponse.new
        data.application_id = map['ApplicationId']
        data.creation_date = map['CreationDate']
        data.default_authentication_method = map['DefaultAuthenticationMethod']
        data.enabled = map['Enabled']
        data.has_credential = map['HasCredential']
        data.has_token_key = map['HasTokenKey']
        data.id = map['Id']
        data.is_archived = map['IsArchived']
        data.last_modified_by = map['LastModifiedBy']
        data.last_modified_date = map['LastModifiedDate']
        data.platform = map['Platform']
        data.version = map['Version']
        return data
      end
    end

    # Operation Parser for DeleteApnsSandboxChannel
    class DeleteApnsSandboxChannel
      def self.parse(http_resp)
        data = Types::DeleteApnsSandboxChannelOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.apns_sandbox_channel_response = APNSSandboxChannelResponse.parse(json)
        data
      end
    end

    class APNSSandboxChannelResponse
      def self.parse(map)
        data = Types::APNSSandboxChannelResponse.new
        data.application_id = map['ApplicationId']
        data.creation_date = map['CreationDate']
        data.default_authentication_method = map['DefaultAuthenticationMethod']
        data.enabled = map['Enabled']
        data.has_credential = map['HasCredential']
        data.has_token_key = map['HasTokenKey']
        data.id = map['Id']
        data.is_archived = map['IsArchived']
        data.last_modified_by = map['LastModifiedBy']
        data.last_modified_date = map['LastModifiedDate']
        data.platform = map['Platform']
        data.version = map['Version']
        return data
      end
    end

    # Operation Parser for DeleteApnsVoipChannel
    class DeleteApnsVoipChannel
      def self.parse(http_resp)
        data = Types::DeleteApnsVoipChannelOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.apns_voip_channel_response = APNSVoipChannelResponse.parse(json)
        data
      end
    end

    class APNSVoipChannelResponse
      def self.parse(map)
        data = Types::APNSVoipChannelResponse.new
        data.application_id = map['ApplicationId']
        data.creation_date = map['CreationDate']
        data.default_authentication_method = map['DefaultAuthenticationMethod']
        data.enabled = map['Enabled']
        data.has_credential = map['HasCredential']
        data.has_token_key = map['HasTokenKey']
        data.id = map['Id']
        data.is_archived = map['IsArchived']
        data.last_modified_by = map['LastModifiedBy']
        data.last_modified_date = map['LastModifiedDate']
        data.platform = map['Platform']
        data.version = map['Version']
        return data
      end
    end

    # Operation Parser for DeleteApnsVoipSandboxChannel
    class DeleteApnsVoipSandboxChannel
      def self.parse(http_resp)
        data = Types::DeleteApnsVoipSandboxChannelOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.apns_voip_sandbox_channel_response = APNSVoipSandboxChannelResponse.parse(json)
        data
      end
    end

    class APNSVoipSandboxChannelResponse
      def self.parse(map)
        data = Types::APNSVoipSandboxChannelResponse.new
        data.application_id = map['ApplicationId']
        data.creation_date = map['CreationDate']
        data.default_authentication_method = map['DefaultAuthenticationMethod']
        data.enabled = map['Enabled']
        data.has_credential = map['HasCredential']
        data.has_token_key = map['HasTokenKey']
        data.id = map['Id']
        data.is_archived = map['IsArchived']
        data.last_modified_by = map['LastModifiedBy']
        data.last_modified_date = map['LastModifiedDate']
        data.platform = map['Platform']
        data.version = map['Version']
        return data
      end
    end

    # Operation Parser for DeleteApp
    class DeleteApp
      def self.parse(http_resp)
        data = Types::DeleteAppOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.application_response = ApplicationResponse.parse(json)
        data
      end
    end

    # Operation Parser for DeleteBaiduChannel
    class DeleteBaiduChannel
      def self.parse(http_resp)
        data = Types::DeleteBaiduChannelOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.baidu_channel_response = BaiduChannelResponse.parse(json)
        data
      end
    end

    class BaiduChannelResponse
      def self.parse(map)
        data = Types::BaiduChannelResponse.new
        data.application_id = map['ApplicationId']
        data.creation_date = map['CreationDate']
        data.credential = map['Credential']
        data.enabled = map['Enabled']
        data.has_credential = map['HasCredential']
        data.id = map['Id']
        data.is_archived = map['IsArchived']
        data.last_modified_by = map['LastModifiedBy']
        data.last_modified_date = map['LastModifiedDate']
        data.platform = map['Platform']
        data.version = map['Version']
        return data
      end
    end

    # Operation Parser for DeleteCampaign
    class DeleteCampaign
      def self.parse(http_resp)
        data = Types::DeleteCampaignOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.campaign_response = CampaignResponse.parse(json)
        data
      end
    end

    # Operation Parser for DeleteEmailChannel
    class DeleteEmailChannel
      def self.parse(http_resp)
        data = Types::DeleteEmailChannelOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.email_channel_response = EmailChannelResponse.parse(json)
        data
      end
    end

    class EmailChannelResponse
      def self.parse(map)
        data = Types::EmailChannelResponse.new
        data.application_id = map['ApplicationId']
        data.configuration_set = map['ConfigurationSet']
        data.creation_date = map['CreationDate']
        data.enabled = map['Enabled']
        data.from_address = map['FromAddress']
        data.has_credential = map['HasCredential']
        data.id = map['Id']
        data.identity = map['Identity']
        data.is_archived = map['IsArchived']
        data.last_modified_by = map['LastModifiedBy']
        data.last_modified_date = map['LastModifiedDate']
        data.messages_per_second = map['MessagesPerSecond']
        data.platform = map['Platform']
        data.role_arn = map['RoleArn']
        data.version = map['Version']
        return data
      end
    end

    # Operation Parser for DeleteEmailTemplate
    class DeleteEmailTemplate
      def self.parse(http_resp)
        data = Types::DeleteEmailTemplateOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.message_body = MessageBody.parse(json)
        data
      end
    end

    class MessageBody
      def self.parse(map)
        data = Types::MessageBody.new
        data.message = map['Message']
        data.request_id = map['RequestID']
        return data
      end
    end

    # Operation Parser for DeleteEndpoint
    class DeleteEndpoint
      def self.parse(http_resp)
        data = Types::DeleteEndpointOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.endpoint_response = EndpointResponse.parse(json)
        data
      end
    end

    class EndpointResponse
      def self.parse(map)
        data = Types::EndpointResponse.new
        data.address = map['Address']
        data.application_id = map['ApplicationId']
        data.attributes = (MapOfListOf__string.parse(map['Attributes']) unless map['Attributes'].nil?)
        data.channel_type = map['ChannelType']
        data.cohort_id = map['CohortId']
        data.creation_date = map['CreationDate']
        data.demographic = (EndpointDemographic.parse(map['Demographic']) unless map['Demographic'].nil?)
        data.effective_date = map['EffectiveDate']
        data.endpoint_status = map['EndpointStatus']
        data.id = map['Id']
        data.location = (EndpointLocation.parse(map['Location']) unless map['Location'].nil?)
        data.metrics = (MapOf__double.parse(map['Metrics']) unless map['Metrics'].nil?)
        data.opt_out = map['OptOut']
        data.request_id = map['RequestId']
        data.user = (EndpointUser.parse(map['User']) unless map['User'].nil?)
        return data
      end
    end

    class EndpointUser
      def self.parse(map)
        data = Types::EndpointUser.new
        data.user_attributes = (MapOfListOf__string.parse(map['UserAttributes']) unless map['UserAttributes'].nil?)
        data.user_id = map['UserId']
        return data
      end
    end

    class MapOfListOf__string
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = ListOf__string.parse(value) unless value.nil?
        end
        data
      end
    end

    class MapOf__double
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Hearth::NumberHelper.deserialize(value) unless value.nil?
        end
        data
      end
    end

    class EndpointLocation
      def self.parse(map)
        data = Types::EndpointLocation.new
        data.city = map['City']
        data.country = map['Country']
        data.latitude = Hearth::NumberHelper.deserialize(map['Latitude'])
        data.longitude = Hearth::NumberHelper.deserialize(map['Longitude'])
        data.postal_code = map['PostalCode']
        data.region = map['Region']
        return data
      end
    end

    class EndpointDemographic
      def self.parse(map)
        data = Types::EndpointDemographic.new
        data.app_version = map['AppVersion']
        data.locale = map['Locale']
        data.make = map['Make']
        data.model = map['Model']
        data.model_version = map['ModelVersion']
        data.platform = map['Platform']
        data.platform_version = map['PlatformVersion']
        data.timezone = map['Timezone']
        return data
      end
    end

    # Operation Parser for DeleteEventStream
    class DeleteEventStream
      def self.parse(http_resp)
        data = Types::DeleteEventStreamOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.event_stream = EventStream.parse(json)
        data
      end
    end

    class EventStream
      def self.parse(map)
        data = Types::EventStream.new
        data.application_id = map['ApplicationId']
        data.destination_stream_arn = map['DestinationStreamArn']
        data.external_id = map['ExternalId']
        data.last_modified_date = map['LastModifiedDate']
        data.last_updated_by = map['LastUpdatedBy']
        data.role_arn = map['RoleArn']
        return data
      end
    end

    # Operation Parser for DeleteGcmChannel
    class DeleteGcmChannel
      def self.parse(http_resp)
        data = Types::DeleteGcmChannelOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.gcm_channel_response = GCMChannelResponse.parse(json)
        data
      end
    end

    class GCMChannelResponse
      def self.parse(map)
        data = Types::GCMChannelResponse.new
        data.application_id = map['ApplicationId']
        data.creation_date = map['CreationDate']
        data.credential = map['Credential']
        data.enabled = map['Enabled']
        data.has_credential = map['HasCredential']
        data.id = map['Id']
        data.is_archived = map['IsArchived']
        data.last_modified_by = map['LastModifiedBy']
        data.last_modified_date = map['LastModifiedDate']
        data.platform = map['Platform']
        data.version = map['Version']
        return data
      end
    end

    # Operation Parser for DeleteInAppTemplate
    class DeleteInAppTemplate
      def self.parse(http_resp)
        data = Types::DeleteInAppTemplateOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.message_body = MessageBody.parse(json)
        data
      end
    end

    # Operation Parser for DeleteJourney
    class DeleteJourney
      def self.parse(http_resp)
        data = Types::DeleteJourneyOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.journey_response = JourneyResponse.parse(json)
        data
      end
    end

    # Operation Parser for DeletePushTemplate
    class DeletePushTemplate
      def self.parse(http_resp)
        data = Types::DeletePushTemplateOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.message_body = MessageBody.parse(json)
        data
      end
    end

    # Operation Parser for DeleteRecommenderConfiguration
    class DeleteRecommenderConfiguration
      def self.parse(http_resp)
        data = Types::DeleteRecommenderConfigurationOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.recommender_configuration_response = RecommenderConfigurationResponse.parse(json)
        data
      end
    end

    # Operation Parser for DeleteSegment
    class DeleteSegment
      def self.parse(http_resp)
        data = Types::DeleteSegmentOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.segment_response = SegmentResponse.parse(json)
        data
      end
    end

    # Operation Parser for DeleteSmsChannel
    class DeleteSmsChannel
      def self.parse(http_resp)
        data = Types::DeleteSmsChannelOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.sms_channel_response = SMSChannelResponse.parse(json)
        data
      end
    end

    class SMSChannelResponse
      def self.parse(map)
        data = Types::SMSChannelResponse.new
        data.application_id = map['ApplicationId']
        data.creation_date = map['CreationDate']
        data.enabled = map['Enabled']
        data.has_credential = map['HasCredential']
        data.id = map['Id']
        data.is_archived = map['IsArchived']
        data.last_modified_by = map['LastModifiedBy']
        data.last_modified_date = map['LastModifiedDate']
        data.platform = map['Platform']
        data.promotional_messages_per_second = map['PromotionalMessagesPerSecond']
        data.sender_id = map['SenderId']
        data.short_code = map['ShortCode']
        data.transactional_messages_per_second = map['TransactionalMessagesPerSecond']
        data.version = map['Version']
        return data
      end
    end

    # Operation Parser for DeleteSmsTemplate
    class DeleteSmsTemplate
      def self.parse(http_resp)
        data = Types::DeleteSmsTemplateOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.message_body = MessageBody.parse(json)
        data
      end
    end

    # Operation Parser for DeleteUserEndpoints
    class DeleteUserEndpoints
      def self.parse(http_resp)
        data = Types::DeleteUserEndpointsOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.endpoints_response = EndpointsResponse.parse(json)
        data
      end
    end

    class EndpointsResponse
      def self.parse(map)
        data = Types::EndpointsResponse.new
        data.item = (ListOfEndpointResponse.parse(map['Item']) unless map['Item'].nil?)
        return data
      end
    end

    class ListOfEndpointResponse
      def self.parse(list)
        data = []
        list.map do |value|
          data << EndpointResponse.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for DeleteVoiceChannel
    class DeleteVoiceChannel
      def self.parse(http_resp)
        data = Types::DeleteVoiceChannelOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.voice_channel_response = VoiceChannelResponse.parse(json)
        data
      end
    end

    class VoiceChannelResponse
      def self.parse(map)
        data = Types::VoiceChannelResponse.new
        data.application_id = map['ApplicationId']
        data.creation_date = map['CreationDate']
        data.enabled = map['Enabled']
        data.has_credential = map['HasCredential']
        data.id = map['Id']
        data.is_archived = map['IsArchived']
        data.last_modified_by = map['LastModifiedBy']
        data.last_modified_date = map['LastModifiedDate']
        data.platform = map['Platform']
        data.version = map['Version']
        return data
      end
    end

    # Operation Parser for DeleteVoiceTemplate
    class DeleteVoiceTemplate
      def self.parse(http_resp)
        data = Types::DeleteVoiceTemplateOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.message_body = MessageBody.parse(json)
        data
      end
    end

    # Operation Parser for GetAdmChannel
    class GetAdmChannel
      def self.parse(http_resp)
        data = Types::GetAdmChannelOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.adm_channel_response = ADMChannelResponse.parse(json)
        data
      end
    end

    # Operation Parser for GetApnsChannel
    class GetApnsChannel
      def self.parse(http_resp)
        data = Types::GetApnsChannelOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.apns_channel_response = APNSChannelResponse.parse(json)
        data
      end
    end

    # Operation Parser for GetApnsSandboxChannel
    class GetApnsSandboxChannel
      def self.parse(http_resp)
        data = Types::GetApnsSandboxChannelOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.apns_sandbox_channel_response = APNSSandboxChannelResponse.parse(json)
        data
      end
    end

    # Operation Parser for GetApnsVoipChannel
    class GetApnsVoipChannel
      def self.parse(http_resp)
        data = Types::GetApnsVoipChannelOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.apns_voip_channel_response = APNSVoipChannelResponse.parse(json)
        data
      end
    end

    # Operation Parser for GetApnsVoipSandboxChannel
    class GetApnsVoipSandboxChannel
      def self.parse(http_resp)
        data = Types::GetApnsVoipSandboxChannelOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.apns_voip_sandbox_channel_response = APNSVoipSandboxChannelResponse.parse(json)
        data
      end
    end

    # Operation Parser for GetApp
    class GetApp
      def self.parse(http_resp)
        data = Types::GetAppOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.application_response = ApplicationResponse.parse(json)
        data
      end
    end

    # Operation Parser for GetApplicationDateRangeKpi
    class GetApplicationDateRangeKpi
      def self.parse(http_resp)
        data = Types::GetApplicationDateRangeKpiOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.application_date_range_kpi_response = ApplicationDateRangeKpiResponse.parse(json)
        data
      end
    end

    class ApplicationDateRangeKpiResponse
      def self.parse(map)
        data = Types::ApplicationDateRangeKpiResponse.new
        data.application_id = map['ApplicationId']
        data.end_time = Time.parse(map['EndTime']) if map['EndTime']
        data.kpi_name = map['KpiName']
        data.kpi_result = (BaseKpiResult.parse(map['KpiResult']) unless map['KpiResult'].nil?)
        data.next_token = map['NextToken']
        data.start_time = Time.parse(map['StartTime']) if map['StartTime']
        return data
      end
    end

    class BaseKpiResult
      def self.parse(map)
        data = Types::BaseKpiResult.new
        data.rows = (ListOfResultRow.parse(map['Rows']) unless map['Rows'].nil?)
        return data
      end
    end

    class ListOfResultRow
      def self.parse(list)
        data = []
        list.map do |value|
          data << ResultRow.parse(value) unless value.nil?
        end
        data
      end
    end

    class ResultRow
      def self.parse(map)
        data = Types::ResultRow.new
        data.grouped_bys = (ListOfResultRowValue.parse(map['GroupedBys']) unless map['GroupedBys'].nil?)
        data.values = (ListOfResultRowValue.parse(map['Values']) unless map['Values'].nil?)
        return data
      end
    end

    class ListOfResultRowValue
      def self.parse(list)
        data = []
        list.map do |value|
          data << ResultRowValue.parse(value) unless value.nil?
        end
        data
      end
    end

    class ResultRowValue
      def self.parse(map)
        data = Types::ResultRowValue.new
        data.key = map['Key']
        data.type = map['Type']
        data.value = map['Value']
        return data
      end
    end

    # Operation Parser for GetApplicationSettings
    class GetApplicationSettings
      def self.parse(http_resp)
        data = Types::GetApplicationSettingsOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.application_settings_resource = ApplicationSettingsResource.parse(json)
        data
      end
    end

    class ApplicationSettingsResource
      def self.parse(map)
        data = Types::ApplicationSettingsResource.new
        data.application_id = map['ApplicationId']
        data.campaign_hook = (CampaignHook.parse(map['CampaignHook']) unless map['CampaignHook'].nil?)
        data.last_modified_date = map['LastModifiedDate']
        data.limits = (CampaignLimits.parse(map['Limits']) unless map['Limits'].nil?)
        data.quiet_time = (QuietTime.parse(map['QuietTime']) unless map['QuietTime'].nil?)
        return data
      end
    end

    # Operation Parser for GetApps
    class GetApps
      def self.parse(http_resp)
        data = Types::GetAppsOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.applications_response = ApplicationsResponse.parse(json)
        data
      end
    end

    class ApplicationsResponse
      def self.parse(map)
        data = Types::ApplicationsResponse.new
        data.item = (ListOfApplicationResponse.parse(map['Item']) unless map['Item'].nil?)
        data.next_token = map['NextToken']
        return data
      end
    end

    class ListOfApplicationResponse
      def self.parse(list)
        data = []
        list.map do |value|
          data << ApplicationResponse.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetBaiduChannel
    class GetBaiduChannel
      def self.parse(http_resp)
        data = Types::GetBaiduChannelOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.baidu_channel_response = BaiduChannelResponse.parse(json)
        data
      end
    end

    # Operation Parser for GetCampaign
    class GetCampaign
      def self.parse(http_resp)
        data = Types::GetCampaignOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.campaign_response = CampaignResponse.parse(json)
        data
      end
    end

    # Operation Parser for GetCampaignActivities
    class GetCampaignActivities
      def self.parse(http_resp)
        data = Types::GetCampaignActivitiesOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.activities_response = ActivitiesResponse.parse(json)
        data
      end
    end

    class ActivitiesResponse
      def self.parse(map)
        data = Types::ActivitiesResponse.new
        data.item = (ListOfActivityResponse.parse(map['Item']) unless map['Item'].nil?)
        data.next_token = map['NextToken']
        return data
      end
    end

    class ListOfActivityResponse
      def self.parse(list)
        data = []
        list.map do |value|
          data << ActivityResponse.parse(value) unless value.nil?
        end
        data
      end
    end

    class ActivityResponse
      def self.parse(map)
        data = Types::ActivityResponse.new
        data.application_id = map['ApplicationId']
        data.campaign_id = map['CampaignId']
        data.end = map['End']
        data.id = map['Id']
        data.result = map['Result']
        data.scheduled_start = map['ScheduledStart']
        data.start = map['Start']
        data.state = map['State']
        data.successful_endpoint_count = map['SuccessfulEndpointCount']
        data.timezones_completed_count = map['TimezonesCompletedCount']
        data.timezones_total_count = map['TimezonesTotalCount']
        data.total_endpoint_count = map['TotalEndpointCount']
        data.treatment_id = map['TreatmentId']
        return data
      end
    end

    # Operation Parser for GetCampaignDateRangeKpi
    class GetCampaignDateRangeKpi
      def self.parse(http_resp)
        data = Types::GetCampaignDateRangeKpiOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.campaign_date_range_kpi_response = CampaignDateRangeKpiResponse.parse(json)
        data
      end
    end

    class CampaignDateRangeKpiResponse
      def self.parse(map)
        data = Types::CampaignDateRangeKpiResponse.new
        data.application_id = map['ApplicationId']
        data.campaign_id = map['CampaignId']
        data.end_time = Time.parse(map['EndTime']) if map['EndTime']
        data.kpi_name = map['KpiName']
        data.kpi_result = (BaseKpiResult.parse(map['KpiResult']) unless map['KpiResult'].nil?)
        data.next_token = map['NextToken']
        data.start_time = Time.parse(map['StartTime']) if map['StartTime']
        return data
      end
    end

    # Operation Parser for GetCampaignVersion
    class GetCampaignVersion
      def self.parse(http_resp)
        data = Types::GetCampaignVersionOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.campaign_response = CampaignResponse.parse(json)
        data
      end
    end

    # Operation Parser for GetCampaignVersions
    class GetCampaignVersions
      def self.parse(http_resp)
        data = Types::GetCampaignVersionsOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.campaigns_response = CampaignsResponse.parse(json)
        data
      end
    end

    class CampaignsResponse
      def self.parse(map)
        data = Types::CampaignsResponse.new
        data.item = (ListOfCampaignResponse.parse(map['Item']) unless map['Item'].nil?)
        data.next_token = map['NextToken']
        return data
      end
    end

    class ListOfCampaignResponse
      def self.parse(list)
        data = []
        list.map do |value|
          data << CampaignResponse.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetCampaigns
    class GetCampaigns
      def self.parse(http_resp)
        data = Types::GetCampaignsOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.campaigns_response = CampaignsResponse.parse(json)
        data
      end
    end

    # Operation Parser for GetChannels
    class GetChannels
      def self.parse(http_resp)
        data = Types::GetChannelsOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.channels_response = ChannelsResponse.parse(json)
        data
      end
    end

    class ChannelsResponse
      def self.parse(map)
        data = Types::ChannelsResponse.new
        data.channels = (MapOfChannelResponse.parse(map['Channels']) unless map['Channels'].nil?)
        return data
      end
    end

    class MapOfChannelResponse
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = ChannelResponse.parse(value) unless value.nil?
        end
        data
      end
    end

    class ChannelResponse
      def self.parse(map)
        data = Types::ChannelResponse.new
        data.application_id = map['ApplicationId']
        data.creation_date = map['CreationDate']
        data.enabled = map['Enabled']
        data.has_credential = map['HasCredential']
        data.id = map['Id']
        data.is_archived = map['IsArchived']
        data.last_modified_by = map['LastModifiedBy']
        data.last_modified_date = map['LastModifiedDate']
        data.version = map['Version']
        return data
      end
    end

    # Operation Parser for GetEmailChannel
    class GetEmailChannel
      def self.parse(http_resp)
        data = Types::GetEmailChannelOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.email_channel_response = EmailChannelResponse.parse(json)
        data
      end
    end

    # Operation Parser for GetEmailTemplate
    class GetEmailTemplate
      def self.parse(http_resp)
        data = Types::GetEmailTemplateOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.email_template_response = EmailTemplateResponse.parse(json)
        data
      end
    end

    class EmailTemplateResponse
      def self.parse(map)
        data = Types::EmailTemplateResponse.new
        data.arn = map['Arn']
        data.creation_date = map['CreationDate']
        data.default_substitutions = map['DefaultSubstitutions']
        data.html_part = map['HtmlPart']
        data.last_modified_date = map['LastModifiedDate']
        data.recommender_id = map['RecommenderId']
        data.subject = map['Subject']
        data.tags = (MapOf__string.parse(map['tags']) unless map['tags'].nil?)
        data.template_description = map['TemplateDescription']
        data.template_name = map['TemplateName']
        data.template_type = map['TemplateType']
        data.text_part = map['TextPart']
        data.version = map['Version']
        return data
      end
    end

    # Operation Parser for GetEndpoint
    class GetEndpoint
      def self.parse(http_resp)
        data = Types::GetEndpointOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.endpoint_response = EndpointResponse.parse(json)
        data
      end
    end

    # Operation Parser for GetEventStream
    class GetEventStream
      def self.parse(http_resp)
        data = Types::GetEventStreamOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.event_stream = EventStream.parse(json)
        data
      end
    end

    # Operation Parser for GetExportJob
    class GetExportJob
      def self.parse(http_resp)
        data = Types::GetExportJobOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.export_job_response = ExportJobResponse.parse(json)
        data
      end
    end

    # Operation Parser for GetExportJobs
    class GetExportJobs
      def self.parse(http_resp)
        data = Types::GetExportJobsOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.export_jobs_response = ExportJobsResponse.parse(json)
        data
      end
    end

    class ExportJobsResponse
      def self.parse(map)
        data = Types::ExportJobsResponse.new
        data.item = (ListOfExportJobResponse.parse(map['Item']) unless map['Item'].nil?)
        data.next_token = map['NextToken']
        return data
      end
    end

    class ListOfExportJobResponse
      def self.parse(list)
        data = []
        list.map do |value|
          data << ExportJobResponse.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetGcmChannel
    class GetGcmChannel
      def self.parse(http_resp)
        data = Types::GetGcmChannelOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.gcm_channel_response = GCMChannelResponse.parse(json)
        data
      end
    end

    # Operation Parser for GetImportJob
    class GetImportJob
      def self.parse(http_resp)
        data = Types::GetImportJobOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.import_job_response = ImportJobResponse.parse(json)
        data
      end
    end

    # Operation Parser for GetImportJobs
    class GetImportJobs
      def self.parse(http_resp)
        data = Types::GetImportJobsOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.import_jobs_response = ImportJobsResponse.parse(json)
        data
      end
    end

    class ImportJobsResponse
      def self.parse(map)
        data = Types::ImportJobsResponse.new
        data.item = (ListOfImportJobResponse.parse(map['Item']) unless map['Item'].nil?)
        data.next_token = map['NextToken']
        return data
      end
    end

    class ListOfImportJobResponse
      def self.parse(list)
        data = []
        list.map do |value|
          data << ImportJobResponse.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetInAppMessages
    class GetInAppMessages
      def self.parse(http_resp)
        data = Types::GetInAppMessagesOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.in_app_messages_response = InAppMessagesResponse.parse(json)
        data
      end
    end

    class InAppMessagesResponse
      def self.parse(map)
        data = Types::InAppMessagesResponse.new
        data.in_app_message_campaigns = (ListOfInAppMessageCampaign.parse(map['InAppMessageCampaigns']) unless map['InAppMessageCampaigns'].nil?)
        return data
      end
    end

    class ListOfInAppMessageCampaign
      def self.parse(list)
        data = []
        list.map do |value|
          data << InAppMessageCampaign.parse(value) unless value.nil?
        end
        data
      end
    end

    class InAppMessageCampaign
      def self.parse(map)
        data = Types::InAppMessageCampaign.new
        data.campaign_id = map['CampaignId']
        data.daily_cap = map['DailyCap']
        data.in_app_message = (InAppMessage.parse(map['InAppMessage']) unless map['InAppMessage'].nil?)
        data.priority = map['Priority']
        data.schedule = (InAppCampaignSchedule.parse(map['Schedule']) unless map['Schedule'].nil?)
        data.session_cap = map['SessionCap']
        data.total_cap = map['TotalCap']
        data.treatment_id = map['TreatmentId']
        return data
      end
    end

    class InAppCampaignSchedule
      def self.parse(map)
        data = Types::InAppCampaignSchedule.new
        data.end_date = map['EndDate']
        data.event_filter = (CampaignEventFilter.parse(map['EventFilter']) unless map['EventFilter'].nil?)
        data.quiet_time = (QuietTime.parse(map['QuietTime']) unless map['QuietTime'].nil?)
        return data
      end
    end

    class InAppMessage
      def self.parse(map)
        data = Types::InAppMessage.new
        data.content = (ListOfInAppMessageContent.parse(map['Content']) unless map['Content'].nil?)
        data.custom_config = (MapOf__string.parse(map['CustomConfig']) unless map['CustomConfig'].nil?)
        data.layout = map['Layout']
        return data
      end
    end

    # Operation Parser for GetInAppTemplate
    class GetInAppTemplate
      def self.parse(http_resp)
        data = Types::GetInAppTemplateOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.in_app_template_response = InAppTemplateResponse.parse(json)
        data
      end
    end

    class InAppTemplateResponse
      def self.parse(map)
        data = Types::InAppTemplateResponse.new
        data.arn = map['Arn']
        data.content = (ListOfInAppMessageContent.parse(map['Content']) unless map['Content'].nil?)
        data.creation_date = map['CreationDate']
        data.custom_config = (MapOf__string.parse(map['CustomConfig']) unless map['CustomConfig'].nil?)
        data.last_modified_date = map['LastModifiedDate']
        data.layout = map['Layout']
        data.tags = (MapOf__string.parse(map['tags']) unless map['tags'].nil?)
        data.template_description = map['TemplateDescription']
        data.template_name = map['TemplateName']
        data.template_type = map['TemplateType']
        data.version = map['Version']
        return data
      end
    end

    # Operation Parser for GetJourney
    class GetJourney
      def self.parse(http_resp)
        data = Types::GetJourneyOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.journey_response = JourneyResponse.parse(json)
        data
      end
    end

    # Operation Parser for GetJourneyDateRangeKpi
    class GetJourneyDateRangeKpi
      def self.parse(http_resp)
        data = Types::GetJourneyDateRangeKpiOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.journey_date_range_kpi_response = JourneyDateRangeKpiResponse.parse(json)
        data
      end
    end

    class JourneyDateRangeKpiResponse
      def self.parse(map)
        data = Types::JourneyDateRangeKpiResponse.new
        data.application_id = map['ApplicationId']
        data.end_time = Time.parse(map['EndTime']) if map['EndTime']
        data.journey_id = map['JourneyId']
        data.kpi_name = map['KpiName']
        data.kpi_result = (BaseKpiResult.parse(map['KpiResult']) unless map['KpiResult'].nil?)
        data.next_token = map['NextToken']
        data.start_time = Time.parse(map['StartTime']) if map['StartTime']
        return data
      end
    end

    # Operation Parser for GetJourneyExecutionActivityMetrics
    class GetJourneyExecutionActivityMetrics
      def self.parse(http_resp)
        data = Types::GetJourneyExecutionActivityMetricsOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.journey_execution_activity_metrics_response = JourneyExecutionActivityMetricsResponse.parse(json)
        data
      end
    end

    class JourneyExecutionActivityMetricsResponse
      def self.parse(map)
        data = Types::JourneyExecutionActivityMetricsResponse.new
        data.activity_type = map['ActivityType']
        data.application_id = map['ApplicationId']
        data.journey_activity_id = map['JourneyActivityId']
        data.journey_id = map['JourneyId']
        data.last_evaluated_time = map['LastEvaluatedTime']
        data.metrics = (MapOf__string.parse(map['Metrics']) unless map['Metrics'].nil?)
        return data
      end
    end

    # Operation Parser for GetJourneyExecutionMetrics
    class GetJourneyExecutionMetrics
      def self.parse(http_resp)
        data = Types::GetJourneyExecutionMetricsOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.journey_execution_metrics_response = JourneyExecutionMetricsResponse.parse(json)
        data
      end
    end

    class JourneyExecutionMetricsResponse
      def self.parse(map)
        data = Types::JourneyExecutionMetricsResponse.new
        data.application_id = map['ApplicationId']
        data.journey_id = map['JourneyId']
        data.last_evaluated_time = map['LastEvaluatedTime']
        data.metrics = (MapOf__string.parse(map['Metrics']) unless map['Metrics'].nil?)
        return data
      end
    end

    # Operation Parser for GetPushTemplate
    class GetPushTemplate
      def self.parse(http_resp)
        data = Types::GetPushTemplateOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.push_notification_template_response = PushNotificationTemplateResponse.parse(json)
        data
      end
    end

    class PushNotificationTemplateResponse
      def self.parse(map)
        data = Types::PushNotificationTemplateResponse.new
        data.adm = (AndroidPushNotificationTemplate.parse(map['ADM']) unless map['ADM'].nil?)
        data.apns = (APNSPushNotificationTemplate.parse(map['APNS']) unless map['APNS'].nil?)
        data.arn = map['Arn']
        data.baidu = (AndroidPushNotificationTemplate.parse(map['Baidu']) unless map['Baidu'].nil?)
        data.creation_date = map['CreationDate']
        data.default = (DefaultPushNotificationTemplate.parse(map['Default']) unless map['Default'].nil?)
        data.default_substitutions = map['DefaultSubstitutions']
        data.gcm = (AndroidPushNotificationTemplate.parse(map['GCM']) unless map['GCM'].nil?)
        data.last_modified_date = map['LastModifiedDate']
        data.recommender_id = map['RecommenderId']
        data.tags = (MapOf__string.parse(map['tags']) unless map['tags'].nil?)
        data.template_description = map['TemplateDescription']
        data.template_name = map['TemplateName']
        data.template_type = map['TemplateType']
        data.version = map['Version']
        return data
      end
    end

    class AndroidPushNotificationTemplate
      def self.parse(map)
        data = Types::AndroidPushNotificationTemplate.new
        data.action = map['Action']
        data.body = map['Body']
        data.image_icon_url = map['ImageIconUrl']
        data.image_url = map['ImageUrl']
        data.raw_content = map['RawContent']
        data.small_image_icon_url = map['SmallImageIconUrl']
        data.sound = map['Sound']
        data.title = map['Title']
        data.url = map['Url']
        return data
      end
    end

    class DefaultPushNotificationTemplate
      def self.parse(map)
        data = Types::DefaultPushNotificationTemplate.new
        data.action = map['Action']
        data.body = map['Body']
        data.sound = map['Sound']
        data.title = map['Title']
        data.url = map['Url']
        return data
      end
    end

    class APNSPushNotificationTemplate
      def self.parse(map)
        data = Types::APNSPushNotificationTemplate.new
        data.action = map['Action']
        data.body = map['Body']
        data.media_url = map['MediaUrl']
        data.raw_content = map['RawContent']
        data.sound = map['Sound']
        data.title = map['Title']
        data.url = map['Url']
        return data
      end
    end

    # Operation Parser for GetRecommenderConfiguration
    class GetRecommenderConfiguration
      def self.parse(http_resp)
        data = Types::GetRecommenderConfigurationOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.recommender_configuration_response = RecommenderConfigurationResponse.parse(json)
        data
      end
    end

    # Operation Parser for GetRecommenderConfigurations
    class GetRecommenderConfigurations
      def self.parse(http_resp)
        data = Types::GetRecommenderConfigurationsOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.list_recommender_configurations_response = ListRecommenderConfigurationsResponse.parse(json)
        data
      end
    end

    class ListRecommenderConfigurationsResponse
      def self.parse(map)
        data = Types::ListRecommenderConfigurationsResponse.new
        data.item = (ListOfRecommenderConfigurationResponse.parse(map['Item']) unless map['Item'].nil?)
        data.next_token = map['NextToken']
        return data
      end
    end

    class ListOfRecommenderConfigurationResponse
      def self.parse(list)
        data = []
        list.map do |value|
          data << RecommenderConfigurationResponse.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetSegment
    class GetSegment
      def self.parse(http_resp)
        data = Types::GetSegmentOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.segment_response = SegmentResponse.parse(json)
        data
      end
    end

    # Operation Parser for GetSegmentExportJobs
    class GetSegmentExportJobs
      def self.parse(http_resp)
        data = Types::GetSegmentExportJobsOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.export_jobs_response = ExportJobsResponse.parse(json)
        data
      end
    end

    # Operation Parser for GetSegmentImportJobs
    class GetSegmentImportJobs
      def self.parse(http_resp)
        data = Types::GetSegmentImportJobsOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.import_jobs_response = ImportJobsResponse.parse(json)
        data
      end
    end

    # Operation Parser for GetSegmentVersion
    class GetSegmentVersion
      def self.parse(http_resp)
        data = Types::GetSegmentVersionOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.segment_response = SegmentResponse.parse(json)
        data
      end
    end

    # Operation Parser for GetSegmentVersions
    class GetSegmentVersions
      def self.parse(http_resp)
        data = Types::GetSegmentVersionsOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.segments_response = SegmentsResponse.parse(json)
        data
      end
    end

    class SegmentsResponse
      def self.parse(map)
        data = Types::SegmentsResponse.new
        data.item = (ListOfSegmentResponse.parse(map['Item']) unless map['Item'].nil?)
        data.next_token = map['NextToken']
        return data
      end
    end

    class ListOfSegmentResponse
      def self.parse(list)
        data = []
        list.map do |value|
          data << SegmentResponse.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetSegments
    class GetSegments
      def self.parse(http_resp)
        data = Types::GetSegmentsOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.segments_response = SegmentsResponse.parse(json)
        data
      end
    end

    # Operation Parser for GetSmsChannel
    class GetSmsChannel
      def self.parse(http_resp)
        data = Types::GetSmsChannelOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.sms_channel_response = SMSChannelResponse.parse(json)
        data
      end
    end

    # Operation Parser for GetSmsTemplate
    class GetSmsTemplate
      def self.parse(http_resp)
        data = Types::GetSmsTemplateOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.sms_template_response = SMSTemplateResponse.parse(json)
        data
      end
    end

    class SMSTemplateResponse
      def self.parse(map)
        data = Types::SMSTemplateResponse.new
        data.arn = map['Arn']
        data.body = map['Body']
        data.creation_date = map['CreationDate']
        data.default_substitutions = map['DefaultSubstitutions']
        data.last_modified_date = map['LastModifiedDate']
        data.recommender_id = map['RecommenderId']
        data.tags = (MapOf__string.parse(map['tags']) unless map['tags'].nil?)
        data.template_description = map['TemplateDescription']
        data.template_name = map['TemplateName']
        data.template_type = map['TemplateType']
        data.version = map['Version']
        return data
      end
    end

    # Operation Parser for GetUserEndpoints
    class GetUserEndpoints
      def self.parse(http_resp)
        data = Types::GetUserEndpointsOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.endpoints_response = EndpointsResponse.parse(json)
        data
      end
    end

    # Operation Parser for GetVoiceChannel
    class GetVoiceChannel
      def self.parse(http_resp)
        data = Types::GetVoiceChannelOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.voice_channel_response = VoiceChannelResponse.parse(json)
        data
      end
    end

    # Operation Parser for GetVoiceTemplate
    class GetVoiceTemplate
      def self.parse(http_resp)
        data = Types::GetVoiceTemplateOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.voice_template_response = VoiceTemplateResponse.parse(json)
        data
      end
    end

    class VoiceTemplateResponse
      def self.parse(map)
        data = Types::VoiceTemplateResponse.new
        data.arn = map['Arn']
        data.body = map['Body']
        data.creation_date = map['CreationDate']
        data.default_substitutions = map['DefaultSubstitutions']
        data.language_code = map['LanguageCode']
        data.last_modified_date = map['LastModifiedDate']
        data.tags = (MapOf__string.parse(map['tags']) unless map['tags'].nil?)
        data.template_description = map['TemplateDescription']
        data.template_name = map['TemplateName']
        data.template_type = map['TemplateType']
        data.version = map['Version']
        data.voice_id = map['VoiceId']
        return data
      end
    end

    # Operation Parser for ListJourneys
    class ListJourneys
      def self.parse(http_resp)
        data = Types::ListJourneysOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.journeys_response = JourneysResponse.parse(json)
        data
      end
    end

    class JourneysResponse
      def self.parse(map)
        data = Types::JourneysResponse.new
        data.item = (ListOfJourneyResponse.parse(map['Item']) unless map['Item'].nil?)
        data.next_token = map['NextToken']
        return data
      end
    end

    class ListOfJourneyResponse
      def self.parse(list)
        data = []
        list.map do |value|
          data << JourneyResponse.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.tags_model = TagsModel.parse(json)
        data
      end
    end

    class TagsModel
      def self.parse(map)
        data = Types::TagsModel.new
        data.tags = (MapOf__string.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    # Operation Parser for ListTemplateVersions
    class ListTemplateVersions
      def self.parse(http_resp)
        data = Types::ListTemplateVersionsOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.template_versions_response = TemplateVersionsResponse.parse(json)
        data
      end
    end

    class TemplateVersionsResponse
      def self.parse(map)
        data = Types::TemplateVersionsResponse.new
        data.item = (ListOfTemplateVersionResponse.parse(map['Item']) unless map['Item'].nil?)
        data.message = map['Message']
        data.next_token = map['NextToken']
        data.request_id = map['RequestID']
        return data
      end
    end

    class ListOfTemplateVersionResponse
      def self.parse(list)
        data = []
        list.map do |value|
          data << TemplateVersionResponse.parse(value) unless value.nil?
        end
        data
      end
    end

    class TemplateVersionResponse
      def self.parse(map)
        data = Types::TemplateVersionResponse.new
        data.creation_date = map['CreationDate']
        data.default_substitutions = map['DefaultSubstitutions']
        data.last_modified_date = map['LastModifiedDate']
        data.template_description = map['TemplateDescription']
        data.template_name = map['TemplateName']
        data.template_type = map['TemplateType']
        data.version = map['Version']
        return data
      end
    end

    # Operation Parser for ListTemplates
    class ListTemplates
      def self.parse(http_resp)
        data = Types::ListTemplatesOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.templates_response = TemplatesResponse.parse(json)
        data
      end
    end

    class TemplatesResponse
      def self.parse(map)
        data = Types::TemplatesResponse.new
        data.item = (ListOfTemplateResponse.parse(map['Item']) unless map['Item'].nil?)
        data.next_token = map['NextToken']
        return data
      end
    end

    class ListOfTemplateResponse
      def self.parse(list)
        data = []
        list.map do |value|
          data << TemplateResponse.parse(value) unless value.nil?
        end
        data
      end
    end

    class TemplateResponse
      def self.parse(map)
        data = Types::TemplateResponse.new
        data.arn = map['Arn']
        data.creation_date = map['CreationDate']
        data.default_substitutions = map['DefaultSubstitutions']
        data.last_modified_date = map['LastModifiedDate']
        data.tags = (MapOf__string.parse(map['tags']) unless map['tags'].nil?)
        data.template_description = map['TemplateDescription']
        data.template_name = map['TemplateName']
        data.template_type = map['TemplateType']
        data.version = map['Version']
        return data
      end
    end

    # Operation Parser for PhoneNumberValidate
    class PhoneNumberValidate
      def self.parse(http_resp)
        data = Types::PhoneNumberValidateOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.number_validate_response = NumberValidateResponse.parse(json)
        data
      end
    end

    class NumberValidateResponse
      def self.parse(map)
        data = Types::NumberValidateResponse.new
        data.carrier = map['Carrier']
        data.city = map['City']
        data.cleansed_phone_number_e164 = map['CleansedPhoneNumberE164']
        data.cleansed_phone_number_national = map['CleansedPhoneNumberNational']
        data.country = map['Country']
        data.country_code_iso2 = map['CountryCodeIso2']
        data.country_code_numeric = map['CountryCodeNumeric']
        data.county = map['County']
        data.original_country_code_iso2 = map['OriginalCountryCodeIso2']
        data.original_phone_number = map['OriginalPhoneNumber']
        data.phone_type = map['PhoneType']
        data.phone_type_code = map['PhoneTypeCode']
        data.timezone = map['Timezone']
        data.zip_code = map['ZipCode']
        return data
      end
    end

    # Operation Parser for PutEventStream
    class PutEventStream
      def self.parse(http_resp)
        data = Types::PutEventStreamOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.event_stream = EventStream.parse(json)
        data
      end
    end

    # Operation Parser for PutEvents
    class PutEvents
      def self.parse(http_resp)
        data = Types::PutEventsOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.events_response = EventsResponse.parse(json)
        data
      end
    end

    class EventsResponse
      def self.parse(map)
        data = Types::EventsResponse.new
        data.results = (MapOfItemResponse.parse(map['Results']) unless map['Results'].nil?)
        return data
      end
    end

    class MapOfItemResponse
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = ItemResponse.parse(value) unless value.nil?
        end
        data
      end
    end

    class ItemResponse
      def self.parse(map)
        data = Types::ItemResponse.new
        data.endpoint_item_response = (EndpointItemResponse.parse(map['EndpointItemResponse']) unless map['EndpointItemResponse'].nil?)
        data.events_item_response = (MapOfEventItemResponse.parse(map['EventsItemResponse']) unless map['EventsItemResponse'].nil?)
        return data
      end
    end

    class MapOfEventItemResponse
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = EventItemResponse.parse(value) unless value.nil?
        end
        data
      end
    end

    class EventItemResponse
      def self.parse(map)
        data = Types::EventItemResponse.new
        data.message = map['Message']
        data.status_code = map['StatusCode']
        return data
      end
    end

    class EndpointItemResponse
      def self.parse(map)
        data = Types::EndpointItemResponse.new
        data.message = map['Message']
        data.status_code = map['StatusCode']
        return data
      end
    end

    # Operation Parser for RemoveAttributes
    class RemoveAttributes
      def self.parse(http_resp)
        data = Types::RemoveAttributesOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.attributes_resource = AttributesResource.parse(json)
        data
      end
    end

    class AttributesResource
      def self.parse(map)
        data = Types::AttributesResource.new
        data.application_id = map['ApplicationId']
        data.attribute_type = map['AttributeType']
        data.attributes = (ListOf__string.parse(map['Attributes']) unless map['Attributes'].nil?)
        return data
      end
    end

    # Operation Parser for SendMessages
    class SendMessages
      def self.parse(http_resp)
        data = Types::SendMessagesOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.message_response = MessageResponse.parse(json)
        data
      end
    end

    class MessageResponse
      def self.parse(map)
        data = Types::MessageResponse.new
        data.application_id = map['ApplicationId']
        data.endpoint_result = (MapOfEndpointMessageResult.parse(map['EndpointResult']) unless map['EndpointResult'].nil?)
        data.request_id = map['RequestId']
        data.result = (MapOfMessageResult.parse(map['Result']) unless map['Result'].nil?)
        return data
      end
    end

    class MapOfMessageResult
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = MessageResult.parse(value) unless value.nil?
        end
        data
      end
    end

    class MessageResult
      def self.parse(map)
        data = Types::MessageResult.new
        data.delivery_status = map['DeliveryStatus']
        data.message_id = map['MessageId']
        data.status_code = map['StatusCode']
        data.status_message = map['StatusMessage']
        data.updated_token = map['UpdatedToken']
        return data
      end
    end

    class MapOfEndpointMessageResult
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = EndpointMessageResult.parse(value) unless value.nil?
        end
        data
      end
    end

    class EndpointMessageResult
      def self.parse(map)
        data = Types::EndpointMessageResult.new
        data.address = map['Address']
        data.delivery_status = map['DeliveryStatus']
        data.message_id = map['MessageId']
        data.status_code = map['StatusCode']
        data.status_message = map['StatusMessage']
        data.updated_token = map['UpdatedToken']
        return data
      end
    end

    # Operation Parser for SendOTPMessage
    class SendOTPMessage
      def self.parse(http_resp)
        data = Types::SendOTPMessageOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.message_response = MessageResponse.parse(json)
        data
      end
    end

    # Operation Parser for SendUsersMessages
    class SendUsersMessages
      def self.parse(http_resp)
        data = Types::SendUsersMessagesOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.send_users_message_response = SendUsersMessageResponse.parse(json)
        data
      end
    end

    class SendUsersMessageResponse
      def self.parse(map)
        data = Types::SendUsersMessageResponse.new
        data.application_id = map['ApplicationId']
        data.request_id = map['RequestId']
        data.result = (MapOfMapOfEndpointMessageResult.parse(map['Result']) unless map['Result'].nil?)
        return data
      end
    end

    class MapOfMapOfEndpointMessageResult
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = MapOfEndpointMessageResult.parse(value) unless value.nil?
        end
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

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateAdmChannel
    class UpdateAdmChannel
      def self.parse(http_resp)
        data = Types::UpdateAdmChannelOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.adm_channel_response = ADMChannelResponse.parse(json)
        data
      end
    end

    # Operation Parser for UpdateApnsChannel
    class UpdateApnsChannel
      def self.parse(http_resp)
        data = Types::UpdateApnsChannelOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.apns_channel_response = APNSChannelResponse.parse(json)
        data
      end
    end

    # Operation Parser for UpdateApnsSandboxChannel
    class UpdateApnsSandboxChannel
      def self.parse(http_resp)
        data = Types::UpdateApnsSandboxChannelOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.apns_sandbox_channel_response = APNSSandboxChannelResponse.parse(json)
        data
      end
    end

    # Operation Parser for UpdateApnsVoipChannel
    class UpdateApnsVoipChannel
      def self.parse(http_resp)
        data = Types::UpdateApnsVoipChannelOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.apns_voip_channel_response = APNSVoipChannelResponse.parse(json)
        data
      end
    end

    # Operation Parser for UpdateApnsVoipSandboxChannel
    class UpdateApnsVoipSandboxChannel
      def self.parse(http_resp)
        data = Types::UpdateApnsVoipSandboxChannelOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.apns_voip_sandbox_channel_response = APNSVoipSandboxChannelResponse.parse(json)
        data
      end
    end

    # Operation Parser for UpdateApplicationSettings
    class UpdateApplicationSettings
      def self.parse(http_resp)
        data = Types::UpdateApplicationSettingsOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.application_settings_resource = ApplicationSettingsResource.parse(json)
        data
      end
    end

    # Operation Parser for UpdateBaiduChannel
    class UpdateBaiduChannel
      def self.parse(http_resp)
        data = Types::UpdateBaiduChannelOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.baidu_channel_response = BaiduChannelResponse.parse(json)
        data
      end
    end

    # Operation Parser for UpdateCampaign
    class UpdateCampaign
      def self.parse(http_resp)
        data = Types::UpdateCampaignOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.campaign_response = CampaignResponse.parse(json)
        data
      end
    end

    # Operation Parser for UpdateEmailChannel
    class UpdateEmailChannel
      def self.parse(http_resp)
        data = Types::UpdateEmailChannelOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.email_channel_response = EmailChannelResponse.parse(json)
        data
      end
    end

    # Operation Parser for UpdateEmailTemplate
    class UpdateEmailTemplate
      def self.parse(http_resp)
        data = Types::UpdateEmailTemplateOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.message_body = MessageBody.parse(json)
        data
      end
    end

    # Operation Parser for UpdateEndpoint
    class UpdateEndpoint
      def self.parse(http_resp)
        data = Types::UpdateEndpointOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.message_body = MessageBody.parse(json)
        data
      end
    end

    # Operation Parser for UpdateEndpointsBatch
    class UpdateEndpointsBatch
      def self.parse(http_resp)
        data = Types::UpdateEndpointsBatchOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.message_body = MessageBody.parse(json)
        data
      end
    end

    # Operation Parser for UpdateGcmChannel
    class UpdateGcmChannel
      def self.parse(http_resp)
        data = Types::UpdateGcmChannelOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.gcm_channel_response = GCMChannelResponse.parse(json)
        data
      end
    end

    # Operation Parser for UpdateInAppTemplate
    class UpdateInAppTemplate
      def self.parse(http_resp)
        data = Types::UpdateInAppTemplateOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.message_body = MessageBody.parse(json)
        data
      end
    end

    # Operation Parser for UpdateJourney
    class UpdateJourney
      def self.parse(http_resp)
        data = Types::UpdateJourneyOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.journey_response = JourneyResponse.parse(json)
        data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.request_id = map['RequestID']
        data
      end
    end

    # Operation Parser for UpdateJourneyState
    class UpdateJourneyState
      def self.parse(http_resp)
        data = Types::UpdateJourneyStateOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.journey_response = JourneyResponse.parse(json)
        data
      end
    end

    # Operation Parser for UpdatePushTemplate
    class UpdatePushTemplate
      def self.parse(http_resp)
        data = Types::UpdatePushTemplateOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.message_body = MessageBody.parse(json)
        data
      end
    end

    # Operation Parser for UpdateRecommenderConfiguration
    class UpdateRecommenderConfiguration
      def self.parse(http_resp)
        data = Types::UpdateRecommenderConfigurationOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.recommender_configuration_response = RecommenderConfigurationResponse.parse(json)
        data
      end
    end

    # Operation Parser for UpdateSegment
    class UpdateSegment
      def self.parse(http_resp)
        data = Types::UpdateSegmentOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.segment_response = SegmentResponse.parse(json)
        data
      end
    end

    # Operation Parser for UpdateSmsChannel
    class UpdateSmsChannel
      def self.parse(http_resp)
        data = Types::UpdateSmsChannelOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.sms_channel_response = SMSChannelResponse.parse(json)
        data
      end
    end

    # Operation Parser for UpdateSmsTemplate
    class UpdateSmsTemplate
      def self.parse(http_resp)
        data = Types::UpdateSmsTemplateOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.message_body = MessageBody.parse(json)
        data
      end
    end

    # Operation Parser for UpdateTemplateActiveVersion
    class UpdateTemplateActiveVersion
      def self.parse(http_resp)
        data = Types::UpdateTemplateActiveVersionOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.message_body = MessageBody.parse(json)
        data
      end
    end

    # Operation Parser for UpdateVoiceChannel
    class UpdateVoiceChannel
      def self.parse(http_resp)
        data = Types::UpdateVoiceChannelOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.voice_channel_response = VoiceChannelResponse.parse(json)
        data
      end
    end

    # Operation Parser for UpdateVoiceTemplate
    class UpdateVoiceTemplate
      def self.parse(http_resp)
        data = Types::UpdateVoiceTemplateOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.message_body = MessageBody.parse(json)
        data
      end
    end

    # Operation Parser for VerifyOTPMessage
    class VerifyOTPMessage
      def self.parse(http_resp)
        data = Types::VerifyOTPMessageOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.verification_response = VerificationResponse.parse(json)
        data
      end
    end

    class VerificationResponse
      def self.parse(map)
        data = Types::VerificationResponse.new
        data.valid = map['Valid']
        return data
      end
    end
  end
end
