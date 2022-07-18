# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Pinpoint
  module Params

    module ADMChannelRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ADMChannelRequest, context: context)
        type = Types::ADMChannelRequest.new
        type.client_id = params[:client_id]
        type.client_secret = params[:client_secret]
        type.enabled = params[:enabled]
        type
      end
    end

    module ADMChannelResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ADMChannelResponse, context: context)
        type = Types::ADMChannelResponse.new
        type.application_id = params[:application_id]
        type.creation_date = params[:creation_date]
        type.enabled = params[:enabled]
        type.has_credential = params[:has_credential]
        type.id = params[:id]
        type.is_archived = params[:is_archived]
        type.last_modified_by = params[:last_modified_by]
        type.last_modified_date = params[:last_modified_date]
        type.platform = params[:platform]
        type.version = params[:version]
        type
      end
    end

    module ADMMessage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ADMMessage, context: context)
        type = Types::ADMMessage.new
        type.action = params[:action]
        type.body = params[:body]
        type.consolidation_key = params[:consolidation_key]
        type.data = MapOf__string.build(params[:data], context: "#{context}[:data]") unless params[:data].nil?
        type.expires_after = params[:expires_after]
        type.icon_reference = params[:icon_reference]
        type.image_icon_url = params[:image_icon_url]
        type.image_url = params[:image_url]
        type.md5 = params[:md5]
        type.raw_content = params[:raw_content]
        type.silent_push = params[:silent_push]
        type.small_image_icon_url = params[:small_image_icon_url]
        type.sound = params[:sound]
        type.substitutions = MapOfListOf__string.build(params[:substitutions], context: "#{context}[:substitutions]") unless params[:substitutions].nil?
        type.title = params[:title]
        type.url = params[:url]
        type
      end
    end

    module APNSChannelRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::APNSChannelRequest, context: context)
        type = Types::APNSChannelRequest.new
        type.bundle_id = params[:bundle_id]
        type.certificate = params[:certificate]
        type.default_authentication_method = params[:default_authentication_method]
        type.enabled = params[:enabled]
        type.private_key = params[:private_key]
        type.team_id = params[:team_id]
        type.token_key = params[:token_key]
        type.token_key_id = params[:token_key_id]
        type
      end
    end

    module APNSChannelResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::APNSChannelResponse, context: context)
        type = Types::APNSChannelResponse.new
        type.application_id = params[:application_id]
        type.creation_date = params[:creation_date]
        type.default_authentication_method = params[:default_authentication_method]
        type.enabled = params[:enabled]
        type.has_credential = params[:has_credential]
        type.has_token_key = params[:has_token_key]
        type.id = params[:id]
        type.is_archived = params[:is_archived]
        type.last_modified_by = params[:last_modified_by]
        type.last_modified_date = params[:last_modified_date]
        type.platform = params[:platform]
        type.version = params[:version]
        type
      end
    end

    module APNSMessage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::APNSMessage, context: context)
        type = Types::APNSMessage.new
        type.apns_push_type = params[:apns_push_type]
        type.action = params[:action]
        type.badge = params[:badge]
        type.body = params[:body]
        type.category = params[:category]
        type.collapse_id = params[:collapse_id]
        type.data = MapOf__string.build(params[:data], context: "#{context}[:data]") unless params[:data].nil?
        type.media_url = params[:media_url]
        type.preferred_authentication_method = params[:preferred_authentication_method]
        type.priority = params[:priority]
        type.raw_content = params[:raw_content]
        type.silent_push = params[:silent_push]
        type.sound = params[:sound]
        type.substitutions = MapOfListOf__string.build(params[:substitutions], context: "#{context}[:substitutions]") unless params[:substitutions].nil?
        type.thread_id = params[:thread_id]
        type.time_to_live = params[:time_to_live]
        type.title = params[:title]
        type.url = params[:url]
        type
      end
    end

    module APNSPushNotificationTemplate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::APNSPushNotificationTemplate, context: context)
        type = Types::APNSPushNotificationTemplate.new
        type.action = params[:action]
        type.body = params[:body]
        type.media_url = params[:media_url]
        type.raw_content = params[:raw_content]
        type.sound = params[:sound]
        type.title = params[:title]
        type.url = params[:url]
        type
      end
    end

    module APNSSandboxChannelRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::APNSSandboxChannelRequest, context: context)
        type = Types::APNSSandboxChannelRequest.new
        type.bundle_id = params[:bundle_id]
        type.certificate = params[:certificate]
        type.default_authentication_method = params[:default_authentication_method]
        type.enabled = params[:enabled]
        type.private_key = params[:private_key]
        type.team_id = params[:team_id]
        type.token_key = params[:token_key]
        type.token_key_id = params[:token_key_id]
        type
      end
    end

    module APNSSandboxChannelResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::APNSSandboxChannelResponse, context: context)
        type = Types::APNSSandboxChannelResponse.new
        type.application_id = params[:application_id]
        type.creation_date = params[:creation_date]
        type.default_authentication_method = params[:default_authentication_method]
        type.enabled = params[:enabled]
        type.has_credential = params[:has_credential]
        type.has_token_key = params[:has_token_key]
        type.id = params[:id]
        type.is_archived = params[:is_archived]
        type.last_modified_by = params[:last_modified_by]
        type.last_modified_date = params[:last_modified_date]
        type.platform = params[:platform]
        type.version = params[:version]
        type
      end
    end

    module APNSVoipChannelRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::APNSVoipChannelRequest, context: context)
        type = Types::APNSVoipChannelRequest.new
        type.bundle_id = params[:bundle_id]
        type.certificate = params[:certificate]
        type.default_authentication_method = params[:default_authentication_method]
        type.enabled = params[:enabled]
        type.private_key = params[:private_key]
        type.team_id = params[:team_id]
        type.token_key = params[:token_key]
        type.token_key_id = params[:token_key_id]
        type
      end
    end

    module APNSVoipChannelResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::APNSVoipChannelResponse, context: context)
        type = Types::APNSVoipChannelResponse.new
        type.application_id = params[:application_id]
        type.creation_date = params[:creation_date]
        type.default_authentication_method = params[:default_authentication_method]
        type.enabled = params[:enabled]
        type.has_credential = params[:has_credential]
        type.has_token_key = params[:has_token_key]
        type.id = params[:id]
        type.is_archived = params[:is_archived]
        type.last_modified_by = params[:last_modified_by]
        type.last_modified_date = params[:last_modified_date]
        type.platform = params[:platform]
        type.version = params[:version]
        type
      end
    end

    module APNSVoipSandboxChannelRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::APNSVoipSandboxChannelRequest, context: context)
        type = Types::APNSVoipSandboxChannelRequest.new
        type.bundle_id = params[:bundle_id]
        type.certificate = params[:certificate]
        type.default_authentication_method = params[:default_authentication_method]
        type.enabled = params[:enabled]
        type.private_key = params[:private_key]
        type.team_id = params[:team_id]
        type.token_key = params[:token_key]
        type.token_key_id = params[:token_key_id]
        type
      end
    end

    module APNSVoipSandboxChannelResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::APNSVoipSandboxChannelResponse, context: context)
        type = Types::APNSVoipSandboxChannelResponse.new
        type.application_id = params[:application_id]
        type.creation_date = params[:creation_date]
        type.default_authentication_method = params[:default_authentication_method]
        type.enabled = params[:enabled]
        type.has_credential = params[:has_credential]
        type.has_token_key = params[:has_token_key]
        type.id = params[:id]
        type.is_archived = params[:is_archived]
        type.last_modified_by = params[:last_modified_by]
        type.last_modified_date = params[:last_modified_date]
        type.platform = params[:platform]
        type.version = params[:version]
        type
      end
    end

    module ActivitiesResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActivitiesResponse, context: context)
        type = Types::ActivitiesResponse.new
        type.item = ListOfActivityResponse.build(params[:item], context: "#{context}[:item]") unless params[:item].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module Activity
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Activity, context: context)
        type = Types::Activity.new
        type.custom = CustomMessageActivity.build(params[:custom], context: "#{context}[:custom]") unless params[:custom].nil?
        type.conditional_split = ConditionalSplitActivity.build(params[:conditional_split], context: "#{context}[:conditional_split]") unless params[:conditional_split].nil?
        type.description = params[:description]
        type.email = EmailMessageActivity.build(params[:email], context: "#{context}[:email]") unless params[:email].nil?
        type.holdout = HoldoutActivity.build(params[:holdout], context: "#{context}[:holdout]") unless params[:holdout].nil?
        type.multi_condition = MultiConditionalSplitActivity.build(params[:multi_condition], context: "#{context}[:multi_condition]") unless params[:multi_condition].nil?
        type.push = PushMessageActivity.build(params[:push], context: "#{context}[:push]") unless params[:push].nil?
        type.random_split = RandomSplitActivity.build(params[:random_split], context: "#{context}[:random_split]") unless params[:random_split].nil?
        type.sms = SMSMessageActivity.build(params[:sms], context: "#{context}[:sms]") unless params[:sms].nil?
        type.wait = WaitActivity.build(params[:wait], context: "#{context}[:wait]") unless params[:wait].nil?
        type.contact_center = ContactCenterActivity.build(params[:contact_center], context: "#{context}[:contact_center]") unless params[:contact_center].nil?
        type
      end
    end

    module ActivityResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActivityResponse, context: context)
        type = Types::ActivityResponse.new
        type.application_id = params[:application_id]
        type.campaign_id = params[:campaign_id]
        type.end = params[:end]
        type.id = params[:id]
        type.result = params[:result]
        type.scheduled_start = params[:scheduled_start]
        type.start = params[:start]
        type.state = params[:state]
        type.successful_endpoint_count = params[:successful_endpoint_count]
        type.timezones_completed_count = params[:timezones_completed_count]
        type.timezones_total_count = params[:timezones_total_count]
        type.total_endpoint_count = params[:total_endpoint_count]
        type.treatment_id = params[:treatment_id]
        type
      end
    end

    module AddressConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddressConfiguration, context: context)
        type = Types::AddressConfiguration.new
        type.body_override = params[:body_override]
        type.channel_type = params[:channel_type]
        type.context = MapOf__string.build(params[:context], context: "#{context}[:context]") unless params[:context].nil?
        type.raw_content = params[:raw_content]
        type.substitutions = MapOfListOf__string.build(params[:substitutions], context: "#{context}[:substitutions]") unless params[:substitutions].nil?
        type.title_override = params[:title_override]
        type
      end
    end

    module AndroidPushNotificationTemplate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AndroidPushNotificationTemplate, context: context)
        type = Types::AndroidPushNotificationTemplate.new
        type.action = params[:action]
        type.body = params[:body]
        type.image_icon_url = params[:image_icon_url]
        type.image_url = params[:image_url]
        type.raw_content = params[:raw_content]
        type.small_image_icon_url = params[:small_image_icon_url]
        type.sound = params[:sound]
        type.title = params[:title]
        type.url = params[:url]
        type
      end
    end

    module ApplicationDateRangeKpiResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApplicationDateRangeKpiResponse, context: context)
        type = Types::ApplicationDateRangeKpiResponse.new
        type.application_id = params[:application_id]
        type.end_time = params[:end_time]
        type.kpi_name = params[:kpi_name]
        type.kpi_result = BaseKpiResult.build(params[:kpi_result], context: "#{context}[:kpi_result]") unless params[:kpi_result].nil?
        type.next_token = params[:next_token]
        type.start_time = params[:start_time]
        type
      end
    end

    module ApplicationResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApplicationResponse, context: context)
        type = Types::ApplicationResponse.new
        type.arn = params[:arn]
        type.id = params[:id]
        type.name = params[:name]
        type.tags = MapOf__string.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.creation_date = params[:creation_date]
        type
      end
    end

    module ApplicationSettingsResource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApplicationSettingsResource, context: context)
        type = Types::ApplicationSettingsResource.new
        type.application_id = params[:application_id]
        type.campaign_hook = CampaignHook.build(params[:campaign_hook], context: "#{context}[:campaign_hook]") unless params[:campaign_hook].nil?
        type.last_modified_date = params[:last_modified_date]
        type.limits = CampaignLimits.build(params[:limits], context: "#{context}[:limits]") unless params[:limits].nil?
        type.quiet_time = QuietTime.build(params[:quiet_time], context: "#{context}[:quiet_time]") unless params[:quiet_time].nil?
        type
      end
    end

    module ApplicationsResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApplicationsResponse, context: context)
        type = Types::ApplicationsResponse.new
        type.item = ListOfApplicationResponse.build(params[:item], context: "#{context}[:item]") unless params[:item].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module AttributeDimension
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttributeDimension, context: context)
        type = Types::AttributeDimension.new
        type.attribute_type = params[:attribute_type]
        type.values = ListOf__string.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module AttributesResource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttributesResource, context: context)
        type = Types::AttributesResource.new
        type.application_id = params[:application_id]
        type.attribute_type = params[:attribute_type]
        type.attributes = ListOf__string.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type
      end
    end

    module BadRequestException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BadRequestException, context: context)
        type = Types::BadRequestException.new
        type.message = params[:message]
        type.request_id = params[:request_id]
        type
      end
    end

    module BaiduChannelRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BaiduChannelRequest, context: context)
        type = Types::BaiduChannelRequest.new
        type.api_key = params[:api_key]
        type.enabled = params[:enabled]
        type.secret_key = params[:secret_key]
        type
      end
    end

    module BaiduChannelResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BaiduChannelResponse, context: context)
        type = Types::BaiduChannelResponse.new
        type.application_id = params[:application_id]
        type.creation_date = params[:creation_date]
        type.credential = params[:credential]
        type.enabled = params[:enabled]
        type.has_credential = params[:has_credential]
        type.id = params[:id]
        type.is_archived = params[:is_archived]
        type.last_modified_by = params[:last_modified_by]
        type.last_modified_date = params[:last_modified_date]
        type.platform = params[:platform]
        type.version = params[:version]
        type
      end
    end

    module BaiduMessage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BaiduMessage, context: context)
        type = Types::BaiduMessage.new
        type.action = params[:action]
        type.body = params[:body]
        type.data = MapOf__string.build(params[:data], context: "#{context}[:data]") unless params[:data].nil?
        type.icon_reference = params[:icon_reference]
        type.image_icon_url = params[:image_icon_url]
        type.image_url = params[:image_url]
        type.raw_content = params[:raw_content]
        type.silent_push = params[:silent_push]
        type.small_image_icon_url = params[:small_image_icon_url]
        type.sound = params[:sound]
        type.substitutions = MapOfListOf__string.build(params[:substitutions], context: "#{context}[:substitutions]") unless params[:substitutions].nil?
        type.time_to_live = params[:time_to_live]
        type.title = params[:title]
        type.url = params[:url]
        type
      end
    end

    module BaseKpiResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BaseKpiResult, context: context)
        type = Types::BaseKpiResult.new
        type.rows = ListOfResultRow.build(params[:rows], context: "#{context}[:rows]") unless params[:rows].nil?
        type
      end
    end

    module CampaignCustomMessage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CampaignCustomMessage, context: context)
        type = Types::CampaignCustomMessage.new
        type.data = params[:data]
        type
      end
    end

    module CampaignDateRangeKpiResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CampaignDateRangeKpiResponse, context: context)
        type = Types::CampaignDateRangeKpiResponse.new
        type.application_id = params[:application_id]
        type.campaign_id = params[:campaign_id]
        type.end_time = params[:end_time]
        type.kpi_name = params[:kpi_name]
        type.kpi_result = BaseKpiResult.build(params[:kpi_result], context: "#{context}[:kpi_result]") unless params[:kpi_result].nil?
        type.next_token = params[:next_token]
        type.start_time = params[:start_time]
        type
      end
    end

    module CampaignEmailMessage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CampaignEmailMessage, context: context)
        type = Types::CampaignEmailMessage.new
        type.body = params[:body]
        type.from_address = params[:from_address]
        type.html_body = params[:html_body]
        type.title = params[:title]
        type
      end
    end

    module CampaignEventFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CampaignEventFilter, context: context)
        type = Types::CampaignEventFilter.new
        type.dimensions = EventDimensions.build(params[:dimensions], context: "#{context}[:dimensions]") unless params[:dimensions].nil?
        type.filter_type = params[:filter_type]
        type
      end
    end

    module CampaignHook
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CampaignHook, context: context)
        type = Types::CampaignHook.new
        type.lambda_function_name = params[:lambda_function_name]
        type.mode = params[:mode]
        type.web_url = params[:web_url]
        type
      end
    end

    module CampaignInAppMessage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CampaignInAppMessage, context: context)
        type = Types::CampaignInAppMessage.new
        type.body = params[:body]
        type.content = ListOfInAppMessageContent.build(params[:content], context: "#{context}[:content]") unless params[:content].nil?
        type.custom_config = MapOf__string.build(params[:custom_config], context: "#{context}[:custom_config]") unless params[:custom_config].nil?
        type.layout = params[:layout]
        type
      end
    end

    module CampaignLimits
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CampaignLimits, context: context)
        type = Types::CampaignLimits.new
        type.daily = params[:daily]
        type.maximum_duration = params[:maximum_duration]
        type.messages_per_second = params[:messages_per_second]
        type.total = params[:total]
        type.session = params[:session]
        type
      end
    end

    module CampaignResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CampaignResponse, context: context)
        type = Types::CampaignResponse.new
        type.additional_treatments = ListOfTreatmentResource.build(params[:additional_treatments], context: "#{context}[:additional_treatments]") unless params[:additional_treatments].nil?
        type.application_id = params[:application_id]
        type.arn = params[:arn]
        type.creation_date = params[:creation_date]
        type.custom_delivery_configuration = CustomDeliveryConfiguration.build(params[:custom_delivery_configuration], context: "#{context}[:custom_delivery_configuration]") unless params[:custom_delivery_configuration].nil?
        type.default_state = CampaignState.build(params[:default_state], context: "#{context}[:default_state]") unless params[:default_state].nil?
        type.description = params[:description]
        type.holdout_percent = params[:holdout_percent]
        type.hook = CampaignHook.build(params[:hook], context: "#{context}[:hook]") unless params[:hook].nil?
        type.id = params[:id]
        type.is_paused = params[:is_paused]
        type.last_modified_date = params[:last_modified_date]
        type.limits = CampaignLimits.build(params[:limits], context: "#{context}[:limits]") unless params[:limits].nil?
        type.message_configuration = MessageConfiguration.build(params[:message_configuration], context: "#{context}[:message_configuration]") unless params[:message_configuration].nil?
        type.name = params[:name]
        type.schedule = Schedule.build(params[:schedule], context: "#{context}[:schedule]") unless params[:schedule].nil?
        type.segment_id = params[:segment_id]
        type.segment_version = params[:segment_version]
        type.state = CampaignState.build(params[:state], context: "#{context}[:state]") unless params[:state].nil?
        type.tags = MapOf__string.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.template_configuration = TemplateConfiguration.build(params[:template_configuration], context: "#{context}[:template_configuration]") unless params[:template_configuration].nil?
        type.treatment_description = params[:treatment_description]
        type.treatment_name = params[:treatment_name]
        type.version = params[:version]
        type.priority = params[:priority]
        type
      end
    end

    module CampaignSmsMessage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CampaignSmsMessage, context: context)
        type = Types::CampaignSmsMessage.new
        type.body = params[:body]
        type.message_type = params[:message_type]
        type.origination_number = params[:origination_number]
        type.sender_id = params[:sender_id]
        type.entity_id = params[:entity_id]
        type.template_id = params[:template_id]
        type
      end
    end

    module CampaignState
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CampaignState, context: context)
        type = Types::CampaignState.new
        type.campaign_status = params[:campaign_status]
        type
      end
    end

    module CampaignsResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CampaignsResponse, context: context)
        type = Types::CampaignsResponse.new
        type.item = ListOfCampaignResponse.build(params[:item], context: "#{context}[:item]") unless params[:item].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ChannelResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ChannelResponse, context: context)
        type = Types::ChannelResponse.new
        type.application_id = params[:application_id]
        type.creation_date = params[:creation_date]
        type.enabled = params[:enabled]
        type.has_credential = params[:has_credential]
        type.id = params[:id]
        type.is_archived = params[:is_archived]
        type.last_modified_by = params[:last_modified_by]
        type.last_modified_date = params[:last_modified_date]
        type.version = params[:version]
        type
      end
    end

    module ChannelsResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ChannelsResponse, context: context)
        type = Types::ChannelsResponse.new
        type.channels = MapOfChannelResponse.build(params[:channels], context: "#{context}[:channels]") unless params[:channels].nil?
        type
      end
    end

    module Condition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Condition, context: context)
        type = Types::Condition.new
        type.conditions = ListOfSimpleCondition.build(params[:conditions], context: "#{context}[:conditions]") unless params[:conditions].nil?
        type.operator = params[:operator]
        type
      end
    end

    module ConditionalSplitActivity
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConditionalSplitActivity, context: context)
        type = Types::ConditionalSplitActivity.new
        type.condition = Condition.build(params[:condition], context: "#{context}[:condition]") unless params[:condition].nil?
        type.evaluation_wait_time = WaitTime.build(params[:evaluation_wait_time], context: "#{context}[:evaluation_wait_time]") unless params[:evaluation_wait_time].nil?
        type.false_activity = params[:false_activity]
        type.true_activity = params[:true_activity]
        type
      end
    end

    module ConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictException, context: context)
        type = Types::ConflictException.new
        type.message = params[:message]
        type.request_id = params[:request_id]
        type
      end
    end

    module ContactCenterActivity
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ContactCenterActivity, context: context)
        type = Types::ContactCenterActivity.new
        type.next_activity = params[:next_activity]
        type
      end
    end

    module CreateAppInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAppInput, context: context)
        type = Types::CreateAppInput.new
        type.create_application_request = CreateApplicationRequest.build(params[:create_application_request], context: "#{context}[:create_application_request]") unless params[:create_application_request].nil?
        type
      end
    end

    module CreateAppOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAppOutput, context: context)
        type = Types::CreateAppOutput.new
        type.application_response = ApplicationResponse.build(params[:application_response], context: "#{context}[:application_response]") unless params[:application_response].nil?
        type
      end
    end

    module CreateApplicationRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateApplicationRequest, context: context)
        type = Types::CreateApplicationRequest.new
        type.name = params[:name]
        type.tags = MapOf__string.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateCampaignInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCampaignInput, context: context)
        type = Types::CreateCampaignInput.new
        type.application_id = params[:application_id]
        type.write_campaign_request = WriteCampaignRequest.build(params[:write_campaign_request], context: "#{context}[:write_campaign_request]") unless params[:write_campaign_request].nil?
        type
      end
    end

    module CreateCampaignOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCampaignOutput, context: context)
        type = Types::CreateCampaignOutput.new
        type.campaign_response = CampaignResponse.build(params[:campaign_response], context: "#{context}[:campaign_response]") unless params[:campaign_response].nil?
        type
      end
    end

    module CreateEmailTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateEmailTemplateInput, context: context)
        type = Types::CreateEmailTemplateInput.new
        type.email_template_request = EmailTemplateRequest.build(params[:email_template_request], context: "#{context}[:email_template_request]") unless params[:email_template_request].nil?
        type.template_name = params[:template_name]
        type
      end
    end

    module CreateEmailTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateEmailTemplateOutput, context: context)
        type = Types::CreateEmailTemplateOutput.new
        type.create_template_message_body = CreateTemplateMessageBody.build(params[:create_template_message_body], context: "#{context}[:create_template_message_body]") unless params[:create_template_message_body].nil?
        type
      end
    end

    module CreateExportJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateExportJobInput, context: context)
        type = Types::CreateExportJobInput.new
        type.application_id = params[:application_id]
        type.export_job_request = ExportJobRequest.build(params[:export_job_request], context: "#{context}[:export_job_request]") unless params[:export_job_request].nil?
        type
      end
    end

    module CreateExportJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateExportJobOutput, context: context)
        type = Types::CreateExportJobOutput.new
        type.export_job_response = ExportJobResponse.build(params[:export_job_response], context: "#{context}[:export_job_response]") unless params[:export_job_response].nil?
        type
      end
    end

    module CreateImportJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateImportJobInput, context: context)
        type = Types::CreateImportJobInput.new
        type.application_id = params[:application_id]
        type.import_job_request = ImportJobRequest.build(params[:import_job_request], context: "#{context}[:import_job_request]") unless params[:import_job_request].nil?
        type
      end
    end

    module CreateImportJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateImportJobOutput, context: context)
        type = Types::CreateImportJobOutput.new
        type.import_job_response = ImportJobResponse.build(params[:import_job_response], context: "#{context}[:import_job_response]") unless params[:import_job_response].nil?
        type
      end
    end

    module CreateInAppTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateInAppTemplateInput, context: context)
        type = Types::CreateInAppTemplateInput.new
        type.in_app_template_request = InAppTemplateRequest.build(params[:in_app_template_request], context: "#{context}[:in_app_template_request]") unless params[:in_app_template_request].nil?
        type.template_name = params[:template_name]
        type
      end
    end

    module CreateInAppTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateInAppTemplateOutput, context: context)
        type = Types::CreateInAppTemplateOutput.new
        type.template_create_message_body = TemplateCreateMessageBody.build(params[:template_create_message_body], context: "#{context}[:template_create_message_body]") unless params[:template_create_message_body].nil?
        type
      end
    end

    module CreateJourneyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateJourneyInput, context: context)
        type = Types::CreateJourneyInput.new
        type.application_id = params[:application_id]
        type.write_journey_request = WriteJourneyRequest.build(params[:write_journey_request], context: "#{context}[:write_journey_request]") unless params[:write_journey_request].nil?
        type
      end
    end

    module CreateJourneyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateJourneyOutput, context: context)
        type = Types::CreateJourneyOutput.new
        type.journey_response = JourneyResponse.build(params[:journey_response], context: "#{context}[:journey_response]") unless params[:journey_response].nil?
        type
      end
    end

    module CreatePushTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePushTemplateInput, context: context)
        type = Types::CreatePushTemplateInput.new
        type.push_notification_template_request = PushNotificationTemplateRequest.build(params[:push_notification_template_request], context: "#{context}[:push_notification_template_request]") unless params[:push_notification_template_request].nil?
        type.template_name = params[:template_name]
        type
      end
    end

    module CreatePushTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePushTemplateOutput, context: context)
        type = Types::CreatePushTemplateOutput.new
        type.create_template_message_body = CreateTemplateMessageBody.build(params[:create_template_message_body], context: "#{context}[:create_template_message_body]") unless params[:create_template_message_body].nil?
        type
      end
    end

    module CreateRecommenderConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRecommenderConfigurationInput, context: context)
        type = Types::CreateRecommenderConfigurationInput.new
        type.create_recommender_configuration = CreateRecommenderConfigurationShape.build(params[:create_recommender_configuration], context: "#{context}[:create_recommender_configuration]") unless params[:create_recommender_configuration].nil?
        type
      end
    end

    module CreateRecommenderConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRecommenderConfigurationOutput, context: context)
        type = Types::CreateRecommenderConfigurationOutput.new
        type.recommender_configuration_response = RecommenderConfigurationResponse.build(params[:recommender_configuration_response], context: "#{context}[:recommender_configuration_response]") unless params[:recommender_configuration_response].nil?
        type
      end
    end

    module CreateRecommenderConfigurationShape
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRecommenderConfigurationShape, context: context)
        type = Types::CreateRecommenderConfigurationShape.new
        type.attributes = MapOf__string.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type.description = params[:description]
        type.name = params[:name]
        type.recommendation_provider_id_type = params[:recommendation_provider_id_type]
        type.recommendation_provider_role_arn = params[:recommendation_provider_role_arn]
        type.recommendation_provider_uri = params[:recommendation_provider_uri]
        type.recommendation_transformer_uri = params[:recommendation_transformer_uri]
        type.recommendations_display_name = params[:recommendations_display_name]
        type.recommendations_per_message = params[:recommendations_per_message]
        type
      end
    end

    module CreateSegmentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSegmentInput, context: context)
        type = Types::CreateSegmentInput.new
        type.application_id = params[:application_id]
        type.write_segment_request = WriteSegmentRequest.build(params[:write_segment_request], context: "#{context}[:write_segment_request]") unless params[:write_segment_request].nil?
        type
      end
    end

    module CreateSegmentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSegmentOutput, context: context)
        type = Types::CreateSegmentOutput.new
        type.segment_response = SegmentResponse.build(params[:segment_response], context: "#{context}[:segment_response]") unless params[:segment_response].nil?
        type
      end
    end

    module CreateSmsTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSmsTemplateInput, context: context)
        type = Types::CreateSmsTemplateInput.new
        type.sms_template_request = SMSTemplateRequest.build(params[:sms_template_request], context: "#{context}[:sms_template_request]") unless params[:sms_template_request].nil?
        type.template_name = params[:template_name]
        type
      end
    end

    module CreateSmsTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSmsTemplateOutput, context: context)
        type = Types::CreateSmsTemplateOutput.new
        type.create_template_message_body = CreateTemplateMessageBody.build(params[:create_template_message_body], context: "#{context}[:create_template_message_body]") unless params[:create_template_message_body].nil?
        type
      end
    end

    module CreateTemplateMessageBody
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTemplateMessageBody, context: context)
        type = Types::CreateTemplateMessageBody.new
        type.arn = params[:arn]
        type.message = params[:message]
        type.request_id = params[:request_id]
        type
      end
    end

    module CreateVoiceTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateVoiceTemplateInput, context: context)
        type = Types::CreateVoiceTemplateInput.new
        type.template_name = params[:template_name]
        type.voice_template_request = VoiceTemplateRequest.build(params[:voice_template_request], context: "#{context}[:voice_template_request]") unless params[:voice_template_request].nil?
        type
      end
    end

    module CreateVoiceTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateVoiceTemplateOutput, context: context)
        type = Types::CreateVoiceTemplateOutput.new
        type.create_template_message_body = CreateTemplateMessageBody.build(params[:create_template_message_body], context: "#{context}[:create_template_message_body]") unless params[:create_template_message_body].nil?
        type
      end
    end

    module CustomDeliveryConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomDeliveryConfiguration, context: context)
        type = Types::CustomDeliveryConfiguration.new
        type.delivery_uri = params[:delivery_uri]
        type.endpoint_types = ListOf__EndpointTypesElement.build(params[:endpoint_types], context: "#{context}[:endpoint_types]") unless params[:endpoint_types].nil?
        type
      end
    end

    module CustomMessageActivity
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomMessageActivity, context: context)
        type = Types::CustomMessageActivity.new
        type.delivery_uri = params[:delivery_uri]
        type.endpoint_types = ListOf__EndpointTypesElement.build(params[:endpoint_types], context: "#{context}[:endpoint_types]") unless params[:endpoint_types].nil?
        type.message_config = JourneyCustomMessage.build(params[:message_config], context: "#{context}[:message_config]") unless params[:message_config].nil?
        type.next_activity = params[:next_activity]
        type.template_name = params[:template_name]
        type.template_version = params[:template_version]
        type
      end
    end

    module DefaultButtonConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DefaultButtonConfiguration, context: context)
        type = Types::DefaultButtonConfiguration.new
        type.background_color = params[:background_color]
        type.border_radius = params[:border_radius]
        type.button_action = params[:button_action]
        type.link = params[:link]
        type.text = params[:text]
        type.text_color = params[:text_color]
        type
      end
    end

    module DefaultMessage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DefaultMessage, context: context)
        type = Types::DefaultMessage.new
        type.body = params[:body]
        type.substitutions = MapOfListOf__string.build(params[:substitutions], context: "#{context}[:substitutions]") unless params[:substitutions].nil?
        type
      end
    end

    module DefaultPushNotificationMessage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DefaultPushNotificationMessage, context: context)
        type = Types::DefaultPushNotificationMessage.new
        type.action = params[:action]
        type.body = params[:body]
        type.data = MapOf__string.build(params[:data], context: "#{context}[:data]") unless params[:data].nil?
        type.silent_push = params[:silent_push]
        type.substitutions = MapOfListOf__string.build(params[:substitutions], context: "#{context}[:substitutions]") unless params[:substitutions].nil?
        type.title = params[:title]
        type.url = params[:url]
        type
      end
    end

    module DefaultPushNotificationTemplate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DefaultPushNotificationTemplate, context: context)
        type = Types::DefaultPushNotificationTemplate.new
        type.action = params[:action]
        type.body = params[:body]
        type.sound = params[:sound]
        type.title = params[:title]
        type.url = params[:url]
        type
      end
    end

    module DeleteAdmChannelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAdmChannelInput, context: context)
        type = Types::DeleteAdmChannelInput.new
        type.application_id = params[:application_id]
        type
      end
    end

    module DeleteAdmChannelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAdmChannelOutput, context: context)
        type = Types::DeleteAdmChannelOutput.new
        type.adm_channel_response = ADMChannelResponse.build(params[:adm_channel_response], context: "#{context}[:adm_channel_response]") unless params[:adm_channel_response].nil?
        type
      end
    end

    module DeleteApnsChannelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteApnsChannelInput, context: context)
        type = Types::DeleteApnsChannelInput.new
        type.application_id = params[:application_id]
        type
      end
    end

    module DeleteApnsChannelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteApnsChannelOutput, context: context)
        type = Types::DeleteApnsChannelOutput.new
        type.apns_channel_response = APNSChannelResponse.build(params[:apns_channel_response], context: "#{context}[:apns_channel_response]") unless params[:apns_channel_response].nil?
        type
      end
    end

    module DeleteApnsSandboxChannelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteApnsSandboxChannelInput, context: context)
        type = Types::DeleteApnsSandboxChannelInput.new
        type.application_id = params[:application_id]
        type
      end
    end

    module DeleteApnsSandboxChannelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteApnsSandboxChannelOutput, context: context)
        type = Types::DeleteApnsSandboxChannelOutput.new
        type.apns_sandbox_channel_response = APNSSandboxChannelResponse.build(params[:apns_sandbox_channel_response], context: "#{context}[:apns_sandbox_channel_response]") unless params[:apns_sandbox_channel_response].nil?
        type
      end
    end

    module DeleteApnsVoipChannelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteApnsVoipChannelInput, context: context)
        type = Types::DeleteApnsVoipChannelInput.new
        type.application_id = params[:application_id]
        type
      end
    end

    module DeleteApnsVoipChannelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteApnsVoipChannelOutput, context: context)
        type = Types::DeleteApnsVoipChannelOutput.new
        type.apns_voip_channel_response = APNSVoipChannelResponse.build(params[:apns_voip_channel_response], context: "#{context}[:apns_voip_channel_response]") unless params[:apns_voip_channel_response].nil?
        type
      end
    end

    module DeleteApnsVoipSandboxChannelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteApnsVoipSandboxChannelInput, context: context)
        type = Types::DeleteApnsVoipSandboxChannelInput.new
        type.application_id = params[:application_id]
        type
      end
    end

    module DeleteApnsVoipSandboxChannelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteApnsVoipSandboxChannelOutput, context: context)
        type = Types::DeleteApnsVoipSandboxChannelOutput.new
        type.apns_voip_sandbox_channel_response = APNSVoipSandboxChannelResponse.build(params[:apns_voip_sandbox_channel_response], context: "#{context}[:apns_voip_sandbox_channel_response]") unless params[:apns_voip_sandbox_channel_response].nil?
        type
      end
    end

    module DeleteAppInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAppInput, context: context)
        type = Types::DeleteAppInput.new
        type.application_id = params[:application_id]
        type
      end
    end

    module DeleteAppOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAppOutput, context: context)
        type = Types::DeleteAppOutput.new
        type.application_response = ApplicationResponse.build(params[:application_response], context: "#{context}[:application_response]") unless params[:application_response].nil?
        type
      end
    end

    module DeleteBaiduChannelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBaiduChannelInput, context: context)
        type = Types::DeleteBaiduChannelInput.new
        type.application_id = params[:application_id]
        type
      end
    end

    module DeleteBaiduChannelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBaiduChannelOutput, context: context)
        type = Types::DeleteBaiduChannelOutput.new
        type.baidu_channel_response = BaiduChannelResponse.build(params[:baidu_channel_response], context: "#{context}[:baidu_channel_response]") unless params[:baidu_channel_response].nil?
        type
      end
    end

    module DeleteCampaignInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCampaignInput, context: context)
        type = Types::DeleteCampaignInput.new
        type.application_id = params[:application_id]
        type.campaign_id = params[:campaign_id]
        type
      end
    end

    module DeleteCampaignOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCampaignOutput, context: context)
        type = Types::DeleteCampaignOutput.new
        type.campaign_response = CampaignResponse.build(params[:campaign_response], context: "#{context}[:campaign_response]") unless params[:campaign_response].nil?
        type
      end
    end

    module DeleteEmailChannelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEmailChannelInput, context: context)
        type = Types::DeleteEmailChannelInput.new
        type.application_id = params[:application_id]
        type
      end
    end

    module DeleteEmailChannelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEmailChannelOutput, context: context)
        type = Types::DeleteEmailChannelOutput.new
        type.email_channel_response = EmailChannelResponse.build(params[:email_channel_response], context: "#{context}[:email_channel_response]") unless params[:email_channel_response].nil?
        type
      end
    end

    module DeleteEmailTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEmailTemplateInput, context: context)
        type = Types::DeleteEmailTemplateInput.new
        type.template_name = params[:template_name]
        type.version = params[:version]
        type
      end
    end

    module DeleteEmailTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEmailTemplateOutput, context: context)
        type = Types::DeleteEmailTemplateOutput.new
        type.message_body = MessageBody.build(params[:message_body], context: "#{context}[:message_body]") unless params[:message_body].nil?
        type
      end
    end

    module DeleteEndpointInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEndpointInput, context: context)
        type = Types::DeleteEndpointInput.new
        type.application_id = params[:application_id]
        type.endpoint_id = params[:endpoint_id]
        type
      end
    end

    module DeleteEndpointOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEndpointOutput, context: context)
        type = Types::DeleteEndpointOutput.new
        type.endpoint_response = EndpointResponse.build(params[:endpoint_response], context: "#{context}[:endpoint_response]") unless params[:endpoint_response].nil?
        type
      end
    end

    module DeleteEventStreamInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEventStreamInput, context: context)
        type = Types::DeleteEventStreamInput.new
        type.application_id = params[:application_id]
        type
      end
    end

    module DeleteEventStreamOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEventStreamOutput, context: context)
        type = Types::DeleteEventStreamOutput.new
        type.event_stream = EventStream.build(params[:event_stream], context: "#{context}[:event_stream]") unless params[:event_stream].nil?
        type
      end
    end

    module DeleteGcmChannelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteGcmChannelInput, context: context)
        type = Types::DeleteGcmChannelInput.new
        type.application_id = params[:application_id]
        type
      end
    end

    module DeleteGcmChannelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteGcmChannelOutput, context: context)
        type = Types::DeleteGcmChannelOutput.new
        type.gcm_channel_response = GCMChannelResponse.build(params[:gcm_channel_response], context: "#{context}[:gcm_channel_response]") unless params[:gcm_channel_response].nil?
        type
      end
    end

    module DeleteInAppTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteInAppTemplateInput, context: context)
        type = Types::DeleteInAppTemplateInput.new
        type.template_name = params[:template_name]
        type.version = params[:version]
        type
      end
    end

    module DeleteInAppTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteInAppTemplateOutput, context: context)
        type = Types::DeleteInAppTemplateOutput.new
        type.message_body = MessageBody.build(params[:message_body], context: "#{context}[:message_body]") unless params[:message_body].nil?
        type
      end
    end

    module DeleteJourneyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteJourneyInput, context: context)
        type = Types::DeleteJourneyInput.new
        type.application_id = params[:application_id]
        type.journey_id = params[:journey_id]
        type
      end
    end

    module DeleteJourneyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteJourneyOutput, context: context)
        type = Types::DeleteJourneyOutput.new
        type.journey_response = JourneyResponse.build(params[:journey_response], context: "#{context}[:journey_response]") unless params[:journey_response].nil?
        type
      end
    end

    module DeletePushTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePushTemplateInput, context: context)
        type = Types::DeletePushTemplateInput.new
        type.template_name = params[:template_name]
        type.version = params[:version]
        type
      end
    end

    module DeletePushTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePushTemplateOutput, context: context)
        type = Types::DeletePushTemplateOutput.new
        type.message_body = MessageBody.build(params[:message_body], context: "#{context}[:message_body]") unless params[:message_body].nil?
        type
      end
    end

    module DeleteRecommenderConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRecommenderConfigurationInput, context: context)
        type = Types::DeleteRecommenderConfigurationInput.new
        type.recommender_id = params[:recommender_id]
        type
      end
    end

    module DeleteRecommenderConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRecommenderConfigurationOutput, context: context)
        type = Types::DeleteRecommenderConfigurationOutput.new
        type.recommender_configuration_response = RecommenderConfigurationResponse.build(params[:recommender_configuration_response], context: "#{context}[:recommender_configuration_response]") unless params[:recommender_configuration_response].nil?
        type
      end
    end

    module DeleteSegmentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSegmentInput, context: context)
        type = Types::DeleteSegmentInput.new
        type.application_id = params[:application_id]
        type.segment_id = params[:segment_id]
        type
      end
    end

    module DeleteSegmentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSegmentOutput, context: context)
        type = Types::DeleteSegmentOutput.new
        type.segment_response = SegmentResponse.build(params[:segment_response], context: "#{context}[:segment_response]") unless params[:segment_response].nil?
        type
      end
    end

    module DeleteSmsChannelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSmsChannelInput, context: context)
        type = Types::DeleteSmsChannelInput.new
        type.application_id = params[:application_id]
        type
      end
    end

    module DeleteSmsChannelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSmsChannelOutput, context: context)
        type = Types::DeleteSmsChannelOutput.new
        type.sms_channel_response = SMSChannelResponse.build(params[:sms_channel_response], context: "#{context}[:sms_channel_response]") unless params[:sms_channel_response].nil?
        type
      end
    end

    module DeleteSmsTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSmsTemplateInput, context: context)
        type = Types::DeleteSmsTemplateInput.new
        type.template_name = params[:template_name]
        type.version = params[:version]
        type
      end
    end

    module DeleteSmsTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSmsTemplateOutput, context: context)
        type = Types::DeleteSmsTemplateOutput.new
        type.message_body = MessageBody.build(params[:message_body], context: "#{context}[:message_body]") unless params[:message_body].nil?
        type
      end
    end

    module DeleteUserEndpointsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteUserEndpointsInput, context: context)
        type = Types::DeleteUserEndpointsInput.new
        type.application_id = params[:application_id]
        type.user_id = params[:user_id]
        type
      end
    end

    module DeleteUserEndpointsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteUserEndpointsOutput, context: context)
        type = Types::DeleteUserEndpointsOutput.new
        type.endpoints_response = EndpointsResponse.build(params[:endpoints_response], context: "#{context}[:endpoints_response]") unless params[:endpoints_response].nil?
        type
      end
    end

    module DeleteVoiceChannelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteVoiceChannelInput, context: context)
        type = Types::DeleteVoiceChannelInput.new
        type.application_id = params[:application_id]
        type
      end
    end

    module DeleteVoiceChannelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteVoiceChannelOutput, context: context)
        type = Types::DeleteVoiceChannelOutput.new
        type.voice_channel_response = VoiceChannelResponse.build(params[:voice_channel_response], context: "#{context}[:voice_channel_response]") unless params[:voice_channel_response].nil?
        type
      end
    end

    module DeleteVoiceTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteVoiceTemplateInput, context: context)
        type = Types::DeleteVoiceTemplateInput.new
        type.template_name = params[:template_name]
        type.version = params[:version]
        type
      end
    end

    module DeleteVoiceTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteVoiceTemplateOutput, context: context)
        type = Types::DeleteVoiceTemplateOutput.new
        type.message_body = MessageBody.build(params[:message_body], context: "#{context}[:message_body]") unless params[:message_body].nil?
        type
      end
    end

    module DirectMessageConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DirectMessageConfiguration, context: context)
        type = Types::DirectMessageConfiguration.new
        type.adm_message = ADMMessage.build(params[:adm_message], context: "#{context}[:adm_message]") unless params[:adm_message].nil?
        type.apns_message = APNSMessage.build(params[:apns_message], context: "#{context}[:apns_message]") unless params[:apns_message].nil?
        type.baidu_message = BaiduMessage.build(params[:baidu_message], context: "#{context}[:baidu_message]") unless params[:baidu_message].nil?
        type.default_message = DefaultMessage.build(params[:default_message], context: "#{context}[:default_message]") unless params[:default_message].nil?
        type.default_push_notification_message = DefaultPushNotificationMessage.build(params[:default_push_notification_message], context: "#{context}[:default_push_notification_message]") unless params[:default_push_notification_message].nil?
        type.email_message = EmailMessage.build(params[:email_message], context: "#{context}[:email_message]") unless params[:email_message].nil?
        type.gcm_message = GCMMessage.build(params[:gcm_message], context: "#{context}[:gcm_message]") unless params[:gcm_message].nil?
        type.sms_message = SMSMessage.build(params[:sms_message], context: "#{context}[:sms_message]") unless params[:sms_message].nil?
        type.voice_message = VoiceMessage.build(params[:voice_message], context: "#{context}[:voice_message]") unless params[:voice_message].nil?
        type
      end
    end

    module EmailChannelRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EmailChannelRequest, context: context)
        type = Types::EmailChannelRequest.new
        type.configuration_set = params[:configuration_set]
        type.enabled = params[:enabled]
        type.from_address = params[:from_address]
        type.identity = params[:identity]
        type.role_arn = params[:role_arn]
        type
      end
    end

    module EmailChannelResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EmailChannelResponse, context: context)
        type = Types::EmailChannelResponse.new
        type.application_id = params[:application_id]
        type.configuration_set = params[:configuration_set]
        type.creation_date = params[:creation_date]
        type.enabled = params[:enabled]
        type.from_address = params[:from_address]
        type.has_credential = params[:has_credential]
        type.id = params[:id]
        type.identity = params[:identity]
        type.is_archived = params[:is_archived]
        type.last_modified_by = params[:last_modified_by]
        type.last_modified_date = params[:last_modified_date]
        type.messages_per_second = params[:messages_per_second]
        type.platform = params[:platform]
        type.role_arn = params[:role_arn]
        type.version = params[:version]
        type
      end
    end

    module EmailMessage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EmailMessage, context: context)
        type = Types::EmailMessage.new
        type.body = params[:body]
        type.feedback_forwarding_address = params[:feedback_forwarding_address]
        type.from_address = params[:from_address]
        type.raw_email = RawEmail.build(params[:raw_email], context: "#{context}[:raw_email]") unless params[:raw_email].nil?
        type.reply_to_addresses = ListOf__string.build(params[:reply_to_addresses], context: "#{context}[:reply_to_addresses]") unless params[:reply_to_addresses].nil?
        type.simple_email = SimpleEmail.build(params[:simple_email], context: "#{context}[:simple_email]") unless params[:simple_email].nil?
        type.substitutions = MapOfListOf__string.build(params[:substitutions], context: "#{context}[:substitutions]") unless params[:substitutions].nil?
        type
      end
    end

    module EmailMessageActivity
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EmailMessageActivity, context: context)
        type = Types::EmailMessageActivity.new
        type.message_config = JourneyEmailMessage.build(params[:message_config], context: "#{context}[:message_config]") unless params[:message_config].nil?
        type.next_activity = params[:next_activity]
        type.template_name = params[:template_name]
        type.template_version = params[:template_version]
        type
      end
    end

    module EmailTemplateRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EmailTemplateRequest, context: context)
        type = Types::EmailTemplateRequest.new
        type.default_substitutions = params[:default_substitutions]
        type.html_part = params[:html_part]
        type.recommender_id = params[:recommender_id]
        type.subject = params[:subject]
        type.tags = MapOf__string.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.template_description = params[:template_description]
        type.text_part = params[:text_part]
        type
      end
    end

    module EmailTemplateResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EmailTemplateResponse, context: context)
        type = Types::EmailTemplateResponse.new
        type.arn = params[:arn]
        type.creation_date = params[:creation_date]
        type.default_substitutions = params[:default_substitutions]
        type.html_part = params[:html_part]
        type.last_modified_date = params[:last_modified_date]
        type.recommender_id = params[:recommender_id]
        type.subject = params[:subject]
        type.tags = MapOf__string.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.template_description = params[:template_description]
        type.template_name = params[:template_name]
        type.template_type = params[:template_type]
        type.text_part = params[:text_part]
        type.version = params[:version]
        type
      end
    end

    module EndpointBatchItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EndpointBatchItem, context: context)
        type = Types::EndpointBatchItem.new
        type.address = params[:address]
        type.attributes = MapOfListOf__string.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type.channel_type = params[:channel_type]
        type.demographic = EndpointDemographic.build(params[:demographic], context: "#{context}[:demographic]") unless params[:demographic].nil?
        type.effective_date = params[:effective_date]
        type.endpoint_status = params[:endpoint_status]
        type.id = params[:id]
        type.location = EndpointLocation.build(params[:location], context: "#{context}[:location]") unless params[:location].nil?
        type.metrics = MapOf__double.build(params[:metrics], context: "#{context}[:metrics]") unless params[:metrics].nil?
        type.opt_out = params[:opt_out]
        type.request_id = params[:request_id]
        type.user = EndpointUser.build(params[:user], context: "#{context}[:user]") unless params[:user].nil?
        type
      end
    end

    module EndpointBatchRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EndpointBatchRequest, context: context)
        type = Types::EndpointBatchRequest.new
        type.item = ListOfEndpointBatchItem.build(params[:item], context: "#{context}[:item]") unless params[:item].nil?
        type
      end
    end

    module EndpointDemographic
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EndpointDemographic, context: context)
        type = Types::EndpointDemographic.new
        type.app_version = params[:app_version]
        type.locale = params[:locale]
        type.make = params[:make]
        type.model = params[:model]
        type.model_version = params[:model_version]
        type.platform = params[:platform]
        type.platform_version = params[:platform_version]
        type.timezone = params[:timezone]
        type
      end
    end

    module EndpointItemResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EndpointItemResponse, context: context)
        type = Types::EndpointItemResponse.new
        type.message = params[:message]
        type.status_code = params[:status_code]
        type
      end
    end

    module EndpointLocation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EndpointLocation, context: context)
        type = Types::EndpointLocation.new
        type.city = params[:city]
        type.country = params[:country]
        type.latitude = params[:latitude]
        type.longitude = params[:longitude]
        type.postal_code = params[:postal_code]
        type.region = params[:region]
        type
      end
    end

    module EndpointMessageResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EndpointMessageResult, context: context)
        type = Types::EndpointMessageResult.new
        type.address = params[:address]
        type.delivery_status = params[:delivery_status]
        type.message_id = params[:message_id]
        type.status_code = params[:status_code]
        type.status_message = params[:status_message]
        type.updated_token = params[:updated_token]
        type
      end
    end

    module EndpointRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EndpointRequest, context: context)
        type = Types::EndpointRequest.new
        type.address = params[:address]
        type.attributes = MapOfListOf__string.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type.channel_type = params[:channel_type]
        type.demographic = EndpointDemographic.build(params[:demographic], context: "#{context}[:demographic]") unless params[:demographic].nil?
        type.effective_date = params[:effective_date]
        type.endpoint_status = params[:endpoint_status]
        type.location = EndpointLocation.build(params[:location], context: "#{context}[:location]") unless params[:location].nil?
        type.metrics = MapOf__double.build(params[:metrics], context: "#{context}[:metrics]") unless params[:metrics].nil?
        type.opt_out = params[:opt_out]
        type.request_id = params[:request_id]
        type.user = EndpointUser.build(params[:user], context: "#{context}[:user]") unless params[:user].nil?
        type
      end
    end

    module EndpointResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EndpointResponse, context: context)
        type = Types::EndpointResponse.new
        type.address = params[:address]
        type.application_id = params[:application_id]
        type.attributes = MapOfListOf__string.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type.channel_type = params[:channel_type]
        type.cohort_id = params[:cohort_id]
        type.creation_date = params[:creation_date]
        type.demographic = EndpointDemographic.build(params[:demographic], context: "#{context}[:demographic]") unless params[:demographic].nil?
        type.effective_date = params[:effective_date]
        type.endpoint_status = params[:endpoint_status]
        type.id = params[:id]
        type.location = EndpointLocation.build(params[:location], context: "#{context}[:location]") unless params[:location].nil?
        type.metrics = MapOf__double.build(params[:metrics], context: "#{context}[:metrics]") unless params[:metrics].nil?
        type.opt_out = params[:opt_out]
        type.request_id = params[:request_id]
        type.user = EndpointUser.build(params[:user], context: "#{context}[:user]") unless params[:user].nil?
        type
      end
    end

    module EndpointSendConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EndpointSendConfiguration, context: context)
        type = Types::EndpointSendConfiguration.new
        type.body_override = params[:body_override]
        type.context = MapOf__string.build(params[:context], context: "#{context}[:context]") unless params[:context].nil?
        type.raw_content = params[:raw_content]
        type.substitutions = MapOfListOf__string.build(params[:substitutions], context: "#{context}[:substitutions]") unless params[:substitutions].nil?
        type.title_override = params[:title_override]
        type
      end
    end

    module EndpointUser
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EndpointUser, context: context)
        type = Types::EndpointUser.new
        type.user_attributes = MapOfListOf__string.build(params[:user_attributes], context: "#{context}[:user_attributes]") unless params[:user_attributes].nil?
        type.user_id = params[:user_id]
        type
      end
    end

    module EndpointsResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EndpointsResponse, context: context)
        type = Types::EndpointsResponse.new
        type.item = ListOfEndpointResponse.build(params[:item], context: "#{context}[:item]") unless params[:item].nil?
        type
      end
    end

    module Event
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Event, context: context)
        type = Types::Event.new
        type.app_package_name = params[:app_package_name]
        type.app_title = params[:app_title]
        type.app_version_code = params[:app_version_code]
        type.attributes = MapOf__string.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type.client_sdk_version = params[:client_sdk_version]
        type.event_type = params[:event_type]
        type.metrics = MapOf__double.build(params[:metrics], context: "#{context}[:metrics]") unless params[:metrics].nil?
        type.sdk_name = params[:sdk_name]
        type.session = Session.build(params[:session], context: "#{context}[:session]") unless params[:session].nil?
        type.timestamp = params[:timestamp]
        type
      end
    end

    module EventCondition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EventCondition, context: context)
        type = Types::EventCondition.new
        type.dimensions = EventDimensions.build(params[:dimensions], context: "#{context}[:dimensions]") unless params[:dimensions].nil?
        type.message_activity = params[:message_activity]
        type
      end
    end

    module EventDimensions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EventDimensions, context: context)
        type = Types::EventDimensions.new
        type.attributes = MapOfAttributeDimension.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type.event_type = SetDimension.build(params[:event_type], context: "#{context}[:event_type]") unless params[:event_type].nil?
        type.metrics = MapOfMetricDimension.build(params[:metrics], context: "#{context}[:metrics]") unless params[:metrics].nil?
        type
      end
    end

    module EventFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EventFilter, context: context)
        type = Types::EventFilter.new
        type.dimensions = EventDimensions.build(params[:dimensions], context: "#{context}[:dimensions]") unless params[:dimensions].nil?
        type.filter_type = params[:filter_type]
        type
      end
    end

    module EventItemResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EventItemResponse, context: context)
        type = Types::EventItemResponse.new
        type.message = params[:message]
        type.status_code = params[:status_code]
        type
      end
    end

    module EventStartCondition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EventStartCondition, context: context)
        type = Types::EventStartCondition.new
        type.event_filter = EventFilter.build(params[:event_filter], context: "#{context}[:event_filter]") unless params[:event_filter].nil?
        type.segment_id = params[:segment_id]
        type
      end
    end

    module EventStream
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EventStream, context: context)
        type = Types::EventStream.new
        type.application_id = params[:application_id]
        type.destination_stream_arn = params[:destination_stream_arn]
        type.external_id = params[:external_id]
        type.last_modified_date = params[:last_modified_date]
        type.last_updated_by = params[:last_updated_by]
        type.role_arn = params[:role_arn]
        type
      end
    end

    module EventsBatch
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EventsBatch, context: context)
        type = Types::EventsBatch.new
        type.endpoint = PublicEndpoint.build(params[:endpoint], context: "#{context}[:endpoint]") unless params[:endpoint].nil?
        type.events = MapOfEvent.build(params[:events], context: "#{context}[:events]") unless params[:events].nil?
        type
      end
    end

    module EventsRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EventsRequest, context: context)
        type = Types::EventsRequest.new
        type.batch_item = MapOfEventsBatch.build(params[:batch_item], context: "#{context}[:batch_item]") unless params[:batch_item].nil?
        type
      end
    end

    module EventsResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EventsResponse, context: context)
        type = Types::EventsResponse.new
        type.results = MapOfItemResponse.build(params[:results], context: "#{context}[:results]") unless params[:results].nil?
        type
      end
    end

    module ExportJobRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExportJobRequest, context: context)
        type = Types::ExportJobRequest.new
        type.role_arn = params[:role_arn]
        type.s3_url_prefix = params[:s3_url_prefix]
        type.segment_id = params[:segment_id]
        type.segment_version = params[:segment_version]
        type
      end
    end

    module ExportJobResource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExportJobResource, context: context)
        type = Types::ExportJobResource.new
        type.role_arn = params[:role_arn]
        type.s3_url_prefix = params[:s3_url_prefix]
        type.segment_id = params[:segment_id]
        type.segment_version = params[:segment_version]
        type
      end
    end

    module ExportJobResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExportJobResponse, context: context)
        type = Types::ExportJobResponse.new
        type.application_id = params[:application_id]
        type.completed_pieces = params[:completed_pieces]
        type.completion_date = params[:completion_date]
        type.creation_date = params[:creation_date]
        type.definition = ExportJobResource.build(params[:definition], context: "#{context}[:definition]") unless params[:definition].nil?
        type.failed_pieces = params[:failed_pieces]
        type.failures = ListOf__string.build(params[:failures], context: "#{context}[:failures]") unless params[:failures].nil?
        type.id = params[:id]
        type.job_status = params[:job_status]
        type.total_failures = params[:total_failures]
        type.total_pieces = params[:total_pieces]
        type.total_processed = params[:total_processed]
        type.type = params[:type]
        type
      end
    end

    module ExportJobsResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExportJobsResponse, context: context)
        type = Types::ExportJobsResponse.new
        type.item = ListOfExportJobResponse.build(params[:item], context: "#{context}[:item]") unless params[:item].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ForbiddenException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ForbiddenException, context: context)
        type = Types::ForbiddenException.new
        type.message = params[:message]
        type.request_id = params[:request_id]
        type
      end
    end

    module GCMChannelRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GCMChannelRequest, context: context)
        type = Types::GCMChannelRequest.new
        type.api_key = params[:api_key]
        type.enabled = params[:enabled]
        type
      end
    end

    module GCMChannelResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GCMChannelResponse, context: context)
        type = Types::GCMChannelResponse.new
        type.application_id = params[:application_id]
        type.creation_date = params[:creation_date]
        type.credential = params[:credential]
        type.enabled = params[:enabled]
        type.has_credential = params[:has_credential]
        type.id = params[:id]
        type.is_archived = params[:is_archived]
        type.last_modified_by = params[:last_modified_by]
        type.last_modified_date = params[:last_modified_date]
        type.platform = params[:platform]
        type.version = params[:version]
        type
      end
    end

    module GCMMessage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GCMMessage, context: context)
        type = Types::GCMMessage.new
        type.action = params[:action]
        type.body = params[:body]
        type.collapse_key = params[:collapse_key]
        type.data = MapOf__string.build(params[:data], context: "#{context}[:data]") unless params[:data].nil?
        type.icon_reference = params[:icon_reference]
        type.image_icon_url = params[:image_icon_url]
        type.image_url = params[:image_url]
        type.priority = params[:priority]
        type.raw_content = params[:raw_content]
        type.restricted_package_name = params[:restricted_package_name]
        type.silent_push = params[:silent_push]
        type.small_image_icon_url = params[:small_image_icon_url]
        type.sound = params[:sound]
        type.substitutions = MapOfListOf__string.build(params[:substitutions], context: "#{context}[:substitutions]") unless params[:substitutions].nil?
        type.time_to_live = params[:time_to_live]
        type.title = params[:title]
        type.url = params[:url]
        type
      end
    end

    module GPSCoordinates
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GPSCoordinates, context: context)
        type = Types::GPSCoordinates.new
        type.latitude = params[:latitude]
        type.longitude = params[:longitude]
        type
      end
    end

    module GPSPointDimension
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GPSPointDimension, context: context)
        type = Types::GPSPointDimension.new
        type.coordinates = GPSCoordinates.build(params[:coordinates], context: "#{context}[:coordinates]") unless params[:coordinates].nil?
        type.range_in_kilometers = params[:range_in_kilometers]
        type
      end
    end

    module GetAdmChannelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAdmChannelInput, context: context)
        type = Types::GetAdmChannelInput.new
        type.application_id = params[:application_id]
        type
      end
    end

    module GetAdmChannelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAdmChannelOutput, context: context)
        type = Types::GetAdmChannelOutput.new
        type.adm_channel_response = ADMChannelResponse.build(params[:adm_channel_response], context: "#{context}[:adm_channel_response]") unless params[:adm_channel_response].nil?
        type
      end
    end

    module GetApnsChannelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetApnsChannelInput, context: context)
        type = Types::GetApnsChannelInput.new
        type.application_id = params[:application_id]
        type
      end
    end

    module GetApnsChannelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetApnsChannelOutput, context: context)
        type = Types::GetApnsChannelOutput.new
        type.apns_channel_response = APNSChannelResponse.build(params[:apns_channel_response], context: "#{context}[:apns_channel_response]") unless params[:apns_channel_response].nil?
        type
      end
    end

    module GetApnsSandboxChannelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetApnsSandboxChannelInput, context: context)
        type = Types::GetApnsSandboxChannelInput.new
        type.application_id = params[:application_id]
        type
      end
    end

    module GetApnsSandboxChannelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetApnsSandboxChannelOutput, context: context)
        type = Types::GetApnsSandboxChannelOutput.new
        type.apns_sandbox_channel_response = APNSSandboxChannelResponse.build(params[:apns_sandbox_channel_response], context: "#{context}[:apns_sandbox_channel_response]") unless params[:apns_sandbox_channel_response].nil?
        type
      end
    end

    module GetApnsVoipChannelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetApnsVoipChannelInput, context: context)
        type = Types::GetApnsVoipChannelInput.new
        type.application_id = params[:application_id]
        type
      end
    end

    module GetApnsVoipChannelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetApnsVoipChannelOutput, context: context)
        type = Types::GetApnsVoipChannelOutput.new
        type.apns_voip_channel_response = APNSVoipChannelResponse.build(params[:apns_voip_channel_response], context: "#{context}[:apns_voip_channel_response]") unless params[:apns_voip_channel_response].nil?
        type
      end
    end

    module GetApnsVoipSandboxChannelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetApnsVoipSandboxChannelInput, context: context)
        type = Types::GetApnsVoipSandboxChannelInput.new
        type.application_id = params[:application_id]
        type
      end
    end

    module GetApnsVoipSandboxChannelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetApnsVoipSandboxChannelOutput, context: context)
        type = Types::GetApnsVoipSandboxChannelOutput.new
        type.apns_voip_sandbox_channel_response = APNSVoipSandboxChannelResponse.build(params[:apns_voip_sandbox_channel_response], context: "#{context}[:apns_voip_sandbox_channel_response]") unless params[:apns_voip_sandbox_channel_response].nil?
        type
      end
    end

    module GetAppInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAppInput, context: context)
        type = Types::GetAppInput.new
        type.application_id = params[:application_id]
        type
      end
    end

    module GetAppOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAppOutput, context: context)
        type = Types::GetAppOutput.new
        type.application_response = ApplicationResponse.build(params[:application_response], context: "#{context}[:application_response]") unless params[:application_response].nil?
        type
      end
    end

    module GetApplicationDateRangeKpiInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetApplicationDateRangeKpiInput, context: context)
        type = Types::GetApplicationDateRangeKpiInput.new
        type.application_id = params[:application_id]
        type.end_time = params[:end_time]
        type.kpi_name = params[:kpi_name]
        type.next_token = params[:next_token]
        type.page_size = params[:page_size]
        type.start_time = params[:start_time]
        type
      end
    end

    module GetApplicationDateRangeKpiOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetApplicationDateRangeKpiOutput, context: context)
        type = Types::GetApplicationDateRangeKpiOutput.new
        type.application_date_range_kpi_response = ApplicationDateRangeKpiResponse.build(params[:application_date_range_kpi_response], context: "#{context}[:application_date_range_kpi_response]") unless params[:application_date_range_kpi_response].nil?
        type
      end
    end

    module GetApplicationSettingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetApplicationSettingsInput, context: context)
        type = Types::GetApplicationSettingsInput.new
        type.application_id = params[:application_id]
        type
      end
    end

    module GetApplicationSettingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetApplicationSettingsOutput, context: context)
        type = Types::GetApplicationSettingsOutput.new
        type.application_settings_resource = ApplicationSettingsResource.build(params[:application_settings_resource], context: "#{context}[:application_settings_resource]") unless params[:application_settings_resource].nil?
        type
      end
    end

    module GetAppsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAppsInput, context: context)
        type = Types::GetAppsInput.new
        type.page_size = params[:page_size]
        type.token = params[:token]
        type
      end
    end

    module GetAppsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAppsOutput, context: context)
        type = Types::GetAppsOutput.new
        type.applications_response = ApplicationsResponse.build(params[:applications_response], context: "#{context}[:applications_response]") unless params[:applications_response].nil?
        type
      end
    end

    module GetBaiduChannelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBaiduChannelInput, context: context)
        type = Types::GetBaiduChannelInput.new
        type.application_id = params[:application_id]
        type
      end
    end

    module GetBaiduChannelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBaiduChannelOutput, context: context)
        type = Types::GetBaiduChannelOutput.new
        type.baidu_channel_response = BaiduChannelResponse.build(params[:baidu_channel_response], context: "#{context}[:baidu_channel_response]") unless params[:baidu_channel_response].nil?
        type
      end
    end

    module GetCampaignActivitiesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCampaignActivitiesInput, context: context)
        type = Types::GetCampaignActivitiesInput.new
        type.application_id = params[:application_id]
        type.campaign_id = params[:campaign_id]
        type.page_size = params[:page_size]
        type.token = params[:token]
        type
      end
    end

    module GetCampaignActivitiesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCampaignActivitiesOutput, context: context)
        type = Types::GetCampaignActivitiesOutput.new
        type.activities_response = ActivitiesResponse.build(params[:activities_response], context: "#{context}[:activities_response]") unless params[:activities_response].nil?
        type
      end
    end

    module GetCampaignDateRangeKpiInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCampaignDateRangeKpiInput, context: context)
        type = Types::GetCampaignDateRangeKpiInput.new
        type.application_id = params[:application_id]
        type.campaign_id = params[:campaign_id]
        type.end_time = params[:end_time]
        type.kpi_name = params[:kpi_name]
        type.next_token = params[:next_token]
        type.page_size = params[:page_size]
        type.start_time = params[:start_time]
        type
      end
    end

    module GetCampaignDateRangeKpiOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCampaignDateRangeKpiOutput, context: context)
        type = Types::GetCampaignDateRangeKpiOutput.new
        type.campaign_date_range_kpi_response = CampaignDateRangeKpiResponse.build(params[:campaign_date_range_kpi_response], context: "#{context}[:campaign_date_range_kpi_response]") unless params[:campaign_date_range_kpi_response].nil?
        type
      end
    end

    module GetCampaignInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCampaignInput, context: context)
        type = Types::GetCampaignInput.new
        type.application_id = params[:application_id]
        type.campaign_id = params[:campaign_id]
        type
      end
    end

    module GetCampaignOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCampaignOutput, context: context)
        type = Types::GetCampaignOutput.new
        type.campaign_response = CampaignResponse.build(params[:campaign_response], context: "#{context}[:campaign_response]") unless params[:campaign_response].nil?
        type
      end
    end

    module GetCampaignVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCampaignVersionInput, context: context)
        type = Types::GetCampaignVersionInput.new
        type.application_id = params[:application_id]
        type.campaign_id = params[:campaign_id]
        type.version = params[:version]
        type
      end
    end

    module GetCampaignVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCampaignVersionOutput, context: context)
        type = Types::GetCampaignVersionOutput.new
        type.campaign_response = CampaignResponse.build(params[:campaign_response], context: "#{context}[:campaign_response]") unless params[:campaign_response].nil?
        type
      end
    end

    module GetCampaignVersionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCampaignVersionsInput, context: context)
        type = Types::GetCampaignVersionsInput.new
        type.application_id = params[:application_id]
        type.campaign_id = params[:campaign_id]
        type.page_size = params[:page_size]
        type.token = params[:token]
        type
      end
    end

    module GetCampaignVersionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCampaignVersionsOutput, context: context)
        type = Types::GetCampaignVersionsOutput.new
        type.campaigns_response = CampaignsResponse.build(params[:campaigns_response], context: "#{context}[:campaigns_response]") unless params[:campaigns_response].nil?
        type
      end
    end

    module GetCampaignsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCampaignsInput, context: context)
        type = Types::GetCampaignsInput.new
        type.application_id = params[:application_id]
        type.page_size = params[:page_size]
        type.token = params[:token]
        type
      end
    end

    module GetCampaignsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCampaignsOutput, context: context)
        type = Types::GetCampaignsOutput.new
        type.campaigns_response = CampaignsResponse.build(params[:campaigns_response], context: "#{context}[:campaigns_response]") unless params[:campaigns_response].nil?
        type
      end
    end

    module GetChannelsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetChannelsInput, context: context)
        type = Types::GetChannelsInput.new
        type.application_id = params[:application_id]
        type
      end
    end

    module GetChannelsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetChannelsOutput, context: context)
        type = Types::GetChannelsOutput.new
        type.channels_response = ChannelsResponse.build(params[:channels_response], context: "#{context}[:channels_response]") unless params[:channels_response].nil?
        type
      end
    end

    module GetEmailChannelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEmailChannelInput, context: context)
        type = Types::GetEmailChannelInput.new
        type.application_id = params[:application_id]
        type
      end
    end

    module GetEmailChannelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEmailChannelOutput, context: context)
        type = Types::GetEmailChannelOutput.new
        type.email_channel_response = EmailChannelResponse.build(params[:email_channel_response], context: "#{context}[:email_channel_response]") unless params[:email_channel_response].nil?
        type
      end
    end

    module GetEmailTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEmailTemplateInput, context: context)
        type = Types::GetEmailTemplateInput.new
        type.template_name = params[:template_name]
        type.version = params[:version]
        type
      end
    end

    module GetEmailTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEmailTemplateOutput, context: context)
        type = Types::GetEmailTemplateOutput.new
        type.email_template_response = EmailTemplateResponse.build(params[:email_template_response], context: "#{context}[:email_template_response]") unless params[:email_template_response].nil?
        type
      end
    end

    module GetEndpointInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEndpointInput, context: context)
        type = Types::GetEndpointInput.new
        type.application_id = params[:application_id]
        type.endpoint_id = params[:endpoint_id]
        type
      end
    end

    module GetEndpointOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEndpointOutput, context: context)
        type = Types::GetEndpointOutput.new
        type.endpoint_response = EndpointResponse.build(params[:endpoint_response], context: "#{context}[:endpoint_response]") unless params[:endpoint_response].nil?
        type
      end
    end

    module GetEventStreamInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEventStreamInput, context: context)
        type = Types::GetEventStreamInput.new
        type.application_id = params[:application_id]
        type
      end
    end

    module GetEventStreamOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEventStreamOutput, context: context)
        type = Types::GetEventStreamOutput.new
        type.event_stream = EventStream.build(params[:event_stream], context: "#{context}[:event_stream]") unless params[:event_stream].nil?
        type
      end
    end

    module GetExportJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetExportJobInput, context: context)
        type = Types::GetExportJobInput.new
        type.application_id = params[:application_id]
        type.job_id = params[:job_id]
        type
      end
    end

    module GetExportJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetExportJobOutput, context: context)
        type = Types::GetExportJobOutput.new
        type.export_job_response = ExportJobResponse.build(params[:export_job_response], context: "#{context}[:export_job_response]") unless params[:export_job_response].nil?
        type
      end
    end

    module GetExportJobsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetExportJobsInput, context: context)
        type = Types::GetExportJobsInput.new
        type.application_id = params[:application_id]
        type.page_size = params[:page_size]
        type.token = params[:token]
        type
      end
    end

    module GetExportJobsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetExportJobsOutput, context: context)
        type = Types::GetExportJobsOutput.new
        type.export_jobs_response = ExportJobsResponse.build(params[:export_jobs_response], context: "#{context}[:export_jobs_response]") unless params[:export_jobs_response].nil?
        type
      end
    end

    module GetGcmChannelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetGcmChannelInput, context: context)
        type = Types::GetGcmChannelInput.new
        type.application_id = params[:application_id]
        type
      end
    end

    module GetGcmChannelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetGcmChannelOutput, context: context)
        type = Types::GetGcmChannelOutput.new
        type.gcm_channel_response = GCMChannelResponse.build(params[:gcm_channel_response], context: "#{context}[:gcm_channel_response]") unless params[:gcm_channel_response].nil?
        type
      end
    end

    module GetImportJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetImportJobInput, context: context)
        type = Types::GetImportJobInput.new
        type.application_id = params[:application_id]
        type.job_id = params[:job_id]
        type
      end
    end

    module GetImportJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetImportJobOutput, context: context)
        type = Types::GetImportJobOutput.new
        type.import_job_response = ImportJobResponse.build(params[:import_job_response], context: "#{context}[:import_job_response]") unless params[:import_job_response].nil?
        type
      end
    end

    module GetImportJobsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetImportJobsInput, context: context)
        type = Types::GetImportJobsInput.new
        type.application_id = params[:application_id]
        type.page_size = params[:page_size]
        type.token = params[:token]
        type
      end
    end

    module GetImportJobsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetImportJobsOutput, context: context)
        type = Types::GetImportJobsOutput.new
        type.import_jobs_response = ImportJobsResponse.build(params[:import_jobs_response], context: "#{context}[:import_jobs_response]") unless params[:import_jobs_response].nil?
        type
      end
    end

    module GetInAppMessagesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetInAppMessagesInput, context: context)
        type = Types::GetInAppMessagesInput.new
        type.application_id = params[:application_id]
        type.endpoint_id = params[:endpoint_id]
        type
      end
    end

    module GetInAppMessagesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetInAppMessagesOutput, context: context)
        type = Types::GetInAppMessagesOutput.new
        type.in_app_messages_response = InAppMessagesResponse.build(params[:in_app_messages_response], context: "#{context}[:in_app_messages_response]") unless params[:in_app_messages_response].nil?
        type
      end
    end

    module GetInAppTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetInAppTemplateInput, context: context)
        type = Types::GetInAppTemplateInput.new
        type.template_name = params[:template_name]
        type.version = params[:version]
        type
      end
    end

    module GetInAppTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetInAppTemplateOutput, context: context)
        type = Types::GetInAppTemplateOutput.new
        type.in_app_template_response = InAppTemplateResponse.build(params[:in_app_template_response], context: "#{context}[:in_app_template_response]") unless params[:in_app_template_response].nil?
        type
      end
    end

    module GetJourneyDateRangeKpiInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetJourneyDateRangeKpiInput, context: context)
        type = Types::GetJourneyDateRangeKpiInput.new
        type.application_id = params[:application_id]
        type.end_time = params[:end_time]
        type.journey_id = params[:journey_id]
        type.kpi_name = params[:kpi_name]
        type.next_token = params[:next_token]
        type.page_size = params[:page_size]
        type.start_time = params[:start_time]
        type
      end
    end

    module GetJourneyDateRangeKpiOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetJourneyDateRangeKpiOutput, context: context)
        type = Types::GetJourneyDateRangeKpiOutput.new
        type.journey_date_range_kpi_response = JourneyDateRangeKpiResponse.build(params[:journey_date_range_kpi_response], context: "#{context}[:journey_date_range_kpi_response]") unless params[:journey_date_range_kpi_response].nil?
        type
      end
    end

    module GetJourneyExecutionActivityMetricsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetJourneyExecutionActivityMetricsInput, context: context)
        type = Types::GetJourneyExecutionActivityMetricsInput.new
        type.application_id = params[:application_id]
        type.journey_activity_id = params[:journey_activity_id]
        type.journey_id = params[:journey_id]
        type.next_token = params[:next_token]
        type.page_size = params[:page_size]
        type
      end
    end

    module GetJourneyExecutionActivityMetricsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetJourneyExecutionActivityMetricsOutput, context: context)
        type = Types::GetJourneyExecutionActivityMetricsOutput.new
        type.journey_execution_activity_metrics_response = JourneyExecutionActivityMetricsResponse.build(params[:journey_execution_activity_metrics_response], context: "#{context}[:journey_execution_activity_metrics_response]") unless params[:journey_execution_activity_metrics_response].nil?
        type
      end
    end

    module GetJourneyExecutionMetricsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetJourneyExecutionMetricsInput, context: context)
        type = Types::GetJourneyExecutionMetricsInput.new
        type.application_id = params[:application_id]
        type.journey_id = params[:journey_id]
        type.next_token = params[:next_token]
        type.page_size = params[:page_size]
        type
      end
    end

    module GetJourneyExecutionMetricsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetJourneyExecutionMetricsOutput, context: context)
        type = Types::GetJourneyExecutionMetricsOutput.new
        type.journey_execution_metrics_response = JourneyExecutionMetricsResponse.build(params[:journey_execution_metrics_response], context: "#{context}[:journey_execution_metrics_response]") unless params[:journey_execution_metrics_response].nil?
        type
      end
    end

    module GetJourneyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetJourneyInput, context: context)
        type = Types::GetJourneyInput.new
        type.application_id = params[:application_id]
        type.journey_id = params[:journey_id]
        type
      end
    end

    module GetJourneyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetJourneyOutput, context: context)
        type = Types::GetJourneyOutput.new
        type.journey_response = JourneyResponse.build(params[:journey_response], context: "#{context}[:journey_response]") unless params[:journey_response].nil?
        type
      end
    end

    module GetPushTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPushTemplateInput, context: context)
        type = Types::GetPushTemplateInput.new
        type.template_name = params[:template_name]
        type.version = params[:version]
        type
      end
    end

    module GetPushTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPushTemplateOutput, context: context)
        type = Types::GetPushTemplateOutput.new
        type.push_notification_template_response = PushNotificationTemplateResponse.build(params[:push_notification_template_response], context: "#{context}[:push_notification_template_response]") unless params[:push_notification_template_response].nil?
        type
      end
    end

    module GetRecommenderConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRecommenderConfigurationInput, context: context)
        type = Types::GetRecommenderConfigurationInput.new
        type.recommender_id = params[:recommender_id]
        type
      end
    end

    module GetRecommenderConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRecommenderConfigurationOutput, context: context)
        type = Types::GetRecommenderConfigurationOutput.new
        type.recommender_configuration_response = RecommenderConfigurationResponse.build(params[:recommender_configuration_response], context: "#{context}[:recommender_configuration_response]") unless params[:recommender_configuration_response].nil?
        type
      end
    end

    module GetRecommenderConfigurationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRecommenderConfigurationsInput, context: context)
        type = Types::GetRecommenderConfigurationsInput.new
        type.page_size = params[:page_size]
        type.token = params[:token]
        type
      end
    end

    module GetRecommenderConfigurationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRecommenderConfigurationsOutput, context: context)
        type = Types::GetRecommenderConfigurationsOutput.new
        type.list_recommender_configurations_response = ListRecommenderConfigurationsResponse.build(params[:list_recommender_configurations_response], context: "#{context}[:list_recommender_configurations_response]") unless params[:list_recommender_configurations_response].nil?
        type
      end
    end

    module GetSegmentExportJobsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSegmentExportJobsInput, context: context)
        type = Types::GetSegmentExportJobsInput.new
        type.application_id = params[:application_id]
        type.page_size = params[:page_size]
        type.segment_id = params[:segment_id]
        type.token = params[:token]
        type
      end
    end

    module GetSegmentExportJobsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSegmentExportJobsOutput, context: context)
        type = Types::GetSegmentExportJobsOutput.new
        type.export_jobs_response = ExportJobsResponse.build(params[:export_jobs_response], context: "#{context}[:export_jobs_response]") unless params[:export_jobs_response].nil?
        type
      end
    end

    module GetSegmentImportJobsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSegmentImportJobsInput, context: context)
        type = Types::GetSegmentImportJobsInput.new
        type.application_id = params[:application_id]
        type.page_size = params[:page_size]
        type.segment_id = params[:segment_id]
        type.token = params[:token]
        type
      end
    end

    module GetSegmentImportJobsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSegmentImportJobsOutput, context: context)
        type = Types::GetSegmentImportJobsOutput.new
        type.import_jobs_response = ImportJobsResponse.build(params[:import_jobs_response], context: "#{context}[:import_jobs_response]") unless params[:import_jobs_response].nil?
        type
      end
    end

    module GetSegmentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSegmentInput, context: context)
        type = Types::GetSegmentInput.new
        type.application_id = params[:application_id]
        type.segment_id = params[:segment_id]
        type
      end
    end

    module GetSegmentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSegmentOutput, context: context)
        type = Types::GetSegmentOutput.new
        type.segment_response = SegmentResponse.build(params[:segment_response], context: "#{context}[:segment_response]") unless params[:segment_response].nil?
        type
      end
    end

    module GetSegmentVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSegmentVersionInput, context: context)
        type = Types::GetSegmentVersionInput.new
        type.application_id = params[:application_id]
        type.segment_id = params[:segment_id]
        type.version = params[:version]
        type
      end
    end

    module GetSegmentVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSegmentVersionOutput, context: context)
        type = Types::GetSegmentVersionOutput.new
        type.segment_response = SegmentResponse.build(params[:segment_response], context: "#{context}[:segment_response]") unless params[:segment_response].nil?
        type
      end
    end

    module GetSegmentVersionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSegmentVersionsInput, context: context)
        type = Types::GetSegmentVersionsInput.new
        type.application_id = params[:application_id]
        type.page_size = params[:page_size]
        type.segment_id = params[:segment_id]
        type.token = params[:token]
        type
      end
    end

    module GetSegmentVersionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSegmentVersionsOutput, context: context)
        type = Types::GetSegmentVersionsOutput.new
        type.segments_response = SegmentsResponse.build(params[:segments_response], context: "#{context}[:segments_response]") unless params[:segments_response].nil?
        type
      end
    end

    module GetSegmentsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSegmentsInput, context: context)
        type = Types::GetSegmentsInput.new
        type.application_id = params[:application_id]
        type.page_size = params[:page_size]
        type.token = params[:token]
        type
      end
    end

    module GetSegmentsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSegmentsOutput, context: context)
        type = Types::GetSegmentsOutput.new
        type.segments_response = SegmentsResponse.build(params[:segments_response], context: "#{context}[:segments_response]") unless params[:segments_response].nil?
        type
      end
    end

    module GetSmsChannelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSmsChannelInput, context: context)
        type = Types::GetSmsChannelInput.new
        type.application_id = params[:application_id]
        type
      end
    end

    module GetSmsChannelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSmsChannelOutput, context: context)
        type = Types::GetSmsChannelOutput.new
        type.sms_channel_response = SMSChannelResponse.build(params[:sms_channel_response], context: "#{context}[:sms_channel_response]") unless params[:sms_channel_response].nil?
        type
      end
    end

    module GetSmsTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSmsTemplateInput, context: context)
        type = Types::GetSmsTemplateInput.new
        type.template_name = params[:template_name]
        type.version = params[:version]
        type
      end
    end

    module GetSmsTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSmsTemplateOutput, context: context)
        type = Types::GetSmsTemplateOutput.new
        type.sms_template_response = SMSTemplateResponse.build(params[:sms_template_response], context: "#{context}[:sms_template_response]") unless params[:sms_template_response].nil?
        type
      end
    end

    module GetUserEndpointsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetUserEndpointsInput, context: context)
        type = Types::GetUserEndpointsInput.new
        type.application_id = params[:application_id]
        type.user_id = params[:user_id]
        type
      end
    end

    module GetUserEndpointsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetUserEndpointsOutput, context: context)
        type = Types::GetUserEndpointsOutput.new
        type.endpoints_response = EndpointsResponse.build(params[:endpoints_response], context: "#{context}[:endpoints_response]") unless params[:endpoints_response].nil?
        type
      end
    end

    module GetVoiceChannelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetVoiceChannelInput, context: context)
        type = Types::GetVoiceChannelInput.new
        type.application_id = params[:application_id]
        type
      end
    end

    module GetVoiceChannelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetVoiceChannelOutput, context: context)
        type = Types::GetVoiceChannelOutput.new
        type.voice_channel_response = VoiceChannelResponse.build(params[:voice_channel_response], context: "#{context}[:voice_channel_response]") unless params[:voice_channel_response].nil?
        type
      end
    end

    module GetVoiceTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetVoiceTemplateInput, context: context)
        type = Types::GetVoiceTemplateInput.new
        type.template_name = params[:template_name]
        type.version = params[:version]
        type
      end
    end

    module GetVoiceTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetVoiceTemplateOutput, context: context)
        type = Types::GetVoiceTemplateOutput.new
        type.voice_template_response = VoiceTemplateResponse.build(params[:voice_template_response], context: "#{context}[:voice_template_response]") unless params[:voice_template_response].nil?
        type
      end
    end

    module HoldoutActivity
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HoldoutActivity, context: context)
        type = Types::HoldoutActivity.new
        type.next_activity = params[:next_activity]
        type.percentage = params[:percentage]
        type
      end
    end

    module ImportJobRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportJobRequest, context: context)
        type = Types::ImportJobRequest.new
        type.define_segment = params[:define_segment]
        type.external_id = params[:external_id]
        type.format = params[:format]
        type.register_endpoints = params[:register_endpoints]
        type.role_arn = params[:role_arn]
        type.s3_url = params[:s3_url]
        type.segment_id = params[:segment_id]
        type.segment_name = params[:segment_name]
        type
      end
    end

    module ImportJobResource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportJobResource, context: context)
        type = Types::ImportJobResource.new
        type.define_segment = params[:define_segment]
        type.external_id = params[:external_id]
        type.format = params[:format]
        type.register_endpoints = params[:register_endpoints]
        type.role_arn = params[:role_arn]
        type.s3_url = params[:s3_url]
        type.segment_id = params[:segment_id]
        type.segment_name = params[:segment_name]
        type
      end
    end

    module ImportJobResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportJobResponse, context: context)
        type = Types::ImportJobResponse.new
        type.application_id = params[:application_id]
        type.completed_pieces = params[:completed_pieces]
        type.completion_date = params[:completion_date]
        type.creation_date = params[:creation_date]
        type.definition = ImportJobResource.build(params[:definition], context: "#{context}[:definition]") unless params[:definition].nil?
        type.failed_pieces = params[:failed_pieces]
        type.failures = ListOf__string.build(params[:failures], context: "#{context}[:failures]") unless params[:failures].nil?
        type.id = params[:id]
        type.job_status = params[:job_status]
        type.total_failures = params[:total_failures]
        type.total_pieces = params[:total_pieces]
        type.total_processed = params[:total_processed]
        type.type = params[:type]
        type
      end
    end

    module ImportJobsResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportJobsResponse, context: context)
        type = Types::ImportJobsResponse.new
        type.item = ListOfImportJobResponse.build(params[:item], context: "#{context}[:item]") unless params[:item].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module InAppCampaignSchedule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InAppCampaignSchedule, context: context)
        type = Types::InAppCampaignSchedule.new
        type.end_date = params[:end_date]
        type.event_filter = CampaignEventFilter.build(params[:event_filter], context: "#{context}[:event_filter]") unless params[:event_filter].nil?
        type.quiet_time = QuietTime.build(params[:quiet_time], context: "#{context}[:quiet_time]") unless params[:quiet_time].nil?
        type
      end
    end

    module InAppMessage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InAppMessage, context: context)
        type = Types::InAppMessage.new
        type.content = ListOfInAppMessageContent.build(params[:content], context: "#{context}[:content]") unless params[:content].nil?
        type.custom_config = MapOf__string.build(params[:custom_config], context: "#{context}[:custom_config]") unless params[:custom_config].nil?
        type.layout = params[:layout]
        type
      end
    end

    module InAppMessageBodyConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InAppMessageBodyConfig, context: context)
        type = Types::InAppMessageBodyConfig.new
        type.alignment = params[:alignment]
        type.body = params[:body]
        type.text_color = params[:text_color]
        type
      end
    end

    module InAppMessageButton
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InAppMessageButton, context: context)
        type = Types::InAppMessageButton.new
        type.android = OverrideButtonConfiguration.build(params[:android], context: "#{context}[:android]") unless params[:android].nil?
        type.default_config = DefaultButtonConfiguration.build(params[:default_config], context: "#{context}[:default_config]") unless params[:default_config].nil?
        type.ios = OverrideButtonConfiguration.build(params[:ios], context: "#{context}[:ios]") unless params[:ios].nil?
        type.web = OverrideButtonConfiguration.build(params[:web], context: "#{context}[:web]") unless params[:web].nil?
        type
      end
    end

    module InAppMessageCampaign
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InAppMessageCampaign, context: context)
        type = Types::InAppMessageCampaign.new
        type.campaign_id = params[:campaign_id]
        type.daily_cap = params[:daily_cap]
        type.in_app_message = InAppMessage.build(params[:in_app_message], context: "#{context}[:in_app_message]") unless params[:in_app_message].nil?
        type.priority = params[:priority]
        type.schedule = InAppCampaignSchedule.build(params[:schedule], context: "#{context}[:schedule]") unless params[:schedule].nil?
        type.session_cap = params[:session_cap]
        type.total_cap = params[:total_cap]
        type.treatment_id = params[:treatment_id]
        type
      end
    end

    module InAppMessageContent
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InAppMessageContent, context: context)
        type = Types::InAppMessageContent.new
        type.background_color = params[:background_color]
        type.body_config = InAppMessageBodyConfig.build(params[:body_config], context: "#{context}[:body_config]") unless params[:body_config].nil?
        type.header_config = InAppMessageHeaderConfig.build(params[:header_config], context: "#{context}[:header_config]") unless params[:header_config].nil?
        type.image_url = params[:image_url]
        type.primary_btn = InAppMessageButton.build(params[:primary_btn], context: "#{context}[:primary_btn]") unless params[:primary_btn].nil?
        type.secondary_btn = InAppMessageButton.build(params[:secondary_btn], context: "#{context}[:secondary_btn]") unless params[:secondary_btn].nil?
        type
      end
    end

    module InAppMessageHeaderConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InAppMessageHeaderConfig, context: context)
        type = Types::InAppMessageHeaderConfig.new
        type.alignment = params[:alignment]
        type.header = params[:header]
        type.text_color = params[:text_color]
        type
      end
    end

    module InAppMessagesResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InAppMessagesResponse, context: context)
        type = Types::InAppMessagesResponse.new
        type.in_app_message_campaigns = ListOfInAppMessageCampaign.build(params[:in_app_message_campaigns], context: "#{context}[:in_app_message_campaigns]") unless params[:in_app_message_campaigns].nil?
        type
      end
    end

    module InAppTemplateRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InAppTemplateRequest, context: context)
        type = Types::InAppTemplateRequest.new
        type.content = ListOfInAppMessageContent.build(params[:content], context: "#{context}[:content]") unless params[:content].nil?
        type.custom_config = MapOf__string.build(params[:custom_config], context: "#{context}[:custom_config]") unless params[:custom_config].nil?
        type.layout = params[:layout]
        type.tags = MapOf__string.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.template_description = params[:template_description]
        type
      end
    end

    module InAppTemplateResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InAppTemplateResponse, context: context)
        type = Types::InAppTemplateResponse.new
        type.arn = params[:arn]
        type.content = ListOfInAppMessageContent.build(params[:content], context: "#{context}[:content]") unless params[:content].nil?
        type.creation_date = params[:creation_date]
        type.custom_config = MapOf__string.build(params[:custom_config], context: "#{context}[:custom_config]") unless params[:custom_config].nil?
        type.last_modified_date = params[:last_modified_date]
        type.layout = params[:layout]
        type.tags = MapOf__string.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.template_description = params[:template_description]
        type.template_name = params[:template_name]
        type.template_type = params[:template_type]
        type.version = params[:version]
        type
      end
    end

    module InternalServerErrorException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerErrorException, context: context)
        type = Types::InternalServerErrorException.new
        type.message = params[:message]
        type.request_id = params[:request_id]
        type
      end
    end

    module ItemResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ItemResponse, context: context)
        type = Types::ItemResponse.new
        type.endpoint_item_response = EndpointItemResponse.build(params[:endpoint_item_response], context: "#{context}[:endpoint_item_response]") unless params[:endpoint_item_response].nil?
        type.events_item_response = MapOfEventItemResponse.build(params[:events_item_response], context: "#{context}[:events_item_response]") unless params[:events_item_response].nil?
        type
      end
    end

    module JourneyChannelSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JourneyChannelSettings, context: context)
        type = Types::JourneyChannelSettings.new
        type.connect_campaign_arn = params[:connect_campaign_arn]
        type.connect_campaign_execution_role_arn = params[:connect_campaign_execution_role_arn]
        type
      end
    end

    module JourneyCustomMessage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JourneyCustomMessage, context: context)
        type = Types::JourneyCustomMessage.new
        type.data = params[:data]
        type
      end
    end

    module JourneyDateRangeKpiResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JourneyDateRangeKpiResponse, context: context)
        type = Types::JourneyDateRangeKpiResponse.new
        type.application_id = params[:application_id]
        type.end_time = params[:end_time]
        type.journey_id = params[:journey_id]
        type.kpi_name = params[:kpi_name]
        type.kpi_result = BaseKpiResult.build(params[:kpi_result], context: "#{context}[:kpi_result]") unless params[:kpi_result].nil?
        type.next_token = params[:next_token]
        type.start_time = params[:start_time]
        type
      end
    end

    module JourneyEmailMessage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JourneyEmailMessage, context: context)
        type = Types::JourneyEmailMessage.new
        type.from_address = params[:from_address]
        type
      end
    end

    module JourneyExecutionActivityMetricsResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JourneyExecutionActivityMetricsResponse, context: context)
        type = Types::JourneyExecutionActivityMetricsResponse.new
        type.activity_type = params[:activity_type]
        type.application_id = params[:application_id]
        type.journey_activity_id = params[:journey_activity_id]
        type.journey_id = params[:journey_id]
        type.last_evaluated_time = params[:last_evaluated_time]
        type.metrics = MapOf__string.build(params[:metrics], context: "#{context}[:metrics]") unless params[:metrics].nil?
        type
      end
    end

    module JourneyExecutionMetricsResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JourneyExecutionMetricsResponse, context: context)
        type = Types::JourneyExecutionMetricsResponse.new
        type.application_id = params[:application_id]
        type.journey_id = params[:journey_id]
        type.last_evaluated_time = params[:last_evaluated_time]
        type.metrics = MapOf__string.build(params[:metrics], context: "#{context}[:metrics]") unless params[:metrics].nil?
        type
      end
    end

    module JourneyLimits
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JourneyLimits, context: context)
        type = Types::JourneyLimits.new
        type.daily_cap = params[:daily_cap]
        type.endpoint_reentry_cap = params[:endpoint_reentry_cap]
        type.messages_per_second = params[:messages_per_second]
        type.endpoint_reentry_interval = params[:endpoint_reentry_interval]
        type
      end
    end

    module JourneyPushMessage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JourneyPushMessage, context: context)
        type = Types::JourneyPushMessage.new
        type.time_to_live = params[:time_to_live]
        type
      end
    end

    module JourneyResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JourneyResponse, context: context)
        type = Types::JourneyResponse.new
        type.activities = MapOfActivity.build(params[:activities], context: "#{context}[:activities]") unless params[:activities].nil?
        type.application_id = params[:application_id]
        type.creation_date = params[:creation_date]
        type.id = params[:id]
        type.last_modified_date = params[:last_modified_date]
        type.limits = JourneyLimits.build(params[:limits], context: "#{context}[:limits]") unless params[:limits].nil?
        type.local_time = params[:local_time]
        type.name = params[:name]
        type.quiet_time = QuietTime.build(params[:quiet_time], context: "#{context}[:quiet_time]") unless params[:quiet_time].nil?
        type.refresh_frequency = params[:refresh_frequency]
        type.schedule = JourneySchedule.build(params[:schedule], context: "#{context}[:schedule]") unless params[:schedule].nil?
        type.start_activity = params[:start_activity]
        type.start_condition = StartCondition.build(params[:start_condition], context: "#{context}[:start_condition]") unless params[:start_condition].nil?
        type.state = params[:state]
        type.tags = MapOf__string.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.wait_for_quiet_time = params[:wait_for_quiet_time]
        type.refresh_on_segment_update = params[:refresh_on_segment_update]
        type.journey_channel_settings = JourneyChannelSettings.build(params[:journey_channel_settings], context: "#{context}[:journey_channel_settings]") unless params[:journey_channel_settings].nil?
        type
      end
    end

    module JourneySMSMessage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JourneySMSMessage, context: context)
        type = Types::JourneySMSMessage.new
        type.message_type = params[:message_type]
        type.origination_number = params[:origination_number]
        type.sender_id = params[:sender_id]
        type.entity_id = params[:entity_id]
        type.template_id = params[:template_id]
        type
      end
    end

    module JourneySchedule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JourneySchedule, context: context)
        type = Types::JourneySchedule.new
        type.end_time = params[:end_time]
        type.start_time = params[:start_time]
        type.timezone = params[:timezone]
        type
      end
    end

    module JourneyStateRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JourneyStateRequest, context: context)
        type = Types::JourneyStateRequest.new
        type.state = params[:state]
        type
      end
    end

    module JourneysResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JourneysResponse, context: context)
        type = Types::JourneysResponse.new
        type.item = ListOfJourneyResponse.build(params[:item], context: "#{context}[:item]") unless params[:item].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListJourneysInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListJourneysInput, context: context)
        type = Types::ListJourneysInput.new
        type.application_id = params[:application_id]
        type.page_size = params[:page_size]
        type.token = params[:token]
        type
      end
    end

    module ListJourneysOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListJourneysOutput, context: context)
        type = Types::ListJourneysOutput.new
        type.journeys_response = JourneysResponse.build(params[:journeys_response], context: "#{context}[:journeys_response]") unless params[:journeys_response].nil?
        type
      end
    end

    module ListOfActivityResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ActivityResponse.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListOfApplicationResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ApplicationResponse.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListOfCampaignResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CampaignResponse.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListOfEndpointBatchItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EndpointBatchItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListOfEndpointResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EndpointResponse.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListOfExportJobResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ExportJobResponse.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListOfImportJobResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ImportJobResponse.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListOfInAppMessageCampaign
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InAppMessageCampaign.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListOfInAppMessageContent
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InAppMessageContent.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListOfJourneyResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << JourneyResponse.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListOfMultiConditionalBranch
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MultiConditionalBranch.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListOfRandomSplitEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RandomSplitEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListOfRecommenderConfigurationResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RecommenderConfigurationResponse.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListOfResultRow
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ResultRow.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListOfResultRowValue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ResultRowValue.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListOfSegmentDimensions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SegmentDimensions.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListOfSegmentGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SegmentGroup.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListOfSegmentReference
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SegmentReference.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListOfSegmentResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SegmentResponse.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListOfSimpleCondition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SimpleCondition.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListOfTemplateResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TemplateResponse.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListOfTemplateVersionResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TemplateVersionResponse.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListOfTreatmentResource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TreatmentResource.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListOfWriteTreatmentResource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << WriteTreatmentResource.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListOf__EndpointTypesElement
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ListOf__string
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ListRecommenderConfigurationsResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRecommenderConfigurationsResponse, context: context)
        type = Types::ListRecommenderConfigurationsResponse.new
        type.item = ListOfRecommenderConfigurationResponse.build(params[:item], context: "#{context}[:item]") unless params[:item].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.tags_model = TagsModel.build(params[:tags_model], context: "#{context}[:tags_model]") unless params[:tags_model].nil?
        type
      end
    end

    module ListTemplateVersionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTemplateVersionsInput, context: context)
        type = Types::ListTemplateVersionsInput.new
        type.next_token = params[:next_token]
        type.page_size = params[:page_size]
        type.template_name = params[:template_name]
        type.template_type = params[:template_type]
        type
      end
    end

    module ListTemplateVersionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTemplateVersionsOutput, context: context)
        type = Types::ListTemplateVersionsOutput.new
        type.template_versions_response = TemplateVersionsResponse.build(params[:template_versions_response], context: "#{context}[:template_versions_response]") unless params[:template_versions_response].nil?
        type
      end
    end

    module ListTemplatesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTemplatesInput, context: context)
        type = Types::ListTemplatesInput.new
        type.next_token = params[:next_token]
        type.page_size = params[:page_size]
        type.prefix = params[:prefix]
        type.template_type = params[:template_type]
        type
      end
    end

    module ListTemplatesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTemplatesOutput, context: context)
        type = Types::ListTemplatesOutput.new
        type.templates_response = TemplatesResponse.build(params[:templates_response], context: "#{context}[:templates_response]") unless params[:templates_response].nil?
        type
      end
    end

    module MapOfActivity
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = Activity.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module MapOfAddressConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = AddressConfiguration.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module MapOfAttributeDimension
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = AttributeDimension.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module MapOfChannelResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = ChannelResponse.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module MapOfEndpointMessageResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = EndpointMessageResult.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module MapOfEndpointSendConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = EndpointSendConfiguration.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module MapOfEvent
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = Event.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module MapOfEventItemResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = EventItemResponse.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module MapOfEventsBatch
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = EventsBatch.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module MapOfItemResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = ItemResponse.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module MapOfListOf__string
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = ListOf__string.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module MapOfMapOfEndpointMessageResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = MapOfEndpointMessageResult.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module MapOfMessageResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = MessageResult.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module MapOfMetricDimension
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = MetricDimension.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module MapOf__double
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module MapOf__integer
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module MapOf__string
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module Message
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Message, context: context)
        type = Types::Message.new
        type.action = params[:action]
        type.body = params[:body]
        type.image_icon_url = params[:image_icon_url]
        type.image_small_icon_url = params[:image_small_icon_url]
        type.image_url = params[:image_url]
        type.json_body = params[:json_body]
        type.media_url = params[:media_url]
        type.raw_content = params[:raw_content]
        type.silent_push = params[:silent_push]
        type.time_to_live = params[:time_to_live]
        type.title = params[:title]
        type.url = params[:url]
        type
      end
    end

    module MessageBody
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MessageBody, context: context)
        type = Types::MessageBody.new
        type.message = params[:message]
        type.request_id = params[:request_id]
        type
      end
    end

    module MessageConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MessageConfiguration, context: context)
        type = Types::MessageConfiguration.new
        type.adm_message = Message.build(params[:adm_message], context: "#{context}[:adm_message]") unless params[:adm_message].nil?
        type.apns_message = Message.build(params[:apns_message], context: "#{context}[:apns_message]") unless params[:apns_message].nil?
        type.baidu_message = Message.build(params[:baidu_message], context: "#{context}[:baidu_message]") unless params[:baidu_message].nil?
        type.custom_message = CampaignCustomMessage.build(params[:custom_message], context: "#{context}[:custom_message]") unless params[:custom_message].nil?
        type.default_message = Message.build(params[:default_message], context: "#{context}[:default_message]") unless params[:default_message].nil?
        type.email_message = CampaignEmailMessage.build(params[:email_message], context: "#{context}[:email_message]") unless params[:email_message].nil?
        type.gcm_message = Message.build(params[:gcm_message], context: "#{context}[:gcm_message]") unless params[:gcm_message].nil?
        type.sms_message = CampaignSmsMessage.build(params[:sms_message], context: "#{context}[:sms_message]") unless params[:sms_message].nil?
        type.in_app_message = CampaignInAppMessage.build(params[:in_app_message], context: "#{context}[:in_app_message]") unless params[:in_app_message].nil?
        type
      end
    end

    module MessageRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MessageRequest, context: context)
        type = Types::MessageRequest.new
        type.addresses = MapOfAddressConfiguration.build(params[:addresses], context: "#{context}[:addresses]") unless params[:addresses].nil?
        type.context = MapOf__string.build(params[:context], context: "#{context}[:context]") unless params[:context].nil?
        type.endpoints = MapOfEndpointSendConfiguration.build(params[:endpoints], context: "#{context}[:endpoints]") unless params[:endpoints].nil?
        type.message_configuration = DirectMessageConfiguration.build(params[:message_configuration], context: "#{context}[:message_configuration]") unless params[:message_configuration].nil?
        type.template_configuration = TemplateConfiguration.build(params[:template_configuration], context: "#{context}[:template_configuration]") unless params[:template_configuration].nil?
        type.trace_id = params[:trace_id]
        type
      end
    end

    module MessageResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MessageResponse, context: context)
        type = Types::MessageResponse.new
        type.application_id = params[:application_id]
        type.endpoint_result = MapOfEndpointMessageResult.build(params[:endpoint_result], context: "#{context}[:endpoint_result]") unless params[:endpoint_result].nil?
        type.request_id = params[:request_id]
        type.result = MapOfMessageResult.build(params[:result], context: "#{context}[:result]") unless params[:result].nil?
        type
      end
    end

    module MessageResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MessageResult, context: context)
        type = Types::MessageResult.new
        type.delivery_status = params[:delivery_status]
        type.message_id = params[:message_id]
        type.status_code = params[:status_code]
        type.status_message = params[:status_message]
        type.updated_token = params[:updated_token]
        type
      end
    end

    module MethodNotAllowedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MethodNotAllowedException, context: context)
        type = Types::MethodNotAllowedException.new
        type.message = params[:message]
        type.request_id = params[:request_id]
        type
      end
    end

    module MetricDimension
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MetricDimension, context: context)
        type = Types::MetricDimension.new
        type.comparison_operator = params[:comparison_operator]
        type.value = params[:value]
        type
      end
    end

    module MultiConditionalBranch
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MultiConditionalBranch, context: context)
        type = Types::MultiConditionalBranch.new
        type.condition = SimpleCondition.build(params[:condition], context: "#{context}[:condition]") unless params[:condition].nil?
        type.next_activity = params[:next_activity]
        type
      end
    end

    module MultiConditionalSplitActivity
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MultiConditionalSplitActivity, context: context)
        type = Types::MultiConditionalSplitActivity.new
        type.branches = ListOfMultiConditionalBranch.build(params[:branches], context: "#{context}[:branches]") unless params[:branches].nil?
        type.default_activity = params[:default_activity]
        type.evaluation_wait_time = WaitTime.build(params[:evaluation_wait_time], context: "#{context}[:evaluation_wait_time]") unless params[:evaluation_wait_time].nil?
        type
      end
    end

    module NotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotFoundException, context: context)
        type = Types::NotFoundException.new
        type.message = params[:message]
        type.request_id = params[:request_id]
        type
      end
    end

    module NumberValidateRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NumberValidateRequest, context: context)
        type = Types::NumberValidateRequest.new
        type.iso_country_code = params[:iso_country_code]
        type.phone_number = params[:phone_number]
        type
      end
    end

    module NumberValidateResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NumberValidateResponse, context: context)
        type = Types::NumberValidateResponse.new
        type.carrier = params[:carrier]
        type.city = params[:city]
        type.cleansed_phone_number_e164 = params[:cleansed_phone_number_e164]
        type.cleansed_phone_number_national = params[:cleansed_phone_number_national]
        type.country = params[:country]
        type.country_code_iso2 = params[:country_code_iso2]
        type.country_code_numeric = params[:country_code_numeric]
        type.county = params[:county]
        type.original_country_code_iso2 = params[:original_country_code_iso2]
        type.original_phone_number = params[:original_phone_number]
        type.phone_type = params[:phone_type]
        type.phone_type_code = params[:phone_type_code]
        type.timezone = params[:timezone]
        type.zip_code = params[:zip_code]
        type
      end
    end

    module OverrideButtonConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OverrideButtonConfiguration, context: context)
        type = Types::OverrideButtonConfiguration.new
        type.button_action = params[:button_action]
        type.link = params[:link]
        type
      end
    end

    module PayloadTooLargeException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PayloadTooLargeException, context: context)
        type = Types::PayloadTooLargeException.new
        type.message = params[:message]
        type.request_id = params[:request_id]
        type
      end
    end

    module PhoneNumberValidateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PhoneNumberValidateInput, context: context)
        type = Types::PhoneNumberValidateInput.new
        type.number_validate_request = NumberValidateRequest.build(params[:number_validate_request], context: "#{context}[:number_validate_request]") unless params[:number_validate_request].nil?
        type
      end
    end

    module PhoneNumberValidateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PhoneNumberValidateOutput, context: context)
        type = Types::PhoneNumberValidateOutput.new
        type.number_validate_response = NumberValidateResponse.build(params[:number_validate_response], context: "#{context}[:number_validate_response]") unless params[:number_validate_response].nil?
        type
      end
    end

    module PublicEndpoint
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PublicEndpoint, context: context)
        type = Types::PublicEndpoint.new
        type.address = params[:address]
        type.attributes = MapOfListOf__string.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type.channel_type = params[:channel_type]
        type.demographic = EndpointDemographic.build(params[:demographic], context: "#{context}[:demographic]") unless params[:demographic].nil?
        type.effective_date = params[:effective_date]
        type.endpoint_status = params[:endpoint_status]
        type.location = EndpointLocation.build(params[:location], context: "#{context}[:location]") unless params[:location].nil?
        type.metrics = MapOf__double.build(params[:metrics], context: "#{context}[:metrics]") unless params[:metrics].nil?
        type.opt_out = params[:opt_out]
        type.request_id = params[:request_id]
        type.user = EndpointUser.build(params[:user], context: "#{context}[:user]") unless params[:user].nil?
        type
      end
    end

    module PushMessageActivity
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PushMessageActivity, context: context)
        type = Types::PushMessageActivity.new
        type.message_config = JourneyPushMessage.build(params[:message_config], context: "#{context}[:message_config]") unless params[:message_config].nil?
        type.next_activity = params[:next_activity]
        type.template_name = params[:template_name]
        type.template_version = params[:template_version]
        type
      end
    end

    module PushNotificationTemplateRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PushNotificationTemplateRequest, context: context)
        type = Types::PushNotificationTemplateRequest.new
        type.adm = AndroidPushNotificationTemplate.build(params[:adm], context: "#{context}[:adm]") unless params[:adm].nil?
        type.apns = APNSPushNotificationTemplate.build(params[:apns], context: "#{context}[:apns]") unless params[:apns].nil?
        type.baidu = AndroidPushNotificationTemplate.build(params[:baidu], context: "#{context}[:baidu]") unless params[:baidu].nil?
        type.default = DefaultPushNotificationTemplate.build(params[:default], context: "#{context}[:default]") unless params[:default].nil?
        type.default_substitutions = params[:default_substitutions]
        type.gcm = AndroidPushNotificationTemplate.build(params[:gcm], context: "#{context}[:gcm]") unless params[:gcm].nil?
        type.recommender_id = params[:recommender_id]
        type.tags = MapOf__string.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.template_description = params[:template_description]
        type
      end
    end

    module PushNotificationTemplateResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PushNotificationTemplateResponse, context: context)
        type = Types::PushNotificationTemplateResponse.new
        type.adm = AndroidPushNotificationTemplate.build(params[:adm], context: "#{context}[:adm]") unless params[:adm].nil?
        type.apns = APNSPushNotificationTemplate.build(params[:apns], context: "#{context}[:apns]") unless params[:apns].nil?
        type.arn = params[:arn]
        type.baidu = AndroidPushNotificationTemplate.build(params[:baidu], context: "#{context}[:baidu]") unless params[:baidu].nil?
        type.creation_date = params[:creation_date]
        type.default = DefaultPushNotificationTemplate.build(params[:default], context: "#{context}[:default]") unless params[:default].nil?
        type.default_substitutions = params[:default_substitutions]
        type.gcm = AndroidPushNotificationTemplate.build(params[:gcm], context: "#{context}[:gcm]") unless params[:gcm].nil?
        type.last_modified_date = params[:last_modified_date]
        type.recommender_id = params[:recommender_id]
        type.tags = MapOf__string.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.template_description = params[:template_description]
        type.template_name = params[:template_name]
        type.template_type = params[:template_type]
        type.version = params[:version]
        type
      end
    end

    module PutEventStreamInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutEventStreamInput, context: context)
        type = Types::PutEventStreamInput.new
        type.application_id = params[:application_id]
        type.write_event_stream = WriteEventStream.build(params[:write_event_stream], context: "#{context}[:write_event_stream]") unless params[:write_event_stream].nil?
        type
      end
    end

    module PutEventStreamOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutEventStreamOutput, context: context)
        type = Types::PutEventStreamOutput.new
        type.event_stream = EventStream.build(params[:event_stream], context: "#{context}[:event_stream]") unless params[:event_stream].nil?
        type
      end
    end

    module PutEventsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutEventsInput, context: context)
        type = Types::PutEventsInput.new
        type.application_id = params[:application_id]
        type.events_request = EventsRequest.build(params[:events_request], context: "#{context}[:events_request]") unless params[:events_request].nil?
        type
      end
    end

    module PutEventsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutEventsOutput, context: context)
        type = Types::PutEventsOutput.new
        type.events_response = EventsResponse.build(params[:events_response], context: "#{context}[:events_response]") unless params[:events_response].nil?
        type
      end
    end

    module QuietTime
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::QuietTime, context: context)
        type = Types::QuietTime.new
        type.end = params[:end]
        type.start = params[:start]
        type
      end
    end

    module RandomSplitActivity
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RandomSplitActivity, context: context)
        type = Types::RandomSplitActivity.new
        type.branches = ListOfRandomSplitEntry.build(params[:branches], context: "#{context}[:branches]") unless params[:branches].nil?
        type
      end
    end

    module RandomSplitEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RandomSplitEntry, context: context)
        type = Types::RandomSplitEntry.new
        type.next_activity = params[:next_activity]
        type.percentage = params[:percentage]
        type
      end
    end

    module RawEmail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RawEmail, context: context)
        type = Types::RawEmail.new
        type.data = params[:data]
        type
      end
    end

    module RecencyDimension
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RecencyDimension, context: context)
        type = Types::RecencyDimension.new
        type.duration = params[:duration]
        type.recency_type = params[:recency_type]
        type
      end
    end

    module RecommenderConfigurationResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RecommenderConfigurationResponse, context: context)
        type = Types::RecommenderConfigurationResponse.new
        type.attributes = MapOf__string.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type.creation_date = params[:creation_date]
        type.description = params[:description]
        type.id = params[:id]
        type.last_modified_date = params[:last_modified_date]
        type.name = params[:name]
        type.recommendation_provider_id_type = params[:recommendation_provider_id_type]
        type.recommendation_provider_role_arn = params[:recommendation_provider_role_arn]
        type.recommendation_provider_uri = params[:recommendation_provider_uri]
        type.recommendation_transformer_uri = params[:recommendation_transformer_uri]
        type.recommendations_display_name = params[:recommendations_display_name]
        type.recommendations_per_message = params[:recommendations_per_message]
        type
      end
    end

    module RemoveAttributesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveAttributesInput, context: context)
        type = Types::RemoveAttributesInput.new
        type.application_id = params[:application_id]
        type.attribute_type = params[:attribute_type]
        type.update_attributes_request = UpdateAttributesRequest.build(params[:update_attributes_request], context: "#{context}[:update_attributes_request]") unless params[:update_attributes_request].nil?
        type
      end
    end

    module RemoveAttributesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveAttributesOutput, context: context)
        type = Types::RemoveAttributesOutput.new
        type.attributes_resource = AttributesResource.build(params[:attributes_resource], context: "#{context}[:attributes_resource]") unless params[:attributes_resource].nil?
        type
      end
    end

    module ResultRow
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResultRow, context: context)
        type = Types::ResultRow.new
        type.grouped_bys = ListOfResultRowValue.build(params[:grouped_bys], context: "#{context}[:grouped_bys]") unless params[:grouped_bys].nil?
        type.values = ListOfResultRowValue.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module ResultRowValue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResultRowValue, context: context)
        type = Types::ResultRowValue.new
        type.key = params[:key]
        type.type = params[:type]
        type.value = params[:value]
        type
      end
    end

    module SMSChannelRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SMSChannelRequest, context: context)
        type = Types::SMSChannelRequest.new
        type.enabled = params[:enabled]
        type.sender_id = params[:sender_id]
        type.short_code = params[:short_code]
        type
      end
    end

    module SMSChannelResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SMSChannelResponse, context: context)
        type = Types::SMSChannelResponse.new
        type.application_id = params[:application_id]
        type.creation_date = params[:creation_date]
        type.enabled = params[:enabled]
        type.has_credential = params[:has_credential]
        type.id = params[:id]
        type.is_archived = params[:is_archived]
        type.last_modified_by = params[:last_modified_by]
        type.last_modified_date = params[:last_modified_date]
        type.platform = params[:platform]
        type.promotional_messages_per_second = params[:promotional_messages_per_second]
        type.sender_id = params[:sender_id]
        type.short_code = params[:short_code]
        type.transactional_messages_per_second = params[:transactional_messages_per_second]
        type.version = params[:version]
        type
      end
    end

    module SMSMessage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SMSMessage, context: context)
        type = Types::SMSMessage.new
        type.body = params[:body]
        type.keyword = params[:keyword]
        type.media_url = params[:media_url]
        type.message_type = params[:message_type]
        type.origination_number = params[:origination_number]
        type.sender_id = params[:sender_id]
        type.substitutions = MapOfListOf__string.build(params[:substitutions], context: "#{context}[:substitutions]") unless params[:substitutions].nil?
        type.entity_id = params[:entity_id]
        type.template_id = params[:template_id]
        type
      end
    end

    module SMSMessageActivity
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SMSMessageActivity, context: context)
        type = Types::SMSMessageActivity.new
        type.message_config = JourneySMSMessage.build(params[:message_config], context: "#{context}[:message_config]") unless params[:message_config].nil?
        type.next_activity = params[:next_activity]
        type.template_name = params[:template_name]
        type.template_version = params[:template_version]
        type
      end
    end

    module SMSTemplateRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SMSTemplateRequest, context: context)
        type = Types::SMSTemplateRequest.new
        type.body = params[:body]
        type.default_substitutions = params[:default_substitutions]
        type.recommender_id = params[:recommender_id]
        type.tags = MapOf__string.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.template_description = params[:template_description]
        type
      end
    end

    module SMSTemplateResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SMSTemplateResponse, context: context)
        type = Types::SMSTemplateResponse.new
        type.arn = params[:arn]
        type.body = params[:body]
        type.creation_date = params[:creation_date]
        type.default_substitutions = params[:default_substitutions]
        type.last_modified_date = params[:last_modified_date]
        type.recommender_id = params[:recommender_id]
        type.tags = MapOf__string.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.template_description = params[:template_description]
        type.template_name = params[:template_name]
        type.template_type = params[:template_type]
        type.version = params[:version]
        type
      end
    end

    module Schedule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Schedule, context: context)
        type = Types::Schedule.new
        type.end_time = params[:end_time]
        type.event_filter = CampaignEventFilter.build(params[:event_filter], context: "#{context}[:event_filter]") unless params[:event_filter].nil?
        type.frequency = params[:frequency]
        type.is_local_time = params[:is_local_time]
        type.quiet_time = QuietTime.build(params[:quiet_time], context: "#{context}[:quiet_time]") unless params[:quiet_time].nil?
        type.start_time = params[:start_time]
        type.timezone = params[:timezone]
        type
      end
    end

    module SegmentBehaviors
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SegmentBehaviors, context: context)
        type = Types::SegmentBehaviors.new
        type.recency = RecencyDimension.build(params[:recency], context: "#{context}[:recency]") unless params[:recency].nil?
        type
      end
    end

    module SegmentCondition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SegmentCondition, context: context)
        type = Types::SegmentCondition.new
        type.segment_id = params[:segment_id]
        type
      end
    end

    module SegmentDemographics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SegmentDemographics, context: context)
        type = Types::SegmentDemographics.new
        type.app_version = SetDimension.build(params[:app_version], context: "#{context}[:app_version]") unless params[:app_version].nil?
        type.channel = SetDimension.build(params[:channel], context: "#{context}[:channel]") unless params[:channel].nil?
        type.device_type = SetDimension.build(params[:device_type], context: "#{context}[:device_type]") unless params[:device_type].nil?
        type.make = SetDimension.build(params[:make], context: "#{context}[:make]") unless params[:make].nil?
        type.model = SetDimension.build(params[:model], context: "#{context}[:model]") unless params[:model].nil?
        type.platform = SetDimension.build(params[:platform], context: "#{context}[:platform]") unless params[:platform].nil?
        type
      end
    end

    module SegmentDimensions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SegmentDimensions, context: context)
        type = Types::SegmentDimensions.new
        type.attributes = MapOfAttributeDimension.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type.behavior = SegmentBehaviors.build(params[:behavior], context: "#{context}[:behavior]") unless params[:behavior].nil?
        type.demographic = SegmentDemographics.build(params[:demographic], context: "#{context}[:demographic]") unless params[:demographic].nil?
        type.location = SegmentLocation.build(params[:location], context: "#{context}[:location]") unless params[:location].nil?
        type.metrics = MapOfMetricDimension.build(params[:metrics], context: "#{context}[:metrics]") unless params[:metrics].nil?
        type.user_attributes = MapOfAttributeDimension.build(params[:user_attributes], context: "#{context}[:user_attributes]") unless params[:user_attributes].nil?
        type
      end
    end

    module SegmentGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SegmentGroup, context: context)
        type = Types::SegmentGroup.new
        type.dimensions = ListOfSegmentDimensions.build(params[:dimensions], context: "#{context}[:dimensions]") unless params[:dimensions].nil?
        type.source_segments = ListOfSegmentReference.build(params[:source_segments], context: "#{context}[:source_segments]") unless params[:source_segments].nil?
        type.source_type = params[:source_type]
        type.type = params[:type]
        type
      end
    end

    module SegmentGroupList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SegmentGroupList, context: context)
        type = Types::SegmentGroupList.new
        type.groups = ListOfSegmentGroup.build(params[:groups], context: "#{context}[:groups]") unless params[:groups].nil?
        type.include = params[:include]
        type
      end
    end

    module SegmentImportResource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SegmentImportResource, context: context)
        type = Types::SegmentImportResource.new
        type.channel_counts = MapOf__integer.build(params[:channel_counts], context: "#{context}[:channel_counts]") unless params[:channel_counts].nil?
        type.external_id = params[:external_id]
        type.format = params[:format]
        type.role_arn = params[:role_arn]
        type.s3_url = params[:s3_url]
        type.size = params[:size]
        type
      end
    end

    module SegmentLocation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SegmentLocation, context: context)
        type = Types::SegmentLocation.new
        type.country = SetDimension.build(params[:country], context: "#{context}[:country]") unless params[:country].nil?
        type.gps_point = GPSPointDimension.build(params[:gps_point], context: "#{context}[:gps_point]") unless params[:gps_point].nil?
        type
      end
    end

    module SegmentReference
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SegmentReference, context: context)
        type = Types::SegmentReference.new
        type.id = params[:id]
        type.version = params[:version]
        type
      end
    end

    module SegmentResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SegmentResponse, context: context)
        type = Types::SegmentResponse.new
        type.application_id = params[:application_id]
        type.arn = params[:arn]
        type.creation_date = params[:creation_date]
        type.dimensions = SegmentDimensions.build(params[:dimensions], context: "#{context}[:dimensions]") unless params[:dimensions].nil?
        type.id = params[:id]
        type.import_definition = SegmentImportResource.build(params[:import_definition], context: "#{context}[:import_definition]") unless params[:import_definition].nil?
        type.last_modified_date = params[:last_modified_date]
        type.name = params[:name]
        type.segment_groups = SegmentGroupList.build(params[:segment_groups], context: "#{context}[:segment_groups]") unless params[:segment_groups].nil?
        type.segment_type = params[:segment_type]
        type.tags = MapOf__string.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.version = params[:version]
        type
      end
    end

    module SegmentsResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SegmentsResponse, context: context)
        type = Types::SegmentsResponse.new
        type.item = ListOfSegmentResponse.build(params[:item], context: "#{context}[:item]") unless params[:item].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module SendMessagesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendMessagesInput, context: context)
        type = Types::SendMessagesInput.new
        type.application_id = params[:application_id]
        type.message_request = MessageRequest.build(params[:message_request], context: "#{context}[:message_request]") unless params[:message_request].nil?
        type
      end
    end

    module SendMessagesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendMessagesOutput, context: context)
        type = Types::SendMessagesOutput.new
        type.message_response = MessageResponse.build(params[:message_response], context: "#{context}[:message_response]") unless params[:message_response].nil?
        type
      end
    end

    module SendOTPMessageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendOTPMessageInput, context: context)
        type = Types::SendOTPMessageInput.new
        type.application_id = params[:application_id]
        type.send_otp_message_request_parameters = SendOTPMessageRequestParameters.build(params[:send_otp_message_request_parameters], context: "#{context}[:send_otp_message_request_parameters]") unless params[:send_otp_message_request_parameters].nil?
        type
      end
    end

    module SendOTPMessageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendOTPMessageOutput, context: context)
        type = Types::SendOTPMessageOutput.new
        type.message_response = MessageResponse.build(params[:message_response], context: "#{context}[:message_response]") unless params[:message_response].nil?
        type
      end
    end

    module SendOTPMessageRequestParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendOTPMessageRequestParameters, context: context)
        type = Types::SendOTPMessageRequestParameters.new
        type.allowed_attempts = params[:allowed_attempts]
        type.brand_name = params[:brand_name]
        type.channel = params[:channel]
        type.code_length = params[:code_length]
        type.destination_identity = params[:destination_identity]
        type.entity_id = params[:entity_id]
        type.language = params[:language]
        type.origination_identity = params[:origination_identity]
        type.reference_id = params[:reference_id]
        type.template_id = params[:template_id]
        type.validity_period = params[:validity_period]
        type
      end
    end

    module SendUsersMessageRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendUsersMessageRequest, context: context)
        type = Types::SendUsersMessageRequest.new
        type.context = MapOf__string.build(params[:context], context: "#{context}[:context]") unless params[:context].nil?
        type.message_configuration = DirectMessageConfiguration.build(params[:message_configuration], context: "#{context}[:message_configuration]") unless params[:message_configuration].nil?
        type.template_configuration = TemplateConfiguration.build(params[:template_configuration], context: "#{context}[:template_configuration]") unless params[:template_configuration].nil?
        type.trace_id = params[:trace_id]
        type.users = MapOfEndpointSendConfiguration.build(params[:users], context: "#{context}[:users]") unless params[:users].nil?
        type
      end
    end

    module SendUsersMessageResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendUsersMessageResponse, context: context)
        type = Types::SendUsersMessageResponse.new
        type.application_id = params[:application_id]
        type.request_id = params[:request_id]
        type.result = MapOfMapOfEndpointMessageResult.build(params[:result], context: "#{context}[:result]") unless params[:result].nil?
        type
      end
    end

    module SendUsersMessagesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendUsersMessagesInput, context: context)
        type = Types::SendUsersMessagesInput.new
        type.application_id = params[:application_id]
        type.send_users_message_request = SendUsersMessageRequest.build(params[:send_users_message_request], context: "#{context}[:send_users_message_request]") unless params[:send_users_message_request].nil?
        type
      end
    end

    module SendUsersMessagesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendUsersMessagesOutput, context: context)
        type = Types::SendUsersMessagesOutput.new
        type.send_users_message_response = SendUsersMessageResponse.build(params[:send_users_message_response], context: "#{context}[:send_users_message_response]") unless params[:send_users_message_response].nil?
        type
      end
    end

    module Session
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Session, context: context)
        type = Types::Session.new
        type.duration = params[:duration]
        type.id = params[:id]
        type.start_timestamp = params[:start_timestamp]
        type.stop_timestamp = params[:stop_timestamp]
        type
      end
    end

    module SetDimension
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetDimension, context: context)
        type = Types::SetDimension.new
        type.dimension_type = params[:dimension_type]
        type.values = ListOf__string.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module SimpleCondition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SimpleCondition, context: context)
        type = Types::SimpleCondition.new
        type.event_condition = EventCondition.build(params[:event_condition], context: "#{context}[:event_condition]") unless params[:event_condition].nil?
        type.segment_condition = SegmentCondition.build(params[:segment_condition], context: "#{context}[:segment_condition]") unless params[:segment_condition].nil?
        type.segment_dimensions = SegmentDimensions.build(params[:segment_dimensions], context: "#{context}[:segment_dimensions]") unless params[:segment_dimensions].nil?
        type
      end
    end

    module SimpleEmail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SimpleEmail, context: context)
        type = Types::SimpleEmail.new
        type.html_part = SimpleEmailPart.build(params[:html_part], context: "#{context}[:html_part]") unless params[:html_part].nil?
        type.subject = SimpleEmailPart.build(params[:subject], context: "#{context}[:subject]") unless params[:subject].nil?
        type.text_part = SimpleEmailPart.build(params[:text_part], context: "#{context}[:text_part]") unless params[:text_part].nil?
        type
      end
    end

    module SimpleEmailPart
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SimpleEmailPart, context: context)
        type = Types::SimpleEmailPart.new
        type.charset = params[:charset]
        type.data = params[:data]
        type
      end
    end

    module StartCondition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartCondition, context: context)
        type = Types::StartCondition.new
        type.description = params[:description]
        type.event_start_condition = EventStartCondition.build(params[:event_start_condition], context: "#{context}[:event_start_condition]") unless params[:event_start_condition].nil?
        type.segment_start_condition = SegmentCondition.build(params[:segment_start_condition], context: "#{context}[:segment_start_condition]") unless params[:segment_start_condition].nil?
        type
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags_model = TagsModel.build(params[:tags_model], context: "#{context}[:tags_model]") unless params[:tags_model].nil?
        type
      end
    end

    module TagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceOutput, context: context)
        type = Types::TagResourceOutput.new
        type
      end
    end

    module TagsModel
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagsModel, context: context)
        type = Types::TagsModel.new
        type.tags = MapOf__string.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module Template
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Template, context: context)
        type = Types::Template.new
        type.name = params[:name]
        type.version = params[:version]
        type
      end
    end

    module TemplateActiveVersionRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TemplateActiveVersionRequest, context: context)
        type = Types::TemplateActiveVersionRequest.new
        type.version = params[:version]
        type
      end
    end

    module TemplateConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TemplateConfiguration, context: context)
        type = Types::TemplateConfiguration.new
        type.email_template = Template.build(params[:email_template], context: "#{context}[:email_template]") unless params[:email_template].nil?
        type.push_template = Template.build(params[:push_template], context: "#{context}[:push_template]") unless params[:push_template].nil?
        type.sms_template = Template.build(params[:sms_template], context: "#{context}[:sms_template]") unless params[:sms_template].nil?
        type.voice_template = Template.build(params[:voice_template], context: "#{context}[:voice_template]") unless params[:voice_template].nil?
        type
      end
    end

    module TemplateCreateMessageBody
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TemplateCreateMessageBody, context: context)
        type = Types::TemplateCreateMessageBody.new
        type.arn = params[:arn]
        type.message = params[:message]
        type.request_id = params[:request_id]
        type
      end
    end

    module TemplateResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TemplateResponse, context: context)
        type = Types::TemplateResponse.new
        type.arn = params[:arn]
        type.creation_date = params[:creation_date]
        type.default_substitutions = params[:default_substitutions]
        type.last_modified_date = params[:last_modified_date]
        type.tags = MapOf__string.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.template_description = params[:template_description]
        type.template_name = params[:template_name]
        type.template_type = params[:template_type]
        type.version = params[:version]
        type
      end
    end

    module TemplateVersionResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TemplateVersionResponse, context: context)
        type = Types::TemplateVersionResponse.new
        type.creation_date = params[:creation_date]
        type.default_substitutions = params[:default_substitutions]
        type.last_modified_date = params[:last_modified_date]
        type.template_description = params[:template_description]
        type.template_name = params[:template_name]
        type.template_type = params[:template_type]
        type.version = params[:version]
        type
      end
    end

    module TemplateVersionsResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TemplateVersionsResponse, context: context)
        type = Types::TemplateVersionsResponse.new
        type.item = ListOfTemplateVersionResponse.build(params[:item], context: "#{context}[:item]") unless params[:item].nil?
        type.message = params[:message]
        type.next_token = params[:next_token]
        type.request_id = params[:request_id]
        type
      end
    end

    module TemplatesResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TemplatesResponse, context: context)
        type = Types::TemplatesResponse.new
        type.item = ListOfTemplateResponse.build(params[:item], context: "#{context}[:item]") unless params[:item].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module TooManyRequestsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyRequestsException, context: context)
        type = Types::TooManyRequestsException.new
        type.message = params[:message]
        type.request_id = params[:request_id]
        type
      end
    end

    module TreatmentResource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TreatmentResource, context: context)
        type = Types::TreatmentResource.new
        type.custom_delivery_configuration = CustomDeliveryConfiguration.build(params[:custom_delivery_configuration], context: "#{context}[:custom_delivery_configuration]") unless params[:custom_delivery_configuration].nil?
        type.id = params[:id]
        type.message_configuration = MessageConfiguration.build(params[:message_configuration], context: "#{context}[:message_configuration]") unless params[:message_configuration].nil?
        type.schedule = Schedule.build(params[:schedule], context: "#{context}[:schedule]") unless params[:schedule].nil?
        type.size_percent = params[:size_percent]
        type.state = CampaignState.build(params[:state], context: "#{context}[:state]") unless params[:state].nil?
        type.template_configuration = TemplateConfiguration.build(params[:template_configuration], context: "#{context}[:template_configuration]") unless params[:template_configuration].nil?
        type.treatment_description = params[:treatment_description]
        type.treatment_name = params[:treatment_name]
        type
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = ListOf__string.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module UntagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceOutput, context: context)
        type = Types::UntagResourceOutput.new
        type
      end
    end

    module UpdateAdmChannelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAdmChannelInput, context: context)
        type = Types::UpdateAdmChannelInput.new
        type.adm_channel_request = ADMChannelRequest.build(params[:adm_channel_request], context: "#{context}[:adm_channel_request]") unless params[:adm_channel_request].nil?
        type.application_id = params[:application_id]
        type
      end
    end

    module UpdateAdmChannelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAdmChannelOutput, context: context)
        type = Types::UpdateAdmChannelOutput.new
        type.adm_channel_response = ADMChannelResponse.build(params[:adm_channel_response], context: "#{context}[:adm_channel_response]") unless params[:adm_channel_response].nil?
        type
      end
    end

    module UpdateApnsChannelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateApnsChannelInput, context: context)
        type = Types::UpdateApnsChannelInput.new
        type.apns_channel_request = APNSChannelRequest.build(params[:apns_channel_request], context: "#{context}[:apns_channel_request]") unless params[:apns_channel_request].nil?
        type.application_id = params[:application_id]
        type
      end
    end

    module UpdateApnsChannelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateApnsChannelOutput, context: context)
        type = Types::UpdateApnsChannelOutput.new
        type.apns_channel_response = APNSChannelResponse.build(params[:apns_channel_response], context: "#{context}[:apns_channel_response]") unless params[:apns_channel_response].nil?
        type
      end
    end

    module UpdateApnsSandboxChannelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateApnsSandboxChannelInput, context: context)
        type = Types::UpdateApnsSandboxChannelInput.new
        type.apns_sandbox_channel_request = APNSSandboxChannelRequest.build(params[:apns_sandbox_channel_request], context: "#{context}[:apns_sandbox_channel_request]") unless params[:apns_sandbox_channel_request].nil?
        type.application_id = params[:application_id]
        type
      end
    end

    module UpdateApnsSandboxChannelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateApnsSandboxChannelOutput, context: context)
        type = Types::UpdateApnsSandboxChannelOutput.new
        type.apns_sandbox_channel_response = APNSSandboxChannelResponse.build(params[:apns_sandbox_channel_response], context: "#{context}[:apns_sandbox_channel_response]") unless params[:apns_sandbox_channel_response].nil?
        type
      end
    end

    module UpdateApnsVoipChannelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateApnsVoipChannelInput, context: context)
        type = Types::UpdateApnsVoipChannelInput.new
        type.apns_voip_channel_request = APNSVoipChannelRequest.build(params[:apns_voip_channel_request], context: "#{context}[:apns_voip_channel_request]") unless params[:apns_voip_channel_request].nil?
        type.application_id = params[:application_id]
        type
      end
    end

    module UpdateApnsVoipChannelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateApnsVoipChannelOutput, context: context)
        type = Types::UpdateApnsVoipChannelOutput.new
        type.apns_voip_channel_response = APNSVoipChannelResponse.build(params[:apns_voip_channel_response], context: "#{context}[:apns_voip_channel_response]") unless params[:apns_voip_channel_response].nil?
        type
      end
    end

    module UpdateApnsVoipSandboxChannelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateApnsVoipSandboxChannelInput, context: context)
        type = Types::UpdateApnsVoipSandboxChannelInput.new
        type.apns_voip_sandbox_channel_request = APNSVoipSandboxChannelRequest.build(params[:apns_voip_sandbox_channel_request], context: "#{context}[:apns_voip_sandbox_channel_request]") unless params[:apns_voip_sandbox_channel_request].nil?
        type.application_id = params[:application_id]
        type
      end
    end

    module UpdateApnsVoipSandboxChannelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateApnsVoipSandboxChannelOutput, context: context)
        type = Types::UpdateApnsVoipSandboxChannelOutput.new
        type.apns_voip_sandbox_channel_response = APNSVoipSandboxChannelResponse.build(params[:apns_voip_sandbox_channel_response], context: "#{context}[:apns_voip_sandbox_channel_response]") unless params[:apns_voip_sandbox_channel_response].nil?
        type
      end
    end

    module UpdateApplicationSettingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateApplicationSettingsInput, context: context)
        type = Types::UpdateApplicationSettingsInput.new
        type.application_id = params[:application_id]
        type.write_application_settings_request = WriteApplicationSettingsRequest.build(params[:write_application_settings_request], context: "#{context}[:write_application_settings_request]") unless params[:write_application_settings_request].nil?
        type
      end
    end

    module UpdateApplicationSettingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateApplicationSettingsOutput, context: context)
        type = Types::UpdateApplicationSettingsOutput.new
        type.application_settings_resource = ApplicationSettingsResource.build(params[:application_settings_resource], context: "#{context}[:application_settings_resource]") unless params[:application_settings_resource].nil?
        type
      end
    end

    module UpdateAttributesRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAttributesRequest, context: context)
        type = Types::UpdateAttributesRequest.new
        type.blacklist = ListOf__string.build(params[:blacklist], context: "#{context}[:blacklist]") unless params[:blacklist].nil?
        type
      end
    end

    module UpdateBaiduChannelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateBaiduChannelInput, context: context)
        type = Types::UpdateBaiduChannelInput.new
        type.application_id = params[:application_id]
        type.baidu_channel_request = BaiduChannelRequest.build(params[:baidu_channel_request], context: "#{context}[:baidu_channel_request]") unless params[:baidu_channel_request].nil?
        type
      end
    end

    module UpdateBaiduChannelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateBaiduChannelOutput, context: context)
        type = Types::UpdateBaiduChannelOutput.new
        type.baidu_channel_response = BaiduChannelResponse.build(params[:baidu_channel_response], context: "#{context}[:baidu_channel_response]") unless params[:baidu_channel_response].nil?
        type
      end
    end

    module UpdateCampaignInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateCampaignInput, context: context)
        type = Types::UpdateCampaignInput.new
        type.application_id = params[:application_id]
        type.campaign_id = params[:campaign_id]
        type.write_campaign_request = WriteCampaignRequest.build(params[:write_campaign_request], context: "#{context}[:write_campaign_request]") unless params[:write_campaign_request].nil?
        type
      end
    end

    module UpdateCampaignOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateCampaignOutput, context: context)
        type = Types::UpdateCampaignOutput.new
        type.campaign_response = CampaignResponse.build(params[:campaign_response], context: "#{context}[:campaign_response]") unless params[:campaign_response].nil?
        type
      end
    end

    module UpdateEmailChannelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateEmailChannelInput, context: context)
        type = Types::UpdateEmailChannelInput.new
        type.application_id = params[:application_id]
        type.email_channel_request = EmailChannelRequest.build(params[:email_channel_request], context: "#{context}[:email_channel_request]") unless params[:email_channel_request].nil?
        type
      end
    end

    module UpdateEmailChannelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateEmailChannelOutput, context: context)
        type = Types::UpdateEmailChannelOutput.new
        type.email_channel_response = EmailChannelResponse.build(params[:email_channel_response], context: "#{context}[:email_channel_response]") unless params[:email_channel_response].nil?
        type
      end
    end

    module UpdateEmailTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateEmailTemplateInput, context: context)
        type = Types::UpdateEmailTemplateInput.new
        type.create_new_version = params[:create_new_version]
        type.email_template_request = EmailTemplateRequest.build(params[:email_template_request], context: "#{context}[:email_template_request]") unless params[:email_template_request].nil?
        type.template_name = params[:template_name]
        type.version = params[:version]
        type
      end
    end

    module UpdateEmailTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateEmailTemplateOutput, context: context)
        type = Types::UpdateEmailTemplateOutput.new
        type.message_body = MessageBody.build(params[:message_body], context: "#{context}[:message_body]") unless params[:message_body].nil?
        type
      end
    end

    module UpdateEndpointInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateEndpointInput, context: context)
        type = Types::UpdateEndpointInput.new
        type.application_id = params[:application_id]
        type.endpoint_id = params[:endpoint_id]
        type.endpoint_request = EndpointRequest.build(params[:endpoint_request], context: "#{context}[:endpoint_request]") unless params[:endpoint_request].nil?
        type
      end
    end

    module UpdateEndpointOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateEndpointOutput, context: context)
        type = Types::UpdateEndpointOutput.new
        type.message_body = MessageBody.build(params[:message_body], context: "#{context}[:message_body]") unless params[:message_body].nil?
        type
      end
    end

    module UpdateEndpointsBatchInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateEndpointsBatchInput, context: context)
        type = Types::UpdateEndpointsBatchInput.new
        type.application_id = params[:application_id]
        type.endpoint_batch_request = EndpointBatchRequest.build(params[:endpoint_batch_request], context: "#{context}[:endpoint_batch_request]") unless params[:endpoint_batch_request].nil?
        type
      end
    end

    module UpdateEndpointsBatchOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateEndpointsBatchOutput, context: context)
        type = Types::UpdateEndpointsBatchOutput.new
        type.message_body = MessageBody.build(params[:message_body], context: "#{context}[:message_body]") unless params[:message_body].nil?
        type
      end
    end

    module UpdateGcmChannelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateGcmChannelInput, context: context)
        type = Types::UpdateGcmChannelInput.new
        type.application_id = params[:application_id]
        type.gcm_channel_request = GCMChannelRequest.build(params[:gcm_channel_request], context: "#{context}[:gcm_channel_request]") unless params[:gcm_channel_request].nil?
        type
      end
    end

    module UpdateGcmChannelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateGcmChannelOutput, context: context)
        type = Types::UpdateGcmChannelOutput.new
        type.gcm_channel_response = GCMChannelResponse.build(params[:gcm_channel_response], context: "#{context}[:gcm_channel_response]") unless params[:gcm_channel_response].nil?
        type
      end
    end

    module UpdateInAppTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateInAppTemplateInput, context: context)
        type = Types::UpdateInAppTemplateInput.new
        type.create_new_version = params[:create_new_version]
        type.in_app_template_request = InAppTemplateRequest.build(params[:in_app_template_request], context: "#{context}[:in_app_template_request]") unless params[:in_app_template_request].nil?
        type.template_name = params[:template_name]
        type.version = params[:version]
        type
      end
    end

    module UpdateInAppTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateInAppTemplateOutput, context: context)
        type = Types::UpdateInAppTemplateOutput.new
        type.message_body = MessageBody.build(params[:message_body], context: "#{context}[:message_body]") unless params[:message_body].nil?
        type
      end
    end

    module UpdateJourneyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateJourneyInput, context: context)
        type = Types::UpdateJourneyInput.new
        type.application_id = params[:application_id]
        type.journey_id = params[:journey_id]
        type.write_journey_request = WriteJourneyRequest.build(params[:write_journey_request], context: "#{context}[:write_journey_request]") unless params[:write_journey_request].nil?
        type
      end
    end

    module UpdateJourneyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateJourneyOutput, context: context)
        type = Types::UpdateJourneyOutput.new
        type.journey_response = JourneyResponse.build(params[:journey_response], context: "#{context}[:journey_response]") unless params[:journey_response].nil?
        type
      end
    end

    module UpdateJourneyStateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateJourneyStateInput, context: context)
        type = Types::UpdateJourneyStateInput.new
        type.application_id = params[:application_id]
        type.journey_id = params[:journey_id]
        type.journey_state_request = JourneyStateRequest.build(params[:journey_state_request], context: "#{context}[:journey_state_request]") unless params[:journey_state_request].nil?
        type
      end
    end

    module UpdateJourneyStateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateJourneyStateOutput, context: context)
        type = Types::UpdateJourneyStateOutput.new
        type.journey_response = JourneyResponse.build(params[:journey_response], context: "#{context}[:journey_response]") unless params[:journey_response].nil?
        type
      end
    end

    module UpdatePushTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePushTemplateInput, context: context)
        type = Types::UpdatePushTemplateInput.new
        type.create_new_version = params[:create_new_version]
        type.push_notification_template_request = PushNotificationTemplateRequest.build(params[:push_notification_template_request], context: "#{context}[:push_notification_template_request]") unless params[:push_notification_template_request].nil?
        type.template_name = params[:template_name]
        type.version = params[:version]
        type
      end
    end

    module UpdatePushTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePushTemplateOutput, context: context)
        type = Types::UpdatePushTemplateOutput.new
        type.message_body = MessageBody.build(params[:message_body], context: "#{context}[:message_body]") unless params[:message_body].nil?
        type
      end
    end

    module UpdateRecommenderConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRecommenderConfigurationInput, context: context)
        type = Types::UpdateRecommenderConfigurationInput.new
        type.recommender_id = params[:recommender_id]
        type.update_recommender_configuration = UpdateRecommenderConfigurationShape.build(params[:update_recommender_configuration], context: "#{context}[:update_recommender_configuration]") unless params[:update_recommender_configuration].nil?
        type
      end
    end

    module UpdateRecommenderConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRecommenderConfigurationOutput, context: context)
        type = Types::UpdateRecommenderConfigurationOutput.new
        type.recommender_configuration_response = RecommenderConfigurationResponse.build(params[:recommender_configuration_response], context: "#{context}[:recommender_configuration_response]") unless params[:recommender_configuration_response].nil?
        type
      end
    end

    module UpdateRecommenderConfigurationShape
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRecommenderConfigurationShape, context: context)
        type = Types::UpdateRecommenderConfigurationShape.new
        type.attributes = MapOf__string.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type.description = params[:description]
        type.name = params[:name]
        type.recommendation_provider_id_type = params[:recommendation_provider_id_type]
        type.recommendation_provider_role_arn = params[:recommendation_provider_role_arn]
        type.recommendation_provider_uri = params[:recommendation_provider_uri]
        type.recommendation_transformer_uri = params[:recommendation_transformer_uri]
        type.recommendations_display_name = params[:recommendations_display_name]
        type.recommendations_per_message = params[:recommendations_per_message]
        type
      end
    end

    module UpdateSegmentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSegmentInput, context: context)
        type = Types::UpdateSegmentInput.new
        type.application_id = params[:application_id]
        type.segment_id = params[:segment_id]
        type.write_segment_request = WriteSegmentRequest.build(params[:write_segment_request], context: "#{context}[:write_segment_request]") unless params[:write_segment_request].nil?
        type
      end
    end

    module UpdateSegmentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSegmentOutput, context: context)
        type = Types::UpdateSegmentOutput.new
        type.segment_response = SegmentResponse.build(params[:segment_response], context: "#{context}[:segment_response]") unless params[:segment_response].nil?
        type
      end
    end

    module UpdateSmsChannelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSmsChannelInput, context: context)
        type = Types::UpdateSmsChannelInput.new
        type.application_id = params[:application_id]
        type.sms_channel_request = SMSChannelRequest.build(params[:sms_channel_request], context: "#{context}[:sms_channel_request]") unless params[:sms_channel_request].nil?
        type
      end
    end

    module UpdateSmsChannelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSmsChannelOutput, context: context)
        type = Types::UpdateSmsChannelOutput.new
        type.sms_channel_response = SMSChannelResponse.build(params[:sms_channel_response], context: "#{context}[:sms_channel_response]") unless params[:sms_channel_response].nil?
        type
      end
    end

    module UpdateSmsTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSmsTemplateInput, context: context)
        type = Types::UpdateSmsTemplateInput.new
        type.create_new_version = params[:create_new_version]
        type.sms_template_request = SMSTemplateRequest.build(params[:sms_template_request], context: "#{context}[:sms_template_request]") unless params[:sms_template_request].nil?
        type.template_name = params[:template_name]
        type.version = params[:version]
        type
      end
    end

    module UpdateSmsTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSmsTemplateOutput, context: context)
        type = Types::UpdateSmsTemplateOutput.new
        type.message_body = MessageBody.build(params[:message_body], context: "#{context}[:message_body]") unless params[:message_body].nil?
        type
      end
    end

    module UpdateTemplateActiveVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateTemplateActiveVersionInput, context: context)
        type = Types::UpdateTemplateActiveVersionInput.new
        type.template_active_version_request = TemplateActiveVersionRequest.build(params[:template_active_version_request], context: "#{context}[:template_active_version_request]") unless params[:template_active_version_request].nil?
        type.template_name = params[:template_name]
        type.template_type = params[:template_type]
        type
      end
    end

    module UpdateTemplateActiveVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateTemplateActiveVersionOutput, context: context)
        type = Types::UpdateTemplateActiveVersionOutput.new
        type.message_body = MessageBody.build(params[:message_body], context: "#{context}[:message_body]") unless params[:message_body].nil?
        type
      end
    end

    module UpdateVoiceChannelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateVoiceChannelInput, context: context)
        type = Types::UpdateVoiceChannelInput.new
        type.application_id = params[:application_id]
        type.voice_channel_request = VoiceChannelRequest.build(params[:voice_channel_request], context: "#{context}[:voice_channel_request]") unless params[:voice_channel_request].nil?
        type
      end
    end

    module UpdateVoiceChannelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateVoiceChannelOutput, context: context)
        type = Types::UpdateVoiceChannelOutput.new
        type.voice_channel_response = VoiceChannelResponse.build(params[:voice_channel_response], context: "#{context}[:voice_channel_response]") unless params[:voice_channel_response].nil?
        type
      end
    end

    module UpdateVoiceTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateVoiceTemplateInput, context: context)
        type = Types::UpdateVoiceTemplateInput.new
        type.create_new_version = params[:create_new_version]
        type.template_name = params[:template_name]
        type.version = params[:version]
        type.voice_template_request = VoiceTemplateRequest.build(params[:voice_template_request], context: "#{context}[:voice_template_request]") unless params[:voice_template_request].nil?
        type
      end
    end

    module UpdateVoiceTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateVoiceTemplateOutput, context: context)
        type = Types::UpdateVoiceTemplateOutput.new
        type.message_body = MessageBody.build(params[:message_body], context: "#{context}[:message_body]") unless params[:message_body].nil?
        type
      end
    end

    module VerificationResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VerificationResponse, context: context)
        type = Types::VerificationResponse.new
        type.valid = params[:valid]
        type
      end
    end

    module VerifyOTPMessageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VerifyOTPMessageInput, context: context)
        type = Types::VerifyOTPMessageInput.new
        type.application_id = params[:application_id]
        type.verify_otp_message_request_parameters = VerifyOTPMessageRequestParameters.build(params[:verify_otp_message_request_parameters], context: "#{context}[:verify_otp_message_request_parameters]") unless params[:verify_otp_message_request_parameters].nil?
        type
      end
    end

    module VerifyOTPMessageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VerifyOTPMessageOutput, context: context)
        type = Types::VerifyOTPMessageOutput.new
        type.verification_response = VerificationResponse.build(params[:verification_response], context: "#{context}[:verification_response]") unless params[:verification_response].nil?
        type
      end
    end

    module VerifyOTPMessageRequestParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VerifyOTPMessageRequestParameters, context: context)
        type = Types::VerifyOTPMessageRequestParameters.new
        type.destination_identity = params[:destination_identity]
        type.otp = params[:otp]
        type.reference_id = params[:reference_id]
        type
      end
    end

    module VoiceChannelRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VoiceChannelRequest, context: context)
        type = Types::VoiceChannelRequest.new
        type.enabled = params[:enabled]
        type
      end
    end

    module VoiceChannelResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VoiceChannelResponse, context: context)
        type = Types::VoiceChannelResponse.new
        type.application_id = params[:application_id]
        type.creation_date = params[:creation_date]
        type.enabled = params[:enabled]
        type.has_credential = params[:has_credential]
        type.id = params[:id]
        type.is_archived = params[:is_archived]
        type.last_modified_by = params[:last_modified_by]
        type.last_modified_date = params[:last_modified_date]
        type.platform = params[:platform]
        type.version = params[:version]
        type
      end
    end

    module VoiceMessage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VoiceMessage, context: context)
        type = Types::VoiceMessage.new
        type.body = params[:body]
        type.language_code = params[:language_code]
        type.origination_number = params[:origination_number]
        type.substitutions = MapOfListOf__string.build(params[:substitutions], context: "#{context}[:substitutions]") unless params[:substitutions].nil?
        type.voice_id = params[:voice_id]
        type
      end
    end

    module VoiceTemplateRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VoiceTemplateRequest, context: context)
        type = Types::VoiceTemplateRequest.new
        type.body = params[:body]
        type.default_substitutions = params[:default_substitutions]
        type.language_code = params[:language_code]
        type.tags = MapOf__string.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.template_description = params[:template_description]
        type.voice_id = params[:voice_id]
        type
      end
    end

    module VoiceTemplateResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VoiceTemplateResponse, context: context)
        type = Types::VoiceTemplateResponse.new
        type.arn = params[:arn]
        type.body = params[:body]
        type.creation_date = params[:creation_date]
        type.default_substitutions = params[:default_substitutions]
        type.language_code = params[:language_code]
        type.last_modified_date = params[:last_modified_date]
        type.tags = MapOf__string.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.template_description = params[:template_description]
        type.template_name = params[:template_name]
        type.template_type = params[:template_type]
        type.version = params[:version]
        type.voice_id = params[:voice_id]
        type
      end
    end

    module WaitActivity
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WaitActivity, context: context)
        type = Types::WaitActivity.new
        type.next_activity = params[:next_activity]
        type.wait_time = WaitTime.build(params[:wait_time], context: "#{context}[:wait_time]") unless params[:wait_time].nil?
        type
      end
    end

    module WaitTime
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WaitTime, context: context)
        type = Types::WaitTime.new
        type.wait_for = params[:wait_for]
        type.wait_until = params[:wait_until]
        type
      end
    end

    module WriteApplicationSettingsRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WriteApplicationSettingsRequest, context: context)
        type = Types::WriteApplicationSettingsRequest.new
        type.campaign_hook = CampaignHook.build(params[:campaign_hook], context: "#{context}[:campaign_hook]") unless params[:campaign_hook].nil?
        type.cloud_watch_metrics_enabled = params[:cloud_watch_metrics_enabled]
        type.event_tagging_enabled = params[:event_tagging_enabled]
        type.limits = CampaignLimits.build(params[:limits], context: "#{context}[:limits]") unless params[:limits].nil?
        type.quiet_time = QuietTime.build(params[:quiet_time], context: "#{context}[:quiet_time]") unless params[:quiet_time].nil?
        type
      end
    end

    module WriteCampaignRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WriteCampaignRequest, context: context)
        type = Types::WriteCampaignRequest.new
        type.additional_treatments = ListOfWriteTreatmentResource.build(params[:additional_treatments], context: "#{context}[:additional_treatments]") unless params[:additional_treatments].nil?
        type.custom_delivery_configuration = CustomDeliveryConfiguration.build(params[:custom_delivery_configuration], context: "#{context}[:custom_delivery_configuration]") unless params[:custom_delivery_configuration].nil?
        type.description = params[:description]
        type.holdout_percent = params[:holdout_percent]
        type.hook = CampaignHook.build(params[:hook], context: "#{context}[:hook]") unless params[:hook].nil?
        type.is_paused = params[:is_paused]
        type.limits = CampaignLimits.build(params[:limits], context: "#{context}[:limits]") unless params[:limits].nil?
        type.message_configuration = MessageConfiguration.build(params[:message_configuration], context: "#{context}[:message_configuration]") unless params[:message_configuration].nil?
        type.name = params[:name]
        type.schedule = Schedule.build(params[:schedule], context: "#{context}[:schedule]") unless params[:schedule].nil?
        type.segment_id = params[:segment_id]
        type.segment_version = params[:segment_version]
        type.tags = MapOf__string.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.template_configuration = TemplateConfiguration.build(params[:template_configuration], context: "#{context}[:template_configuration]") unless params[:template_configuration].nil?
        type.treatment_description = params[:treatment_description]
        type.treatment_name = params[:treatment_name]
        type.priority = params[:priority]
        type
      end
    end

    module WriteEventStream
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WriteEventStream, context: context)
        type = Types::WriteEventStream.new
        type.destination_stream_arn = params[:destination_stream_arn]
        type.role_arn = params[:role_arn]
        type
      end
    end

    module WriteJourneyRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WriteJourneyRequest, context: context)
        type = Types::WriteJourneyRequest.new
        type.activities = MapOfActivity.build(params[:activities], context: "#{context}[:activities]") unless params[:activities].nil?
        type.creation_date = params[:creation_date]
        type.last_modified_date = params[:last_modified_date]
        type.limits = JourneyLimits.build(params[:limits], context: "#{context}[:limits]") unless params[:limits].nil?
        type.local_time = params[:local_time]
        type.name = params[:name]
        type.quiet_time = QuietTime.build(params[:quiet_time], context: "#{context}[:quiet_time]") unless params[:quiet_time].nil?
        type.refresh_frequency = params[:refresh_frequency]
        type.schedule = JourneySchedule.build(params[:schedule], context: "#{context}[:schedule]") unless params[:schedule].nil?
        type.start_activity = params[:start_activity]
        type.start_condition = StartCondition.build(params[:start_condition], context: "#{context}[:start_condition]") unless params[:start_condition].nil?
        type.state = params[:state]
        type.wait_for_quiet_time = params[:wait_for_quiet_time]
        type.refresh_on_segment_update = params[:refresh_on_segment_update]
        type.journey_channel_settings = JourneyChannelSettings.build(params[:journey_channel_settings], context: "#{context}[:journey_channel_settings]") unless params[:journey_channel_settings].nil?
        type
      end
    end

    module WriteSegmentRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WriteSegmentRequest, context: context)
        type = Types::WriteSegmentRequest.new
        type.dimensions = SegmentDimensions.build(params[:dimensions], context: "#{context}[:dimensions]") unless params[:dimensions].nil?
        type.name = params[:name]
        type.segment_groups = SegmentGroupList.build(params[:segment_groups], context: "#{context}[:segment_groups]") unless params[:segment_groups].nil?
        type.tags = MapOf__string.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module WriteTreatmentResource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WriteTreatmentResource, context: context)
        type = Types::WriteTreatmentResource.new
        type.custom_delivery_configuration = CustomDeliveryConfiguration.build(params[:custom_delivery_configuration], context: "#{context}[:custom_delivery_configuration]") unless params[:custom_delivery_configuration].nil?
        type.message_configuration = MessageConfiguration.build(params[:message_configuration], context: "#{context}[:message_configuration]") unless params[:message_configuration].nil?
        type.schedule = Schedule.build(params[:schedule], context: "#{context}[:schedule]") unless params[:schedule].nil?
        type.size_percent = params[:size_percent]
        type.template_configuration = TemplateConfiguration.build(params[:template_configuration], context: "#{context}[:template_configuration]") unless params[:template_configuration].nil?
        type.treatment_description = params[:treatment_description]
        type.treatment_name = params[:treatment_name]
        type
      end
    end

  end
end
