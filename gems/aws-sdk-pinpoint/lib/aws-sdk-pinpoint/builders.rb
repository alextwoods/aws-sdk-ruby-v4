# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Pinpoint
  module Builders

    # Operation Builder for CreateApp
    class CreateApp
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/v1/apps')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data = Builders::CreateApplicationRequest.build(input[:create_application_request]) unless input[:create_application_request].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for CreateApplicationRequest
    class CreateApplicationRequest
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['tags'] = Builders::MapOf__string.build(input[:tags]) unless input[:tags].nil?
        data
      end
    end

    # Map Builder for MapOf__string
    class MapOf__string
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for CreateCampaign
    class CreateCampaign
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apps/%<ApplicationId>s/campaigns',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data = Builders::WriteCampaignRequest.build(input[:write_campaign_request]) unless input[:write_campaign_request].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for WriteCampaignRequest
    class WriteCampaignRequest
      def self.build(input)
        data = {}
        data['AdditionalTreatments'] = Builders::ListOfWriteTreatmentResource.build(input[:additional_treatments]) unless input[:additional_treatments].nil?
        data['CustomDeliveryConfiguration'] = Builders::CustomDeliveryConfiguration.build(input[:custom_delivery_configuration]) unless input[:custom_delivery_configuration].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['HoldoutPercent'] = input[:holdout_percent] unless input[:holdout_percent].nil?
        data['Hook'] = Builders::CampaignHook.build(input[:hook]) unless input[:hook].nil?
        data['IsPaused'] = input[:is_paused] unless input[:is_paused].nil?
        data['Limits'] = Builders::CampaignLimits.build(input[:limits]) unless input[:limits].nil?
        data['MessageConfiguration'] = Builders::MessageConfiguration.build(input[:message_configuration]) unless input[:message_configuration].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['Schedule'] = Builders::Schedule.build(input[:schedule]) unless input[:schedule].nil?
        data['SegmentId'] = input[:segment_id] unless input[:segment_id].nil?
        data['SegmentVersion'] = input[:segment_version] unless input[:segment_version].nil?
        data['tags'] = Builders::MapOf__string.build(input[:tags]) unless input[:tags].nil?
        data['TemplateConfiguration'] = Builders::TemplateConfiguration.build(input[:template_configuration]) unless input[:template_configuration].nil?
        data['TreatmentDescription'] = input[:treatment_description] unless input[:treatment_description].nil?
        data['TreatmentName'] = input[:treatment_name] unless input[:treatment_name].nil?
        data['Priority'] = input[:priority] unless input[:priority].nil?
        data
      end
    end

    # Structure Builder for TemplateConfiguration
    class TemplateConfiguration
      def self.build(input)
        data = {}
        data['EmailTemplate'] = Builders::Template.build(input[:email_template]) unless input[:email_template].nil?
        data['PushTemplate'] = Builders::Template.build(input[:push_template]) unless input[:push_template].nil?
        data['SMSTemplate'] = Builders::Template.build(input[:sms_template]) unless input[:sms_template].nil?
        data['VoiceTemplate'] = Builders::Template.build(input[:voice_template]) unless input[:voice_template].nil?
        data
      end
    end

    # Structure Builder for Template
    class Template
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Version'] = input[:version] unless input[:version].nil?
        data
      end
    end

    # Structure Builder for Schedule
    class Schedule
      def self.build(input)
        data = {}
        data['EndTime'] = input[:end_time] unless input[:end_time].nil?
        data['EventFilter'] = Builders::CampaignEventFilter.build(input[:event_filter]) unless input[:event_filter].nil?
        data['Frequency'] = input[:frequency] unless input[:frequency].nil?
        data['IsLocalTime'] = input[:is_local_time] unless input[:is_local_time].nil?
        data['QuietTime'] = Builders::QuietTime.build(input[:quiet_time]) unless input[:quiet_time].nil?
        data['StartTime'] = input[:start_time] unless input[:start_time].nil?
        data['Timezone'] = input[:timezone] unless input[:timezone].nil?
        data
      end
    end

    # Structure Builder for QuietTime
    class QuietTime
      def self.build(input)
        data = {}
        data['End'] = input[:end] unless input[:end].nil?
        data['Start'] = input[:start] unless input[:start].nil?
        data
      end
    end

    # Structure Builder for CampaignEventFilter
    class CampaignEventFilter
      def self.build(input)
        data = {}
        data['Dimensions'] = Builders::EventDimensions.build(input[:dimensions]) unless input[:dimensions].nil?
        data['FilterType'] = input[:filter_type] unless input[:filter_type].nil?
        data
      end
    end

    # Structure Builder for EventDimensions
    class EventDimensions
      def self.build(input)
        data = {}
        data['Attributes'] = Builders::MapOfAttributeDimension.build(input[:attributes]) unless input[:attributes].nil?
        data['EventType'] = Builders::SetDimension.build(input[:event_type]) unless input[:event_type].nil?
        data['Metrics'] = Builders::MapOfMetricDimension.build(input[:metrics]) unless input[:metrics].nil?
        data
      end
    end

    # Map Builder for MapOfMetricDimension
    class MapOfMetricDimension
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::MetricDimension.build(value) unless value.nil?
        end
        data
      end
    end

    # Structure Builder for MetricDimension
    class MetricDimension
      def self.build(input)
        data = {}
        data['ComparisonOperator'] = input[:comparison_operator] unless input[:comparison_operator].nil?
        data['Value'] = Hearth::NumberHelper.serialize(input[:value]) unless input[:value].nil?
        data
      end
    end

    # Structure Builder for SetDimension
    class SetDimension
      def self.build(input)
        data = {}
        data['DimensionType'] = input[:dimension_type] unless input[:dimension_type].nil?
        data['Values'] = Builders::ListOf__string.build(input[:values]) unless input[:values].nil?
        data
      end
    end

    # List Builder for ListOf__string
    class ListOf__string
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Map Builder for MapOfAttributeDimension
    class MapOfAttributeDimension
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::AttributeDimension.build(value) unless value.nil?
        end
        data
      end
    end

    # Structure Builder for AttributeDimension
    class AttributeDimension
      def self.build(input)
        data = {}
        data['AttributeType'] = input[:attribute_type] unless input[:attribute_type].nil?
        data['Values'] = Builders::ListOf__string.build(input[:values]) unless input[:values].nil?
        data
      end
    end

    # Structure Builder for MessageConfiguration
    class MessageConfiguration
      def self.build(input)
        data = {}
        data['ADMMessage'] = Builders::Message.build(input[:adm_message]) unless input[:adm_message].nil?
        data['APNSMessage'] = Builders::Message.build(input[:apns_message]) unless input[:apns_message].nil?
        data['BaiduMessage'] = Builders::Message.build(input[:baidu_message]) unless input[:baidu_message].nil?
        data['CustomMessage'] = Builders::CampaignCustomMessage.build(input[:custom_message]) unless input[:custom_message].nil?
        data['DefaultMessage'] = Builders::Message.build(input[:default_message]) unless input[:default_message].nil?
        data['EmailMessage'] = Builders::CampaignEmailMessage.build(input[:email_message]) unless input[:email_message].nil?
        data['GCMMessage'] = Builders::Message.build(input[:gcm_message]) unless input[:gcm_message].nil?
        data['SMSMessage'] = Builders::CampaignSmsMessage.build(input[:sms_message]) unless input[:sms_message].nil?
        data['InAppMessage'] = Builders::CampaignInAppMessage.build(input[:in_app_message]) unless input[:in_app_message].nil?
        data
      end
    end

    # Structure Builder for CampaignInAppMessage
    class CampaignInAppMessage
      def self.build(input)
        data = {}
        data['Body'] = input[:body] unless input[:body].nil?
        data['Content'] = Builders::ListOfInAppMessageContent.build(input[:content]) unless input[:content].nil?
        data['CustomConfig'] = Builders::MapOf__string.build(input[:custom_config]) unless input[:custom_config].nil?
        data['Layout'] = input[:layout] unless input[:layout].nil?
        data
      end
    end

    # List Builder for ListOfInAppMessageContent
    class ListOfInAppMessageContent
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::InAppMessageContent.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for InAppMessageContent
    class InAppMessageContent
      def self.build(input)
        data = {}
        data['BackgroundColor'] = input[:background_color] unless input[:background_color].nil?
        data['BodyConfig'] = Builders::InAppMessageBodyConfig.build(input[:body_config]) unless input[:body_config].nil?
        data['HeaderConfig'] = Builders::InAppMessageHeaderConfig.build(input[:header_config]) unless input[:header_config].nil?
        data['ImageUrl'] = input[:image_url] unless input[:image_url].nil?
        data['PrimaryBtn'] = Builders::InAppMessageButton.build(input[:primary_btn]) unless input[:primary_btn].nil?
        data['SecondaryBtn'] = Builders::InAppMessageButton.build(input[:secondary_btn]) unless input[:secondary_btn].nil?
        data
      end
    end

    # Structure Builder for InAppMessageButton
    class InAppMessageButton
      def self.build(input)
        data = {}
        data['Android'] = Builders::OverrideButtonConfiguration.build(input[:android]) unless input[:android].nil?
        data['DefaultConfig'] = Builders::DefaultButtonConfiguration.build(input[:default_config]) unless input[:default_config].nil?
        data['IOS'] = Builders::OverrideButtonConfiguration.build(input[:ios]) unless input[:ios].nil?
        data['Web'] = Builders::OverrideButtonConfiguration.build(input[:web]) unless input[:web].nil?
        data
      end
    end

    # Structure Builder for OverrideButtonConfiguration
    class OverrideButtonConfiguration
      def self.build(input)
        data = {}
        data['ButtonAction'] = input[:button_action] unless input[:button_action].nil?
        data['Link'] = input[:link] unless input[:link].nil?
        data
      end
    end

    # Structure Builder for DefaultButtonConfiguration
    class DefaultButtonConfiguration
      def self.build(input)
        data = {}
        data['BackgroundColor'] = input[:background_color] unless input[:background_color].nil?
        data['BorderRadius'] = input[:border_radius] unless input[:border_radius].nil?
        data['ButtonAction'] = input[:button_action] unless input[:button_action].nil?
        data['Link'] = input[:link] unless input[:link].nil?
        data['Text'] = input[:text] unless input[:text].nil?
        data['TextColor'] = input[:text_color] unless input[:text_color].nil?
        data
      end
    end

    # Structure Builder for InAppMessageHeaderConfig
    class InAppMessageHeaderConfig
      def self.build(input)
        data = {}
        data['Alignment'] = input[:alignment] unless input[:alignment].nil?
        data['Header'] = input[:header] unless input[:header].nil?
        data['TextColor'] = input[:text_color] unless input[:text_color].nil?
        data
      end
    end

    # Structure Builder for InAppMessageBodyConfig
    class InAppMessageBodyConfig
      def self.build(input)
        data = {}
        data['Alignment'] = input[:alignment] unless input[:alignment].nil?
        data['Body'] = input[:body] unless input[:body].nil?
        data['TextColor'] = input[:text_color] unless input[:text_color].nil?
        data
      end
    end

    # Structure Builder for CampaignSmsMessage
    class CampaignSmsMessage
      def self.build(input)
        data = {}
        data['Body'] = input[:body] unless input[:body].nil?
        data['MessageType'] = input[:message_type] unless input[:message_type].nil?
        data['OriginationNumber'] = input[:origination_number] unless input[:origination_number].nil?
        data['SenderId'] = input[:sender_id] unless input[:sender_id].nil?
        data['EntityId'] = input[:entity_id] unless input[:entity_id].nil?
        data['TemplateId'] = input[:template_id] unless input[:template_id].nil?
        data
      end
    end

    # Structure Builder for Message
    class Message
      def self.build(input)
        data = {}
        data['Action'] = input[:action] unless input[:action].nil?
        data['Body'] = input[:body] unless input[:body].nil?
        data['ImageIconUrl'] = input[:image_icon_url] unless input[:image_icon_url].nil?
        data['ImageSmallIconUrl'] = input[:image_small_icon_url] unless input[:image_small_icon_url].nil?
        data['ImageUrl'] = input[:image_url] unless input[:image_url].nil?
        data['JsonBody'] = input[:json_body] unless input[:json_body].nil?
        data['MediaUrl'] = input[:media_url] unless input[:media_url].nil?
        data['RawContent'] = input[:raw_content] unless input[:raw_content].nil?
        data['SilentPush'] = input[:silent_push] unless input[:silent_push].nil?
        data['TimeToLive'] = input[:time_to_live] unless input[:time_to_live].nil?
        data['Title'] = input[:title] unless input[:title].nil?
        data['Url'] = input[:url] unless input[:url].nil?
        data
      end
    end

    # Structure Builder for CampaignEmailMessage
    class CampaignEmailMessage
      def self.build(input)
        data = {}
        data['Body'] = input[:body] unless input[:body].nil?
        data['FromAddress'] = input[:from_address] unless input[:from_address].nil?
        data['HtmlBody'] = input[:html_body] unless input[:html_body].nil?
        data['Title'] = input[:title] unless input[:title].nil?
        data
      end
    end

    # Structure Builder for CampaignCustomMessage
    class CampaignCustomMessage
      def self.build(input)
        data = {}
        data['Data'] = input[:data] unless input[:data].nil?
        data
      end
    end

    # Structure Builder for CampaignLimits
    class CampaignLimits
      def self.build(input)
        data = {}
        data['Daily'] = input[:daily] unless input[:daily].nil?
        data['MaximumDuration'] = input[:maximum_duration] unless input[:maximum_duration].nil?
        data['MessagesPerSecond'] = input[:messages_per_second] unless input[:messages_per_second].nil?
        data['Total'] = input[:total] unless input[:total].nil?
        data['Session'] = input[:session] unless input[:session].nil?
        data
      end
    end

    # Structure Builder for CampaignHook
    class CampaignHook
      def self.build(input)
        data = {}
        data['LambdaFunctionName'] = input[:lambda_function_name] unless input[:lambda_function_name].nil?
        data['Mode'] = input[:mode] unless input[:mode].nil?
        data['WebUrl'] = input[:web_url] unless input[:web_url].nil?
        data
      end
    end

    # Structure Builder for CustomDeliveryConfiguration
    class CustomDeliveryConfiguration
      def self.build(input)
        data = {}
        data['DeliveryUri'] = input[:delivery_uri] unless input[:delivery_uri].nil?
        data['EndpointTypes'] = Builders::ListOf__EndpointTypesElement.build(input[:endpoint_types]) unless input[:endpoint_types].nil?
        data
      end
    end

    # List Builder for ListOf__EndpointTypesElement
    class ListOf__EndpointTypesElement
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for ListOfWriteTreatmentResource
    class ListOfWriteTreatmentResource
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::WriteTreatmentResource.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for WriteTreatmentResource
    class WriteTreatmentResource
      def self.build(input)
        data = {}
        data['CustomDeliveryConfiguration'] = Builders::CustomDeliveryConfiguration.build(input[:custom_delivery_configuration]) unless input[:custom_delivery_configuration].nil?
        data['MessageConfiguration'] = Builders::MessageConfiguration.build(input[:message_configuration]) unless input[:message_configuration].nil?
        data['Schedule'] = Builders::Schedule.build(input[:schedule]) unless input[:schedule].nil?
        data['SizePercent'] = input[:size_percent] unless input[:size_percent].nil?
        data['TemplateConfiguration'] = Builders::TemplateConfiguration.build(input[:template_configuration]) unless input[:template_configuration].nil?
        data['TreatmentDescription'] = input[:treatment_description] unless input[:treatment_description].nil?
        data['TreatmentName'] = input[:treatment_name] unless input[:treatment_name].nil?
        data
      end
    end

    # Operation Builder for CreateEmailTemplate
    class CreateEmailTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:template_name].to_s.empty?
          raise ArgumentError, "HTTP label :template_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/templates/%<TemplateName>s/email',
            TemplateName: Hearth::HTTP.uri_escape(input[:template_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data = Builders::EmailTemplateRequest.build(input[:email_template_request]) unless input[:email_template_request].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for EmailTemplateRequest
    class EmailTemplateRequest
      def self.build(input)
        data = {}
        data['DefaultSubstitutions'] = input[:default_substitutions] unless input[:default_substitutions].nil?
        data['HtmlPart'] = input[:html_part] unless input[:html_part].nil?
        data['RecommenderId'] = input[:recommender_id] unless input[:recommender_id].nil?
        data['Subject'] = input[:subject] unless input[:subject].nil?
        data['tags'] = Builders::MapOf__string.build(input[:tags]) unless input[:tags].nil?
        data['TemplateDescription'] = input[:template_description] unless input[:template_description].nil?
        data['TextPart'] = input[:text_part] unless input[:text_part].nil?
        data
      end
    end

    # Operation Builder for CreateExportJob
    class CreateExportJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apps/%<ApplicationId>s/jobs/export',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data = Builders::ExportJobRequest.build(input[:export_job_request]) unless input[:export_job_request].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ExportJobRequest
    class ExportJobRequest
      def self.build(input)
        data = {}
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['S3UrlPrefix'] = input[:s3_url_prefix] unless input[:s3_url_prefix].nil?
        data['SegmentId'] = input[:segment_id] unless input[:segment_id].nil?
        data['SegmentVersion'] = input[:segment_version] unless input[:segment_version].nil?
        data
      end
    end

    # Operation Builder for CreateImportJob
    class CreateImportJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apps/%<ApplicationId>s/jobs/import',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data = Builders::ImportJobRequest.build(input[:import_job_request]) unless input[:import_job_request].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ImportJobRequest
    class ImportJobRequest
      def self.build(input)
        data = {}
        data['DefineSegment'] = input[:define_segment] unless input[:define_segment].nil?
        data['ExternalId'] = input[:external_id] unless input[:external_id].nil?
        data['Format'] = input[:format] unless input[:format].nil?
        data['RegisterEndpoints'] = input[:register_endpoints] unless input[:register_endpoints].nil?
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['S3Url'] = input[:s3_url] unless input[:s3_url].nil?
        data['SegmentId'] = input[:segment_id] unless input[:segment_id].nil?
        data['SegmentName'] = input[:segment_name] unless input[:segment_name].nil?
        data
      end
    end

    # Operation Builder for CreateInAppTemplate
    class CreateInAppTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:template_name].to_s.empty?
          raise ArgumentError, "HTTP label :template_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/templates/%<TemplateName>s/inapp',
            TemplateName: Hearth::HTTP.uri_escape(input[:template_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data = Builders::InAppTemplateRequest.build(input[:in_app_template_request]) unless input[:in_app_template_request].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for InAppTemplateRequest
    class InAppTemplateRequest
      def self.build(input)
        data = {}
        data['Content'] = Builders::ListOfInAppMessageContent.build(input[:content]) unless input[:content].nil?
        data['CustomConfig'] = Builders::MapOf__string.build(input[:custom_config]) unless input[:custom_config].nil?
        data['Layout'] = input[:layout] unless input[:layout].nil?
        data['tags'] = Builders::MapOf__string.build(input[:tags]) unless input[:tags].nil?
        data['TemplateDescription'] = input[:template_description] unless input[:template_description].nil?
        data
      end
    end

    # Operation Builder for CreateJourney
    class CreateJourney
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apps/%<ApplicationId>s/journeys',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data = Builders::WriteJourneyRequest.build(input[:write_journey_request]) unless input[:write_journey_request].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for WriteJourneyRequest
    class WriteJourneyRequest
      def self.build(input)
        data = {}
        data['Activities'] = Builders::MapOfActivity.build(input[:activities]) unless input[:activities].nil?
        data['CreationDate'] = input[:creation_date] unless input[:creation_date].nil?
        data['LastModifiedDate'] = input[:last_modified_date] unless input[:last_modified_date].nil?
        data['Limits'] = Builders::JourneyLimits.build(input[:limits]) unless input[:limits].nil?
        data['LocalTime'] = input[:local_time] unless input[:local_time].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['QuietTime'] = Builders::QuietTime.build(input[:quiet_time]) unless input[:quiet_time].nil?
        data['RefreshFrequency'] = input[:refresh_frequency] unless input[:refresh_frequency].nil?
        data['Schedule'] = Builders::JourneySchedule.build(input[:schedule]) unless input[:schedule].nil?
        data['StartActivity'] = input[:start_activity] unless input[:start_activity].nil?
        data['StartCondition'] = Builders::StartCondition.build(input[:start_condition]) unless input[:start_condition].nil?
        data['State'] = input[:state] unless input[:state].nil?
        data['WaitForQuietTime'] = input[:wait_for_quiet_time] unless input[:wait_for_quiet_time].nil?
        data['RefreshOnSegmentUpdate'] = input[:refresh_on_segment_update] unless input[:refresh_on_segment_update].nil?
        data['JourneyChannelSettings'] = Builders::JourneyChannelSettings.build(input[:journey_channel_settings]) unless input[:journey_channel_settings].nil?
        data
      end
    end

    # Structure Builder for JourneyChannelSettings
    class JourneyChannelSettings
      def self.build(input)
        data = {}
        data['ConnectCampaignArn'] = input[:connect_campaign_arn] unless input[:connect_campaign_arn].nil?
        data['ConnectCampaignExecutionRoleArn'] = input[:connect_campaign_execution_role_arn] unless input[:connect_campaign_execution_role_arn].nil?
        data
      end
    end

    # Structure Builder for StartCondition
    class StartCondition
      def self.build(input)
        data = {}
        data['Description'] = input[:description] unless input[:description].nil?
        data['EventStartCondition'] = Builders::EventStartCondition.build(input[:event_start_condition]) unless input[:event_start_condition].nil?
        data['SegmentStartCondition'] = Builders::SegmentCondition.build(input[:segment_start_condition]) unless input[:segment_start_condition].nil?
        data
      end
    end

    # Structure Builder for SegmentCondition
    class SegmentCondition
      def self.build(input)
        data = {}
        data['SegmentId'] = input[:segment_id] unless input[:segment_id].nil?
        data
      end
    end

    # Structure Builder for EventStartCondition
    class EventStartCondition
      def self.build(input)
        data = {}
        data['EventFilter'] = Builders::EventFilter.build(input[:event_filter]) unless input[:event_filter].nil?
        data['SegmentId'] = input[:segment_id] unless input[:segment_id].nil?
        data
      end
    end

    # Structure Builder for EventFilter
    class EventFilter
      def self.build(input)
        data = {}
        data['Dimensions'] = Builders::EventDimensions.build(input[:dimensions]) unless input[:dimensions].nil?
        data['FilterType'] = input[:filter_type] unless input[:filter_type].nil?
        data
      end
    end

    # Structure Builder for JourneySchedule
    class JourneySchedule
      def self.build(input)
        data = {}
        data['EndTime'] = Hearth::TimeHelper.to_date_time(input[:end_time]) unless input[:end_time].nil?
        data['StartTime'] = Hearth::TimeHelper.to_date_time(input[:start_time]) unless input[:start_time].nil?
        data['Timezone'] = input[:timezone] unless input[:timezone].nil?
        data
      end
    end

    # Structure Builder for JourneyLimits
    class JourneyLimits
      def self.build(input)
        data = {}
        data['DailyCap'] = input[:daily_cap] unless input[:daily_cap].nil?
        data['EndpointReentryCap'] = input[:endpoint_reentry_cap] unless input[:endpoint_reentry_cap].nil?
        data['MessagesPerSecond'] = input[:messages_per_second] unless input[:messages_per_second].nil?
        data['EndpointReentryInterval'] = input[:endpoint_reentry_interval] unless input[:endpoint_reentry_interval].nil?
        data
      end
    end

    # Map Builder for MapOfActivity
    class MapOfActivity
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::Activity.build(value) unless value.nil?
        end
        data
      end
    end

    # Structure Builder for Activity
    class Activity
      def self.build(input)
        data = {}
        data['CUSTOM'] = Builders::CustomMessageActivity.build(input[:custom]) unless input[:custom].nil?
        data['ConditionalSplit'] = Builders::ConditionalSplitActivity.build(input[:conditional_split]) unless input[:conditional_split].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['EMAIL'] = Builders::EmailMessageActivity.build(input[:email]) unless input[:email].nil?
        data['Holdout'] = Builders::HoldoutActivity.build(input[:holdout]) unless input[:holdout].nil?
        data['MultiCondition'] = Builders::MultiConditionalSplitActivity.build(input[:multi_condition]) unless input[:multi_condition].nil?
        data['PUSH'] = Builders::PushMessageActivity.build(input[:push]) unless input[:push].nil?
        data['RandomSplit'] = Builders::RandomSplitActivity.build(input[:random_split]) unless input[:random_split].nil?
        data['SMS'] = Builders::SMSMessageActivity.build(input[:sms]) unless input[:sms].nil?
        data['Wait'] = Builders::WaitActivity.build(input[:wait]) unless input[:wait].nil?
        data['ContactCenter'] = Builders::ContactCenterActivity.build(input[:contact_center]) unless input[:contact_center].nil?
        data
      end
    end

    # Structure Builder for ContactCenterActivity
    class ContactCenterActivity
      def self.build(input)
        data = {}
        data['NextActivity'] = input[:next_activity] unless input[:next_activity].nil?
        data
      end
    end

    # Structure Builder for WaitActivity
    class WaitActivity
      def self.build(input)
        data = {}
        data['NextActivity'] = input[:next_activity] unless input[:next_activity].nil?
        data['WaitTime'] = Builders::WaitTime.build(input[:wait_time]) unless input[:wait_time].nil?
        data
      end
    end

    # Structure Builder for WaitTime
    class WaitTime
      def self.build(input)
        data = {}
        data['WaitFor'] = input[:wait_for] unless input[:wait_for].nil?
        data['WaitUntil'] = input[:wait_until] unless input[:wait_until].nil?
        data
      end
    end

    # Structure Builder for SMSMessageActivity
    class SMSMessageActivity
      def self.build(input)
        data = {}
        data['MessageConfig'] = Builders::JourneySMSMessage.build(input[:message_config]) unless input[:message_config].nil?
        data['NextActivity'] = input[:next_activity] unless input[:next_activity].nil?
        data['TemplateName'] = input[:template_name] unless input[:template_name].nil?
        data['TemplateVersion'] = input[:template_version] unless input[:template_version].nil?
        data
      end
    end

    # Structure Builder for JourneySMSMessage
    class JourneySMSMessage
      def self.build(input)
        data = {}
        data['MessageType'] = input[:message_type] unless input[:message_type].nil?
        data['OriginationNumber'] = input[:origination_number] unless input[:origination_number].nil?
        data['SenderId'] = input[:sender_id] unless input[:sender_id].nil?
        data['EntityId'] = input[:entity_id] unless input[:entity_id].nil?
        data['TemplateId'] = input[:template_id] unless input[:template_id].nil?
        data
      end
    end

    # Structure Builder for RandomSplitActivity
    class RandomSplitActivity
      def self.build(input)
        data = {}
        data['Branches'] = Builders::ListOfRandomSplitEntry.build(input[:branches]) unless input[:branches].nil?
        data
      end
    end

    # List Builder for ListOfRandomSplitEntry
    class ListOfRandomSplitEntry
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::RandomSplitEntry.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for RandomSplitEntry
    class RandomSplitEntry
      def self.build(input)
        data = {}
        data['NextActivity'] = input[:next_activity] unless input[:next_activity].nil?
        data['Percentage'] = input[:percentage] unless input[:percentage].nil?
        data
      end
    end

    # Structure Builder for PushMessageActivity
    class PushMessageActivity
      def self.build(input)
        data = {}
        data['MessageConfig'] = Builders::JourneyPushMessage.build(input[:message_config]) unless input[:message_config].nil?
        data['NextActivity'] = input[:next_activity] unless input[:next_activity].nil?
        data['TemplateName'] = input[:template_name] unless input[:template_name].nil?
        data['TemplateVersion'] = input[:template_version] unless input[:template_version].nil?
        data
      end
    end

    # Structure Builder for JourneyPushMessage
    class JourneyPushMessage
      def self.build(input)
        data = {}
        data['TimeToLive'] = input[:time_to_live] unless input[:time_to_live].nil?
        data
      end
    end

    # Structure Builder for MultiConditionalSplitActivity
    class MultiConditionalSplitActivity
      def self.build(input)
        data = {}
        data['Branches'] = Builders::ListOfMultiConditionalBranch.build(input[:branches]) unless input[:branches].nil?
        data['DefaultActivity'] = input[:default_activity] unless input[:default_activity].nil?
        data['EvaluationWaitTime'] = Builders::WaitTime.build(input[:evaluation_wait_time]) unless input[:evaluation_wait_time].nil?
        data
      end
    end

    # List Builder for ListOfMultiConditionalBranch
    class ListOfMultiConditionalBranch
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::MultiConditionalBranch.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for MultiConditionalBranch
    class MultiConditionalBranch
      def self.build(input)
        data = {}
        data['Condition'] = Builders::SimpleCondition.build(input[:condition]) unless input[:condition].nil?
        data['NextActivity'] = input[:next_activity] unless input[:next_activity].nil?
        data
      end
    end

    # Structure Builder for SimpleCondition
    class SimpleCondition
      def self.build(input)
        data = {}
        data['EventCondition'] = Builders::EventCondition.build(input[:event_condition]) unless input[:event_condition].nil?
        data['SegmentCondition'] = Builders::SegmentCondition.build(input[:segment_condition]) unless input[:segment_condition].nil?
        data['segmentDimensions'] = Builders::SegmentDimensions.build(input[:segment_dimensions]) unless input[:segment_dimensions].nil?
        data
      end
    end

    # Structure Builder for SegmentDimensions
    class SegmentDimensions
      def self.build(input)
        data = {}
        data['Attributes'] = Builders::MapOfAttributeDimension.build(input[:attributes]) unless input[:attributes].nil?
        data['Behavior'] = Builders::SegmentBehaviors.build(input[:behavior]) unless input[:behavior].nil?
        data['Demographic'] = Builders::SegmentDemographics.build(input[:demographic]) unless input[:demographic].nil?
        data['Location'] = Builders::SegmentLocation.build(input[:location]) unless input[:location].nil?
        data['Metrics'] = Builders::MapOfMetricDimension.build(input[:metrics]) unless input[:metrics].nil?
        data['UserAttributes'] = Builders::MapOfAttributeDimension.build(input[:user_attributes]) unless input[:user_attributes].nil?
        data
      end
    end

    # Structure Builder for SegmentLocation
    class SegmentLocation
      def self.build(input)
        data = {}
        data['Country'] = Builders::SetDimension.build(input[:country]) unless input[:country].nil?
        data['GPSPoint'] = Builders::GPSPointDimension.build(input[:gps_point]) unless input[:gps_point].nil?
        data
      end
    end

    # Structure Builder for GPSPointDimension
    class GPSPointDimension
      def self.build(input)
        data = {}
        data['Coordinates'] = Builders::GPSCoordinates.build(input[:coordinates]) unless input[:coordinates].nil?
        data['RangeInKilometers'] = Hearth::NumberHelper.serialize(input[:range_in_kilometers]) unless input[:range_in_kilometers].nil?
        data
      end
    end

    # Structure Builder for GPSCoordinates
    class GPSCoordinates
      def self.build(input)
        data = {}
        data['Latitude'] = Hearth::NumberHelper.serialize(input[:latitude]) unless input[:latitude].nil?
        data['Longitude'] = Hearth::NumberHelper.serialize(input[:longitude]) unless input[:longitude].nil?
        data
      end
    end

    # Structure Builder for SegmentDemographics
    class SegmentDemographics
      def self.build(input)
        data = {}
        data['AppVersion'] = Builders::SetDimension.build(input[:app_version]) unless input[:app_version].nil?
        data['Channel'] = Builders::SetDimension.build(input[:channel]) unless input[:channel].nil?
        data['DeviceType'] = Builders::SetDimension.build(input[:device_type]) unless input[:device_type].nil?
        data['Make'] = Builders::SetDimension.build(input[:make]) unless input[:make].nil?
        data['Model'] = Builders::SetDimension.build(input[:model]) unless input[:model].nil?
        data['Platform'] = Builders::SetDimension.build(input[:platform]) unless input[:platform].nil?
        data
      end
    end

    # Structure Builder for SegmentBehaviors
    class SegmentBehaviors
      def self.build(input)
        data = {}
        data['Recency'] = Builders::RecencyDimension.build(input[:recency]) unless input[:recency].nil?
        data
      end
    end

    # Structure Builder for RecencyDimension
    class RecencyDimension
      def self.build(input)
        data = {}
        data['Duration'] = input[:duration] unless input[:duration].nil?
        data['RecencyType'] = input[:recency_type] unless input[:recency_type].nil?
        data
      end
    end

    # Structure Builder for EventCondition
    class EventCondition
      def self.build(input)
        data = {}
        data['Dimensions'] = Builders::EventDimensions.build(input[:dimensions]) unless input[:dimensions].nil?
        data['MessageActivity'] = input[:message_activity] unless input[:message_activity].nil?
        data
      end
    end

    # Structure Builder for HoldoutActivity
    class HoldoutActivity
      def self.build(input)
        data = {}
        data['NextActivity'] = input[:next_activity] unless input[:next_activity].nil?
        data['Percentage'] = input[:percentage] unless input[:percentage].nil?
        data
      end
    end

    # Structure Builder for EmailMessageActivity
    class EmailMessageActivity
      def self.build(input)
        data = {}
        data['MessageConfig'] = Builders::JourneyEmailMessage.build(input[:message_config]) unless input[:message_config].nil?
        data['NextActivity'] = input[:next_activity] unless input[:next_activity].nil?
        data['TemplateName'] = input[:template_name] unless input[:template_name].nil?
        data['TemplateVersion'] = input[:template_version] unless input[:template_version].nil?
        data
      end
    end

    # Structure Builder for JourneyEmailMessage
    class JourneyEmailMessage
      def self.build(input)
        data = {}
        data['FromAddress'] = input[:from_address] unless input[:from_address].nil?
        data
      end
    end

    # Structure Builder for ConditionalSplitActivity
    class ConditionalSplitActivity
      def self.build(input)
        data = {}
        data['Condition'] = Builders::Condition.build(input[:condition]) unless input[:condition].nil?
        data['EvaluationWaitTime'] = Builders::WaitTime.build(input[:evaluation_wait_time]) unless input[:evaluation_wait_time].nil?
        data['FalseActivity'] = input[:false_activity] unless input[:false_activity].nil?
        data['TrueActivity'] = input[:true_activity] unless input[:true_activity].nil?
        data
      end
    end

    # Structure Builder for Condition
    class Condition
      def self.build(input)
        data = {}
        data['Conditions'] = Builders::ListOfSimpleCondition.build(input[:conditions]) unless input[:conditions].nil?
        data['Operator'] = input[:operator] unless input[:operator].nil?
        data
      end
    end

    # List Builder for ListOfSimpleCondition
    class ListOfSimpleCondition
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::SimpleCondition.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for CustomMessageActivity
    class CustomMessageActivity
      def self.build(input)
        data = {}
        data['DeliveryUri'] = input[:delivery_uri] unless input[:delivery_uri].nil?
        data['EndpointTypes'] = Builders::ListOf__EndpointTypesElement.build(input[:endpoint_types]) unless input[:endpoint_types].nil?
        data['MessageConfig'] = Builders::JourneyCustomMessage.build(input[:message_config]) unless input[:message_config].nil?
        data['NextActivity'] = input[:next_activity] unless input[:next_activity].nil?
        data['TemplateName'] = input[:template_name] unless input[:template_name].nil?
        data['TemplateVersion'] = input[:template_version] unless input[:template_version].nil?
        data
      end
    end

    # Structure Builder for JourneyCustomMessage
    class JourneyCustomMessage
      def self.build(input)
        data = {}
        data['Data'] = input[:data] unless input[:data].nil?
        data
      end
    end

    # Operation Builder for CreatePushTemplate
    class CreatePushTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:template_name].to_s.empty?
          raise ArgumentError, "HTTP label :template_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/templates/%<TemplateName>s/push',
            TemplateName: Hearth::HTTP.uri_escape(input[:template_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data = Builders::PushNotificationTemplateRequest.build(input[:push_notification_template_request]) unless input[:push_notification_template_request].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for PushNotificationTemplateRequest
    class PushNotificationTemplateRequest
      def self.build(input)
        data = {}
        data['ADM'] = Builders::AndroidPushNotificationTemplate.build(input[:adm]) unless input[:adm].nil?
        data['APNS'] = Builders::APNSPushNotificationTemplate.build(input[:apns]) unless input[:apns].nil?
        data['Baidu'] = Builders::AndroidPushNotificationTemplate.build(input[:baidu]) unless input[:baidu].nil?
        data['Default'] = Builders::DefaultPushNotificationTemplate.build(input[:default]) unless input[:default].nil?
        data['DefaultSubstitutions'] = input[:default_substitutions] unless input[:default_substitutions].nil?
        data['GCM'] = Builders::AndroidPushNotificationTemplate.build(input[:gcm]) unless input[:gcm].nil?
        data['RecommenderId'] = input[:recommender_id] unless input[:recommender_id].nil?
        data['tags'] = Builders::MapOf__string.build(input[:tags]) unless input[:tags].nil?
        data['TemplateDescription'] = input[:template_description] unless input[:template_description].nil?
        data
      end
    end

    # Structure Builder for AndroidPushNotificationTemplate
    class AndroidPushNotificationTemplate
      def self.build(input)
        data = {}
        data['Action'] = input[:action] unless input[:action].nil?
        data['Body'] = input[:body] unless input[:body].nil?
        data['ImageIconUrl'] = input[:image_icon_url] unless input[:image_icon_url].nil?
        data['ImageUrl'] = input[:image_url] unless input[:image_url].nil?
        data['RawContent'] = input[:raw_content] unless input[:raw_content].nil?
        data['SmallImageIconUrl'] = input[:small_image_icon_url] unless input[:small_image_icon_url].nil?
        data['Sound'] = input[:sound] unless input[:sound].nil?
        data['Title'] = input[:title] unless input[:title].nil?
        data['Url'] = input[:url] unless input[:url].nil?
        data
      end
    end

    # Structure Builder for DefaultPushNotificationTemplate
    class DefaultPushNotificationTemplate
      def self.build(input)
        data = {}
        data['Action'] = input[:action] unless input[:action].nil?
        data['Body'] = input[:body] unless input[:body].nil?
        data['Sound'] = input[:sound] unless input[:sound].nil?
        data['Title'] = input[:title] unless input[:title].nil?
        data['Url'] = input[:url] unless input[:url].nil?
        data
      end
    end

    # Structure Builder for APNSPushNotificationTemplate
    class APNSPushNotificationTemplate
      def self.build(input)
        data = {}
        data['Action'] = input[:action] unless input[:action].nil?
        data['Body'] = input[:body] unless input[:body].nil?
        data['MediaUrl'] = input[:media_url] unless input[:media_url].nil?
        data['RawContent'] = input[:raw_content] unless input[:raw_content].nil?
        data['Sound'] = input[:sound] unless input[:sound].nil?
        data['Title'] = input[:title] unless input[:title].nil?
        data['Url'] = input[:url] unless input[:url].nil?
        data
      end
    end

    # Operation Builder for CreateRecommenderConfiguration
    class CreateRecommenderConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/v1/recommenders')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data = Builders::CreateRecommenderConfigurationShape.build(input[:create_recommender_configuration]) unless input[:create_recommender_configuration].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for CreateRecommenderConfigurationShape
    class CreateRecommenderConfigurationShape
      def self.build(input)
        data = {}
        data['Attributes'] = Builders::MapOf__string.build(input[:attributes]) unless input[:attributes].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['RecommendationProviderIdType'] = input[:recommendation_provider_id_type] unless input[:recommendation_provider_id_type].nil?
        data['RecommendationProviderRoleArn'] = input[:recommendation_provider_role_arn] unless input[:recommendation_provider_role_arn].nil?
        data['RecommendationProviderUri'] = input[:recommendation_provider_uri] unless input[:recommendation_provider_uri].nil?
        data['RecommendationTransformerUri'] = input[:recommendation_transformer_uri] unless input[:recommendation_transformer_uri].nil?
        data['RecommendationsDisplayName'] = input[:recommendations_display_name] unless input[:recommendations_display_name].nil?
        data['RecommendationsPerMessage'] = input[:recommendations_per_message] unless input[:recommendations_per_message].nil?
        data
      end
    end

    # Operation Builder for CreateSegment
    class CreateSegment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apps/%<ApplicationId>s/segments',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data = Builders::WriteSegmentRequest.build(input[:write_segment_request]) unless input[:write_segment_request].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for WriteSegmentRequest
    class WriteSegmentRequest
      def self.build(input)
        data = {}
        data['Dimensions'] = Builders::SegmentDimensions.build(input[:dimensions]) unless input[:dimensions].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['SegmentGroups'] = Builders::SegmentGroupList.build(input[:segment_groups]) unless input[:segment_groups].nil?
        data['tags'] = Builders::MapOf__string.build(input[:tags]) unless input[:tags].nil?
        data
      end
    end

    # Structure Builder for SegmentGroupList
    class SegmentGroupList
      def self.build(input)
        data = {}
        data['Groups'] = Builders::ListOfSegmentGroup.build(input[:groups]) unless input[:groups].nil?
        data['Include'] = input[:include] unless input[:include].nil?
        data
      end
    end

    # List Builder for ListOfSegmentGroup
    class ListOfSegmentGroup
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::SegmentGroup.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for SegmentGroup
    class SegmentGroup
      def self.build(input)
        data = {}
        data['Dimensions'] = Builders::ListOfSegmentDimensions.build(input[:dimensions]) unless input[:dimensions].nil?
        data['SourceSegments'] = Builders::ListOfSegmentReference.build(input[:source_segments]) unless input[:source_segments].nil?
        data['SourceType'] = input[:source_type] unless input[:source_type].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data
      end
    end

    # List Builder for ListOfSegmentReference
    class ListOfSegmentReference
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::SegmentReference.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for SegmentReference
    class SegmentReference
      def self.build(input)
        data = {}
        data['Id'] = input[:id] unless input[:id].nil?
        data['Version'] = input[:version] unless input[:version].nil?
        data
      end
    end

    # List Builder for ListOfSegmentDimensions
    class ListOfSegmentDimensions
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::SegmentDimensions.build(element) unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateSmsTemplate
    class CreateSmsTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:template_name].to_s.empty?
          raise ArgumentError, "HTTP label :template_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/templates/%<TemplateName>s/sms',
            TemplateName: Hearth::HTTP.uri_escape(input[:template_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data = Builders::SMSTemplateRequest.build(input[:sms_template_request]) unless input[:sms_template_request].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for SMSTemplateRequest
    class SMSTemplateRequest
      def self.build(input)
        data = {}
        data['Body'] = input[:body] unless input[:body].nil?
        data['DefaultSubstitutions'] = input[:default_substitutions] unless input[:default_substitutions].nil?
        data['RecommenderId'] = input[:recommender_id] unless input[:recommender_id].nil?
        data['tags'] = Builders::MapOf__string.build(input[:tags]) unless input[:tags].nil?
        data['TemplateDescription'] = input[:template_description] unless input[:template_description].nil?
        data
      end
    end

    # Operation Builder for CreateVoiceTemplate
    class CreateVoiceTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:template_name].to_s.empty?
          raise ArgumentError, "HTTP label :template_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/templates/%<TemplateName>s/voice',
            TemplateName: Hearth::HTTP.uri_escape(input[:template_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data = Builders::VoiceTemplateRequest.build(input[:voice_template_request]) unless input[:voice_template_request].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for VoiceTemplateRequest
    class VoiceTemplateRequest
      def self.build(input)
        data = {}
        data['Body'] = input[:body] unless input[:body].nil?
        data['DefaultSubstitutions'] = input[:default_substitutions] unless input[:default_substitutions].nil?
        data['LanguageCode'] = input[:language_code] unless input[:language_code].nil?
        data['tags'] = Builders::MapOf__string.build(input[:tags]) unless input[:tags].nil?
        data['TemplateDescription'] = input[:template_description] unless input[:template_description].nil?
        data['VoiceId'] = input[:voice_id] unless input[:voice_id].nil?
        data
      end
    end

    # Operation Builder for DeleteAdmChannel
    class DeleteAdmChannel
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apps/%<ApplicationId>s/channels/adm',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteApnsChannel
    class DeleteApnsChannel
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apps/%<ApplicationId>s/channels/apns',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteApnsSandboxChannel
    class DeleteApnsSandboxChannel
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apps/%<ApplicationId>s/channels/apns_sandbox',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteApnsVoipChannel
    class DeleteApnsVoipChannel
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apps/%<ApplicationId>s/channels/apns_voip',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteApnsVoipSandboxChannel
    class DeleteApnsVoipSandboxChannel
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apps/%<ApplicationId>s/channels/apns_voip_sandbox',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteApp
    class DeleteApp
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apps/%<ApplicationId>s',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteBaiduChannel
    class DeleteBaiduChannel
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apps/%<ApplicationId>s/channels/baidu',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteCampaign
    class DeleteCampaign
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        if input[:campaign_id].to_s.empty?
          raise ArgumentError, "HTTP label :campaign_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apps/%<ApplicationId>s/campaigns/%<CampaignId>s',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s),
            CampaignId: Hearth::HTTP.uri_escape(input[:campaign_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteEmailChannel
    class DeleteEmailChannel
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apps/%<ApplicationId>s/channels/email',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteEmailTemplate
    class DeleteEmailTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:template_name].to_s.empty?
          raise ArgumentError, "HTTP label :template_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/templates/%<TemplateName>s/email',
            TemplateName: Hearth::HTTP.uri_escape(input[:template_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['version'] = input[:version].to_s unless input[:version].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteEndpoint
    class DeleteEndpoint
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        if input[:endpoint_id].to_s.empty?
          raise ArgumentError, "HTTP label :endpoint_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apps/%<ApplicationId>s/endpoints/%<EndpointId>s',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s),
            EndpointId: Hearth::HTTP.uri_escape(input[:endpoint_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteEventStream
    class DeleteEventStream
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apps/%<ApplicationId>s/eventstream',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteGcmChannel
    class DeleteGcmChannel
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apps/%<ApplicationId>s/channels/gcm',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteInAppTemplate
    class DeleteInAppTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:template_name].to_s.empty?
          raise ArgumentError, "HTTP label :template_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/templates/%<TemplateName>s/inapp',
            TemplateName: Hearth::HTTP.uri_escape(input[:template_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['version'] = input[:version].to_s unless input[:version].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteJourney
    class DeleteJourney
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        if input[:journey_id].to_s.empty?
          raise ArgumentError, "HTTP label :journey_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apps/%<ApplicationId>s/journeys/%<JourneyId>s',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s),
            JourneyId: Hearth::HTTP.uri_escape(input[:journey_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeletePushTemplate
    class DeletePushTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:template_name].to_s.empty?
          raise ArgumentError, "HTTP label :template_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/templates/%<TemplateName>s/push',
            TemplateName: Hearth::HTTP.uri_escape(input[:template_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['version'] = input[:version].to_s unless input[:version].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteRecommenderConfiguration
    class DeleteRecommenderConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:recommender_id].to_s.empty?
          raise ArgumentError, "HTTP label :recommender_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/recommenders/%<RecommenderId>s',
            RecommenderId: Hearth::HTTP.uri_escape(input[:recommender_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteSegment
    class DeleteSegment
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        if input[:segment_id].to_s.empty?
          raise ArgumentError, "HTTP label :segment_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apps/%<ApplicationId>s/segments/%<SegmentId>s',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s),
            SegmentId: Hearth::HTTP.uri_escape(input[:segment_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteSmsChannel
    class DeleteSmsChannel
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apps/%<ApplicationId>s/channels/sms',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteSmsTemplate
    class DeleteSmsTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:template_name].to_s.empty?
          raise ArgumentError, "HTTP label :template_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/templates/%<TemplateName>s/sms',
            TemplateName: Hearth::HTTP.uri_escape(input[:template_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['version'] = input[:version].to_s unless input[:version].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteUserEndpoints
    class DeleteUserEndpoints
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        if input[:user_id].to_s.empty?
          raise ArgumentError, "HTTP label :user_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apps/%<ApplicationId>s/users/%<UserId>s',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s),
            UserId: Hearth::HTTP.uri_escape(input[:user_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteVoiceChannel
    class DeleteVoiceChannel
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apps/%<ApplicationId>s/channels/voice',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteVoiceTemplate
    class DeleteVoiceTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:template_name].to_s.empty?
          raise ArgumentError, "HTTP label :template_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/templates/%<TemplateName>s/voice',
            TemplateName: Hearth::HTTP.uri_escape(input[:template_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['version'] = input[:version].to_s unless input[:version].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetAdmChannel
    class GetAdmChannel
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apps/%<ApplicationId>s/channels/adm',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetApnsChannel
    class GetApnsChannel
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apps/%<ApplicationId>s/channels/apns',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetApnsSandboxChannel
    class GetApnsSandboxChannel
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apps/%<ApplicationId>s/channels/apns_sandbox',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetApnsVoipChannel
    class GetApnsVoipChannel
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apps/%<ApplicationId>s/channels/apns_voip',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetApnsVoipSandboxChannel
    class GetApnsVoipSandboxChannel
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apps/%<ApplicationId>s/channels/apns_voip_sandbox',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetApp
    class GetApp
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apps/%<ApplicationId>s',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetApplicationDateRangeKpi
    class GetApplicationDateRangeKpi
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        if input[:kpi_name].to_s.empty?
          raise ArgumentError, "HTTP label :kpi_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apps/%<ApplicationId>s/kpis/daterange/%<KpiName>s',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s),
            KpiName: Hearth::HTTP.uri_escape(input[:kpi_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['end-time'] = Hearth::TimeHelper.to_date_time(input[:end_time]) unless input[:end_time].nil?
        params['next-token'] = input[:next_token].to_s unless input[:next_token].nil?
        params['page-size'] = input[:page_size].to_s unless input[:page_size].nil?
        params['start-time'] = Hearth::TimeHelper.to_date_time(input[:start_time]) unless input[:start_time].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetApplicationSettings
    class GetApplicationSettings
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apps/%<ApplicationId>s/settings',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetApps
    class GetApps
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/v1/apps')
        params = Hearth::Query::ParamList.new
        params['page-size'] = input[:page_size].to_s unless input[:page_size].nil?
        params['token'] = input[:token].to_s unless input[:token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetBaiduChannel
    class GetBaiduChannel
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apps/%<ApplicationId>s/channels/baidu',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetCampaign
    class GetCampaign
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        if input[:campaign_id].to_s.empty?
          raise ArgumentError, "HTTP label :campaign_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apps/%<ApplicationId>s/campaigns/%<CampaignId>s',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s),
            CampaignId: Hearth::HTTP.uri_escape(input[:campaign_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetCampaignActivities
    class GetCampaignActivities
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        if input[:campaign_id].to_s.empty?
          raise ArgumentError, "HTTP label :campaign_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apps/%<ApplicationId>s/campaigns/%<CampaignId>s/activities',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s),
            CampaignId: Hearth::HTTP.uri_escape(input[:campaign_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['page-size'] = input[:page_size].to_s unless input[:page_size].nil?
        params['token'] = input[:token].to_s unless input[:token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetCampaignDateRangeKpi
    class GetCampaignDateRangeKpi
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        if input[:campaign_id].to_s.empty?
          raise ArgumentError, "HTTP label :campaign_id cannot be nil or empty."
        end
        if input[:kpi_name].to_s.empty?
          raise ArgumentError, "HTTP label :kpi_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apps/%<ApplicationId>s/campaigns/%<CampaignId>s/kpis/daterange/%<KpiName>s',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s),
            CampaignId: Hearth::HTTP.uri_escape(input[:campaign_id].to_s),
            KpiName: Hearth::HTTP.uri_escape(input[:kpi_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['end-time'] = Hearth::TimeHelper.to_date_time(input[:end_time]) unless input[:end_time].nil?
        params['next-token'] = input[:next_token].to_s unless input[:next_token].nil?
        params['page-size'] = input[:page_size].to_s unless input[:page_size].nil?
        params['start-time'] = Hearth::TimeHelper.to_date_time(input[:start_time]) unless input[:start_time].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetCampaignVersion
    class GetCampaignVersion
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        if input[:campaign_id].to_s.empty?
          raise ArgumentError, "HTTP label :campaign_id cannot be nil or empty."
        end
        if input[:version].to_s.empty?
          raise ArgumentError, "HTTP label :version cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apps/%<ApplicationId>s/campaigns/%<CampaignId>s/versions/%<Version>s',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s),
            CampaignId: Hearth::HTTP.uri_escape(input[:campaign_id].to_s),
            Version: Hearth::HTTP.uri_escape(input[:version].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetCampaignVersions
    class GetCampaignVersions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        if input[:campaign_id].to_s.empty?
          raise ArgumentError, "HTTP label :campaign_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apps/%<ApplicationId>s/campaigns/%<CampaignId>s/versions',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s),
            CampaignId: Hearth::HTTP.uri_escape(input[:campaign_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['page-size'] = input[:page_size].to_s unless input[:page_size].nil?
        params['token'] = input[:token].to_s unless input[:token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetCampaigns
    class GetCampaigns
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apps/%<ApplicationId>s/campaigns',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['page-size'] = input[:page_size].to_s unless input[:page_size].nil?
        params['token'] = input[:token].to_s unless input[:token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetChannels
    class GetChannels
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apps/%<ApplicationId>s/channels',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetEmailChannel
    class GetEmailChannel
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apps/%<ApplicationId>s/channels/email',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetEmailTemplate
    class GetEmailTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:template_name].to_s.empty?
          raise ArgumentError, "HTTP label :template_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/templates/%<TemplateName>s/email',
            TemplateName: Hearth::HTTP.uri_escape(input[:template_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['version'] = input[:version].to_s unless input[:version].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetEndpoint
    class GetEndpoint
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        if input[:endpoint_id].to_s.empty?
          raise ArgumentError, "HTTP label :endpoint_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apps/%<ApplicationId>s/endpoints/%<EndpointId>s',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s),
            EndpointId: Hearth::HTTP.uri_escape(input[:endpoint_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetEventStream
    class GetEventStream
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apps/%<ApplicationId>s/eventstream',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetExportJob
    class GetExportJob
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        if input[:job_id].to_s.empty?
          raise ArgumentError, "HTTP label :job_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apps/%<ApplicationId>s/jobs/export/%<JobId>s',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s),
            JobId: Hearth::HTTP.uri_escape(input[:job_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetExportJobs
    class GetExportJobs
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apps/%<ApplicationId>s/jobs/export',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['page-size'] = input[:page_size].to_s unless input[:page_size].nil?
        params['token'] = input[:token].to_s unless input[:token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetGcmChannel
    class GetGcmChannel
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apps/%<ApplicationId>s/channels/gcm',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetImportJob
    class GetImportJob
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        if input[:job_id].to_s.empty?
          raise ArgumentError, "HTTP label :job_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apps/%<ApplicationId>s/jobs/import/%<JobId>s',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s),
            JobId: Hearth::HTTP.uri_escape(input[:job_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetImportJobs
    class GetImportJobs
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apps/%<ApplicationId>s/jobs/import',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['page-size'] = input[:page_size].to_s unless input[:page_size].nil?
        params['token'] = input[:token].to_s unless input[:token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetInAppMessages
    class GetInAppMessages
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        if input[:endpoint_id].to_s.empty?
          raise ArgumentError, "HTTP label :endpoint_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apps/%<ApplicationId>s/endpoints/%<EndpointId>s/inappmessages',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s),
            EndpointId: Hearth::HTTP.uri_escape(input[:endpoint_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetInAppTemplate
    class GetInAppTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:template_name].to_s.empty?
          raise ArgumentError, "HTTP label :template_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/templates/%<TemplateName>s/inapp',
            TemplateName: Hearth::HTTP.uri_escape(input[:template_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['version'] = input[:version].to_s unless input[:version].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetJourney
    class GetJourney
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        if input[:journey_id].to_s.empty?
          raise ArgumentError, "HTTP label :journey_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apps/%<ApplicationId>s/journeys/%<JourneyId>s',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s),
            JourneyId: Hearth::HTTP.uri_escape(input[:journey_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetJourneyDateRangeKpi
    class GetJourneyDateRangeKpi
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        if input[:journey_id].to_s.empty?
          raise ArgumentError, "HTTP label :journey_id cannot be nil or empty."
        end
        if input[:kpi_name].to_s.empty?
          raise ArgumentError, "HTTP label :kpi_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apps/%<ApplicationId>s/journeys/%<JourneyId>s/kpis/daterange/%<KpiName>s',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s),
            JourneyId: Hearth::HTTP.uri_escape(input[:journey_id].to_s),
            KpiName: Hearth::HTTP.uri_escape(input[:kpi_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['end-time'] = Hearth::TimeHelper.to_date_time(input[:end_time]) unless input[:end_time].nil?
        params['next-token'] = input[:next_token].to_s unless input[:next_token].nil?
        params['page-size'] = input[:page_size].to_s unless input[:page_size].nil?
        params['start-time'] = Hearth::TimeHelper.to_date_time(input[:start_time]) unless input[:start_time].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetJourneyExecutionActivityMetrics
    class GetJourneyExecutionActivityMetrics
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        if input[:journey_activity_id].to_s.empty?
          raise ArgumentError, "HTTP label :journey_activity_id cannot be nil or empty."
        end
        if input[:journey_id].to_s.empty?
          raise ArgumentError, "HTTP label :journey_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apps/%<ApplicationId>s/journeys/%<JourneyId>s/activities/%<JourneyActivityId>s/execution-metrics',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s),
            JourneyActivityId: Hearth::HTTP.uri_escape(input[:journey_activity_id].to_s),
            JourneyId: Hearth::HTTP.uri_escape(input[:journey_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['next-token'] = input[:next_token].to_s unless input[:next_token].nil?
        params['page-size'] = input[:page_size].to_s unless input[:page_size].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetJourneyExecutionMetrics
    class GetJourneyExecutionMetrics
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        if input[:journey_id].to_s.empty?
          raise ArgumentError, "HTTP label :journey_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apps/%<ApplicationId>s/journeys/%<JourneyId>s/execution-metrics',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s),
            JourneyId: Hearth::HTTP.uri_escape(input[:journey_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['next-token'] = input[:next_token].to_s unless input[:next_token].nil?
        params['page-size'] = input[:page_size].to_s unless input[:page_size].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetPushTemplate
    class GetPushTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:template_name].to_s.empty?
          raise ArgumentError, "HTTP label :template_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/templates/%<TemplateName>s/push',
            TemplateName: Hearth::HTTP.uri_escape(input[:template_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['version'] = input[:version].to_s unless input[:version].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetRecommenderConfiguration
    class GetRecommenderConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:recommender_id].to_s.empty?
          raise ArgumentError, "HTTP label :recommender_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/recommenders/%<RecommenderId>s',
            RecommenderId: Hearth::HTTP.uri_escape(input[:recommender_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetRecommenderConfigurations
    class GetRecommenderConfigurations
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/v1/recommenders')
        params = Hearth::Query::ParamList.new
        params['page-size'] = input[:page_size].to_s unless input[:page_size].nil?
        params['token'] = input[:token].to_s unless input[:token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetSegment
    class GetSegment
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        if input[:segment_id].to_s.empty?
          raise ArgumentError, "HTTP label :segment_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apps/%<ApplicationId>s/segments/%<SegmentId>s',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s),
            SegmentId: Hearth::HTTP.uri_escape(input[:segment_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetSegmentExportJobs
    class GetSegmentExportJobs
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        if input[:segment_id].to_s.empty?
          raise ArgumentError, "HTTP label :segment_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apps/%<ApplicationId>s/segments/%<SegmentId>s/jobs/export',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s),
            SegmentId: Hearth::HTTP.uri_escape(input[:segment_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['page-size'] = input[:page_size].to_s unless input[:page_size].nil?
        params['token'] = input[:token].to_s unless input[:token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetSegmentImportJobs
    class GetSegmentImportJobs
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        if input[:segment_id].to_s.empty?
          raise ArgumentError, "HTTP label :segment_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apps/%<ApplicationId>s/segments/%<SegmentId>s/jobs/import',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s),
            SegmentId: Hearth::HTTP.uri_escape(input[:segment_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['page-size'] = input[:page_size].to_s unless input[:page_size].nil?
        params['token'] = input[:token].to_s unless input[:token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetSegmentVersion
    class GetSegmentVersion
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        if input[:segment_id].to_s.empty?
          raise ArgumentError, "HTTP label :segment_id cannot be nil or empty."
        end
        if input[:version].to_s.empty?
          raise ArgumentError, "HTTP label :version cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apps/%<ApplicationId>s/segments/%<SegmentId>s/versions/%<Version>s',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s),
            SegmentId: Hearth::HTTP.uri_escape(input[:segment_id].to_s),
            Version: Hearth::HTTP.uri_escape(input[:version].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetSegmentVersions
    class GetSegmentVersions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        if input[:segment_id].to_s.empty?
          raise ArgumentError, "HTTP label :segment_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apps/%<ApplicationId>s/segments/%<SegmentId>s/versions',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s),
            SegmentId: Hearth::HTTP.uri_escape(input[:segment_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['page-size'] = input[:page_size].to_s unless input[:page_size].nil?
        params['token'] = input[:token].to_s unless input[:token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetSegments
    class GetSegments
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apps/%<ApplicationId>s/segments',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['page-size'] = input[:page_size].to_s unless input[:page_size].nil?
        params['token'] = input[:token].to_s unless input[:token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetSmsChannel
    class GetSmsChannel
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apps/%<ApplicationId>s/channels/sms',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetSmsTemplate
    class GetSmsTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:template_name].to_s.empty?
          raise ArgumentError, "HTTP label :template_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/templates/%<TemplateName>s/sms',
            TemplateName: Hearth::HTTP.uri_escape(input[:template_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['version'] = input[:version].to_s unless input[:version].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetUserEndpoints
    class GetUserEndpoints
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        if input[:user_id].to_s.empty?
          raise ArgumentError, "HTTP label :user_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apps/%<ApplicationId>s/users/%<UserId>s',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s),
            UserId: Hearth::HTTP.uri_escape(input[:user_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetVoiceChannel
    class GetVoiceChannel
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apps/%<ApplicationId>s/channels/voice',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetVoiceTemplate
    class GetVoiceTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:template_name].to_s.empty?
          raise ArgumentError, "HTTP label :template_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/templates/%<TemplateName>s/voice',
            TemplateName: Hearth::HTTP.uri_escape(input[:template_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['version'] = input[:version].to_s unless input[:version].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListJourneys
    class ListJourneys
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apps/%<ApplicationId>s/journeys',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['page-size'] = input[:page_size].to_s unless input[:page_size].nil?
        params['token'] = input[:token].to_s unless input[:token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/tags/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListTemplateVersions
    class ListTemplateVersions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:template_name].to_s.empty?
          raise ArgumentError, "HTTP label :template_name cannot be nil or empty."
        end
        if input[:template_type].to_s.empty?
          raise ArgumentError, "HTTP label :template_type cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/templates/%<TemplateName>s/%<TemplateType>s/versions',
            TemplateName: Hearth::HTTP.uri_escape(input[:template_name].to_s),
            TemplateType: Hearth::HTTP.uri_escape(input[:template_type].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['next-token'] = input[:next_token].to_s unless input[:next_token].nil?
        params['page-size'] = input[:page_size].to_s unless input[:page_size].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListTemplates
    class ListTemplates
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/v1/templates')
        params = Hearth::Query::ParamList.new
        params['next-token'] = input[:next_token].to_s unless input[:next_token].nil?
        params['page-size'] = input[:page_size].to_s unless input[:page_size].nil?
        params['prefix'] = input[:prefix].to_s unless input[:prefix].nil?
        params['template-type'] = input[:template_type].to_s unless input[:template_type].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for PhoneNumberValidate
    class PhoneNumberValidate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/v1/phone/number/validate')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data = Builders::NumberValidateRequest.build(input[:number_validate_request]) unless input[:number_validate_request].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for NumberValidateRequest
    class NumberValidateRequest
      def self.build(input)
        data = {}
        data['IsoCountryCode'] = input[:iso_country_code] unless input[:iso_country_code].nil?
        data['PhoneNumber'] = input[:phone_number] unless input[:phone_number].nil?
        data
      end
    end

    # Operation Builder for PutEventStream
    class PutEventStream
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apps/%<ApplicationId>s/eventstream',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data = Builders::WriteEventStream.build(input[:write_event_stream]) unless input[:write_event_stream].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for WriteEventStream
    class WriteEventStream
      def self.build(input)
        data = {}
        data['DestinationStreamArn'] = input[:destination_stream_arn] unless input[:destination_stream_arn].nil?
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data
      end
    end

    # Operation Builder for PutEvents
    class PutEvents
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apps/%<ApplicationId>s/events',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data = Builders::EventsRequest.build(input[:events_request]) unless input[:events_request].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for EventsRequest
    class EventsRequest
      def self.build(input)
        data = {}
        data['BatchItem'] = Builders::MapOfEventsBatch.build(input[:batch_item]) unless input[:batch_item].nil?
        data
      end
    end

    # Map Builder for MapOfEventsBatch
    class MapOfEventsBatch
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::EventsBatch.build(value) unless value.nil?
        end
        data
      end
    end

    # Structure Builder for EventsBatch
    class EventsBatch
      def self.build(input)
        data = {}
        data['Endpoint'] = Builders::PublicEndpoint.build(input[:endpoint]) unless input[:endpoint].nil?
        data['Events'] = Builders::MapOfEvent.build(input[:events]) unless input[:events].nil?
        data
      end
    end

    # Map Builder for MapOfEvent
    class MapOfEvent
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::Event.build(value) unless value.nil?
        end
        data
      end
    end

    # Structure Builder for Event
    class Event
      def self.build(input)
        data = {}
        data['AppPackageName'] = input[:app_package_name] unless input[:app_package_name].nil?
        data['AppTitle'] = input[:app_title] unless input[:app_title].nil?
        data['AppVersionCode'] = input[:app_version_code] unless input[:app_version_code].nil?
        data['Attributes'] = Builders::MapOf__string.build(input[:attributes]) unless input[:attributes].nil?
        data['ClientSdkVersion'] = input[:client_sdk_version] unless input[:client_sdk_version].nil?
        data['EventType'] = input[:event_type] unless input[:event_type].nil?
        data['Metrics'] = Builders::MapOf__double.build(input[:metrics]) unless input[:metrics].nil?
        data['SdkName'] = input[:sdk_name] unless input[:sdk_name].nil?
        data['Session'] = Builders::Session.build(input[:session]) unless input[:session].nil?
        data['Timestamp'] = input[:timestamp] unless input[:timestamp].nil?
        data
      end
    end

    # Structure Builder for Session
    class Session
      def self.build(input)
        data = {}
        data['Duration'] = input[:duration] unless input[:duration].nil?
        data['Id'] = input[:id] unless input[:id].nil?
        data['StartTimestamp'] = input[:start_timestamp] unless input[:start_timestamp].nil?
        data['StopTimestamp'] = input[:stop_timestamp] unless input[:stop_timestamp].nil?
        data
      end
    end

    # Map Builder for MapOf__double
    class MapOf__double
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Hearth::NumberHelper.serialize(value) unless value.nil?
        end
        data
      end
    end

    # Structure Builder for PublicEndpoint
    class PublicEndpoint
      def self.build(input)
        data = {}
        data['Address'] = input[:address] unless input[:address].nil?
        data['Attributes'] = Builders::MapOfListOf__string.build(input[:attributes]) unless input[:attributes].nil?
        data['ChannelType'] = input[:channel_type] unless input[:channel_type].nil?
        data['Demographic'] = Builders::EndpointDemographic.build(input[:demographic]) unless input[:demographic].nil?
        data['EffectiveDate'] = input[:effective_date] unless input[:effective_date].nil?
        data['EndpointStatus'] = input[:endpoint_status] unless input[:endpoint_status].nil?
        data['Location'] = Builders::EndpointLocation.build(input[:location]) unless input[:location].nil?
        data['Metrics'] = Builders::MapOf__double.build(input[:metrics]) unless input[:metrics].nil?
        data['OptOut'] = input[:opt_out] unless input[:opt_out].nil?
        data['RequestId'] = input[:request_id] unless input[:request_id].nil?
        data['User'] = Builders::EndpointUser.build(input[:user]) unless input[:user].nil?
        data
      end
    end

    # Structure Builder for EndpointUser
    class EndpointUser
      def self.build(input)
        data = {}
        data['UserAttributes'] = Builders::MapOfListOf__string.build(input[:user_attributes]) unless input[:user_attributes].nil?
        data['UserId'] = input[:user_id] unless input[:user_id].nil?
        data
      end
    end

    # Map Builder for MapOfListOf__string
    class MapOfListOf__string
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::ListOf__string.build(value) unless value.nil?
        end
        data
      end
    end

    # Structure Builder for EndpointLocation
    class EndpointLocation
      def self.build(input)
        data = {}
        data['City'] = input[:city] unless input[:city].nil?
        data['Country'] = input[:country] unless input[:country].nil?
        data['Latitude'] = Hearth::NumberHelper.serialize(input[:latitude]) unless input[:latitude].nil?
        data['Longitude'] = Hearth::NumberHelper.serialize(input[:longitude]) unless input[:longitude].nil?
        data['PostalCode'] = input[:postal_code] unless input[:postal_code].nil?
        data['Region'] = input[:region] unless input[:region].nil?
        data
      end
    end

    # Structure Builder for EndpointDemographic
    class EndpointDemographic
      def self.build(input)
        data = {}
        data['AppVersion'] = input[:app_version] unless input[:app_version].nil?
        data['Locale'] = input[:locale] unless input[:locale].nil?
        data['Make'] = input[:make] unless input[:make].nil?
        data['Model'] = input[:model] unless input[:model].nil?
        data['ModelVersion'] = input[:model_version] unless input[:model_version].nil?
        data['Platform'] = input[:platform] unless input[:platform].nil?
        data['PlatformVersion'] = input[:platform_version] unless input[:platform_version].nil?
        data['Timezone'] = input[:timezone] unless input[:timezone].nil?
        data
      end
    end

    # Operation Builder for RemoveAttributes
    class RemoveAttributes
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        if input[:attribute_type].to_s.empty?
          raise ArgumentError, "HTTP label :attribute_type cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apps/%<ApplicationId>s/attributes/%<AttributeType>s',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s),
            AttributeType: Hearth::HTTP.uri_escape(input[:attribute_type].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data = Builders::UpdateAttributesRequest.build(input[:update_attributes_request]) unless input[:update_attributes_request].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for UpdateAttributesRequest
    class UpdateAttributesRequest
      def self.build(input)
        data = {}
        data['Blacklist'] = Builders::ListOf__string.build(input[:blacklist]) unless input[:blacklist].nil?
        data
      end
    end

    # Operation Builder for SendMessages
    class SendMessages
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apps/%<ApplicationId>s/messages',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data = Builders::MessageRequest.build(input[:message_request]) unless input[:message_request].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for MessageRequest
    class MessageRequest
      def self.build(input)
        data = {}
        data['Addresses'] = Builders::MapOfAddressConfiguration.build(input[:addresses]) unless input[:addresses].nil?
        data['Context'] = Builders::MapOf__string.build(input[:context]) unless input[:context].nil?
        data['Endpoints'] = Builders::MapOfEndpointSendConfiguration.build(input[:endpoints]) unless input[:endpoints].nil?
        data['MessageConfiguration'] = Builders::DirectMessageConfiguration.build(input[:message_configuration]) unless input[:message_configuration].nil?
        data['TemplateConfiguration'] = Builders::TemplateConfiguration.build(input[:template_configuration]) unless input[:template_configuration].nil?
        data['TraceId'] = input[:trace_id] unless input[:trace_id].nil?
        data
      end
    end

    # Structure Builder for DirectMessageConfiguration
    class DirectMessageConfiguration
      def self.build(input)
        data = {}
        data['ADMMessage'] = Builders::ADMMessage.build(input[:adm_message]) unless input[:adm_message].nil?
        data['APNSMessage'] = Builders::APNSMessage.build(input[:apns_message]) unless input[:apns_message].nil?
        data['BaiduMessage'] = Builders::BaiduMessage.build(input[:baidu_message]) unless input[:baidu_message].nil?
        data['DefaultMessage'] = Builders::DefaultMessage.build(input[:default_message]) unless input[:default_message].nil?
        data['DefaultPushNotificationMessage'] = Builders::DefaultPushNotificationMessage.build(input[:default_push_notification_message]) unless input[:default_push_notification_message].nil?
        data['EmailMessage'] = Builders::EmailMessage.build(input[:email_message]) unless input[:email_message].nil?
        data['GCMMessage'] = Builders::GCMMessage.build(input[:gcm_message]) unless input[:gcm_message].nil?
        data['SMSMessage'] = Builders::SMSMessage.build(input[:sms_message]) unless input[:sms_message].nil?
        data['VoiceMessage'] = Builders::VoiceMessage.build(input[:voice_message]) unless input[:voice_message].nil?
        data
      end
    end

    # Structure Builder for VoiceMessage
    class VoiceMessage
      def self.build(input)
        data = {}
        data['Body'] = input[:body] unless input[:body].nil?
        data['LanguageCode'] = input[:language_code] unless input[:language_code].nil?
        data['OriginationNumber'] = input[:origination_number] unless input[:origination_number].nil?
        data['Substitutions'] = Builders::MapOfListOf__string.build(input[:substitutions]) unless input[:substitutions].nil?
        data['VoiceId'] = input[:voice_id] unless input[:voice_id].nil?
        data
      end
    end

    # Structure Builder for SMSMessage
    class SMSMessage
      def self.build(input)
        data = {}
        data['Body'] = input[:body] unless input[:body].nil?
        data['Keyword'] = input[:keyword] unless input[:keyword].nil?
        data['MediaUrl'] = input[:media_url] unless input[:media_url].nil?
        data['MessageType'] = input[:message_type] unless input[:message_type].nil?
        data['OriginationNumber'] = input[:origination_number] unless input[:origination_number].nil?
        data['SenderId'] = input[:sender_id] unless input[:sender_id].nil?
        data['Substitutions'] = Builders::MapOfListOf__string.build(input[:substitutions]) unless input[:substitutions].nil?
        data['EntityId'] = input[:entity_id] unless input[:entity_id].nil?
        data['TemplateId'] = input[:template_id] unless input[:template_id].nil?
        data
      end
    end

    # Structure Builder for GCMMessage
    class GCMMessage
      def self.build(input)
        data = {}
        data['Action'] = input[:action] unless input[:action].nil?
        data['Body'] = input[:body] unless input[:body].nil?
        data['CollapseKey'] = input[:collapse_key] unless input[:collapse_key].nil?
        data['Data'] = Builders::MapOf__string.build(input[:data]) unless input[:data].nil?
        data['IconReference'] = input[:icon_reference] unless input[:icon_reference].nil?
        data['ImageIconUrl'] = input[:image_icon_url] unless input[:image_icon_url].nil?
        data['ImageUrl'] = input[:image_url] unless input[:image_url].nil?
        data['Priority'] = input[:priority] unless input[:priority].nil?
        data['RawContent'] = input[:raw_content] unless input[:raw_content].nil?
        data['RestrictedPackageName'] = input[:restricted_package_name] unless input[:restricted_package_name].nil?
        data['SilentPush'] = input[:silent_push] unless input[:silent_push].nil?
        data['SmallImageIconUrl'] = input[:small_image_icon_url] unless input[:small_image_icon_url].nil?
        data['Sound'] = input[:sound] unless input[:sound].nil?
        data['Substitutions'] = Builders::MapOfListOf__string.build(input[:substitutions]) unless input[:substitutions].nil?
        data['TimeToLive'] = input[:time_to_live] unless input[:time_to_live].nil?
        data['Title'] = input[:title] unless input[:title].nil?
        data['Url'] = input[:url] unless input[:url].nil?
        data
      end
    end

    # Structure Builder for EmailMessage
    class EmailMessage
      def self.build(input)
        data = {}
        data['Body'] = input[:body] unless input[:body].nil?
        data['FeedbackForwardingAddress'] = input[:feedback_forwarding_address] unless input[:feedback_forwarding_address].nil?
        data['FromAddress'] = input[:from_address] unless input[:from_address].nil?
        data['RawEmail'] = Builders::RawEmail.build(input[:raw_email]) unless input[:raw_email].nil?
        data['ReplyToAddresses'] = Builders::ListOf__string.build(input[:reply_to_addresses]) unless input[:reply_to_addresses].nil?
        data['SimpleEmail'] = Builders::SimpleEmail.build(input[:simple_email]) unless input[:simple_email].nil?
        data['Substitutions'] = Builders::MapOfListOf__string.build(input[:substitutions]) unless input[:substitutions].nil?
        data
      end
    end

    # Structure Builder for SimpleEmail
    class SimpleEmail
      def self.build(input)
        data = {}
        data['HtmlPart'] = Builders::SimpleEmailPart.build(input[:html_part]) unless input[:html_part].nil?
        data['Subject'] = Builders::SimpleEmailPart.build(input[:subject]) unless input[:subject].nil?
        data['TextPart'] = Builders::SimpleEmailPart.build(input[:text_part]) unless input[:text_part].nil?
        data
      end
    end

    # Structure Builder for SimpleEmailPart
    class SimpleEmailPart
      def self.build(input)
        data = {}
        data['Charset'] = input[:charset] unless input[:charset].nil?
        data['Data'] = input[:data] unless input[:data].nil?
        data
      end
    end

    # Structure Builder for RawEmail
    class RawEmail
      def self.build(input)
        data = {}
        data['Data'] = Base64::encode64(input[:data]).strip unless input[:data].nil?
        data
      end
    end

    # Structure Builder for DefaultPushNotificationMessage
    class DefaultPushNotificationMessage
      def self.build(input)
        data = {}
        data['Action'] = input[:action] unless input[:action].nil?
        data['Body'] = input[:body] unless input[:body].nil?
        data['Data'] = Builders::MapOf__string.build(input[:data]) unless input[:data].nil?
        data['SilentPush'] = input[:silent_push] unless input[:silent_push].nil?
        data['Substitutions'] = Builders::MapOfListOf__string.build(input[:substitutions]) unless input[:substitutions].nil?
        data['Title'] = input[:title] unless input[:title].nil?
        data['Url'] = input[:url] unless input[:url].nil?
        data
      end
    end

    # Structure Builder for DefaultMessage
    class DefaultMessage
      def self.build(input)
        data = {}
        data['Body'] = input[:body] unless input[:body].nil?
        data['Substitutions'] = Builders::MapOfListOf__string.build(input[:substitutions]) unless input[:substitutions].nil?
        data
      end
    end

    # Structure Builder for BaiduMessage
    class BaiduMessage
      def self.build(input)
        data = {}
        data['Action'] = input[:action] unless input[:action].nil?
        data['Body'] = input[:body] unless input[:body].nil?
        data['Data'] = Builders::MapOf__string.build(input[:data]) unless input[:data].nil?
        data['IconReference'] = input[:icon_reference] unless input[:icon_reference].nil?
        data['ImageIconUrl'] = input[:image_icon_url] unless input[:image_icon_url].nil?
        data['ImageUrl'] = input[:image_url] unless input[:image_url].nil?
        data['RawContent'] = input[:raw_content] unless input[:raw_content].nil?
        data['SilentPush'] = input[:silent_push] unless input[:silent_push].nil?
        data['SmallImageIconUrl'] = input[:small_image_icon_url] unless input[:small_image_icon_url].nil?
        data['Sound'] = input[:sound] unless input[:sound].nil?
        data['Substitutions'] = Builders::MapOfListOf__string.build(input[:substitutions]) unless input[:substitutions].nil?
        data['TimeToLive'] = input[:time_to_live] unless input[:time_to_live].nil?
        data['Title'] = input[:title] unless input[:title].nil?
        data['Url'] = input[:url] unless input[:url].nil?
        data
      end
    end

    # Structure Builder for APNSMessage
    class APNSMessage
      def self.build(input)
        data = {}
        data['APNSPushType'] = input[:apns_push_type] unless input[:apns_push_type].nil?
        data['Action'] = input[:action] unless input[:action].nil?
        data['Badge'] = input[:badge] unless input[:badge].nil?
        data['Body'] = input[:body] unless input[:body].nil?
        data['Category'] = input[:category] unless input[:category].nil?
        data['CollapseId'] = input[:collapse_id] unless input[:collapse_id].nil?
        data['Data'] = Builders::MapOf__string.build(input[:data]) unless input[:data].nil?
        data['MediaUrl'] = input[:media_url] unless input[:media_url].nil?
        data['PreferredAuthenticationMethod'] = input[:preferred_authentication_method] unless input[:preferred_authentication_method].nil?
        data['Priority'] = input[:priority] unless input[:priority].nil?
        data['RawContent'] = input[:raw_content] unless input[:raw_content].nil?
        data['SilentPush'] = input[:silent_push] unless input[:silent_push].nil?
        data['Sound'] = input[:sound] unless input[:sound].nil?
        data['Substitutions'] = Builders::MapOfListOf__string.build(input[:substitutions]) unless input[:substitutions].nil?
        data['ThreadId'] = input[:thread_id] unless input[:thread_id].nil?
        data['TimeToLive'] = input[:time_to_live] unless input[:time_to_live].nil?
        data['Title'] = input[:title] unless input[:title].nil?
        data['Url'] = input[:url] unless input[:url].nil?
        data
      end
    end

    # Structure Builder for ADMMessage
    class ADMMessage
      def self.build(input)
        data = {}
        data['Action'] = input[:action] unless input[:action].nil?
        data['Body'] = input[:body] unless input[:body].nil?
        data['ConsolidationKey'] = input[:consolidation_key] unless input[:consolidation_key].nil?
        data['Data'] = Builders::MapOf__string.build(input[:data]) unless input[:data].nil?
        data['ExpiresAfter'] = input[:expires_after] unless input[:expires_after].nil?
        data['IconReference'] = input[:icon_reference] unless input[:icon_reference].nil?
        data['ImageIconUrl'] = input[:image_icon_url] unless input[:image_icon_url].nil?
        data['ImageUrl'] = input[:image_url] unless input[:image_url].nil?
        data['MD5'] = input[:md5] unless input[:md5].nil?
        data['RawContent'] = input[:raw_content] unless input[:raw_content].nil?
        data['SilentPush'] = input[:silent_push] unless input[:silent_push].nil?
        data['SmallImageIconUrl'] = input[:small_image_icon_url] unless input[:small_image_icon_url].nil?
        data['Sound'] = input[:sound] unless input[:sound].nil?
        data['Substitutions'] = Builders::MapOfListOf__string.build(input[:substitutions]) unless input[:substitutions].nil?
        data['Title'] = input[:title] unless input[:title].nil?
        data['Url'] = input[:url] unless input[:url].nil?
        data
      end
    end

    # Map Builder for MapOfEndpointSendConfiguration
    class MapOfEndpointSendConfiguration
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::EndpointSendConfiguration.build(value) unless value.nil?
        end
        data
      end
    end

    # Structure Builder for EndpointSendConfiguration
    class EndpointSendConfiguration
      def self.build(input)
        data = {}
        data['BodyOverride'] = input[:body_override] unless input[:body_override].nil?
        data['Context'] = Builders::MapOf__string.build(input[:context]) unless input[:context].nil?
        data['RawContent'] = input[:raw_content] unless input[:raw_content].nil?
        data['Substitutions'] = Builders::MapOfListOf__string.build(input[:substitutions]) unless input[:substitutions].nil?
        data['TitleOverride'] = input[:title_override] unless input[:title_override].nil?
        data
      end
    end

    # Map Builder for MapOfAddressConfiguration
    class MapOfAddressConfiguration
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::AddressConfiguration.build(value) unless value.nil?
        end
        data
      end
    end

    # Structure Builder for AddressConfiguration
    class AddressConfiguration
      def self.build(input)
        data = {}
        data['BodyOverride'] = input[:body_override] unless input[:body_override].nil?
        data['ChannelType'] = input[:channel_type] unless input[:channel_type].nil?
        data['Context'] = Builders::MapOf__string.build(input[:context]) unless input[:context].nil?
        data['RawContent'] = input[:raw_content] unless input[:raw_content].nil?
        data['Substitutions'] = Builders::MapOfListOf__string.build(input[:substitutions]) unless input[:substitutions].nil?
        data['TitleOverride'] = input[:title_override] unless input[:title_override].nil?
        data
      end
    end

    # Operation Builder for SendOTPMessage
    class SendOTPMessage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apps/%<ApplicationId>s/otp',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data = Builders::SendOTPMessageRequestParameters.build(input[:send_otp_message_request_parameters]) unless input[:send_otp_message_request_parameters].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for SendOTPMessageRequestParameters
    class SendOTPMessageRequestParameters
      def self.build(input)
        data = {}
        data['AllowedAttempts'] = input[:allowed_attempts] unless input[:allowed_attempts].nil?
        data['BrandName'] = input[:brand_name] unless input[:brand_name].nil?
        data['Channel'] = input[:channel] unless input[:channel].nil?
        data['CodeLength'] = input[:code_length] unless input[:code_length].nil?
        data['DestinationIdentity'] = input[:destination_identity] unless input[:destination_identity].nil?
        data['EntityId'] = input[:entity_id] unless input[:entity_id].nil?
        data['Language'] = input[:language] unless input[:language].nil?
        data['OriginationIdentity'] = input[:origination_identity] unless input[:origination_identity].nil?
        data['ReferenceId'] = input[:reference_id] unless input[:reference_id].nil?
        data['TemplateId'] = input[:template_id] unless input[:template_id].nil?
        data['ValidityPeriod'] = input[:validity_period] unless input[:validity_period].nil?
        data
      end
    end

    # Operation Builder for SendUsersMessages
    class SendUsersMessages
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apps/%<ApplicationId>s/users-messages',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data = Builders::SendUsersMessageRequest.build(input[:send_users_message_request]) unless input[:send_users_message_request].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for SendUsersMessageRequest
    class SendUsersMessageRequest
      def self.build(input)
        data = {}
        data['Context'] = Builders::MapOf__string.build(input[:context]) unless input[:context].nil?
        data['MessageConfiguration'] = Builders::DirectMessageConfiguration.build(input[:message_configuration]) unless input[:message_configuration].nil?
        data['TemplateConfiguration'] = Builders::TemplateConfiguration.build(input[:template_configuration]) unless input[:template_configuration].nil?
        data['TraceId'] = input[:trace_id] unless input[:trace_id].nil?
        data['Users'] = Builders::MapOfEndpointSendConfiguration.build(input[:users]) unless input[:users].nil?
        data
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/tags/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data = Builders::TagsModel.build(input[:tags_model]) unless input[:tags_model].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for TagsModel
    class TagsModel
      def self.build(input)
        data = {}
        data['tags'] = Builders::MapOf__string.build(input[:tags]) unless input[:tags].nil?
        data
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/tags/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        unless input[:tag_keys].nil? || input[:tag_keys].empty?
          params['tagKeys'] = input[:tag_keys].map do |value|
            value.to_s unless value.nil?
          end
        end
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for UpdateAdmChannel
    class UpdateAdmChannel
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apps/%<ApplicationId>s/channels/adm',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data = Builders::ADMChannelRequest.build(input[:adm_channel_request]) unless input[:adm_channel_request].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ADMChannelRequest
    class ADMChannelRequest
      def self.build(input)
        data = {}
        data['ClientId'] = input[:client_id] unless input[:client_id].nil?
        data['ClientSecret'] = input[:client_secret] unless input[:client_secret].nil?
        data['Enabled'] = input[:enabled] unless input[:enabled].nil?
        data
      end
    end

    # Operation Builder for UpdateApnsChannel
    class UpdateApnsChannel
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apps/%<ApplicationId>s/channels/apns',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data = Builders::APNSChannelRequest.build(input[:apns_channel_request]) unless input[:apns_channel_request].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for APNSChannelRequest
    class APNSChannelRequest
      def self.build(input)
        data = {}
        data['BundleId'] = input[:bundle_id] unless input[:bundle_id].nil?
        data['Certificate'] = input[:certificate] unless input[:certificate].nil?
        data['DefaultAuthenticationMethod'] = input[:default_authentication_method] unless input[:default_authentication_method].nil?
        data['Enabled'] = input[:enabled] unless input[:enabled].nil?
        data['PrivateKey'] = input[:private_key] unless input[:private_key].nil?
        data['TeamId'] = input[:team_id] unless input[:team_id].nil?
        data['TokenKey'] = input[:token_key] unless input[:token_key].nil?
        data['TokenKeyId'] = input[:token_key_id] unless input[:token_key_id].nil?
        data
      end
    end

    # Operation Builder for UpdateApnsSandboxChannel
    class UpdateApnsSandboxChannel
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apps/%<ApplicationId>s/channels/apns_sandbox',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data = Builders::APNSSandboxChannelRequest.build(input[:apns_sandbox_channel_request]) unless input[:apns_sandbox_channel_request].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for APNSSandboxChannelRequest
    class APNSSandboxChannelRequest
      def self.build(input)
        data = {}
        data['BundleId'] = input[:bundle_id] unless input[:bundle_id].nil?
        data['Certificate'] = input[:certificate] unless input[:certificate].nil?
        data['DefaultAuthenticationMethod'] = input[:default_authentication_method] unless input[:default_authentication_method].nil?
        data['Enabled'] = input[:enabled] unless input[:enabled].nil?
        data['PrivateKey'] = input[:private_key] unless input[:private_key].nil?
        data['TeamId'] = input[:team_id] unless input[:team_id].nil?
        data['TokenKey'] = input[:token_key] unless input[:token_key].nil?
        data['TokenKeyId'] = input[:token_key_id] unless input[:token_key_id].nil?
        data
      end
    end

    # Operation Builder for UpdateApnsVoipChannel
    class UpdateApnsVoipChannel
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apps/%<ApplicationId>s/channels/apns_voip',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data = Builders::APNSVoipChannelRequest.build(input[:apns_voip_channel_request]) unless input[:apns_voip_channel_request].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for APNSVoipChannelRequest
    class APNSVoipChannelRequest
      def self.build(input)
        data = {}
        data['BundleId'] = input[:bundle_id] unless input[:bundle_id].nil?
        data['Certificate'] = input[:certificate] unless input[:certificate].nil?
        data['DefaultAuthenticationMethod'] = input[:default_authentication_method] unless input[:default_authentication_method].nil?
        data['Enabled'] = input[:enabled] unless input[:enabled].nil?
        data['PrivateKey'] = input[:private_key] unless input[:private_key].nil?
        data['TeamId'] = input[:team_id] unless input[:team_id].nil?
        data['TokenKey'] = input[:token_key] unless input[:token_key].nil?
        data['TokenKeyId'] = input[:token_key_id] unless input[:token_key_id].nil?
        data
      end
    end

    # Operation Builder for UpdateApnsVoipSandboxChannel
    class UpdateApnsVoipSandboxChannel
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apps/%<ApplicationId>s/channels/apns_voip_sandbox',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data = Builders::APNSVoipSandboxChannelRequest.build(input[:apns_voip_sandbox_channel_request]) unless input[:apns_voip_sandbox_channel_request].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for APNSVoipSandboxChannelRequest
    class APNSVoipSandboxChannelRequest
      def self.build(input)
        data = {}
        data['BundleId'] = input[:bundle_id] unless input[:bundle_id].nil?
        data['Certificate'] = input[:certificate] unless input[:certificate].nil?
        data['DefaultAuthenticationMethod'] = input[:default_authentication_method] unless input[:default_authentication_method].nil?
        data['Enabled'] = input[:enabled] unless input[:enabled].nil?
        data['PrivateKey'] = input[:private_key] unless input[:private_key].nil?
        data['TeamId'] = input[:team_id] unless input[:team_id].nil?
        data['TokenKey'] = input[:token_key] unless input[:token_key].nil?
        data['TokenKeyId'] = input[:token_key_id] unless input[:token_key_id].nil?
        data
      end
    end

    # Operation Builder for UpdateApplicationSettings
    class UpdateApplicationSettings
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apps/%<ApplicationId>s/settings',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data = Builders::WriteApplicationSettingsRequest.build(input[:write_application_settings_request]) unless input[:write_application_settings_request].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for WriteApplicationSettingsRequest
    class WriteApplicationSettingsRequest
      def self.build(input)
        data = {}
        data['CampaignHook'] = Builders::CampaignHook.build(input[:campaign_hook]) unless input[:campaign_hook].nil?
        data['CloudWatchMetricsEnabled'] = input[:cloud_watch_metrics_enabled] unless input[:cloud_watch_metrics_enabled].nil?
        data['EventTaggingEnabled'] = input[:event_tagging_enabled] unless input[:event_tagging_enabled].nil?
        data['Limits'] = Builders::CampaignLimits.build(input[:limits]) unless input[:limits].nil?
        data['QuietTime'] = Builders::QuietTime.build(input[:quiet_time]) unless input[:quiet_time].nil?
        data
      end
    end

    # Operation Builder for UpdateBaiduChannel
    class UpdateBaiduChannel
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apps/%<ApplicationId>s/channels/baidu',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data = Builders::BaiduChannelRequest.build(input[:baidu_channel_request]) unless input[:baidu_channel_request].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for BaiduChannelRequest
    class BaiduChannelRequest
      def self.build(input)
        data = {}
        data['ApiKey'] = input[:api_key] unless input[:api_key].nil?
        data['Enabled'] = input[:enabled] unless input[:enabled].nil?
        data['SecretKey'] = input[:secret_key] unless input[:secret_key].nil?
        data
      end
    end

    # Operation Builder for UpdateCampaign
    class UpdateCampaign
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        if input[:campaign_id].to_s.empty?
          raise ArgumentError, "HTTP label :campaign_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apps/%<ApplicationId>s/campaigns/%<CampaignId>s',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s),
            CampaignId: Hearth::HTTP.uri_escape(input[:campaign_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data = Builders::WriteCampaignRequest.build(input[:write_campaign_request]) unless input[:write_campaign_request].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateEmailChannel
    class UpdateEmailChannel
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apps/%<ApplicationId>s/channels/email',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data = Builders::EmailChannelRequest.build(input[:email_channel_request]) unless input[:email_channel_request].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for EmailChannelRequest
    class EmailChannelRequest
      def self.build(input)
        data = {}
        data['ConfigurationSet'] = input[:configuration_set] unless input[:configuration_set].nil?
        data['Enabled'] = input[:enabled] unless input[:enabled].nil?
        data['FromAddress'] = input[:from_address] unless input[:from_address].nil?
        data['Identity'] = input[:identity] unless input[:identity].nil?
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data
      end
    end

    # Operation Builder for UpdateEmailTemplate
    class UpdateEmailTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:template_name].to_s.empty?
          raise ArgumentError, "HTTP label :template_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/templates/%<TemplateName>s/email',
            TemplateName: Hearth::HTTP.uri_escape(input[:template_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['create-new-version'] = input[:create_new_version].to_s unless input[:create_new_version].nil?
        params['version'] = input[:version].to_s unless input[:version].nil?
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data = Builders::EmailTemplateRequest.build(input[:email_template_request]) unless input[:email_template_request].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateEndpoint
    class UpdateEndpoint
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        if input[:endpoint_id].to_s.empty?
          raise ArgumentError, "HTTP label :endpoint_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apps/%<ApplicationId>s/endpoints/%<EndpointId>s',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s),
            EndpointId: Hearth::HTTP.uri_escape(input[:endpoint_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data = Builders::EndpointRequest.build(input[:endpoint_request]) unless input[:endpoint_request].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for EndpointRequest
    class EndpointRequest
      def self.build(input)
        data = {}
        data['Address'] = input[:address] unless input[:address].nil?
        data['Attributes'] = Builders::MapOfListOf__string.build(input[:attributes]) unless input[:attributes].nil?
        data['ChannelType'] = input[:channel_type] unless input[:channel_type].nil?
        data['Demographic'] = Builders::EndpointDemographic.build(input[:demographic]) unless input[:demographic].nil?
        data['EffectiveDate'] = input[:effective_date] unless input[:effective_date].nil?
        data['EndpointStatus'] = input[:endpoint_status] unless input[:endpoint_status].nil?
        data['Location'] = Builders::EndpointLocation.build(input[:location]) unless input[:location].nil?
        data['Metrics'] = Builders::MapOf__double.build(input[:metrics]) unless input[:metrics].nil?
        data['OptOut'] = input[:opt_out] unless input[:opt_out].nil?
        data['RequestId'] = input[:request_id] unless input[:request_id].nil?
        data['User'] = Builders::EndpointUser.build(input[:user]) unless input[:user].nil?
        data
      end
    end

    # Operation Builder for UpdateEndpointsBatch
    class UpdateEndpointsBatch
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apps/%<ApplicationId>s/endpoints',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data = Builders::EndpointBatchRequest.build(input[:endpoint_batch_request]) unless input[:endpoint_batch_request].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for EndpointBatchRequest
    class EndpointBatchRequest
      def self.build(input)
        data = {}
        data['Item'] = Builders::ListOfEndpointBatchItem.build(input[:item]) unless input[:item].nil?
        data
      end
    end

    # List Builder for ListOfEndpointBatchItem
    class ListOfEndpointBatchItem
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::EndpointBatchItem.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for EndpointBatchItem
    class EndpointBatchItem
      def self.build(input)
        data = {}
        data['Address'] = input[:address] unless input[:address].nil?
        data['Attributes'] = Builders::MapOfListOf__string.build(input[:attributes]) unless input[:attributes].nil?
        data['ChannelType'] = input[:channel_type] unless input[:channel_type].nil?
        data['Demographic'] = Builders::EndpointDemographic.build(input[:demographic]) unless input[:demographic].nil?
        data['EffectiveDate'] = input[:effective_date] unless input[:effective_date].nil?
        data['EndpointStatus'] = input[:endpoint_status] unless input[:endpoint_status].nil?
        data['Id'] = input[:id] unless input[:id].nil?
        data['Location'] = Builders::EndpointLocation.build(input[:location]) unless input[:location].nil?
        data['Metrics'] = Builders::MapOf__double.build(input[:metrics]) unless input[:metrics].nil?
        data['OptOut'] = input[:opt_out] unless input[:opt_out].nil?
        data['RequestId'] = input[:request_id] unless input[:request_id].nil?
        data['User'] = Builders::EndpointUser.build(input[:user]) unless input[:user].nil?
        data
      end
    end

    # Operation Builder for UpdateGcmChannel
    class UpdateGcmChannel
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apps/%<ApplicationId>s/channels/gcm',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data = Builders::GCMChannelRequest.build(input[:gcm_channel_request]) unless input[:gcm_channel_request].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for GCMChannelRequest
    class GCMChannelRequest
      def self.build(input)
        data = {}
        data['ApiKey'] = input[:api_key] unless input[:api_key].nil?
        data['Enabled'] = input[:enabled] unless input[:enabled].nil?
        data
      end
    end

    # Operation Builder for UpdateInAppTemplate
    class UpdateInAppTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:template_name].to_s.empty?
          raise ArgumentError, "HTTP label :template_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/templates/%<TemplateName>s/inapp',
            TemplateName: Hearth::HTTP.uri_escape(input[:template_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['create-new-version'] = input[:create_new_version].to_s unless input[:create_new_version].nil?
        params['version'] = input[:version].to_s unless input[:version].nil?
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data = Builders::InAppTemplateRequest.build(input[:in_app_template_request]) unless input[:in_app_template_request].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateJourney
    class UpdateJourney
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        if input[:journey_id].to_s.empty?
          raise ArgumentError, "HTTP label :journey_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apps/%<ApplicationId>s/journeys/%<JourneyId>s',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s),
            JourneyId: Hearth::HTTP.uri_escape(input[:journey_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data = Builders::WriteJourneyRequest.build(input[:write_journey_request]) unless input[:write_journey_request].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateJourneyState
    class UpdateJourneyState
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        if input[:journey_id].to_s.empty?
          raise ArgumentError, "HTTP label :journey_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apps/%<ApplicationId>s/journeys/%<JourneyId>s/state',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s),
            JourneyId: Hearth::HTTP.uri_escape(input[:journey_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data = Builders::JourneyStateRequest.build(input[:journey_state_request]) unless input[:journey_state_request].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for JourneyStateRequest
    class JourneyStateRequest
      def self.build(input)
        data = {}
        data['State'] = input[:state] unless input[:state].nil?
        data
      end
    end

    # Operation Builder for UpdatePushTemplate
    class UpdatePushTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:template_name].to_s.empty?
          raise ArgumentError, "HTTP label :template_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/templates/%<TemplateName>s/push',
            TemplateName: Hearth::HTTP.uri_escape(input[:template_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['create-new-version'] = input[:create_new_version].to_s unless input[:create_new_version].nil?
        params['version'] = input[:version].to_s unless input[:version].nil?
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data = Builders::PushNotificationTemplateRequest.build(input[:push_notification_template_request]) unless input[:push_notification_template_request].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateRecommenderConfiguration
    class UpdateRecommenderConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:recommender_id].to_s.empty?
          raise ArgumentError, "HTTP label :recommender_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/recommenders/%<RecommenderId>s',
            RecommenderId: Hearth::HTTP.uri_escape(input[:recommender_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data = Builders::UpdateRecommenderConfigurationShape.build(input[:update_recommender_configuration]) unless input[:update_recommender_configuration].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for UpdateRecommenderConfigurationShape
    class UpdateRecommenderConfigurationShape
      def self.build(input)
        data = {}
        data['Attributes'] = Builders::MapOf__string.build(input[:attributes]) unless input[:attributes].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['RecommendationProviderIdType'] = input[:recommendation_provider_id_type] unless input[:recommendation_provider_id_type].nil?
        data['RecommendationProviderRoleArn'] = input[:recommendation_provider_role_arn] unless input[:recommendation_provider_role_arn].nil?
        data['RecommendationProviderUri'] = input[:recommendation_provider_uri] unless input[:recommendation_provider_uri].nil?
        data['RecommendationTransformerUri'] = input[:recommendation_transformer_uri] unless input[:recommendation_transformer_uri].nil?
        data['RecommendationsDisplayName'] = input[:recommendations_display_name] unless input[:recommendations_display_name].nil?
        data['RecommendationsPerMessage'] = input[:recommendations_per_message] unless input[:recommendations_per_message].nil?
        data
      end
    end

    # Operation Builder for UpdateSegment
    class UpdateSegment
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        if input[:segment_id].to_s.empty?
          raise ArgumentError, "HTTP label :segment_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apps/%<ApplicationId>s/segments/%<SegmentId>s',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s),
            SegmentId: Hearth::HTTP.uri_escape(input[:segment_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data = Builders::WriteSegmentRequest.build(input[:write_segment_request]) unless input[:write_segment_request].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateSmsChannel
    class UpdateSmsChannel
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apps/%<ApplicationId>s/channels/sms',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data = Builders::SMSChannelRequest.build(input[:sms_channel_request]) unless input[:sms_channel_request].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for SMSChannelRequest
    class SMSChannelRequest
      def self.build(input)
        data = {}
        data['Enabled'] = input[:enabled] unless input[:enabled].nil?
        data['SenderId'] = input[:sender_id] unless input[:sender_id].nil?
        data['ShortCode'] = input[:short_code] unless input[:short_code].nil?
        data
      end
    end

    # Operation Builder for UpdateSmsTemplate
    class UpdateSmsTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:template_name].to_s.empty?
          raise ArgumentError, "HTTP label :template_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/templates/%<TemplateName>s/sms',
            TemplateName: Hearth::HTTP.uri_escape(input[:template_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['create-new-version'] = input[:create_new_version].to_s unless input[:create_new_version].nil?
        params['version'] = input[:version].to_s unless input[:version].nil?
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data = Builders::SMSTemplateRequest.build(input[:sms_template_request]) unless input[:sms_template_request].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateTemplateActiveVersion
    class UpdateTemplateActiveVersion
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:template_name].to_s.empty?
          raise ArgumentError, "HTTP label :template_name cannot be nil or empty."
        end
        if input[:template_type].to_s.empty?
          raise ArgumentError, "HTTP label :template_type cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/templates/%<TemplateName>s/%<TemplateType>s/active-version',
            TemplateName: Hearth::HTTP.uri_escape(input[:template_name].to_s),
            TemplateType: Hearth::HTTP.uri_escape(input[:template_type].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data = Builders::TemplateActiveVersionRequest.build(input[:template_active_version_request]) unless input[:template_active_version_request].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for TemplateActiveVersionRequest
    class TemplateActiveVersionRequest
      def self.build(input)
        data = {}
        data['Version'] = input[:version] unless input[:version].nil?
        data
      end
    end

    # Operation Builder for UpdateVoiceChannel
    class UpdateVoiceChannel
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apps/%<ApplicationId>s/channels/voice',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data = Builders::VoiceChannelRequest.build(input[:voice_channel_request]) unless input[:voice_channel_request].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for VoiceChannelRequest
    class VoiceChannelRequest
      def self.build(input)
        data = {}
        data['Enabled'] = input[:enabled] unless input[:enabled].nil?
        data
      end
    end

    # Operation Builder for UpdateVoiceTemplate
    class UpdateVoiceTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:template_name].to_s.empty?
          raise ArgumentError, "HTTP label :template_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/templates/%<TemplateName>s/voice',
            TemplateName: Hearth::HTTP.uri_escape(input[:template_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['create-new-version'] = input[:create_new_version].to_s unless input[:create_new_version].nil?
        params['version'] = input[:version].to_s unless input[:version].nil?
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data = Builders::VoiceTemplateRequest.build(input[:voice_template_request]) unless input[:voice_template_request].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for VerifyOTPMessage
    class VerifyOTPMessage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apps/%<ApplicationId>s/verify-otp',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data = Builders::VerifyOTPMessageRequestParameters.build(input[:verify_otp_message_request_parameters]) unless input[:verify_otp_message_request_parameters].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for VerifyOTPMessageRequestParameters
    class VerifyOTPMessageRequestParameters
      def self.build(input)
        data = {}
        data['DestinationIdentity'] = input[:destination_identity] unless input[:destination_identity].nil?
        data['Otp'] = input[:otp] unless input[:otp].nil?
        data['ReferenceId'] = input[:reference_id] unless input[:reference_id].nil?
        data
      end
    end
  end
end
