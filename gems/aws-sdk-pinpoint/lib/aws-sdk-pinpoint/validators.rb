# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Pinpoint
  module Validators

    class ADMChannelRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ADMChannelRequest, context: context)
        Hearth::Validator.validate!(input[:client_id], ::String, context: "#{context}[:client_id]")
        Hearth::Validator.validate!(input[:client_secret], ::String, context: "#{context}[:client_secret]")
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
      end
    end

    class ADMChannelResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ADMChannelResponse, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:creation_date], ::String, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:has_credential], ::TrueClass, ::FalseClass, context: "#{context}[:has_credential]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:is_archived], ::TrueClass, ::FalseClass, context: "#{context}[:is_archived]")
        Hearth::Validator.validate!(input[:last_modified_by], ::String, context: "#{context}[:last_modified_by]")
        Hearth::Validator.validate!(input[:last_modified_date], ::String, context: "#{context}[:last_modified_date]")
        Hearth::Validator.validate!(input[:platform], ::String, context: "#{context}[:platform]")
        Hearth::Validator.validate!(input[:version], ::Integer, context: "#{context}[:version]")
      end
    end

    class ADMMessage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ADMMessage, context: context)
        Hearth::Validator.validate!(input[:action], ::String, context: "#{context}[:action]")
        Hearth::Validator.validate!(input[:body], ::String, context: "#{context}[:body]")
        Hearth::Validator.validate!(input[:consolidation_key], ::String, context: "#{context}[:consolidation_key]")
        Validators::MapOf__string.validate!(input[:data], context: "#{context}[:data]") unless input[:data].nil?
        Hearth::Validator.validate!(input[:expires_after], ::String, context: "#{context}[:expires_after]")
        Hearth::Validator.validate!(input[:icon_reference], ::String, context: "#{context}[:icon_reference]")
        Hearth::Validator.validate!(input[:image_icon_url], ::String, context: "#{context}[:image_icon_url]")
        Hearth::Validator.validate!(input[:image_url], ::String, context: "#{context}[:image_url]")
        Hearth::Validator.validate!(input[:md5], ::String, context: "#{context}[:md5]")
        Hearth::Validator.validate!(input[:raw_content], ::String, context: "#{context}[:raw_content]")
        Hearth::Validator.validate!(input[:silent_push], ::TrueClass, ::FalseClass, context: "#{context}[:silent_push]")
        Hearth::Validator.validate!(input[:small_image_icon_url], ::String, context: "#{context}[:small_image_icon_url]")
        Hearth::Validator.validate!(input[:sound], ::String, context: "#{context}[:sound]")
        Validators::MapOfListOf__string.validate!(input[:substitutions], context: "#{context}[:substitutions]") unless input[:substitutions].nil?
        Hearth::Validator.validate!(input[:title], ::String, context: "#{context}[:title]")
        Hearth::Validator.validate!(input[:url], ::String, context: "#{context}[:url]")
      end
    end

    class APNSChannelRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::APNSChannelRequest, context: context)
        Hearth::Validator.validate!(input[:bundle_id], ::String, context: "#{context}[:bundle_id]")
        Hearth::Validator.validate!(input[:certificate], ::String, context: "#{context}[:certificate]")
        Hearth::Validator.validate!(input[:default_authentication_method], ::String, context: "#{context}[:default_authentication_method]")
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:private_key], ::String, context: "#{context}[:private_key]")
        Hearth::Validator.validate!(input[:team_id], ::String, context: "#{context}[:team_id]")
        Hearth::Validator.validate!(input[:token_key], ::String, context: "#{context}[:token_key]")
        Hearth::Validator.validate!(input[:token_key_id], ::String, context: "#{context}[:token_key_id]")
      end
    end

    class APNSChannelResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::APNSChannelResponse, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:creation_date], ::String, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:default_authentication_method], ::String, context: "#{context}[:default_authentication_method]")
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:has_credential], ::TrueClass, ::FalseClass, context: "#{context}[:has_credential]")
        Hearth::Validator.validate!(input[:has_token_key], ::TrueClass, ::FalseClass, context: "#{context}[:has_token_key]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:is_archived], ::TrueClass, ::FalseClass, context: "#{context}[:is_archived]")
        Hearth::Validator.validate!(input[:last_modified_by], ::String, context: "#{context}[:last_modified_by]")
        Hearth::Validator.validate!(input[:last_modified_date], ::String, context: "#{context}[:last_modified_date]")
        Hearth::Validator.validate!(input[:platform], ::String, context: "#{context}[:platform]")
        Hearth::Validator.validate!(input[:version], ::Integer, context: "#{context}[:version]")
      end
    end

    class APNSMessage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::APNSMessage, context: context)
        Hearth::Validator.validate!(input[:apns_push_type], ::String, context: "#{context}[:apns_push_type]")
        Hearth::Validator.validate!(input[:action], ::String, context: "#{context}[:action]")
        Hearth::Validator.validate!(input[:badge], ::Integer, context: "#{context}[:badge]")
        Hearth::Validator.validate!(input[:body], ::String, context: "#{context}[:body]")
        Hearth::Validator.validate!(input[:category], ::String, context: "#{context}[:category]")
        Hearth::Validator.validate!(input[:collapse_id], ::String, context: "#{context}[:collapse_id]")
        Validators::MapOf__string.validate!(input[:data], context: "#{context}[:data]") unless input[:data].nil?
        Hearth::Validator.validate!(input[:media_url], ::String, context: "#{context}[:media_url]")
        Hearth::Validator.validate!(input[:preferred_authentication_method], ::String, context: "#{context}[:preferred_authentication_method]")
        Hearth::Validator.validate!(input[:priority], ::String, context: "#{context}[:priority]")
        Hearth::Validator.validate!(input[:raw_content], ::String, context: "#{context}[:raw_content]")
        Hearth::Validator.validate!(input[:silent_push], ::TrueClass, ::FalseClass, context: "#{context}[:silent_push]")
        Hearth::Validator.validate!(input[:sound], ::String, context: "#{context}[:sound]")
        Validators::MapOfListOf__string.validate!(input[:substitutions], context: "#{context}[:substitutions]") unless input[:substitutions].nil?
        Hearth::Validator.validate!(input[:thread_id], ::String, context: "#{context}[:thread_id]")
        Hearth::Validator.validate!(input[:time_to_live], ::Integer, context: "#{context}[:time_to_live]")
        Hearth::Validator.validate!(input[:title], ::String, context: "#{context}[:title]")
        Hearth::Validator.validate!(input[:url], ::String, context: "#{context}[:url]")
      end
    end

    class APNSPushNotificationTemplate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::APNSPushNotificationTemplate, context: context)
        Hearth::Validator.validate!(input[:action], ::String, context: "#{context}[:action]")
        Hearth::Validator.validate!(input[:body], ::String, context: "#{context}[:body]")
        Hearth::Validator.validate!(input[:media_url], ::String, context: "#{context}[:media_url]")
        Hearth::Validator.validate!(input[:raw_content], ::String, context: "#{context}[:raw_content]")
        Hearth::Validator.validate!(input[:sound], ::String, context: "#{context}[:sound]")
        Hearth::Validator.validate!(input[:title], ::String, context: "#{context}[:title]")
        Hearth::Validator.validate!(input[:url], ::String, context: "#{context}[:url]")
      end
    end

    class APNSSandboxChannelRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::APNSSandboxChannelRequest, context: context)
        Hearth::Validator.validate!(input[:bundle_id], ::String, context: "#{context}[:bundle_id]")
        Hearth::Validator.validate!(input[:certificate], ::String, context: "#{context}[:certificate]")
        Hearth::Validator.validate!(input[:default_authentication_method], ::String, context: "#{context}[:default_authentication_method]")
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:private_key], ::String, context: "#{context}[:private_key]")
        Hearth::Validator.validate!(input[:team_id], ::String, context: "#{context}[:team_id]")
        Hearth::Validator.validate!(input[:token_key], ::String, context: "#{context}[:token_key]")
        Hearth::Validator.validate!(input[:token_key_id], ::String, context: "#{context}[:token_key_id]")
      end
    end

    class APNSSandboxChannelResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::APNSSandboxChannelResponse, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:creation_date], ::String, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:default_authentication_method], ::String, context: "#{context}[:default_authentication_method]")
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:has_credential], ::TrueClass, ::FalseClass, context: "#{context}[:has_credential]")
        Hearth::Validator.validate!(input[:has_token_key], ::TrueClass, ::FalseClass, context: "#{context}[:has_token_key]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:is_archived], ::TrueClass, ::FalseClass, context: "#{context}[:is_archived]")
        Hearth::Validator.validate!(input[:last_modified_by], ::String, context: "#{context}[:last_modified_by]")
        Hearth::Validator.validate!(input[:last_modified_date], ::String, context: "#{context}[:last_modified_date]")
        Hearth::Validator.validate!(input[:platform], ::String, context: "#{context}[:platform]")
        Hearth::Validator.validate!(input[:version], ::Integer, context: "#{context}[:version]")
      end
    end

    class APNSVoipChannelRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::APNSVoipChannelRequest, context: context)
        Hearth::Validator.validate!(input[:bundle_id], ::String, context: "#{context}[:bundle_id]")
        Hearth::Validator.validate!(input[:certificate], ::String, context: "#{context}[:certificate]")
        Hearth::Validator.validate!(input[:default_authentication_method], ::String, context: "#{context}[:default_authentication_method]")
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:private_key], ::String, context: "#{context}[:private_key]")
        Hearth::Validator.validate!(input[:team_id], ::String, context: "#{context}[:team_id]")
        Hearth::Validator.validate!(input[:token_key], ::String, context: "#{context}[:token_key]")
        Hearth::Validator.validate!(input[:token_key_id], ::String, context: "#{context}[:token_key_id]")
      end
    end

    class APNSVoipChannelResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::APNSVoipChannelResponse, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:creation_date], ::String, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:default_authentication_method], ::String, context: "#{context}[:default_authentication_method]")
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:has_credential], ::TrueClass, ::FalseClass, context: "#{context}[:has_credential]")
        Hearth::Validator.validate!(input[:has_token_key], ::TrueClass, ::FalseClass, context: "#{context}[:has_token_key]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:is_archived], ::TrueClass, ::FalseClass, context: "#{context}[:is_archived]")
        Hearth::Validator.validate!(input[:last_modified_by], ::String, context: "#{context}[:last_modified_by]")
        Hearth::Validator.validate!(input[:last_modified_date], ::String, context: "#{context}[:last_modified_date]")
        Hearth::Validator.validate!(input[:platform], ::String, context: "#{context}[:platform]")
        Hearth::Validator.validate!(input[:version], ::Integer, context: "#{context}[:version]")
      end
    end

    class APNSVoipSandboxChannelRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::APNSVoipSandboxChannelRequest, context: context)
        Hearth::Validator.validate!(input[:bundle_id], ::String, context: "#{context}[:bundle_id]")
        Hearth::Validator.validate!(input[:certificate], ::String, context: "#{context}[:certificate]")
        Hearth::Validator.validate!(input[:default_authentication_method], ::String, context: "#{context}[:default_authentication_method]")
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:private_key], ::String, context: "#{context}[:private_key]")
        Hearth::Validator.validate!(input[:team_id], ::String, context: "#{context}[:team_id]")
        Hearth::Validator.validate!(input[:token_key], ::String, context: "#{context}[:token_key]")
        Hearth::Validator.validate!(input[:token_key_id], ::String, context: "#{context}[:token_key_id]")
      end
    end

    class APNSVoipSandboxChannelResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::APNSVoipSandboxChannelResponse, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:creation_date], ::String, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:default_authentication_method], ::String, context: "#{context}[:default_authentication_method]")
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:has_credential], ::TrueClass, ::FalseClass, context: "#{context}[:has_credential]")
        Hearth::Validator.validate!(input[:has_token_key], ::TrueClass, ::FalseClass, context: "#{context}[:has_token_key]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:is_archived], ::TrueClass, ::FalseClass, context: "#{context}[:is_archived]")
        Hearth::Validator.validate!(input[:last_modified_by], ::String, context: "#{context}[:last_modified_by]")
        Hearth::Validator.validate!(input[:last_modified_date], ::String, context: "#{context}[:last_modified_date]")
        Hearth::Validator.validate!(input[:platform], ::String, context: "#{context}[:platform]")
        Hearth::Validator.validate!(input[:version], ::Integer, context: "#{context}[:version]")
      end
    end

    class ActivitiesResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActivitiesResponse, context: context)
        Validators::ListOfActivityResponse.validate!(input[:item], context: "#{context}[:item]") unless input[:item].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class Activity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Activity, context: context)
        Validators::CustomMessageActivity.validate!(input[:custom], context: "#{context}[:custom]") unless input[:custom].nil?
        Validators::ConditionalSplitActivity.validate!(input[:conditional_split], context: "#{context}[:conditional_split]") unless input[:conditional_split].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::EmailMessageActivity.validate!(input[:email], context: "#{context}[:email]") unless input[:email].nil?
        Validators::HoldoutActivity.validate!(input[:holdout], context: "#{context}[:holdout]") unless input[:holdout].nil?
        Validators::MultiConditionalSplitActivity.validate!(input[:multi_condition], context: "#{context}[:multi_condition]") unless input[:multi_condition].nil?
        Validators::PushMessageActivity.validate!(input[:push], context: "#{context}[:push]") unless input[:push].nil?
        Validators::RandomSplitActivity.validate!(input[:random_split], context: "#{context}[:random_split]") unless input[:random_split].nil?
        Validators::SMSMessageActivity.validate!(input[:sms], context: "#{context}[:sms]") unless input[:sms].nil?
        Validators::WaitActivity.validate!(input[:wait], context: "#{context}[:wait]") unless input[:wait].nil?
        Validators::ContactCenterActivity.validate!(input[:contact_center], context: "#{context}[:contact_center]") unless input[:contact_center].nil?
      end
    end

    class ActivityResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActivityResponse, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:campaign_id], ::String, context: "#{context}[:campaign_id]")
        Hearth::Validator.validate!(input[:end], ::String, context: "#{context}[:end]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:result], ::String, context: "#{context}[:result]")
        Hearth::Validator.validate!(input[:scheduled_start], ::String, context: "#{context}[:scheduled_start]")
        Hearth::Validator.validate!(input[:start], ::String, context: "#{context}[:start]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:successful_endpoint_count], ::Integer, context: "#{context}[:successful_endpoint_count]")
        Hearth::Validator.validate!(input[:timezones_completed_count], ::Integer, context: "#{context}[:timezones_completed_count]")
        Hearth::Validator.validate!(input[:timezones_total_count], ::Integer, context: "#{context}[:timezones_total_count]")
        Hearth::Validator.validate!(input[:total_endpoint_count], ::Integer, context: "#{context}[:total_endpoint_count]")
        Hearth::Validator.validate!(input[:treatment_id], ::String, context: "#{context}[:treatment_id]")
      end
    end

    class AddressConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddressConfiguration, context: context)
        Hearth::Validator.validate!(input[:body_override], ::String, context: "#{context}[:body_override]")
        Hearth::Validator.validate!(input[:channel_type], ::String, context: "#{context}[:channel_type]")
        Validators::MapOf__string.validate!(input[:context], context: "#{context}[:context]") unless input[:context].nil?
        Hearth::Validator.validate!(input[:raw_content], ::String, context: "#{context}[:raw_content]")
        Validators::MapOfListOf__string.validate!(input[:substitutions], context: "#{context}[:substitutions]") unless input[:substitutions].nil?
        Hearth::Validator.validate!(input[:title_override], ::String, context: "#{context}[:title_override]")
      end
    end

    class AndroidPushNotificationTemplate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AndroidPushNotificationTemplate, context: context)
        Hearth::Validator.validate!(input[:action], ::String, context: "#{context}[:action]")
        Hearth::Validator.validate!(input[:body], ::String, context: "#{context}[:body]")
        Hearth::Validator.validate!(input[:image_icon_url], ::String, context: "#{context}[:image_icon_url]")
        Hearth::Validator.validate!(input[:image_url], ::String, context: "#{context}[:image_url]")
        Hearth::Validator.validate!(input[:raw_content], ::String, context: "#{context}[:raw_content]")
        Hearth::Validator.validate!(input[:small_image_icon_url], ::String, context: "#{context}[:small_image_icon_url]")
        Hearth::Validator.validate!(input[:sound], ::String, context: "#{context}[:sound]")
        Hearth::Validator.validate!(input[:title], ::String, context: "#{context}[:title]")
        Hearth::Validator.validate!(input[:url], ::String, context: "#{context}[:url]")
      end
    end

    class ApplicationDateRangeKpiResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApplicationDateRangeKpiResponse, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:kpi_name], ::String, context: "#{context}[:kpi_name]")
        Validators::BaseKpiResult.validate!(input[:kpi_result], context: "#{context}[:kpi_result]") unless input[:kpi_result].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
      end
    end

    class ApplicationResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApplicationResponse, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::MapOf__string.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:creation_date], ::String, context: "#{context}[:creation_date]")
      end
    end

    class ApplicationSettingsResource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApplicationSettingsResource, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Validators::CampaignHook.validate!(input[:campaign_hook], context: "#{context}[:campaign_hook]") unless input[:campaign_hook].nil?
        Hearth::Validator.validate!(input[:last_modified_date], ::String, context: "#{context}[:last_modified_date]")
        Validators::CampaignLimits.validate!(input[:limits], context: "#{context}[:limits]") unless input[:limits].nil?
        Validators::QuietTime.validate!(input[:quiet_time], context: "#{context}[:quiet_time]") unless input[:quiet_time].nil?
      end
    end

    class ApplicationsResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApplicationsResponse, context: context)
        Validators::ListOfApplicationResponse.validate!(input[:item], context: "#{context}[:item]") unless input[:item].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class AttributeDimension
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttributeDimension, context: context)
        Hearth::Validator.validate!(input[:attribute_type], ::String, context: "#{context}[:attribute_type]")
        Validators::ListOf__string.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class AttributesResource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttributesResource, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:attribute_type], ::String, context: "#{context}[:attribute_type]")
        Validators::ListOf__string.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
      end
    end

    class BadRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BadRequestException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class BaiduChannelRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BaiduChannelRequest, context: context)
        Hearth::Validator.validate!(input[:api_key], ::String, context: "#{context}[:api_key]")
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:secret_key], ::String, context: "#{context}[:secret_key]")
      end
    end

    class BaiduChannelResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BaiduChannelResponse, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:creation_date], ::String, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:credential], ::String, context: "#{context}[:credential]")
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:has_credential], ::TrueClass, ::FalseClass, context: "#{context}[:has_credential]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:is_archived], ::TrueClass, ::FalseClass, context: "#{context}[:is_archived]")
        Hearth::Validator.validate!(input[:last_modified_by], ::String, context: "#{context}[:last_modified_by]")
        Hearth::Validator.validate!(input[:last_modified_date], ::String, context: "#{context}[:last_modified_date]")
        Hearth::Validator.validate!(input[:platform], ::String, context: "#{context}[:platform]")
        Hearth::Validator.validate!(input[:version], ::Integer, context: "#{context}[:version]")
      end
    end

    class BaiduMessage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BaiduMessage, context: context)
        Hearth::Validator.validate!(input[:action], ::String, context: "#{context}[:action]")
        Hearth::Validator.validate!(input[:body], ::String, context: "#{context}[:body]")
        Validators::MapOf__string.validate!(input[:data], context: "#{context}[:data]") unless input[:data].nil?
        Hearth::Validator.validate!(input[:icon_reference], ::String, context: "#{context}[:icon_reference]")
        Hearth::Validator.validate!(input[:image_icon_url], ::String, context: "#{context}[:image_icon_url]")
        Hearth::Validator.validate!(input[:image_url], ::String, context: "#{context}[:image_url]")
        Hearth::Validator.validate!(input[:raw_content], ::String, context: "#{context}[:raw_content]")
        Hearth::Validator.validate!(input[:silent_push], ::TrueClass, ::FalseClass, context: "#{context}[:silent_push]")
        Hearth::Validator.validate!(input[:small_image_icon_url], ::String, context: "#{context}[:small_image_icon_url]")
        Hearth::Validator.validate!(input[:sound], ::String, context: "#{context}[:sound]")
        Validators::MapOfListOf__string.validate!(input[:substitutions], context: "#{context}[:substitutions]") unless input[:substitutions].nil?
        Hearth::Validator.validate!(input[:time_to_live], ::Integer, context: "#{context}[:time_to_live]")
        Hearth::Validator.validate!(input[:title], ::String, context: "#{context}[:title]")
        Hearth::Validator.validate!(input[:url], ::String, context: "#{context}[:url]")
      end
    end

    class BaseKpiResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BaseKpiResult, context: context)
        Validators::ListOfResultRow.validate!(input[:rows], context: "#{context}[:rows]") unless input[:rows].nil?
      end
    end

    class CampaignCustomMessage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CampaignCustomMessage, context: context)
        Hearth::Validator.validate!(input[:data], ::String, context: "#{context}[:data]")
      end
    end

    class CampaignDateRangeKpiResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CampaignDateRangeKpiResponse, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:campaign_id], ::String, context: "#{context}[:campaign_id]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:kpi_name], ::String, context: "#{context}[:kpi_name]")
        Validators::BaseKpiResult.validate!(input[:kpi_result], context: "#{context}[:kpi_result]") unless input[:kpi_result].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
      end
    end

    class CampaignEmailMessage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CampaignEmailMessage, context: context)
        Hearth::Validator.validate!(input[:body], ::String, context: "#{context}[:body]")
        Hearth::Validator.validate!(input[:from_address], ::String, context: "#{context}[:from_address]")
        Hearth::Validator.validate!(input[:html_body], ::String, context: "#{context}[:html_body]")
        Hearth::Validator.validate!(input[:title], ::String, context: "#{context}[:title]")
      end
    end

    class CampaignEventFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CampaignEventFilter, context: context)
        Validators::EventDimensions.validate!(input[:dimensions], context: "#{context}[:dimensions]") unless input[:dimensions].nil?
        Hearth::Validator.validate!(input[:filter_type], ::String, context: "#{context}[:filter_type]")
      end
    end

    class CampaignHook
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CampaignHook, context: context)
        Hearth::Validator.validate!(input[:lambda_function_name], ::String, context: "#{context}[:lambda_function_name]")
        Hearth::Validator.validate!(input[:mode], ::String, context: "#{context}[:mode]")
        Hearth::Validator.validate!(input[:web_url], ::String, context: "#{context}[:web_url]")
      end
    end

    class CampaignInAppMessage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CampaignInAppMessage, context: context)
        Hearth::Validator.validate!(input[:body], ::String, context: "#{context}[:body]")
        Validators::ListOfInAppMessageContent.validate!(input[:content], context: "#{context}[:content]") unless input[:content].nil?
        Validators::MapOf__string.validate!(input[:custom_config], context: "#{context}[:custom_config]") unless input[:custom_config].nil?
        Hearth::Validator.validate!(input[:layout], ::String, context: "#{context}[:layout]")
      end
    end

    class CampaignLimits
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CampaignLimits, context: context)
        Hearth::Validator.validate!(input[:daily], ::Integer, context: "#{context}[:daily]")
        Hearth::Validator.validate!(input[:maximum_duration], ::Integer, context: "#{context}[:maximum_duration]")
        Hearth::Validator.validate!(input[:messages_per_second], ::Integer, context: "#{context}[:messages_per_second]")
        Hearth::Validator.validate!(input[:total], ::Integer, context: "#{context}[:total]")
        Hearth::Validator.validate!(input[:session], ::Integer, context: "#{context}[:session]")
      end
    end

    class CampaignResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CampaignResponse, context: context)
        Validators::ListOfTreatmentResource.validate!(input[:additional_treatments], context: "#{context}[:additional_treatments]") unless input[:additional_treatments].nil?
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:creation_date], ::String, context: "#{context}[:creation_date]")
        Validators::CustomDeliveryConfiguration.validate!(input[:custom_delivery_configuration], context: "#{context}[:custom_delivery_configuration]") unless input[:custom_delivery_configuration].nil?
        Validators::CampaignState.validate!(input[:default_state], context: "#{context}[:default_state]") unless input[:default_state].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:holdout_percent], ::Integer, context: "#{context}[:holdout_percent]")
        Validators::CampaignHook.validate!(input[:hook], context: "#{context}[:hook]") unless input[:hook].nil?
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:is_paused], ::TrueClass, ::FalseClass, context: "#{context}[:is_paused]")
        Hearth::Validator.validate!(input[:last_modified_date], ::String, context: "#{context}[:last_modified_date]")
        Validators::CampaignLimits.validate!(input[:limits], context: "#{context}[:limits]") unless input[:limits].nil?
        Validators::MessageConfiguration.validate!(input[:message_configuration], context: "#{context}[:message_configuration]") unless input[:message_configuration].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::Schedule.validate!(input[:schedule], context: "#{context}[:schedule]") unless input[:schedule].nil?
        Hearth::Validator.validate!(input[:segment_id], ::String, context: "#{context}[:segment_id]")
        Hearth::Validator.validate!(input[:segment_version], ::Integer, context: "#{context}[:segment_version]")
        Validators::CampaignState.validate!(input[:state], context: "#{context}[:state]") unless input[:state].nil?
        Validators::MapOf__string.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Validators::TemplateConfiguration.validate!(input[:template_configuration], context: "#{context}[:template_configuration]") unless input[:template_configuration].nil?
        Hearth::Validator.validate!(input[:treatment_description], ::String, context: "#{context}[:treatment_description]")
        Hearth::Validator.validate!(input[:treatment_name], ::String, context: "#{context}[:treatment_name]")
        Hearth::Validator.validate!(input[:version], ::Integer, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:priority], ::Integer, context: "#{context}[:priority]")
      end
    end

    class CampaignSmsMessage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CampaignSmsMessage, context: context)
        Hearth::Validator.validate!(input[:body], ::String, context: "#{context}[:body]")
        Hearth::Validator.validate!(input[:message_type], ::String, context: "#{context}[:message_type]")
        Hearth::Validator.validate!(input[:origination_number], ::String, context: "#{context}[:origination_number]")
        Hearth::Validator.validate!(input[:sender_id], ::String, context: "#{context}[:sender_id]")
        Hearth::Validator.validate!(input[:entity_id], ::String, context: "#{context}[:entity_id]")
        Hearth::Validator.validate!(input[:template_id], ::String, context: "#{context}[:template_id]")
      end
    end

    class CampaignState
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CampaignState, context: context)
        Hearth::Validator.validate!(input[:campaign_status], ::String, context: "#{context}[:campaign_status]")
      end
    end

    class CampaignsResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CampaignsResponse, context: context)
        Validators::ListOfCampaignResponse.validate!(input[:item], context: "#{context}[:item]") unless input[:item].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ChannelResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ChannelResponse, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:creation_date], ::String, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:has_credential], ::TrueClass, ::FalseClass, context: "#{context}[:has_credential]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:is_archived], ::TrueClass, ::FalseClass, context: "#{context}[:is_archived]")
        Hearth::Validator.validate!(input[:last_modified_by], ::String, context: "#{context}[:last_modified_by]")
        Hearth::Validator.validate!(input[:last_modified_date], ::String, context: "#{context}[:last_modified_date]")
        Hearth::Validator.validate!(input[:version], ::Integer, context: "#{context}[:version]")
      end
    end

    class ChannelsResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ChannelsResponse, context: context)
        Validators::MapOfChannelResponse.validate!(input[:channels], context: "#{context}[:channels]") unless input[:channels].nil?
      end
    end

    class Condition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Condition, context: context)
        Validators::ListOfSimpleCondition.validate!(input[:conditions], context: "#{context}[:conditions]") unless input[:conditions].nil?
        Hearth::Validator.validate!(input[:operator], ::String, context: "#{context}[:operator]")
      end
    end

    class ConditionalSplitActivity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConditionalSplitActivity, context: context)
        Validators::Condition.validate!(input[:condition], context: "#{context}[:condition]") unless input[:condition].nil?
        Validators::WaitTime.validate!(input[:evaluation_wait_time], context: "#{context}[:evaluation_wait_time]") unless input[:evaluation_wait_time].nil?
        Hearth::Validator.validate!(input[:false_activity], ::String, context: "#{context}[:false_activity]")
        Hearth::Validator.validate!(input[:true_activity], ::String, context: "#{context}[:true_activity]")
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class ContactCenterActivity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ContactCenterActivity, context: context)
        Hearth::Validator.validate!(input[:next_activity], ::String, context: "#{context}[:next_activity]")
      end
    end

    class CreateAppInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAppInput, context: context)
        Validators::CreateApplicationRequest.validate!(input[:create_application_request], context: "#{context}[:create_application_request]") unless input[:create_application_request].nil?
      end
    end

    class CreateAppOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAppOutput, context: context)
        Validators::ApplicationResponse.validate!(input[:application_response], context: "#{context}[:application_response]") unless input[:application_response].nil?
      end
    end

    class CreateApplicationRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateApplicationRequest, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::MapOf__string.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateCampaignInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCampaignInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Validators::WriteCampaignRequest.validate!(input[:write_campaign_request], context: "#{context}[:write_campaign_request]") unless input[:write_campaign_request].nil?
      end
    end

    class CreateCampaignOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCampaignOutput, context: context)
        Validators::CampaignResponse.validate!(input[:campaign_response], context: "#{context}[:campaign_response]") unless input[:campaign_response].nil?
      end
    end

    class CreateEmailTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateEmailTemplateInput, context: context)
        Validators::EmailTemplateRequest.validate!(input[:email_template_request], context: "#{context}[:email_template_request]") unless input[:email_template_request].nil?
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
      end
    end

    class CreateEmailTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateEmailTemplateOutput, context: context)
        Validators::CreateTemplateMessageBody.validate!(input[:create_template_message_body], context: "#{context}[:create_template_message_body]") unless input[:create_template_message_body].nil?
      end
    end

    class CreateExportJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateExportJobInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Validators::ExportJobRequest.validate!(input[:export_job_request], context: "#{context}[:export_job_request]") unless input[:export_job_request].nil?
      end
    end

    class CreateExportJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateExportJobOutput, context: context)
        Validators::ExportJobResponse.validate!(input[:export_job_response], context: "#{context}[:export_job_response]") unless input[:export_job_response].nil?
      end
    end

    class CreateImportJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateImportJobInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Validators::ImportJobRequest.validate!(input[:import_job_request], context: "#{context}[:import_job_request]") unless input[:import_job_request].nil?
      end
    end

    class CreateImportJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateImportJobOutput, context: context)
        Validators::ImportJobResponse.validate!(input[:import_job_response], context: "#{context}[:import_job_response]") unless input[:import_job_response].nil?
      end
    end

    class CreateInAppTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateInAppTemplateInput, context: context)
        Validators::InAppTemplateRequest.validate!(input[:in_app_template_request], context: "#{context}[:in_app_template_request]") unless input[:in_app_template_request].nil?
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
      end
    end

    class CreateInAppTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateInAppTemplateOutput, context: context)
        Validators::TemplateCreateMessageBody.validate!(input[:template_create_message_body], context: "#{context}[:template_create_message_body]") unless input[:template_create_message_body].nil?
      end
    end

    class CreateJourneyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateJourneyInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Validators::WriteJourneyRequest.validate!(input[:write_journey_request], context: "#{context}[:write_journey_request]") unless input[:write_journey_request].nil?
      end
    end

    class CreateJourneyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateJourneyOutput, context: context)
        Validators::JourneyResponse.validate!(input[:journey_response], context: "#{context}[:journey_response]") unless input[:journey_response].nil?
      end
    end

    class CreatePushTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePushTemplateInput, context: context)
        Validators::PushNotificationTemplateRequest.validate!(input[:push_notification_template_request], context: "#{context}[:push_notification_template_request]") unless input[:push_notification_template_request].nil?
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
      end
    end

    class CreatePushTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePushTemplateOutput, context: context)
        Validators::CreateTemplateMessageBody.validate!(input[:create_template_message_body], context: "#{context}[:create_template_message_body]") unless input[:create_template_message_body].nil?
      end
    end

    class CreateRecommenderConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRecommenderConfigurationInput, context: context)
        Validators::CreateRecommenderConfigurationShape.validate!(input[:create_recommender_configuration], context: "#{context}[:create_recommender_configuration]") unless input[:create_recommender_configuration].nil?
      end
    end

    class CreateRecommenderConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRecommenderConfigurationOutput, context: context)
        Validators::RecommenderConfigurationResponse.validate!(input[:recommender_configuration_response], context: "#{context}[:recommender_configuration_response]") unless input[:recommender_configuration_response].nil?
      end
    end

    class CreateRecommenderConfigurationShape
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRecommenderConfigurationShape, context: context)
        Validators::MapOf__string.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:recommendation_provider_id_type], ::String, context: "#{context}[:recommendation_provider_id_type]")
        Hearth::Validator.validate!(input[:recommendation_provider_role_arn], ::String, context: "#{context}[:recommendation_provider_role_arn]")
        Hearth::Validator.validate!(input[:recommendation_provider_uri], ::String, context: "#{context}[:recommendation_provider_uri]")
        Hearth::Validator.validate!(input[:recommendation_transformer_uri], ::String, context: "#{context}[:recommendation_transformer_uri]")
        Hearth::Validator.validate!(input[:recommendations_display_name], ::String, context: "#{context}[:recommendations_display_name]")
        Hearth::Validator.validate!(input[:recommendations_per_message], ::Integer, context: "#{context}[:recommendations_per_message]")
      end
    end

    class CreateSegmentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSegmentInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Validators::WriteSegmentRequest.validate!(input[:write_segment_request], context: "#{context}[:write_segment_request]") unless input[:write_segment_request].nil?
      end
    end

    class CreateSegmentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSegmentOutput, context: context)
        Validators::SegmentResponse.validate!(input[:segment_response], context: "#{context}[:segment_response]") unless input[:segment_response].nil?
      end
    end

    class CreateSmsTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSmsTemplateInput, context: context)
        Validators::SMSTemplateRequest.validate!(input[:sms_template_request], context: "#{context}[:sms_template_request]") unless input[:sms_template_request].nil?
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
      end
    end

    class CreateSmsTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSmsTemplateOutput, context: context)
        Validators::CreateTemplateMessageBody.validate!(input[:create_template_message_body], context: "#{context}[:create_template_message_body]") unless input[:create_template_message_body].nil?
      end
    end

    class CreateTemplateMessageBody
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTemplateMessageBody, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class CreateVoiceTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateVoiceTemplateInput, context: context)
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Validators::VoiceTemplateRequest.validate!(input[:voice_template_request], context: "#{context}[:voice_template_request]") unless input[:voice_template_request].nil?
      end
    end

    class CreateVoiceTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateVoiceTemplateOutput, context: context)
        Validators::CreateTemplateMessageBody.validate!(input[:create_template_message_body], context: "#{context}[:create_template_message_body]") unless input[:create_template_message_body].nil?
      end
    end

    class CustomDeliveryConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomDeliveryConfiguration, context: context)
        Hearth::Validator.validate!(input[:delivery_uri], ::String, context: "#{context}[:delivery_uri]")
        Validators::ListOf__EndpointTypesElement.validate!(input[:endpoint_types], context: "#{context}[:endpoint_types]") unless input[:endpoint_types].nil?
      end
    end

    class CustomMessageActivity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomMessageActivity, context: context)
        Hearth::Validator.validate!(input[:delivery_uri], ::String, context: "#{context}[:delivery_uri]")
        Validators::ListOf__EndpointTypesElement.validate!(input[:endpoint_types], context: "#{context}[:endpoint_types]") unless input[:endpoint_types].nil?
        Validators::JourneyCustomMessage.validate!(input[:message_config], context: "#{context}[:message_config]") unless input[:message_config].nil?
        Hearth::Validator.validate!(input[:next_activity], ::String, context: "#{context}[:next_activity]")
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:template_version], ::String, context: "#{context}[:template_version]")
      end
    end

    class DefaultButtonConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DefaultButtonConfiguration, context: context)
        Hearth::Validator.validate!(input[:background_color], ::String, context: "#{context}[:background_color]")
        Hearth::Validator.validate!(input[:border_radius], ::Integer, context: "#{context}[:border_radius]")
        Hearth::Validator.validate!(input[:button_action], ::String, context: "#{context}[:button_action]")
        Hearth::Validator.validate!(input[:link], ::String, context: "#{context}[:link]")
        Hearth::Validator.validate!(input[:text], ::String, context: "#{context}[:text]")
        Hearth::Validator.validate!(input[:text_color], ::String, context: "#{context}[:text_color]")
      end
    end

    class DefaultMessage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DefaultMessage, context: context)
        Hearth::Validator.validate!(input[:body], ::String, context: "#{context}[:body]")
        Validators::MapOfListOf__string.validate!(input[:substitutions], context: "#{context}[:substitutions]") unless input[:substitutions].nil?
      end
    end

    class DefaultPushNotificationMessage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DefaultPushNotificationMessage, context: context)
        Hearth::Validator.validate!(input[:action], ::String, context: "#{context}[:action]")
        Hearth::Validator.validate!(input[:body], ::String, context: "#{context}[:body]")
        Validators::MapOf__string.validate!(input[:data], context: "#{context}[:data]") unless input[:data].nil?
        Hearth::Validator.validate!(input[:silent_push], ::TrueClass, ::FalseClass, context: "#{context}[:silent_push]")
        Validators::MapOfListOf__string.validate!(input[:substitutions], context: "#{context}[:substitutions]") unless input[:substitutions].nil?
        Hearth::Validator.validate!(input[:title], ::String, context: "#{context}[:title]")
        Hearth::Validator.validate!(input[:url], ::String, context: "#{context}[:url]")
      end
    end

    class DefaultPushNotificationTemplate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DefaultPushNotificationTemplate, context: context)
        Hearth::Validator.validate!(input[:action], ::String, context: "#{context}[:action]")
        Hearth::Validator.validate!(input[:body], ::String, context: "#{context}[:body]")
        Hearth::Validator.validate!(input[:sound], ::String, context: "#{context}[:sound]")
        Hearth::Validator.validate!(input[:title], ::String, context: "#{context}[:title]")
        Hearth::Validator.validate!(input[:url], ::String, context: "#{context}[:url]")
      end
    end

    class DeleteAdmChannelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAdmChannelInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
      end
    end

    class DeleteAdmChannelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAdmChannelOutput, context: context)
        Validators::ADMChannelResponse.validate!(input[:adm_channel_response], context: "#{context}[:adm_channel_response]") unless input[:adm_channel_response].nil?
      end
    end

    class DeleteApnsChannelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteApnsChannelInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
      end
    end

    class DeleteApnsChannelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteApnsChannelOutput, context: context)
        Validators::APNSChannelResponse.validate!(input[:apns_channel_response], context: "#{context}[:apns_channel_response]") unless input[:apns_channel_response].nil?
      end
    end

    class DeleteApnsSandboxChannelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteApnsSandboxChannelInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
      end
    end

    class DeleteApnsSandboxChannelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteApnsSandboxChannelOutput, context: context)
        Validators::APNSSandboxChannelResponse.validate!(input[:apns_sandbox_channel_response], context: "#{context}[:apns_sandbox_channel_response]") unless input[:apns_sandbox_channel_response].nil?
      end
    end

    class DeleteApnsVoipChannelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteApnsVoipChannelInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
      end
    end

    class DeleteApnsVoipChannelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteApnsVoipChannelOutput, context: context)
        Validators::APNSVoipChannelResponse.validate!(input[:apns_voip_channel_response], context: "#{context}[:apns_voip_channel_response]") unless input[:apns_voip_channel_response].nil?
      end
    end

    class DeleteApnsVoipSandboxChannelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteApnsVoipSandboxChannelInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
      end
    end

    class DeleteApnsVoipSandboxChannelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteApnsVoipSandboxChannelOutput, context: context)
        Validators::APNSVoipSandboxChannelResponse.validate!(input[:apns_voip_sandbox_channel_response], context: "#{context}[:apns_voip_sandbox_channel_response]") unless input[:apns_voip_sandbox_channel_response].nil?
      end
    end

    class DeleteAppInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAppInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
      end
    end

    class DeleteAppOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAppOutput, context: context)
        Validators::ApplicationResponse.validate!(input[:application_response], context: "#{context}[:application_response]") unless input[:application_response].nil?
      end
    end

    class DeleteBaiduChannelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBaiduChannelInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
      end
    end

    class DeleteBaiduChannelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBaiduChannelOutput, context: context)
        Validators::BaiduChannelResponse.validate!(input[:baidu_channel_response], context: "#{context}[:baidu_channel_response]") unless input[:baidu_channel_response].nil?
      end
    end

    class DeleteCampaignInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCampaignInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:campaign_id], ::String, context: "#{context}[:campaign_id]")
      end
    end

    class DeleteCampaignOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCampaignOutput, context: context)
        Validators::CampaignResponse.validate!(input[:campaign_response], context: "#{context}[:campaign_response]") unless input[:campaign_response].nil?
      end
    end

    class DeleteEmailChannelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEmailChannelInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
      end
    end

    class DeleteEmailChannelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEmailChannelOutput, context: context)
        Validators::EmailChannelResponse.validate!(input[:email_channel_response], context: "#{context}[:email_channel_response]") unless input[:email_channel_response].nil?
      end
    end

    class DeleteEmailTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEmailTemplateInput, context: context)
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class DeleteEmailTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEmailTemplateOutput, context: context)
        Validators::MessageBody.validate!(input[:message_body], context: "#{context}[:message_body]") unless input[:message_body].nil?
      end
    end

    class DeleteEndpointInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEndpointInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:endpoint_id], ::String, context: "#{context}[:endpoint_id]")
      end
    end

    class DeleteEndpointOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEndpointOutput, context: context)
        Validators::EndpointResponse.validate!(input[:endpoint_response], context: "#{context}[:endpoint_response]") unless input[:endpoint_response].nil?
      end
    end

    class DeleteEventStreamInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEventStreamInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
      end
    end

    class DeleteEventStreamOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEventStreamOutput, context: context)
        Validators::EventStream.validate!(input[:event_stream], context: "#{context}[:event_stream]") unless input[:event_stream].nil?
      end
    end

    class DeleteGcmChannelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteGcmChannelInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
      end
    end

    class DeleteGcmChannelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteGcmChannelOutput, context: context)
        Validators::GCMChannelResponse.validate!(input[:gcm_channel_response], context: "#{context}[:gcm_channel_response]") unless input[:gcm_channel_response].nil?
      end
    end

    class DeleteInAppTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteInAppTemplateInput, context: context)
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class DeleteInAppTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteInAppTemplateOutput, context: context)
        Validators::MessageBody.validate!(input[:message_body], context: "#{context}[:message_body]") unless input[:message_body].nil?
      end
    end

    class DeleteJourneyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteJourneyInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:journey_id], ::String, context: "#{context}[:journey_id]")
      end
    end

    class DeleteJourneyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteJourneyOutput, context: context)
        Validators::JourneyResponse.validate!(input[:journey_response], context: "#{context}[:journey_response]") unless input[:journey_response].nil?
      end
    end

    class DeletePushTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePushTemplateInput, context: context)
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class DeletePushTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePushTemplateOutput, context: context)
        Validators::MessageBody.validate!(input[:message_body], context: "#{context}[:message_body]") unless input[:message_body].nil?
      end
    end

    class DeleteRecommenderConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRecommenderConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:recommender_id], ::String, context: "#{context}[:recommender_id]")
      end
    end

    class DeleteRecommenderConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRecommenderConfigurationOutput, context: context)
        Validators::RecommenderConfigurationResponse.validate!(input[:recommender_configuration_response], context: "#{context}[:recommender_configuration_response]") unless input[:recommender_configuration_response].nil?
      end
    end

    class DeleteSegmentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSegmentInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:segment_id], ::String, context: "#{context}[:segment_id]")
      end
    end

    class DeleteSegmentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSegmentOutput, context: context)
        Validators::SegmentResponse.validate!(input[:segment_response], context: "#{context}[:segment_response]") unless input[:segment_response].nil?
      end
    end

    class DeleteSmsChannelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSmsChannelInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
      end
    end

    class DeleteSmsChannelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSmsChannelOutput, context: context)
        Validators::SMSChannelResponse.validate!(input[:sms_channel_response], context: "#{context}[:sms_channel_response]") unless input[:sms_channel_response].nil?
      end
    end

    class DeleteSmsTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSmsTemplateInput, context: context)
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class DeleteSmsTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSmsTemplateOutput, context: context)
        Validators::MessageBody.validate!(input[:message_body], context: "#{context}[:message_body]") unless input[:message_body].nil?
      end
    end

    class DeleteUserEndpointsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteUserEndpointsInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
      end
    end

    class DeleteUserEndpointsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteUserEndpointsOutput, context: context)
        Validators::EndpointsResponse.validate!(input[:endpoints_response], context: "#{context}[:endpoints_response]") unless input[:endpoints_response].nil?
      end
    end

    class DeleteVoiceChannelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteVoiceChannelInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
      end
    end

    class DeleteVoiceChannelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteVoiceChannelOutput, context: context)
        Validators::VoiceChannelResponse.validate!(input[:voice_channel_response], context: "#{context}[:voice_channel_response]") unless input[:voice_channel_response].nil?
      end
    end

    class DeleteVoiceTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteVoiceTemplateInput, context: context)
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class DeleteVoiceTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteVoiceTemplateOutput, context: context)
        Validators::MessageBody.validate!(input[:message_body], context: "#{context}[:message_body]") unless input[:message_body].nil?
      end
    end

    class DirectMessageConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DirectMessageConfiguration, context: context)
        Validators::ADMMessage.validate!(input[:adm_message], context: "#{context}[:adm_message]") unless input[:adm_message].nil?
        Validators::APNSMessage.validate!(input[:apns_message], context: "#{context}[:apns_message]") unless input[:apns_message].nil?
        Validators::BaiduMessage.validate!(input[:baidu_message], context: "#{context}[:baidu_message]") unless input[:baidu_message].nil?
        Validators::DefaultMessage.validate!(input[:default_message], context: "#{context}[:default_message]") unless input[:default_message].nil?
        Validators::DefaultPushNotificationMessage.validate!(input[:default_push_notification_message], context: "#{context}[:default_push_notification_message]") unless input[:default_push_notification_message].nil?
        Validators::EmailMessage.validate!(input[:email_message], context: "#{context}[:email_message]") unless input[:email_message].nil?
        Validators::GCMMessage.validate!(input[:gcm_message], context: "#{context}[:gcm_message]") unless input[:gcm_message].nil?
        Validators::SMSMessage.validate!(input[:sms_message], context: "#{context}[:sms_message]") unless input[:sms_message].nil?
        Validators::VoiceMessage.validate!(input[:voice_message], context: "#{context}[:voice_message]") unless input[:voice_message].nil?
      end
    end

    class EmailChannelRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EmailChannelRequest, context: context)
        Hearth::Validator.validate!(input[:configuration_set], ::String, context: "#{context}[:configuration_set]")
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:from_address], ::String, context: "#{context}[:from_address]")
        Hearth::Validator.validate!(input[:identity], ::String, context: "#{context}[:identity]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
      end
    end

    class EmailChannelResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EmailChannelResponse, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:configuration_set], ::String, context: "#{context}[:configuration_set]")
        Hearth::Validator.validate!(input[:creation_date], ::String, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:from_address], ::String, context: "#{context}[:from_address]")
        Hearth::Validator.validate!(input[:has_credential], ::TrueClass, ::FalseClass, context: "#{context}[:has_credential]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:identity], ::String, context: "#{context}[:identity]")
        Hearth::Validator.validate!(input[:is_archived], ::TrueClass, ::FalseClass, context: "#{context}[:is_archived]")
        Hearth::Validator.validate!(input[:last_modified_by], ::String, context: "#{context}[:last_modified_by]")
        Hearth::Validator.validate!(input[:last_modified_date], ::String, context: "#{context}[:last_modified_date]")
        Hearth::Validator.validate!(input[:messages_per_second], ::Integer, context: "#{context}[:messages_per_second]")
        Hearth::Validator.validate!(input[:platform], ::String, context: "#{context}[:platform]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:version], ::Integer, context: "#{context}[:version]")
      end
    end

    class EmailMessage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EmailMessage, context: context)
        Hearth::Validator.validate!(input[:body], ::String, context: "#{context}[:body]")
        Hearth::Validator.validate!(input[:feedback_forwarding_address], ::String, context: "#{context}[:feedback_forwarding_address]")
        Hearth::Validator.validate!(input[:from_address], ::String, context: "#{context}[:from_address]")
        Validators::RawEmail.validate!(input[:raw_email], context: "#{context}[:raw_email]") unless input[:raw_email].nil?
        Validators::ListOf__string.validate!(input[:reply_to_addresses], context: "#{context}[:reply_to_addresses]") unless input[:reply_to_addresses].nil?
        Validators::SimpleEmail.validate!(input[:simple_email], context: "#{context}[:simple_email]") unless input[:simple_email].nil?
        Validators::MapOfListOf__string.validate!(input[:substitutions], context: "#{context}[:substitutions]") unless input[:substitutions].nil?
      end
    end

    class EmailMessageActivity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EmailMessageActivity, context: context)
        Validators::JourneyEmailMessage.validate!(input[:message_config], context: "#{context}[:message_config]") unless input[:message_config].nil?
        Hearth::Validator.validate!(input[:next_activity], ::String, context: "#{context}[:next_activity]")
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:template_version], ::String, context: "#{context}[:template_version]")
      end
    end

    class EmailTemplateRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EmailTemplateRequest, context: context)
        Hearth::Validator.validate!(input[:default_substitutions], ::String, context: "#{context}[:default_substitutions]")
        Hearth::Validator.validate!(input[:html_part], ::String, context: "#{context}[:html_part]")
        Hearth::Validator.validate!(input[:recommender_id], ::String, context: "#{context}[:recommender_id]")
        Hearth::Validator.validate!(input[:subject], ::String, context: "#{context}[:subject]")
        Validators::MapOf__string.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:template_description], ::String, context: "#{context}[:template_description]")
        Hearth::Validator.validate!(input[:text_part], ::String, context: "#{context}[:text_part]")
      end
    end

    class EmailTemplateResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EmailTemplateResponse, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:creation_date], ::String, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:default_substitutions], ::String, context: "#{context}[:default_substitutions]")
        Hearth::Validator.validate!(input[:html_part], ::String, context: "#{context}[:html_part]")
        Hearth::Validator.validate!(input[:last_modified_date], ::String, context: "#{context}[:last_modified_date]")
        Hearth::Validator.validate!(input[:recommender_id], ::String, context: "#{context}[:recommender_id]")
        Hearth::Validator.validate!(input[:subject], ::String, context: "#{context}[:subject]")
        Validators::MapOf__string.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:template_description], ::String, context: "#{context}[:template_description]")
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:template_type], ::String, context: "#{context}[:template_type]")
        Hearth::Validator.validate!(input[:text_part], ::String, context: "#{context}[:text_part]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class EndpointBatchItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EndpointBatchItem, context: context)
        Hearth::Validator.validate!(input[:address], ::String, context: "#{context}[:address]")
        Validators::MapOfListOf__string.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
        Hearth::Validator.validate!(input[:channel_type], ::String, context: "#{context}[:channel_type]")
        Validators::EndpointDemographic.validate!(input[:demographic], context: "#{context}[:demographic]") unless input[:demographic].nil?
        Hearth::Validator.validate!(input[:effective_date], ::String, context: "#{context}[:effective_date]")
        Hearth::Validator.validate!(input[:endpoint_status], ::String, context: "#{context}[:endpoint_status]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Validators::EndpointLocation.validate!(input[:location], context: "#{context}[:location]") unless input[:location].nil?
        Validators::MapOf__double.validate!(input[:metrics], context: "#{context}[:metrics]") unless input[:metrics].nil?
        Hearth::Validator.validate!(input[:opt_out], ::String, context: "#{context}[:opt_out]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Validators::EndpointUser.validate!(input[:user], context: "#{context}[:user]") unless input[:user].nil?
      end
    end

    class EndpointBatchRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EndpointBatchRequest, context: context)
        Validators::ListOfEndpointBatchItem.validate!(input[:item], context: "#{context}[:item]") unless input[:item].nil?
      end
    end

    class EndpointDemographic
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EndpointDemographic, context: context)
        Hearth::Validator.validate!(input[:app_version], ::String, context: "#{context}[:app_version]")
        Hearth::Validator.validate!(input[:locale], ::String, context: "#{context}[:locale]")
        Hearth::Validator.validate!(input[:make], ::String, context: "#{context}[:make]")
        Hearth::Validator.validate!(input[:model], ::String, context: "#{context}[:model]")
        Hearth::Validator.validate!(input[:model_version], ::String, context: "#{context}[:model_version]")
        Hearth::Validator.validate!(input[:platform], ::String, context: "#{context}[:platform]")
        Hearth::Validator.validate!(input[:platform_version], ::String, context: "#{context}[:platform_version]")
        Hearth::Validator.validate!(input[:timezone], ::String, context: "#{context}[:timezone]")
      end
    end

    class EndpointItemResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EndpointItemResponse, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:status_code], ::Integer, context: "#{context}[:status_code]")
      end
    end

    class EndpointLocation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EndpointLocation, context: context)
        Hearth::Validator.validate!(input[:city], ::String, context: "#{context}[:city]")
        Hearth::Validator.validate!(input[:country], ::String, context: "#{context}[:country]")
        Hearth::Validator.validate!(input[:latitude], ::Float, context: "#{context}[:latitude]")
        Hearth::Validator.validate!(input[:longitude], ::Float, context: "#{context}[:longitude]")
        Hearth::Validator.validate!(input[:postal_code], ::String, context: "#{context}[:postal_code]")
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
      end
    end

    class EndpointMessageResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EndpointMessageResult, context: context)
        Hearth::Validator.validate!(input[:address], ::String, context: "#{context}[:address]")
        Hearth::Validator.validate!(input[:delivery_status], ::String, context: "#{context}[:delivery_status]")
        Hearth::Validator.validate!(input[:message_id], ::String, context: "#{context}[:message_id]")
        Hearth::Validator.validate!(input[:status_code], ::Integer, context: "#{context}[:status_code]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
        Hearth::Validator.validate!(input[:updated_token], ::String, context: "#{context}[:updated_token]")
      end
    end

    class EndpointRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EndpointRequest, context: context)
        Hearth::Validator.validate!(input[:address], ::String, context: "#{context}[:address]")
        Validators::MapOfListOf__string.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
        Hearth::Validator.validate!(input[:channel_type], ::String, context: "#{context}[:channel_type]")
        Validators::EndpointDemographic.validate!(input[:demographic], context: "#{context}[:demographic]") unless input[:demographic].nil?
        Hearth::Validator.validate!(input[:effective_date], ::String, context: "#{context}[:effective_date]")
        Hearth::Validator.validate!(input[:endpoint_status], ::String, context: "#{context}[:endpoint_status]")
        Validators::EndpointLocation.validate!(input[:location], context: "#{context}[:location]") unless input[:location].nil?
        Validators::MapOf__double.validate!(input[:metrics], context: "#{context}[:metrics]") unless input[:metrics].nil?
        Hearth::Validator.validate!(input[:opt_out], ::String, context: "#{context}[:opt_out]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Validators::EndpointUser.validate!(input[:user], context: "#{context}[:user]") unless input[:user].nil?
      end
    end

    class EndpointResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EndpointResponse, context: context)
        Hearth::Validator.validate!(input[:address], ::String, context: "#{context}[:address]")
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Validators::MapOfListOf__string.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
        Hearth::Validator.validate!(input[:channel_type], ::String, context: "#{context}[:channel_type]")
        Hearth::Validator.validate!(input[:cohort_id], ::String, context: "#{context}[:cohort_id]")
        Hearth::Validator.validate!(input[:creation_date], ::String, context: "#{context}[:creation_date]")
        Validators::EndpointDemographic.validate!(input[:demographic], context: "#{context}[:demographic]") unless input[:demographic].nil?
        Hearth::Validator.validate!(input[:effective_date], ::String, context: "#{context}[:effective_date]")
        Hearth::Validator.validate!(input[:endpoint_status], ::String, context: "#{context}[:endpoint_status]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Validators::EndpointLocation.validate!(input[:location], context: "#{context}[:location]") unless input[:location].nil?
        Validators::MapOf__double.validate!(input[:metrics], context: "#{context}[:metrics]") unless input[:metrics].nil?
        Hearth::Validator.validate!(input[:opt_out], ::String, context: "#{context}[:opt_out]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Validators::EndpointUser.validate!(input[:user], context: "#{context}[:user]") unless input[:user].nil?
      end
    end

    class EndpointSendConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EndpointSendConfiguration, context: context)
        Hearth::Validator.validate!(input[:body_override], ::String, context: "#{context}[:body_override]")
        Validators::MapOf__string.validate!(input[:context], context: "#{context}[:context]") unless input[:context].nil?
        Hearth::Validator.validate!(input[:raw_content], ::String, context: "#{context}[:raw_content]")
        Validators::MapOfListOf__string.validate!(input[:substitutions], context: "#{context}[:substitutions]") unless input[:substitutions].nil?
        Hearth::Validator.validate!(input[:title_override], ::String, context: "#{context}[:title_override]")
      end
    end

    class EndpointUser
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EndpointUser, context: context)
        Validators::MapOfListOf__string.validate!(input[:user_attributes], context: "#{context}[:user_attributes]") unless input[:user_attributes].nil?
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
      end
    end

    class EndpointsResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EndpointsResponse, context: context)
        Validators::ListOfEndpointResponse.validate!(input[:item], context: "#{context}[:item]") unless input[:item].nil?
      end
    end

    class Event
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Event, context: context)
        Hearth::Validator.validate!(input[:app_package_name], ::String, context: "#{context}[:app_package_name]")
        Hearth::Validator.validate!(input[:app_title], ::String, context: "#{context}[:app_title]")
        Hearth::Validator.validate!(input[:app_version_code], ::String, context: "#{context}[:app_version_code]")
        Validators::MapOf__string.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
        Hearth::Validator.validate!(input[:client_sdk_version], ::String, context: "#{context}[:client_sdk_version]")
        Hearth::Validator.validate!(input[:event_type], ::String, context: "#{context}[:event_type]")
        Validators::MapOf__double.validate!(input[:metrics], context: "#{context}[:metrics]") unless input[:metrics].nil?
        Hearth::Validator.validate!(input[:sdk_name], ::String, context: "#{context}[:sdk_name]")
        Validators::Session.validate!(input[:session], context: "#{context}[:session]") unless input[:session].nil?
        Hearth::Validator.validate!(input[:timestamp], ::String, context: "#{context}[:timestamp]")
      end
    end

    class EventCondition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EventCondition, context: context)
        Validators::EventDimensions.validate!(input[:dimensions], context: "#{context}[:dimensions]") unless input[:dimensions].nil?
        Hearth::Validator.validate!(input[:message_activity], ::String, context: "#{context}[:message_activity]")
      end
    end

    class EventDimensions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EventDimensions, context: context)
        Validators::MapOfAttributeDimension.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
        Validators::SetDimension.validate!(input[:event_type], context: "#{context}[:event_type]") unless input[:event_type].nil?
        Validators::MapOfMetricDimension.validate!(input[:metrics], context: "#{context}[:metrics]") unless input[:metrics].nil?
      end
    end

    class EventFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EventFilter, context: context)
        Validators::EventDimensions.validate!(input[:dimensions], context: "#{context}[:dimensions]") unless input[:dimensions].nil?
        Hearth::Validator.validate!(input[:filter_type], ::String, context: "#{context}[:filter_type]")
      end
    end

    class EventItemResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EventItemResponse, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:status_code], ::Integer, context: "#{context}[:status_code]")
      end
    end

    class EventStartCondition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EventStartCondition, context: context)
        Validators::EventFilter.validate!(input[:event_filter], context: "#{context}[:event_filter]") unless input[:event_filter].nil?
        Hearth::Validator.validate!(input[:segment_id], ::String, context: "#{context}[:segment_id]")
      end
    end

    class EventStream
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EventStream, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:destination_stream_arn], ::String, context: "#{context}[:destination_stream_arn]")
        Hearth::Validator.validate!(input[:external_id], ::String, context: "#{context}[:external_id]")
        Hearth::Validator.validate!(input[:last_modified_date], ::String, context: "#{context}[:last_modified_date]")
        Hearth::Validator.validate!(input[:last_updated_by], ::String, context: "#{context}[:last_updated_by]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
      end
    end

    class EventsBatch
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EventsBatch, context: context)
        Validators::PublicEndpoint.validate!(input[:endpoint], context: "#{context}[:endpoint]") unless input[:endpoint].nil?
        Validators::MapOfEvent.validate!(input[:events], context: "#{context}[:events]") unless input[:events].nil?
      end
    end

    class EventsRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EventsRequest, context: context)
        Validators::MapOfEventsBatch.validate!(input[:batch_item], context: "#{context}[:batch_item]") unless input[:batch_item].nil?
      end
    end

    class EventsResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EventsResponse, context: context)
        Validators::MapOfItemResponse.validate!(input[:results], context: "#{context}[:results]") unless input[:results].nil?
      end
    end

    class ExportJobRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExportJobRequest, context: context)
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:s3_url_prefix], ::String, context: "#{context}[:s3_url_prefix]")
        Hearth::Validator.validate!(input[:segment_id], ::String, context: "#{context}[:segment_id]")
        Hearth::Validator.validate!(input[:segment_version], ::Integer, context: "#{context}[:segment_version]")
      end
    end

    class ExportJobResource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExportJobResource, context: context)
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:s3_url_prefix], ::String, context: "#{context}[:s3_url_prefix]")
        Hearth::Validator.validate!(input[:segment_id], ::String, context: "#{context}[:segment_id]")
        Hearth::Validator.validate!(input[:segment_version], ::Integer, context: "#{context}[:segment_version]")
      end
    end

    class ExportJobResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExportJobResponse, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:completed_pieces], ::Integer, context: "#{context}[:completed_pieces]")
        Hearth::Validator.validate!(input[:completion_date], ::String, context: "#{context}[:completion_date]")
        Hearth::Validator.validate!(input[:creation_date], ::String, context: "#{context}[:creation_date]")
        Validators::ExportJobResource.validate!(input[:definition], context: "#{context}[:definition]") unless input[:definition].nil?
        Hearth::Validator.validate!(input[:failed_pieces], ::Integer, context: "#{context}[:failed_pieces]")
        Validators::ListOf__string.validate!(input[:failures], context: "#{context}[:failures]") unless input[:failures].nil?
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:job_status], ::String, context: "#{context}[:job_status]")
        Hearth::Validator.validate!(input[:total_failures], ::Integer, context: "#{context}[:total_failures]")
        Hearth::Validator.validate!(input[:total_pieces], ::Integer, context: "#{context}[:total_pieces]")
        Hearth::Validator.validate!(input[:total_processed], ::Integer, context: "#{context}[:total_processed]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class ExportJobsResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExportJobsResponse, context: context)
        Validators::ListOfExportJobResponse.validate!(input[:item], context: "#{context}[:item]") unless input[:item].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ForbiddenException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ForbiddenException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class GCMChannelRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GCMChannelRequest, context: context)
        Hearth::Validator.validate!(input[:api_key], ::String, context: "#{context}[:api_key]")
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
      end
    end

    class GCMChannelResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GCMChannelResponse, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:creation_date], ::String, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:credential], ::String, context: "#{context}[:credential]")
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:has_credential], ::TrueClass, ::FalseClass, context: "#{context}[:has_credential]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:is_archived], ::TrueClass, ::FalseClass, context: "#{context}[:is_archived]")
        Hearth::Validator.validate!(input[:last_modified_by], ::String, context: "#{context}[:last_modified_by]")
        Hearth::Validator.validate!(input[:last_modified_date], ::String, context: "#{context}[:last_modified_date]")
        Hearth::Validator.validate!(input[:platform], ::String, context: "#{context}[:platform]")
        Hearth::Validator.validate!(input[:version], ::Integer, context: "#{context}[:version]")
      end
    end

    class GCMMessage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GCMMessage, context: context)
        Hearth::Validator.validate!(input[:action], ::String, context: "#{context}[:action]")
        Hearth::Validator.validate!(input[:body], ::String, context: "#{context}[:body]")
        Hearth::Validator.validate!(input[:collapse_key], ::String, context: "#{context}[:collapse_key]")
        Validators::MapOf__string.validate!(input[:data], context: "#{context}[:data]") unless input[:data].nil?
        Hearth::Validator.validate!(input[:icon_reference], ::String, context: "#{context}[:icon_reference]")
        Hearth::Validator.validate!(input[:image_icon_url], ::String, context: "#{context}[:image_icon_url]")
        Hearth::Validator.validate!(input[:image_url], ::String, context: "#{context}[:image_url]")
        Hearth::Validator.validate!(input[:priority], ::String, context: "#{context}[:priority]")
        Hearth::Validator.validate!(input[:raw_content], ::String, context: "#{context}[:raw_content]")
        Hearth::Validator.validate!(input[:restricted_package_name], ::String, context: "#{context}[:restricted_package_name]")
        Hearth::Validator.validate!(input[:silent_push], ::TrueClass, ::FalseClass, context: "#{context}[:silent_push]")
        Hearth::Validator.validate!(input[:small_image_icon_url], ::String, context: "#{context}[:small_image_icon_url]")
        Hearth::Validator.validate!(input[:sound], ::String, context: "#{context}[:sound]")
        Validators::MapOfListOf__string.validate!(input[:substitutions], context: "#{context}[:substitutions]") unless input[:substitutions].nil?
        Hearth::Validator.validate!(input[:time_to_live], ::Integer, context: "#{context}[:time_to_live]")
        Hearth::Validator.validate!(input[:title], ::String, context: "#{context}[:title]")
        Hearth::Validator.validate!(input[:url], ::String, context: "#{context}[:url]")
      end
    end

    class GPSCoordinates
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GPSCoordinates, context: context)
        Hearth::Validator.validate!(input[:latitude], ::Float, context: "#{context}[:latitude]")
        Hearth::Validator.validate!(input[:longitude], ::Float, context: "#{context}[:longitude]")
      end
    end

    class GPSPointDimension
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GPSPointDimension, context: context)
        Validators::GPSCoordinates.validate!(input[:coordinates], context: "#{context}[:coordinates]") unless input[:coordinates].nil?
        Hearth::Validator.validate!(input[:range_in_kilometers], ::Float, context: "#{context}[:range_in_kilometers]")
      end
    end

    class GetAdmChannelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAdmChannelInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
      end
    end

    class GetAdmChannelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAdmChannelOutput, context: context)
        Validators::ADMChannelResponse.validate!(input[:adm_channel_response], context: "#{context}[:adm_channel_response]") unless input[:adm_channel_response].nil?
      end
    end

    class GetApnsChannelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetApnsChannelInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
      end
    end

    class GetApnsChannelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetApnsChannelOutput, context: context)
        Validators::APNSChannelResponse.validate!(input[:apns_channel_response], context: "#{context}[:apns_channel_response]") unless input[:apns_channel_response].nil?
      end
    end

    class GetApnsSandboxChannelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetApnsSandboxChannelInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
      end
    end

    class GetApnsSandboxChannelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetApnsSandboxChannelOutput, context: context)
        Validators::APNSSandboxChannelResponse.validate!(input[:apns_sandbox_channel_response], context: "#{context}[:apns_sandbox_channel_response]") unless input[:apns_sandbox_channel_response].nil?
      end
    end

    class GetApnsVoipChannelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetApnsVoipChannelInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
      end
    end

    class GetApnsVoipChannelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetApnsVoipChannelOutput, context: context)
        Validators::APNSVoipChannelResponse.validate!(input[:apns_voip_channel_response], context: "#{context}[:apns_voip_channel_response]") unless input[:apns_voip_channel_response].nil?
      end
    end

    class GetApnsVoipSandboxChannelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetApnsVoipSandboxChannelInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
      end
    end

    class GetApnsVoipSandboxChannelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetApnsVoipSandboxChannelOutput, context: context)
        Validators::APNSVoipSandboxChannelResponse.validate!(input[:apns_voip_sandbox_channel_response], context: "#{context}[:apns_voip_sandbox_channel_response]") unless input[:apns_voip_sandbox_channel_response].nil?
      end
    end

    class GetAppInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAppInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
      end
    end

    class GetAppOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAppOutput, context: context)
        Validators::ApplicationResponse.validate!(input[:application_response], context: "#{context}[:application_response]") unless input[:application_response].nil?
      end
    end

    class GetApplicationDateRangeKpiInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetApplicationDateRangeKpiInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:kpi_name], ::String, context: "#{context}[:kpi_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:page_size], ::String, context: "#{context}[:page_size]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
      end
    end

    class GetApplicationDateRangeKpiOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetApplicationDateRangeKpiOutput, context: context)
        Validators::ApplicationDateRangeKpiResponse.validate!(input[:application_date_range_kpi_response], context: "#{context}[:application_date_range_kpi_response]") unless input[:application_date_range_kpi_response].nil?
      end
    end

    class GetApplicationSettingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetApplicationSettingsInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
      end
    end

    class GetApplicationSettingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetApplicationSettingsOutput, context: context)
        Validators::ApplicationSettingsResource.validate!(input[:application_settings_resource], context: "#{context}[:application_settings_resource]") unless input[:application_settings_resource].nil?
      end
    end

    class GetAppsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAppsInput, context: context)
        Hearth::Validator.validate!(input[:page_size], ::String, context: "#{context}[:page_size]")
        Hearth::Validator.validate!(input[:token], ::String, context: "#{context}[:token]")
      end
    end

    class GetAppsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAppsOutput, context: context)
        Validators::ApplicationsResponse.validate!(input[:applications_response], context: "#{context}[:applications_response]") unless input[:applications_response].nil?
      end
    end

    class GetBaiduChannelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBaiduChannelInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
      end
    end

    class GetBaiduChannelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBaiduChannelOutput, context: context)
        Validators::BaiduChannelResponse.validate!(input[:baidu_channel_response], context: "#{context}[:baidu_channel_response]") unless input[:baidu_channel_response].nil?
      end
    end

    class GetCampaignActivitiesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCampaignActivitiesInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:campaign_id], ::String, context: "#{context}[:campaign_id]")
        Hearth::Validator.validate!(input[:page_size], ::String, context: "#{context}[:page_size]")
        Hearth::Validator.validate!(input[:token], ::String, context: "#{context}[:token]")
      end
    end

    class GetCampaignActivitiesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCampaignActivitiesOutput, context: context)
        Validators::ActivitiesResponse.validate!(input[:activities_response], context: "#{context}[:activities_response]") unless input[:activities_response].nil?
      end
    end

    class GetCampaignDateRangeKpiInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCampaignDateRangeKpiInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:campaign_id], ::String, context: "#{context}[:campaign_id]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:kpi_name], ::String, context: "#{context}[:kpi_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:page_size], ::String, context: "#{context}[:page_size]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
      end
    end

    class GetCampaignDateRangeKpiOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCampaignDateRangeKpiOutput, context: context)
        Validators::CampaignDateRangeKpiResponse.validate!(input[:campaign_date_range_kpi_response], context: "#{context}[:campaign_date_range_kpi_response]") unless input[:campaign_date_range_kpi_response].nil?
      end
    end

    class GetCampaignInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCampaignInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:campaign_id], ::String, context: "#{context}[:campaign_id]")
      end
    end

    class GetCampaignOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCampaignOutput, context: context)
        Validators::CampaignResponse.validate!(input[:campaign_response], context: "#{context}[:campaign_response]") unless input[:campaign_response].nil?
      end
    end

    class GetCampaignVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCampaignVersionInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:campaign_id], ::String, context: "#{context}[:campaign_id]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class GetCampaignVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCampaignVersionOutput, context: context)
        Validators::CampaignResponse.validate!(input[:campaign_response], context: "#{context}[:campaign_response]") unless input[:campaign_response].nil?
      end
    end

    class GetCampaignVersionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCampaignVersionsInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:campaign_id], ::String, context: "#{context}[:campaign_id]")
        Hearth::Validator.validate!(input[:page_size], ::String, context: "#{context}[:page_size]")
        Hearth::Validator.validate!(input[:token], ::String, context: "#{context}[:token]")
      end
    end

    class GetCampaignVersionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCampaignVersionsOutput, context: context)
        Validators::CampaignsResponse.validate!(input[:campaigns_response], context: "#{context}[:campaigns_response]") unless input[:campaigns_response].nil?
      end
    end

    class GetCampaignsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCampaignsInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:page_size], ::String, context: "#{context}[:page_size]")
        Hearth::Validator.validate!(input[:token], ::String, context: "#{context}[:token]")
      end
    end

    class GetCampaignsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCampaignsOutput, context: context)
        Validators::CampaignsResponse.validate!(input[:campaigns_response], context: "#{context}[:campaigns_response]") unless input[:campaigns_response].nil?
      end
    end

    class GetChannelsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetChannelsInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
      end
    end

    class GetChannelsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetChannelsOutput, context: context)
        Validators::ChannelsResponse.validate!(input[:channels_response], context: "#{context}[:channels_response]") unless input[:channels_response].nil?
      end
    end

    class GetEmailChannelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEmailChannelInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
      end
    end

    class GetEmailChannelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEmailChannelOutput, context: context)
        Validators::EmailChannelResponse.validate!(input[:email_channel_response], context: "#{context}[:email_channel_response]") unless input[:email_channel_response].nil?
      end
    end

    class GetEmailTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEmailTemplateInput, context: context)
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class GetEmailTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEmailTemplateOutput, context: context)
        Validators::EmailTemplateResponse.validate!(input[:email_template_response], context: "#{context}[:email_template_response]") unless input[:email_template_response].nil?
      end
    end

    class GetEndpointInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEndpointInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:endpoint_id], ::String, context: "#{context}[:endpoint_id]")
      end
    end

    class GetEndpointOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEndpointOutput, context: context)
        Validators::EndpointResponse.validate!(input[:endpoint_response], context: "#{context}[:endpoint_response]") unless input[:endpoint_response].nil?
      end
    end

    class GetEventStreamInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEventStreamInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
      end
    end

    class GetEventStreamOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEventStreamOutput, context: context)
        Validators::EventStream.validate!(input[:event_stream], context: "#{context}[:event_stream]") unless input[:event_stream].nil?
      end
    end

    class GetExportJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetExportJobInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class GetExportJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetExportJobOutput, context: context)
        Validators::ExportJobResponse.validate!(input[:export_job_response], context: "#{context}[:export_job_response]") unless input[:export_job_response].nil?
      end
    end

    class GetExportJobsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetExportJobsInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:page_size], ::String, context: "#{context}[:page_size]")
        Hearth::Validator.validate!(input[:token], ::String, context: "#{context}[:token]")
      end
    end

    class GetExportJobsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetExportJobsOutput, context: context)
        Validators::ExportJobsResponse.validate!(input[:export_jobs_response], context: "#{context}[:export_jobs_response]") unless input[:export_jobs_response].nil?
      end
    end

    class GetGcmChannelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetGcmChannelInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
      end
    end

    class GetGcmChannelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetGcmChannelOutput, context: context)
        Validators::GCMChannelResponse.validate!(input[:gcm_channel_response], context: "#{context}[:gcm_channel_response]") unless input[:gcm_channel_response].nil?
      end
    end

    class GetImportJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetImportJobInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class GetImportJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetImportJobOutput, context: context)
        Validators::ImportJobResponse.validate!(input[:import_job_response], context: "#{context}[:import_job_response]") unless input[:import_job_response].nil?
      end
    end

    class GetImportJobsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetImportJobsInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:page_size], ::String, context: "#{context}[:page_size]")
        Hearth::Validator.validate!(input[:token], ::String, context: "#{context}[:token]")
      end
    end

    class GetImportJobsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetImportJobsOutput, context: context)
        Validators::ImportJobsResponse.validate!(input[:import_jobs_response], context: "#{context}[:import_jobs_response]") unless input[:import_jobs_response].nil?
      end
    end

    class GetInAppMessagesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetInAppMessagesInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:endpoint_id], ::String, context: "#{context}[:endpoint_id]")
      end
    end

    class GetInAppMessagesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetInAppMessagesOutput, context: context)
        Validators::InAppMessagesResponse.validate!(input[:in_app_messages_response], context: "#{context}[:in_app_messages_response]") unless input[:in_app_messages_response].nil?
      end
    end

    class GetInAppTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetInAppTemplateInput, context: context)
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class GetInAppTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetInAppTemplateOutput, context: context)
        Validators::InAppTemplateResponse.validate!(input[:in_app_template_response], context: "#{context}[:in_app_template_response]") unless input[:in_app_template_response].nil?
      end
    end

    class GetJourneyDateRangeKpiInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetJourneyDateRangeKpiInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:journey_id], ::String, context: "#{context}[:journey_id]")
        Hearth::Validator.validate!(input[:kpi_name], ::String, context: "#{context}[:kpi_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:page_size], ::String, context: "#{context}[:page_size]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
      end
    end

    class GetJourneyDateRangeKpiOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetJourneyDateRangeKpiOutput, context: context)
        Validators::JourneyDateRangeKpiResponse.validate!(input[:journey_date_range_kpi_response], context: "#{context}[:journey_date_range_kpi_response]") unless input[:journey_date_range_kpi_response].nil?
      end
    end

    class GetJourneyExecutionActivityMetricsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetJourneyExecutionActivityMetricsInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:journey_activity_id], ::String, context: "#{context}[:journey_activity_id]")
        Hearth::Validator.validate!(input[:journey_id], ::String, context: "#{context}[:journey_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:page_size], ::String, context: "#{context}[:page_size]")
      end
    end

    class GetJourneyExecutionActivityMetricsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetJourneyExecutionActivityMetricsOutput, context: context)
        Validators::JourneyExecutionActivityMetricsResponse.validate!(input[:journey_execution_activity_metrics_response], context: "#{context}[:journey_execution_activity_metrics_response]") unless input[:journey_execution_activity_metrics_response].nil?
      end
    end

    class GetJourneyExecutionMetricsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetJourneyExecutionMetricsInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:journey_id], ::String, context: "#{context}[:journey_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:page_size], ::String, context: "#{context}[:page_size]")
      end
    end

    class GetJourneyExecutionMetricsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetJourneyExecutionMetricsOutput, context: context)
        Validators::JourneyExecutionMetricsResponse.validate!(input[:journey_execution_metrics_response], context: "#{context}[:journey_execution_metrics_response]") unless input[:journey_execution_metrics_response].nil?
      end
    end

    class GetJourneyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetJourneyInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:journey_id], ::String, context: "#{context}[:journey_id]")
      end
    end

    class GetJourneyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetJourneyOutput, context: context)
        Validators::JourneyResponse.validate!(input[:journey_response], context: "#{context}[:journey_response]") unless input[:journey_response].nil?
      end
    end

    class GetPushTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPushTemplateInput, context: context)
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class GetPushTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPushTemplateOutput, context: context)
        Validators::PushNotificationTemplateResponse.validate!(input[:push_notification_template_response], context: "#{context}[:push_notification_template_response]") unless input[:push_notification_template_response].nil?
      end
    end

    class GetRecommenderConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRecommenderConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:recommender_id], ::String, context: "#{context}[:recommender_id]")
      end
    end

    class GetRecommenderConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRecommenderConfigurationOutput, context: context)
        Validators::RecommenderConfigurationResponse.validate!(input[:recommender_configuration_response], context: "#{context}[:recommender_configuration_response]") unless input[:recommender_configuration_response].nil?
      end
    end

    class GetRecommenderConfigurationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRecommenderConfigurationsInput, context: context)
        Hearth::Validator.validate!(input[:page_size], ::String, context: "#{context}[:page_size]")
        Hearth::Validator.validate!(input[:token], ::String, context: "#{context}[:token]")
      end
    end

    class GetRecommenderConfigurationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRecommenderConfigurationsOutput, context: context)
        Validators::ListRecommenderConfigurationsResponse.validate!(input[:list_recommender_configurations_response], context: "#{context}[:list_recommender_configurations_response]") unless input[:list_recommender_configurations_response].nil?
      end
    end

    class GetSegmentExportJobsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSegmentExportJobsInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:page_size], ::String, context: "#{context}[:page_size]")
        Hearth::Validator.validate!(input[:segment_id], ::String, context: "#{context}[:segment_id]")
        Hearth::Validator.validate!(input[:token], ::String, context: "#{context}[:token]")
      end
    end

    class GetSegmentExportJobsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSegmentExportJobsOutput, context: context)
        Validators::ExportJobsResponse.validate!(input[:export_jobs_response], context: "#{context}[:export_jobs_response]") unless input[:export_jobs_response].nil?
      end
    end

    class GetSegmentImportJobsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSegmentImportJobsInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:page_size], ::String, context: "#{context}[:page_size]")
        Hearth::Validator.validate!(input[:segment_id], ::String, context: "#{context}[:segment_id]")
        Hearth::Validator.validate!(input[:token], ::String, context: "#{context}[:token]")
      end
    end

    class GetSegmentImportJobsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSegmentImportJobsOutput, context: context)
        Validators::ImportJobsResponse.validate!(input[:import_jobs_response], context: "#{context}[:import_jobs_response]") unless input[:import_jobs_response].nil?
      end
    end

    class GetSegmentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSegmentInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:segment_id], ::String, context: "#{context}[:segment_id]")
      end
    end

    class GetSegmentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSegmentOutput, context: context)
        Validators::SegmentResponse.validate!(input[:segment_response], context: "#{context}[:segment_response]") unless input[:segment_response].nil?
      end
    end

    class GetSegmentVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSegmentVersionInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:segment_id], ::String, context: "#{context}[:segment_id]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class GetSegmentVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSegmentVersionOutput, context: context)
        Validators::SegmentResponse.validate!(input[:segment_response], context: "#{context}[:segment_response]") unless input[:segment_response].nil?
      end
    end

    class GetSegmentVersionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSegmentVersionsInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:page_size], ::String, context: "#{context}[:page_size]")
        Hearth::Validator.validate!(input[:segment_id], ::String, context: "#{context}[:segment_id]")
        Hearth::Validator.validate!(input[:token], ::String, context: "#{context}[:token]")
      end
    end

    class GetSegmentVersionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSegmentVersionsOutput, context: context)
        Validators::SegmentsResponse.validate!(input[:segments_response], context: "#{context}[:segments_response]") unless input[:segments_response].nil?
      end
    end

    class GetSegmentsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSegmentsInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:page_size], ::String, context: "#{context}[:page_size]")
        Hearth::Validator.validate!(input[:token], ::String, context: "#{context}[:token]")
      end
    end

    class GetSegmentsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSegmentsOutput, context: context)
        Validators::SegmentsResponse.validate!(input[:segments_response], context: "#{context}[:segments_response]") unless input[:segments_response].nil?
      end
    end

    class GetSmsChannelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSmsChannelInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
      end
    end

    class GetSmsChannelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSmsChannelOutput, context: context)
        Validators::SMSChannelResponse.validate!(input[:sms_channel_response], context: "#{context}[:sms_channel_response]") unless input[:sms_channel_response].nil?
      end
    end

    class GetSmsTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSmsTemplateInput, context: context)
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class GetSmsTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSmsTemplateOutput, context: context)
        Validators::SMSTemplateResponse.validate!(input[:sms_template_response], context: "#{context}[:sms_template_response]") unless input[:sms_template_response].nil?
      end
    end

    class GetUserEndpointsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetUserEndpointsInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
      end
    end

    class GetUserEndpointsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetUserEndpointsOutput, context: context)
        Validators::EndpointsResponse.validate!(input[:endpoints_response], context: "#{context}[:endpoints_response]") unless input[:endpoints_response].nil?
      end
    end

    class GetVoiceChannelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetVoiceChannelInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
      end
    end

    class GetVoiceChannelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetVoiceChannelOutput, context: context)
        Validators::VoiceChannelResponse.validate!(input[:voice_channel_response], context: "#{context}[:voice_channel_response]") unless input[:voice_channel_response].nil?
      end
    end

    class GetVoiceTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetVoiceTemplateInput, context: context)
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class GetVoiceTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetVoiceTemplateOutput, context: context)
        Validators::VoiceTemplateResponse.validate!(input[:voice_template_response], context: "#{context}[:voice_template_response]") unless input[:voice_template_response].nil?
      end
    end

    class HoldoutActivity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HoldoutActivity, context: context)
        Hearth::Validator.validate!(input[:next_activity], ::String, context: "#{context}[:next_activity]")
        Hearth::Validator.validate!(input[:percentage], ::Integer, context: "#{context}[:percentage]")
      end
    end

    class ImportJobRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportJobRequest, context: context)
        Hearth::Validator.validate!(input[:define_segment], ::TrueClass, ::FalseClass, context: "#{context}[:define_segment]")
        Hearth::Validator.validate!(input[:external_id], ::String, context: "#{context}[:external_id]")
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
        Hearth::Validator.validate!(input[:register_endpoints], ::TrueClass, ::FalseClass, context: "#{context}[:register_endpoints]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:s3_url], ::String, context: "#{context}[:s3_url]")
        Hearth::Validator.validate!(input[:segment_id], ::String, context: "#{context}[:segment_id]")
        Hearth::Validator.validate!(input[:segment_name], ::String, context: "#{context}[:segment_name]")
      end
    end

    class ImportJobResource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportJobResource, context: context)
        Hearth::Validator.validate!(input[:define_segment], ::TrueClass, ::FalseClass, context: "#{context}[:define_segment]")
        Hearth::Validator.validate!(input[:external_id], ::String, context: "#{context}[:external_id]")
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
        Hearth::Validator.validate!(input[:register_endpoints], ::TrueClass, ::FalseClass, context: "#{context}[:register_endpoints]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:s3_url], ::String, context: "#{context}[:s3_url]")
        Hearth::Validator.validate!(input[:segment_id], ::String, context: "#{context}[:segment_id]")
        Hearth::Validator.validate!(input[:segment_name], ::String, context: "#{context}[:segment_name]")
      end
    end

    class ImportJobResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportJobResponse, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:completed_pieces], ::Integer, context: "#{context}[:completed_pieces]")
        Hearth::Validator.validate!(input[:completion_date], ::String, context: "#{context}[:completion_date]")
        Hearth::Validator.validate!(input[:creation_date], ::String, context: "#{context}[:creation_date]")
        Validators::ImportJobResource.validate!(input[:definition], context: "#{context}[:definition]") unless input[:definition].nil?
        Hearth::Validator.validate!(input[:failed_pieces], ::Integer, context: "#{context}[:failed_pieces]")
        Validators::ListOf__string.validate!(input[:failures], context: "#{context}[:failures]") unless input[:failures].nil?
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:job_status], ::String, context: "#{context}[:job_status]")
        Hearth::Validator.validate!(input[:total_failures], ::Integer, context: "#{context}[:total_failures]")
        Hearth::Validator.validate!(input[:total_pieces], ::Integer, context: "#{context}[:total_pieces]")
        Hearth::Validator.validate!(input[:total_processed], ::Integer, context: "#{context}[:total_processed]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class ImportJobsResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportJobsResponse, context: context)
        Validators::ListOfImportJobResponse.validate!(input[:item], context: "#{context}[:item]") unless input[:item].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class InAppCampaignSchedule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InAppCampaignSchedule, context: context)
        Hearth::Validator.validate!(input[:end_date], ::String, context: "#{context}[:end_date]")
        Validators::CampaignEventFilter.validate!(input[:event_filter], context: "#{context}[:event_filter]") unless input[:event_filter].nil?
        Validators::QuietTime.validate!(input[:quiet_time], context: "#{context}[:quiet_time]") unless input[:quiet_time].nil?
      end
    end

    class InAppMessage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InAppMessage, context: context)
        Validators::ListOfInAppMessageContent.validate!(input[:content], context: "#{context}[:content]") unless input[:content].nil?
        Validators::MapOf__string.validate!(input[:custom_config], context: "#{context}[:custom_config]") unless input[:custom_config].nil?
        Hearth::Validator.validate!(input[:layout], ::String, context: "#{context}[:layout]")
      end
    end

    class InAppMessageBodyConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InAppMessageBodyConfig, context: context)
        Hearth::Validator.validate!(input[:alignment], ::String, context: "#{context}[:alignment]")
        Hearth::Validator.validate!(input[:body], ::String, context: "#{context}[:body]")
        Hearth::Validator.validate!(input[:text_color], ::String, context: "#{context}[:text_color]")
      end
    end

    class InAppMessageButton
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InAppMessageButton, context: context)
        Validators::OverrideButtonConfiguration.validate!(input[:android], context: "#{context}[:android]") unless input[:android].nil?
        Validators::DefaultButtonConfiguration.validate!(input[:default_config], context: "#{context}[:default_config]") unless input[:default_config].nil?
        Validators::OverrideButtonConfiguration.validate!(input[:ios], context: "#{context}[:ios]") unless input[:ios].nil?
        Validators::OverrideButtonConfiguration.validate!(input[:web], context: "#{context}[:web]") unless input[:web].nil?
      end
    end

    class InAppMessageCampaign
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InAppMessageCampaign, context: context)
        Hearth::Validator.validate!(input[:campaign_id], ::String, context: "#{context}[:campaign_id]")
        Hearth::Validator.validate!(input[:daily_cap], ::Integer, context: "#{context}[:daily_cap]")
        Validators::InAppMessage.validate!(input[:in_app_message], context: "#{context}[:in_app_message]") unless input[:in_app_message].nil?
        Hearth::Validator.validate!(input[:priority], ::Integer, context: "#{context}[:priority]")
        Validators::InAppCampaignSchedule.validate!(input[:schedule], context: "#{context}[:schedule]") unless input[:schedule].nil?
        Hearth::Validator.validate!(input[:session_cap], ::Integer, context: "#{context}[:session_cap]")
        Hearth::Validator.validate!(input[:total_cap], ::Integer, context: "#{context}[:total_cap]")
        Hearth::Validator.validate!(input[:treatment_id], ::String, context: "#{context}[:treatment_id]")
      end
    end

    class InAppMessageContent
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InAppMessageContent, context: context)
        Hearth::Validator.validate!(input[:background_color], ::String, context: "#{context}[:background_color]")
        Validators::InAppMessageBodyConfig.validate!(input[:body_config], context: "#{context}[:body_config]") unless input[:body_config].nil?
        Validators::InAppMessageHeaderConfig.validate!(input[:header_config], context: "#{context}[:header_config]") unless input[:header_config].nil?
        Hearth::Validator.validate!(input[:image_url], ::String, context: "#{context}[:image_url]")
        Validators::InAppMessageButton.validate!(input[:primary_btn], context: "#{context}[:primary_btn]") unless input[:primary_btn].nil?
        Validators::InAppMessageButton.validate!(input[:secondary_btn], context: "#{context}[:secondary_btn]") unless input[:secondary_btn].nil?
      end
    end

    class InAppMessageHeaderConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InAppMessageHeaderConfig, context: context)
        Hearth::Validator.validate!(input[:alignment], ::String, context: "#{context}[:alignment]")
        Hearth::Validator.validate!(input[:header], ::String, context: "#{context}[:header]")
        Hearth::Validator.validate!(input[:text_color], ::String, context: "#{context}[:text_color]")
      end
    end

    class InAppMessagesResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InAppMessagesResponse, context: context)
        Validators::ListOfInAppMessageCampaign.validate!(input[:in_app_message_campaigns], context: "#{context}[:in_app_message_campaigns]") unless input[:in_app_message_campaigns].nil?
      end
    end

    class InAppTemplateRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InAppTemplateRequest, context: context)
        Validators::ListOfInAppMessageContent.validate!(input[:content], context: "#{context}[:content]") unless input[:content].nil?
        Validators::MapOf__string.validate!(input[:custom_config], context: "#{context}[:custom_config]") unless input[:custom_config].nil?
        Hearth::Validator.validate!(input[:layout], ::String, context: "#{context}[:layout]")
        Validators::MapOf__string.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:template_description], ::String, context: "#{context}[:template_description]")
      end
    end

    class InAppTemplateResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InAppTemplateResponse, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Validators::ListOfInAppMessageContent.validate!(input[:content], context: "#{context}[:content]") unless input[:content].nil?
        Hearth::Validator.validate!(input[:creation_date], ::String, context: "#{context}[:creation_date]")
        Validators::MapOf__string.validate!(input[:custom_config], context: "#{context}[:custom_config]") unless input[:custom_config].nil?
        Hearth::Validator.validate!(input[:last_modified_date], ::String, context: "#{context}[:last_modified_date]")
        Hearth::Validator.validate!(input[:layout], ::String, context: "#{context}[:layout]")
        Validators::MapOf__string.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:template_description], ::String, context: "#{context}[:template_description]")
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:template_type], ::String, context: "#{context}[:template_type]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class InternalServerErrorException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerErrorException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class ItemResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ItemResponse, context: context)
        Validators::EndpointItemResponse.validate!(input[:endpoint_item_response], context: "#{context}[:endpoint_item_response]") unless input[:endpoint_item_response].nil?
        Validators::MapOfEventItemResponse.validate!(input[:events_item_response], context: "#{context}[:events_item_response]") unless input[:events_item_response].nil?
      end
    end

    class JourneyChannelSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JourneyChannelSettings, context: context)
        Hearth::Validator.validate!(input[:connect_campaign_arn], ::String, context: "#{context}[:connect_campaign_arn]")
        Hearth::Validator.validate!(input[:connect_campaign_execution_role_arn], ::String, context: "#{context}[:connect_campaign_execution_role_arn]")
      end
    end

    class JourneyCustomMessage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JourneyCustomMessage, context: context)
        Hearth::Validator.validate!(input[:data], ::String, context: "#{context}[:data]")
      end
    end

    class JourneyDateRangeKpiResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JourneyDateRangeKpiResponse, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:journey_id], ::String, context: "#{context}[:journey_id]")
        Hearth::Validator.validate!(input[:kpi_name], ::String, context: "#{context}[:kpi_name]")
        Validators::BaseKpiResult.validate!(input[:kpi_result], context: "#{context}[:kpi_result]") unless input[:kpi_result].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
      end
    end

    class JourneyEmailMessage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JourneyEmailMessage, context: context)
        Hearth::Validator.validate!(input[:from_address], ::String, context: "#{context}[:from_address]")
      end
    end

    class JourneyExecutionActivityMetricsResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JourneyExecutionActivityMetricsResponse, context: context)
        Hearth::Validator.validate!(input[:activity_type], ::String, context: "#{context}[:activity_type]")
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:journey_activity_id], ::String, context: "#{context}[:journey_activity_id]")
        Hearth::Validator.validate!(input[:journey_id], ::String, context: "#{context}[:journey_id]")
        Hearth::Validator.validate!(input[:last_evaluated_time], ::String, context: "#{context}[:last_evaluated_time]")
        Validators::MapOf__string.validate!(input[:metrics], context: "#{context}[:metrics]") unless input[:metrics].nil?
      end
    end

    class JourneyExecutionMetricsResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JourneyExecutionMetricsResponse, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:journey_id], ::String, context: "#{context}[:journey_id]")
        Hearth::Validator.validate!(input[:last_evaluated_time], ::String, context: "#{context}[:last_evaluated_time]")
        Validators::MapOf__string.validate!(input[:metrics], context: "#{context}[:metrics]") unless input[:metrics].nil?
      end
    end

    class JourneyLimits
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JourneyLimits, context: context)
        Hearth::Validator.validate!(input[:daily_cap], ::Integer, context: "#{context}[:daily_cap]")
        Hearth::Validator.validate!(input[:endpoint_reentry_cap], ::Integer, context: "#{context}[:endpoint_reentry_cap]")
        Hearth::Validator.validate!(input[:messages_per_second], ::Integer, context: "#{context}[:messages_per_second]")
        Hearth::Validator.validate!(input[:endpoint_reentry_interval], ::String, context: "#{context}[:endpoint_reentry_interval]")
      end
    end

    class JourneyPushMessage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JourneyPushMessage, context: context)
        Hearth::Validator.validate!(input[:time_to_live], ::String, context: "#{context}[:time_to_live]")
      end
    end

    class JourneyResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JourneyResponse, context: context)
        Validators::MapOfActivity.validate!(input[:activities], context: "#{context}[:activities]") unless input[:activities].nil?
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:creation_date], ::String, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:last_modified_date], ::String, context: "#{context}[:last_modified_date]")
        Validators::JourneyLimits.validate!(input[:limits], context: "#{context}[:limits]") unless input[:limits].nil?
        Hearth::Validator.validate!(input[:local_time], ::TrueClass, ::FalseClass, context: "#{context}[:local_time]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::QuietTime.validate!(input[:quiet_time], context: "#{context}[:quiet_time]") unless input[:quiet_time].nil?
        Hearth::Validator.validate!(input[:refresh_frequency], ::String, context: "#{context}[:refresh_frequency]")
        Validators::JourneySchedule.validate!(input[:schedule], context: "#{context}[:schedule]") unless input[:schedule].nil?
        Hearth::Validator.validate!(input[:start_activity], ::String, context: "#{context}[:start_activity]")
        Validators::StartCondition.validate!(input[:start_condition], context: "#{context}[:start_condition]") unless input[:start_condition].nil?
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Validators::MapOf__string.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:wait_for_quiet_time], ::TrueClass, ::FalseClass, context: "#{context}[:wait_for_quiet_time]")
        Hearth::Validator.validate!(input[:refresh_on_segment_update], ::TrueClass, ::FalseClass, context: "#{context}[:refresh_on_segment_update]")
        Validators::JourneyChannelSettings.validate!(input[:journey_channel_settings], context: "#{context}[:journey_channel_settings]") unless input[:journey_channel_settings].nil?
      end
    end

    class JourneySMSMessage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JourneySMSMessage, context: context)
        Hearth::Validator.validate!(input[:message_type], ::String, context: "#{context}[:message_type]")
        Hearth::Validator.validate!(input[:origination_number], ::String, context: "#{context}[:origination_number]")
        Hearth::Validator.validate!(input[:sender_id], ::String, context: "#{context}[:sender_id]")
        Hearth::Validator.validate!(input[:entity_id], ::String, context: "#{context}[:entity_id]")
        Hearth::Validator.validate!(input[:template_id], ::String, context: "#{context}[:template_id]")
      end
    end

    class JourneySchedule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JourneySchedule, context: context)
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:timezone], ::String, context: "#{context}[:timezone]")
      end
    end

    class JourneyStateRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JourneyStateRequest, context: context)
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
      end
    end

    class JourneysResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JourneysResponse, context: context)
        Validators::ListOfJourneyResponse.validate!(input[:item], context: "#{context}[:item]") unless input[:item].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListJourneysInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListJourneysInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:page_size], ::String, context: "#{context}[:page_size]")
        Hearth::Validator.validate!(input[:token], ::String, context: "#{context}[:token]")
      end
    end

    class ListJourneysOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListJourneysOutput, context: context)
        Validators::JourneysResponse.validate!(input[:journeys_response], context: "#{context}[:journeys_response]") unless input[:journeys_response].nil?
      end
    end

    class ListOfActivityResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ActivityResponse.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListOfApplicationResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ApplicationResponse.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListOfCampaignResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::CampaignResponse.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListOfEndpointBatchItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::EndpointBatchItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListOfEndpointResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::EndpointResponse.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListOfExportJobResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ExportJobResponse.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListOfImportJobResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ImportJobResponse.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListOfInAppMessageCampaign
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::InAppMessageCampaign.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListOfInAppMessageContent
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::InAppMessageContent.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListOfJourneyResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::JourneyResponse.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListOfMultiConditionalBranch
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::MultiConditionalBranch.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListOfRandomSplitEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::RandomSplitEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListOfRecommenderConfigurationResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::RecommenderConfigurationResponse.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListOfResultRow
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ResultRow.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListOfResultRowValue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ResultRowValue.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListOfSegmentDimensions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SegmentDimensions.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListOfSegmentGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SegmentGroup.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListOfSegmentReference
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SegmentReference.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListOfSegmentResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SegmentResponse.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListOfSimpleCondition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SimpleCondition.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListOfTemplateResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::TemplateResponse.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListOfTemplateVersionResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::TemplateVersionResponse.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListOfTreatmentResource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::TreatmentResource.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListOfWriteTreatmentResource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::WriteTreatmentResource.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListOf__EndpointTypesElement
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ListOf__string
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ListRecommenderConfigurationsResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRecommenderConfigurationsResponse, context: context)
        Validators::ListOfRecommenderConfigurationResponse.validate!(input[:item], context: "#{context}[:item]") unless input[:item].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        Validators::TagsModel.validate!(input[:tags_model], context: "#{context}[:tags_model]") unless input[:tags_model].nil?
      end
    end

    class ListTemplateVersionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTemplateVersionsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:page_size], ::String, context: "#{context}[:page_size]")
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:template_type], ::String, context: "#{context}[:template_type]")
      end
    end

    class ListTemplateVersionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTemplateVersionsOutput, context: context)
        Validators::TemplateVersionsResponse.validate!(input[:template_versions_response], context: "#{context}[:template_versions_response]") unless input[:template_versions_response].nil?
      end
    end

    class ListTemplatesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTemplatesInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:page_size], ::String, context: "#{context}[:page_size]")
        Hearth::Validator.validate!(input[:prefix], ::String, context: "#{context}[:prefix]")
        Hearth::Validator.validate!(input[:template_type], ::String, context: "#{context}[:template_type]")
      end
    end

    class ListTemplatesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTemplatesOutput, context: context)
        Validators::TemplatesResponse.validate!(input[:templates_response], context: "#{context}[:templates_response]") unless input[:templates_response].nil?
      end
    end

    class MapOfActivity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Validators::Activity.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class MapOfAddressConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Validators::AddressConfiguration.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class MapOfAttributeDimension
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Validators::AttributeDimension.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class MapOfChannelResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Validators::ChannelResponse.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class MapOfEndpointMessageResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Validators::EndpointMessageResult.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class MapOfEndpointSendConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Validators::EndpointSendConfiguration.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class MapOfEvent
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Validators::Event.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class MapOfEventItemResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Validators::EventItemResponse.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class MapOfEventsBatch
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Validators::EventsBatch.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class MapOfItemResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Validators::ItemResponse.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class MapOfListOf__string
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Validators::ListOf__string.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class MapOfMapOfEndpointMessageResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Validators::MapOfEndpointMessageResult.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class MapOfMessageResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Validators::MessageResult.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class MapOfMetricDimension
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Validators::MetricDimension.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class MapOf__double
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::Float, context: "#{context}[:#{key}]")
        end
      end
    end

    class MapOf__integer
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::Integer, context: "#{context}[:#{key}]")
        end
      end
    end

    class MapOf__string
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class Message
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Message, context: context)
        Hearth::Validator.validate!(input[:action], ::String, context: "#{context}[:action]")
        Hearth::Validator.validate!(input[:body], ::String, context: "#{context}[:body]")
        Hearth::Validator.validate!(input[:image_icon_url], ::String, context: "#{context}[:image_icon_url]")
        Hearth::Validator.validate!(input[:image_small_icon_url], ::String, context: "#{context}[:image_small_icon_url]")
        Hearth::Validator.validate!(input[:image_url], ::String, context: "#{context}[:image_url]")
        Hearth::Validator.validate!(input[:json_body], ::String, context: "#{context}[:json_body]")
        Hearth::Validator.validate!(input[:media_url], ::String, context: "#{context}[:media_url]")
        Hearth::Validator.validate!(input[:raw_content], ::String, context: "#{context}[:raw_content]")
        Hearth::Validator.validate!(input[:silent_push], ::TrueClass, ::FalseClass, context: "#{context}[:silent_push]")
        Hearth::Validator.validate!(input[:time_to_live], ::Integer, context: "#{context}[:time_to_live]")
        Hearth::Validator.validate!(input[:title], ::String, context: "#{context}[:title]")
        Hearth::Validator.validate!(input[:url], ::String, context: "#{context}[:url]")
      end
    end

    class MessageBody
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MessageBody, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class MessageConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MessageConfiguration, context: context)
        Validators::Message.validate!(input[:adm_message], context: "#{context}[:adm_message]") unless input[:adm_message].nil?
        Validators::Message.validate!(input[:apns_message], context: "#{context}[:apns_message]") unless input[:apns_message].nil?
        Validators::Message.validate!(input[:baidu_message], context: "#{context}[:baidu_message]") unless input[:baidu_message].nil?
        Validators::CampaignCustomMessage.validate!(input[:custom_message], context: "#{context}[:custom_message]") unless input[:custom_message].nil?
        Validators::Message.validate!(input[:default_message], context: "#{context}[:default_message]") unless input[:default_message].nil?
        Validators::CampaignEmailMessage.validate!(input[:email_message], context: "#{context}[:email_message]") unless input[:email_message].nil?
        Validators::Message.validate!(input[:gcm_message], context: "#{context}[:gcm_message]") unless input[:gcm_message].nil?
        Validators::CampaignSmsMessage.validate!(input[:sms_message], context: "#{context}[:sms_message]") unless input[:sms_message].nil?
        Validators::CampaignInAppMessage.validate!(input[:in_app_message], context: "#{context}[:in_app_message]") unless input[:in_app_message].nil?
      end
    end

    class MessageRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MessageRequest, context: context)
        Validators::MapOfAddressConfiguration.validate!(input[:addresses], context: "#{context}[:addresses]") unless input[:addresses].nil?
        Validators::MapOf__string.validate!(input[:context], context: "#{context}[:context]") unless input[:context].nil?
        Validators::MapOfEndpointSendConfiguration.validate!(input[:endpoints], context: "#{context}[:endpoints]") unless input[:endpoints].nil?
        Validators::DirectMessageConfiguration.validate!(input[:message_configuration], context: "#{context}[:message_configuration]") unless input[:message_configuration].nil?
        Validators::TemplateConfiguration.validate!(input[:template_configuration], context: "#{context}[:template_configuration]") unless input[:template_configuration].nil?
        Hearth::Validator.validate!(input[:trace_id], ::String, context: "#{context}[:trace_id]")
      end
    end

    class MessageResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MessageResponse, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Validators::MapOfEndpointMessageResult.validate!(input[:endpoint_result], context: "#{context}[:endpoint_result]") unless input[:endpoint_result].nil?
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Validators::MapOfMessageResult.validate!(input[:result], context: "#{context}[:result]") unless input[:result].nil?
      end
    end

    class MessageResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MessageResult, context: context)
        Hearth::Validator.validate!(input[:delivery_status], ::String, context: "#{context}[:delivery_status]")
        Hearth::Validator.validate!(input[:message_id], ::String, context: "#{context}[:message_id]")
        Hearth::Validator.validate!(input[:status_code], ::Integer, context: "#{context}[:status_code]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
        Hearth::Validator.validate!(input[:updated_token], ::String, context: "#{context}[:updated_token]")
      end
    end

    class MethodNotAllowedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MethodNotAllowedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class MetricDimension
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MetricDimension, context: context)
        Hearth::Validator.validate!(input[:comparison_operator], ::String, context: "#{context}[:comparison_operator]")
        Hearth::Validator.validate!(input[:value], ::Float, context: "#{context}[:value]")
      end
    end

    class MultiConditionalBranch
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MultiConditionalBranch, context: context)
        Validators::SimpleCondition.validate!(input[:condition], context: "#{context}[:condition]") unless input[:condition].nil?
        Hearth::Validator.validate!(input[:next_activity], ::String, context: "#{context}[:next_activity]")
      end
    end

    class MultiConditionalSplitActivity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MultiConditionalSplitActivity, context: context)
        Validators::ListOfMultiConditionalBranch.validate!(input[:branches], context: "#{context}[:branches]") unless input[:branches].nil?
        Hearth::Validator.validate!(input[:default_activity], ::String, context: "#{context}[:default_activity]")
        Validators::WaitTime.validate!(input[:evaluation_wait_time], context: "#{context}[:evaluation_wait_time]") unless input[:evaluation_wait_time].nil?
      end
    end

    class NotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class NumberValidateRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NumberValidateRequest, context: context)
        Hearth::Validator.validate!(input[:iso_country_code], ::String, context: "#{context}[:iso_country_code]")
        Hearth::Validator.validate!(input[:phone_number], ::String, context: "#{context}[:phone_number]")
      end
    end

    class NumberValidateResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NumberValidateResponse, context: context)
        Hearth::Validator.validate!(input[:carrier], ::String, context: "#{context}[:carrier]")
        Hearth::Validator.validate!(input[:city], ::String, context: "#{context}[:city]")
        Hearth::Validator.validate!(input[:cleansed_phone_number_e164], ::String, context: "#{context}[:cleansed_phone_number_e164]")
        Hearth::Validator.validate!(input[:cleansed_phone_number_national], ::String, context: "#{context}[:cleansed_phone_number_national]")
        Hearth::Validator.validate!(input[:country], ::String, context: "#{context}[:country]")
        Hearth::Validator.validate!(input[:country_code_iso2], ::String, context: "#{context}[:country_code_iso2]")
        Hearth::Validator.validate!(input[:country_code_numeric], ::String, context: "#{context}[:country_code_numeric]")
        Hearth::Validator.validate!(input[:county], ::String, context: "#{context}[:county]")
        Hearth::Validator.validate!(input[:original_country_code_iso2], ::String, context: "#{context}[:original_country_code_iso2]")
        Hearth::Validator.validate!(input[:original_phone_number], ::String, context: "#{context}[:original_phone_number]")
        Hearth::Validator.validate!(input[:phone_type], ::String, context: "#{context}[:phone_type]")
        Hearth::Validator.validate!(input[:phone_type_code], ::Integer, context: "#{context}[:phone_type_code]")
        Hearth::Validator.validate!(input[:timezone], ::String, context: "#{context}[:timezone]")
        Hearth::Validator.validate!(input[:zip_code], ::String, context: "#{context}[:zip_code]")
      end
    end

    class OverrideButtonConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OverrideButtonConfiguration, context: context)
        Hearth::Validator.validate!(input[:button_action], ::String, context: "#{context}[:button_action]")
        Hearth::Validator.validate!(input[:link], ::String, context: "#{context}[:link]")
      end
    end

    class PayloadTooLargeException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PayloadTooLargeException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class PhoneNumberValidateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PhoneNumberValidateInput, context: context)
        Validators::NumberValidateRequest.validate!(input[:number_validate_request], context: "#{context}[:number_validate_request]") unless input[:number_validate_request].nil?
      end
    end

    class PhoneNumberValidateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PhoneNumberValidateOutput, context: context)
        Validators::NumberValidateResponse.validate!(input[:number_validate_response], context: "#{context}[:number_validate_response]") unless input[:number_validate_response].nil?
      end
    end

    class PublicEndpoint
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PublicEndpoint, context: context)
        Hearth::Validator.validate!(input[:address], ::String, context: "#{context}[:address]")
        Validators::MapOfListOf__string.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
        Hearth::Validator.validate!(input[:channel_type], ::String, context: "#{context}[:channel_type]")
        Validators::EndpointDemographic.validate!(input[:demographic], context: "#{context}[:demographic]") unless input[:demographic].nil?
        Hearth::Validator.validate!(input[:effective_date], ::String, context: "#{context}[:effective_date]")
        Hearth::Validator.validate!(input[:endpoint_status], ::String, context: "#{context}[:endpoint_status]")
        Validators::EndpointLocation.validate!(input[:location], context: "#{context}[:location]") unless input[:location].nil?
        Validators::MapOf__double.validate!(input[:metrics], context: "#{context}[:metrics]") unless input[:metrics].nil?
        Hearth::Validator.validate!(input[:opt_out], ::String, context: "#{context}[:opt_out]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Validators::EndpointUser.validate!(input[:user], context: "#{context}[:user]") unless input[:user].nil?
      end
    end

    class PushMessageActivity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PushMessageActivity, context: context)
        Validators::JourneyPushMessage.validate!(input[:message_config], context: "#{context}[:message_config]") unless input[:message_config].nil?
        Hearth::Validator.validate!(input[:next_activity], ::String, context: "#{context}[:next_activity]")
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:template_version], ::String, context: "#{context}[:template_version]")
      end
    end

    class PushNotificationTemplateRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PushNotificationTemplateRequest, context: context)
        Validators::AndroidPushNotificationTemplate.validate!(input[:adm], context: "#{context}[:adm]") unless input[:adm].nil?
        Validators::APNSPushNotificationTemplate.validate!(input[:apns], context: "#{context}[:apns]") unless input[:apns].nil?
        Validators::AndroidPushNotificationTemplate.validate!(input[:baidu], context: "#{context}[:baidu]") unless input[:baidu].nil?
        Validators::DefaultPushNotificationTemplate.validate!(input[:default], context: "#{context}[:default]") unless input[:default].nil?
        Hearth::Validator.validate!(input[:default_substitutions], ::String, context: "#{context}[:default_substitutions]")
        Validators::AndroidPushNotificationTemplate.validate!(input[:gcm], context: "#{context}[:gcm]") unless input[:gcm].nil?
        Hearth::Validator.validate!(input[:recommender_id], ::String, context: "#{context}[:recommender_id]")
        Validators::MapOf__string.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:template_description], ::String, context: "#{context}[:template_description]")
      end
    end

    class PushNotificationTemplateResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PushNotificationTemplateResponse, context: context)
        Validators::AndroidPushNotificationTemplate.validate!(input[:adm], context: "#{context}[:adm]") unless input[:adm].nil?
        Validators::APNSPushNotificationTemplate.validate!(input[:apns], context: "#{context}[:apns]") unless input[:apns].nil?
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Validators::AndroidPushNotificationTemplate.validate!(input[:baidu], context: "#{context}[:baidu]") unless input[:baidu].nil?
        Hearth::Validator.validate!(input[:creation_date], ::String, context: "#{context}[:creation_date]")
        Validators::DefaultPushNotificationTemplate.validate!(input[:default], context: "#{context}[:default]") unless input[:default].nil?
        Hearth::Validator.validate!(input[:default_substitutions], ::String, context: "#{context}[:default_substitutions]")
        Validators::AndroidPushNotificationTemplate.validate!(input[:gcm], context: "#{context}[:gcm]") unless input[:gcm].nil?
        Hearth::Validator.validate!(input[:last_modified_date], ::String, context: "#{context}[:last_modified_date]")
        Hearth::Validator.validate!(input[:recommender_id], ::String, context: "#{context}[:recommender_id]")
        Validators::MapOf__string.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:template_description], ::String, context: "#{context}[:template_description]")
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:template_type], ::String, context: "#{context}[:template_type]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class PutEventStreamInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutEventStreamInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Validators::WriteEventStream.validate!(input[:write_event_stream], context: "#{context}[:write_event_stream]") unless input[:write_event_stream].nil?
      end
    end

    class PutEventStreamOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutEventStreamOutput, context: context)
        Validators::EventStream.validate!(input[:event_stream], context: "#{context}[:event_stream]") unless input[:event_stream].nil?
      end
    end

    class PutEventsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutEventsInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Validators::EventsRequest.validate!(input[:events_request], context: "#{context}[:events_request]") unless input[:events_request].nil?
      end
    end

    class PutEventsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutEventsOutput, context: context)
        Validators::EventsResponse.validate!(input[:events_response], context: "#{context}[:events_response]") unless input[:events_response].nil?
      end
    end

    class QuietTime
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::QuietTime, context: context)
        Hearth::Validator.validate!(input[:end], ::String, context: "#{context}[:end]")
        Hearth::Validator.validate!(input[:start], ::String, context: "#{context}[:start]")
      end
    end

    class RandomSplitActivity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RandomSplitActivity, context: context)
        Validators::ListOfRandomSplitEntry.validate!(input[:branches], context: "#{context}[:branches]") unless input[:branches].nil?
      end
    end

    class RandomSplitEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RandomSplitEntry, context: context)
        Hearth::Validator.validate!(input[:next_activity], ::String, context: "#{context}[:next_activity]")
        Hearth::Validator.validate!(input[:percentage], ::Integer, context: "#{context}[:percentage]")
      end
    end

    class RawEmail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RawEmail, context: context)
        Hearth::Validator.validate!(input[:data], ::String, context: "#{context}[:data]")
      end
    end

    class RecencyDimension
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RecencyDimension, context: context)
        Hearth::Validator.validate!(input[:duration], ::String, context: "#{context}[:duration]")
        Hearth::Validator.validate!(input[:recency_type], ::String, context: "#{context}[:recency_type]")
      end
    end

    class RecommenderConfigurationResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RecommenderConfigurationResponse, context: context)
        Validators::MapOf__string.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
        Hearth::Validator.validate!(input[:creation_date], ::String, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:last_modified_date], ::String, context: "#{context}[:last_modified_date]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:recommendation_provider_id_type], ::String, context: "#{context}[:recommendation_provider_id_type]")
        Hearth::Validator.validate!(input[:recommendation_provider_role_arn], ::String, context: "#{context}[:recommendation_provider_role_arn]")
        Hearth::Validator.validate!(input[:recommendation_provider_uri], ::String, context: "#{context}[:recommendation_provider_uri]")
        Hearth::Validator.validate!(input[:recommendation_transformer_uri], ::String, context: "#{context}[:recommendation_transformer_uri]")
        Hearth::Validator.validate!(input[:recommendations_display_name], ::String, context: "#{context}[:recommendations_display_name]")
        Hearth::Validator.validate!(input[:recommendations_per_message], ::Integer, context: "#{context}[:recommendations_per_message]")
      end
    end

    class RemoveAttributesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveAttributesInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:attribute_type], ::String, context: "#{context}[:attribute_type]")
        Validators::UpdateAttributesRequest.validate!(input[:update_attributes_request], context: "#{context}[:update_attributes_request]") unless input[:update_attributes_request].nil?
      end
    end

    class RemoveAttributesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveAttributesOutput, context: context)
        Validators::AttributesResource.validate!(input[:attributes_resource], context: "#{context}[:attributes_resource]") unless input[:attributes_resource].nil?
      end
    end

    class ResultRow
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResultRow, context: context)
        Validators::ListOfResultRowValue.validate!(input[:grouped_bys], context: "#{context}[:grouped_bys]") unless input[:grouped_bys].nil?
        Validators::ListOfResultRowValue.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class ResultRowValue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResultRowValue, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class SMSChannelRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SMSChannelRequest, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:sender_id], ::String, context: "#{context}[:sender_id]")
        Hearth::Validator.validate!(input[:short_code], ::String, context: "#{context}[:short_code]")
      end
    end

    class SMSChannelResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SMSChannelResponse, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:creation_date], ::String, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:has_credential], ::TrueClass, ::FalseClass, context: "#{context}[:has_credential]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:is_archived], ::TrueClass, ::FalseClass, context: "#{context}[:is_archived]")
        Hearth::Validator.validate!(input[:last_modified_by], ::String, context: "#{context}[:last_modified_by]")
        Hearth::Validator.validate!(input[:last_modified_date], ::String, context: "#{context}[:last_modified_date]")
        Hearth::Validator.validate!(input[:platform], ::String, context: "#{context}[:platform]")
        Hearth::Validator.validate!(input[:promotional_messages_per_second], ::Integer, context: "#{context}[:promotional_messages_per_second]")
        Hearth::Validator.validate!(input[:sender_id], ::String, context: "#{context}[:sender_id]")
        Hearth::Validator.validate!(input[:short_code], ::String, context: "#{context}[:short_code]")
        Hearth::Validator.validate!(input[:transactional_messages_per_second], ::Integer, context: "#{context}[:transactional_messages_per_second]")
        Hearth::Validator.validate!(input[:version], ::Integer, context: "#{context}[:version]")
      end
    end

    class SMSMessage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SMSMessage, context: context)
        Hearth::Validator.validate!(input[:body], ::String, context: "#{context}[:body]")
        Hearth::Validator.validate!(input[:keyword], ::String, context: "#{context}[:keyword]")
        Hearth::Validator.validate!(input[:media_url], ::String, context: "#{context}[:media_url]")
        Hearth::Validator.validate!(input[:message_type], ::String, context: "#{context}[:message_type]")
        Hearth::Validator.validate!(input[:origination_number], ::String, context: "#{context}[:origination_number]")
        Hearth::Validator.validate!(input[:sender_id], ::String, context: "#{context}[:sender_id]")
        Validators::MapOfListOf__string.validate!(input[:substitutions], context: "#{context}[:substitutions]") unless input[:substitutions].nil?
        Hearth::Validator.validate!(input[:entity_id], ::String, context: "#{context}[:entity_id]")
        Hearth::Validator.validate!(input[:template_id], ::String, context: "#{context}[:template_id]")
      end
    end

    class SMSMessageActivity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SMSMessageActivity, context: context)
        Validators::JourneySMSMessage.validate!(input[:message_config], context: "#{context}[:message_config]") unless input[:message_config].nil?
        Hearth::Validator.validate!(input[:next_activity], ::String, context: "#{context}[:next_activity]")
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:template_version], ::String, context: "#{context}[:template_version]")
      end
    end

    class SMSTemplateRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SMSTemplateRequest, context: context)
        Hearth::Validator.validate!(input[:body], ::String, context: "#{context}[:body]")
        Hearth::Validator.validate!(input[:default_substitutions], ::String, context: "#{context}[:default_substitutions]")
        Hearth::Validator.validate!(input[:recommender_id], ::String, context: "#{context}[:recommender_id]")
        Validators::MapOf__string.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:template_description], ::String, context: "#{context}[:template_description]")
      end
    end

    class SMSTemplateResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SMSTemplateResponse, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:body], ::String, context: "#{context}[:body]")
        Hearth::Validator.validate!(input[:creation_date], ::String, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:default_substitutions], ::String, context: "#{context}[:default_substitutions]")
        Hearth::Validator.validate!(input[:last_modified_date], ::String, context: "#{context}[:last_modified_date]")
        Hearth::Validator.validate!(input[:recommender_id], ::String, context: "#{context}[:recommender_id]")
        Validators::MapOf__string.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:template_description], ::String, context: "#{context}[:template_description]")
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:template_type], ::String, context: "#{context}[:template_type]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class Schedule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Schedule, context: context)
        Hearth::Validator.validate!(input[:end_time], ::String, context: "#{context}[:end_time]")
        Validators::CampaignEventFilter.validate!(input[:event_filter], context: "#{context}[:event_filter]") unless input[:event_filter].nil?
        Hearth::Validator.validate!(input[:frequency], ::String, context: "#{context}[:frequency]")
        Hearth::Validator.validate!(input[:is_local_time], ::TrueClass, ::FalseClass, context: "#{context}[:is_local_time]")
        Validators::QuietTime.validate!(input[:quiet_time], context: "#{context}[:quiet_time]") unless input[:quiet_time].nil?
        Hearth::Validator.validate!(input[:start_time], ::String, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:timezone], ::String, context: "#{context}[:timezone]")
      end
    end

    class SegmentBehaviors
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SegmentBehaviors, context: context)
        Validators::RecencyDimension.validate!(input[:recency], context: "#{context}[:recency]") unless input[:recency].nil?
      end
    end

    class SegmentCondition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SegmentCondition, context: context)
        Hearth::Validator.validate!(input[:segment_id], ::String, context: "#{context}[:segment_id]")
      end
    end

    class SegmentDemographics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SegmentDemographics, context: context)
        Validators::SetDimension.validate!(input[:app_version], context: "#{context}[:app_version]") unless input[:app_version].nil?
        Validators::SetDimension.validate!(input[:channel], context: "#{context}[:channel]") unless input[:channel].nil?
        Validators::SetDimension.validate!(input[:device_type], context: "#{context}[:device_type]") unless input[:device_type].nil?
        Validators::SetDimension.validate!(input[:make], context: "#{context}[:make]") unless input[:make].nil?
        Validators::SetDimension.validate!(input[:model], context: "#{context}[:model]") unless input[:model].nil?
        Validators::SetDimension.validate!(input[:platform], context: "#{context}[:platform]") unless input[:platform].nil?
      end
    end

    class SegmentDimensions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SegmentDimensions, context: context)
        Validators::MapOfAttributeDimension.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
        Validators::SegmentBehaviors.validate!(input[:behavior], context: "#{context}[:behavior]") unless input[:behavior].nil?
        Validators::SegmentDemographics.validate!(input[:demographic], context: "#{context}[:demographic]") unless input[:demographic].nil?
        Validators::SegmentLocation.validate!(input[:location], context: "#{context}[:location]") unless input[:location].nil?
        Validators::MapOfMetricDimension.validate!(input[:metrics], context: "#{context}[:metrics]") unless input[:metrics].nil?
        Validators::MapOfAttributeDimension.validate!(input[:user_attributes], context: "#{context}[:user_attributes]") unless input[:user_attributes].nil?
      end
    end

    class SegmentGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SegmentGroup, context: context)
        Validators::ListOfSegmentDimensions.validate!(input[:dimensions], context: "#{context}[:dimensions]") unless input[:dimensions].nil?
        Validators::ListOfSegmentReference.validate!(input[:source_segments], context: "#{context}[:source_segments]") unless input[:source_segments].nil?
        Hearth::Validator.validate!(input[:source_type], ::String, context: "#{context}[:source_type]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class SegmentGroupList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SegmentGroupList, context: context)
        Validators::ListOfSegmentGroup.validate!(input[:groups], context: "#{context}[:groups]") unless input[:groups].nil?
        Hearth::Validator.validate!(input[:include], ::String, context: "#{context}[:include]")
      end
    end

    class SegmentImportResource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SegmentImportResource, context: context)
        Validators::MapOf__integer.validate!(input[:channel_counts], context: "#{context}[:channel_counts]") unless input[:channel_counts].nil?
        Hearth::Validator.validate!(input[:external_id], ::String, context: "#{context}[:external_id]")
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:s3_url], ::String, context: "#{context}[:s3_url]")
        Hearth::Validator.validate!(input[:size], ::Integer, context: "#{context}[:size]")
      end
    end

    class SegmentLocation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SegmentLocation, context: context)
        Validators::SetDimension.validate!(input[:country], context: "#{context}[:country]") unless input[:country].nil?
        Validators::GPSPointDimension.validate!(input[:gps_point], context: "#{context}[:gps_point]") unless input[:gps_point].nil?
      end
    end

    class SegmentReference
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SegmentReference, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:version], ::Integer, context: "#{context}[:version]")
      end
    end

    class SegmentResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SegmentResponse, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:creation_date], ::String, context: "#{context}[:creation_date]")
        Validators::SegmentDimensions.validate!(input[:dimensions], context: "#{context}[:dimensions]") unless input[:dimensions].nil?
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Validators::SegmentImportResource.validate!(input[:import_definition], context: "#{context}[:import_definition]") unless input[:import_definition].nil?
        Hearth::Validator.validate!(input[:last_modified_date], ::String, context: "#{context}[:last_modified_date]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::SegmentGroupList.validate!(input[:segment_groups], context: "#{context}[:segment_groups]") unless input[:segment_groups].nil?
        Hearth::Validator.validate!(input[:segment_type], ::String, context: "#{context}[:segment_type]")
        Validators::MapOf__string.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:version], ::Integer, context: "#{context}[:version]")
      end
    end

    class SegmentsResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SegmentsResponse, context: context)
        Validators::ListOfSegmentResponse.validate!(input[:item], context: "#{context}[:item]") unless input[:item].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class SendMessagesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendMessagesInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Validators::MessageRequest.validate!(input[:message_request], context: "#{context}[:message_request]") unless input[:message_request].nil?
      end
    end

    class SendMessagesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendMessagesOutput, context: context)
        Validators::MessageResponse.validate!(input[:message_response], context: "#{context}[:message_response]") unless input[:message_response].nil?
      end
    end

    class SendOTPMessageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendOTPMessageInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Validators::SendOTPMessageRequestParameters.validate!(input[:send_otp_message_request_parameters], context: "#{context}[:send_otp_message_request_parameters]") unless input[:send_otp_message_request_parameters].nil?
      end
    end

    class SendOTPMessageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendOTPMessageOutput, context: context)
        Validators::MessageResponse.validate!(input[:message_response], context: "#{context}[:message_response]") unless input[:message_response].nil?
      end
    end

    class SendOTPMessageRequestParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendOTPMessageRequestParameters, context: context)
        Hearth::Validator.validate!(input[:allowed_attempts], ::Integer, context: "#{context}[:allowed_attempts]")
        Hearth::Validator.validate!(input[:brand_name], ::String, context: "#{context}[:brand_name]")
        Hearth::Validator.validate!(input[:channel], ::String, context: "#{context}[:channel]")
        Hearth::Validator.validate!(input[:code_length], ::Integer, context: "#{context}[:code_length]")
        Hearth::Validator.validate!(input[:destination_identity], ::String, context: "#{context}[:destination_identity]")
        Hearth::Validator.validate!(input[:entity_id], ::String, context: "#{context}[:entity_id]")
        Hearth::Validator.validate!(input[:language], ::String, context: "#{context}[:language]")
        Hearth::Validator.validate!(input[:origination_identity], ::String, context: "#{context}[:origination_identity]")
        Hearth::Validator.validate!(input[:reference_id], ::String, context: "#{context}[:reference_id]")
        Hearth::Validator.validate!(input[:template_id], ::String, context: "#{context}[:template_id]")
        Hearth::Validator.validate!(input[:validity_period], ::Integer, context: "#{context}[:validity_period]")
      end
    end

    class SendUsersMessageRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendUsersMessageRequest, context: context)
        Validators::MapOf__string.validate!(input[:context], context: "#{context}[:context]") unless input[:context].nil?
        Validators::DirectMessageConfiguration.validate!(input[:message_configuration], context: "#{context}[:message_configuration]") unless input[:message_configuration].nil?
        Validators::TemplateConfiguration.validate!(input[:template_configuration], context: "#{context}[:template_configuration]") unless input[:template_configuration].nil?
        Hearth::Validator.validate!(input[:trace_id], ::String, context: "#{context}[:trace_id]")
        Validators::MapOfEndpointSendConfiguration.validate!(input[:users], context: "#{context}[:users]") unless input[:users].nil?
      end
    end

    class SendUsersMessageResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendUsersMessageResponse, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Validators::MapOfMapOfEndpointMessageResult.validate!(input[:result], context: "#{context}[:result]") unless input[:result].nil?
      end
    end

    class SendUsersMessagesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendUsersMessagesInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Validators::SendUsersMessageRequest.validate!(input[:send_users_message_request], context: "#{context}[:send_users_message_request]") unless input[:send_users_message_request].nil?
      end
    end

    class SendUsersMessagesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendUsersMessagesOutput, context: context)
        Validators::SendUsersMessageResponse.validate!(input[:send_users_message_response], context: "#{context}[:send_users_message_response]") unless input[:send_users_message_response].nil?
      end
    end

    class Session
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Session, context: context)
        Hearth::Validator.validate!(input[:duration], ::Integer, context: "#{context}[:duration]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:start_timestamp], ::String, context: "#{context}[:start_timestamp]")
        Hearth::Validator.validate!(input[:stop_timestamp], ::String, context: "#{context}[:stop_timestamp]")
      end
    end

    class SetDimension
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetDimension, context: context)
        Hearth::Validator.validate!(input[:dimension_type], ::String, context: "#{context}[:dimension_type]")
        Validators::ListOf__string.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class SimpleCondition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SimpleCondition, context: context)
        Validators::EventCondition.validate!(input[:event_condition], context: "#{context}[:event_condition]") unless input[:event_condition].nil?
        Validators::SegmentCondition.validate!(input[:segment_condition], context: "#{context}[:segment_condition]") unless input[:segment_condition].nil?
        Validators::SegmentDimensions.validate!(input[:segment_dimensions], context: "#{context}[:segment_dimensions]") unless input[:segment_dimensions].nil?
      end
    end

    class SimpleEmail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SimpleEmail, context: context)
        Validators::SimpleEmailPart.validate!(input[:html_part], context: "#{context}[:html_part]") unless input[:html_part].nil?
        Validators::SimpleEmailPart.validate!(input[:subject], context: "#{context}[:subject]") unless input[:subject].nil?
        Validators::SimpleEmailPart.validate!(input[:text_part], context: "#{context}[:text_part]") unless input[:text_part].nil?
      end
    end

    class SimpleEmailPart
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SimpleEmailPart, context: context)
        Hearth::Validator.validate!(input[:charset], ::String, context: "#{context}[:charset]")
        Hearth::Validator.validate!(input[:data], ::String, context: "#{context}[:data]")
      end
    end

    class StartCondition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartCondition, context: context)
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::EventStartCondition.validate!(input[:event_start_condition], context: "#{context}[:event_start_condition]") unless input[:event_start_condition].nil?
        Validators::SegmentCondition.validate!(input[:segment_start_condition], context: "#{context}[:segment_start_condition]") unless input[:segment_start_condition].nil?
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagsModel.validate!(input[:tags_model], context: "#{context}[:tags_model]") unless input[:tags_model].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class TagsModel
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagsModel, context: context)
        Validators::MapOf__string.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class Template
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Template, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class TemplateActiveVersionRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TemplateActiveVersionRequest, context: context)
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class TemplateConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TemplateConfiguration, context: context)
        Validators::Template.validate!(input[:email_template], context: "#{context}[:email_template]") unless input[:email_template].nil?
        Validators::Template.validate!(input[:push_template], context: "#{context}[:push_template]") unless input[:push_template].nil?
        Validators::Template.validate!(input[:sms_template], context: "#{context}[:sms_template]") unless input[:sms_template].nil?
        Validators::Template.validate!(input[:voice_template], context: "#{context}[:voice_template]") unless input[:voice_template].nil?
      end
    end

    class TemplateCreateMessageBody
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TemplateCreateMessageBody, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class TemplateResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TemplateResponse, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:creation_date], ::String, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:default_substitutions], ::String, context: "#{context}[:default_substitutions]")
        Hearth::Validator.validate!(input[:last_modified_date], ::String, context: "#{context}[:last_modified_date]")
        Validators::MapOf__string.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:template_description], ::String, context: "#{context}[:template_description]")
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:template_type], ::String, context: "#{context}[:template_type]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class TemplateVersionResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TemplateVersionResponse, context: context)
        Hearth::Validator.validate!(input[:creation_date], ::String, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:default_substitutions], ::String, context: "#{context}[:default_substitutions]")
        Hearth::Validator.validate!(input[:last_modified_date], ::String, context: "#{context}[:last_modified_date]")
        Hearth::Validator.validate!(input[:template_description], ::String, context: "#{context}[:template_description]")
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:template_type], ::String, context: "#{context}[:template_type]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class TemplateVersionsResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TemplateVersionsResponse, context: context)
        Validators::ListOfTemplateVersionResponse.validate!(input[:item], context: "#{context}[:item]") unless input[:item].nil?
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class TemplatesResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TemplatesResponse, context: context)
        Validators::ListOfTemplateResponse.validate!(input[:item], context: "#{context}[:item]") unless input[:item].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class TooManyRequestsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyRequestsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class TreatmentResource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TreatmentResource, context: context)
        Validators::CustomDeliveryConfiguration.validate!(input[:custom_delivery_configuration], context: "#{context}[:custom_delivery_configuration]") unless input[:custom_delivery_configuration].nil?
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Validators::MessageConfiguration.validate!(input[:message_configuration], context: "#{context}[:message_configuration]") unless input[:message_configuration].nil?
        Validators::Schedule.validate!(input[:schedule], context: "#{context}[:schedule]") unless input[:schedule].nil?
        Hearth::Validator.validate!(input[:size_percent], ::Integer, context: "#{context}[:size_percent]")
        Validators::CampaignState.validate!(input[:state], context: "#{context}[:state]") unless input[:state].nil?
        Validators::TemplateConfiguration.validate!(input[:template_configuration], context: "#{context}[:template_configuration]") unless input[:template_configuration].nil?
        Hearth::Validator.validate!(input[:treatment_description], ::String, context: "#{context}[:treatment_description]")
        Hearth::Validator.validate!(input[:treatment_name], ::String, context: "#{context}[:treatment_name]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::ListOf__string.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateAdmChannelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAdmChannelInput, context: context)
        Validators::ADMChannelRequest.validate!(input[:adm_channel_request], context: "#{context}[:adm_channel_request]") unless input[:adm_channel_request].nil?
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
      end
    end

    class UpdateAdmChannelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAdmChannelOutput, context: context)
        Validators::ADMChannelResponse.validate!(input[:adm_channel_response], context: "#{context}[:adm_channel_response]") unless input[:adm_channel_response].nil?
      end
    end

    class UpdateApnsChannelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateApnsChannelInput, context: context)
        Validators::APNSChannelRequest.validate!(input[:apns_channel_request], context: "#{context}[:apns_channel_request]") unless input[:apns_channel_request].nil?
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
      end
    end

    class UpdateApnsChannelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateApnsChannelOutput, context: context)
        Validators::APNSChannelResponse.validate!(input[:apns_channel_response], context: "#{context}[:apns_channel_response]") unless input[:apns_channel_response].nil?
      end
    end

    class UpdateApnsSandboxChannelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateApnsSandboxChannelInput, context: context)
        Validators::APNSSandboxChannelRequest.validate!(input[:apns_sandbox_channel_request], context: "#{context}[:apns_sandbox_channel_request]") unless input[:apns_sandbox_channel_request].nil?
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
      end
    end

    class UpdateApnsSandboxChannelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateApnsSandboxChannelOutput, context: context)
        Validators::APNSSandboxChannelResponse.validate!(input[:apns_sandbox_channel_response], context: "#{context}[:apns_sandbox_channel_response]") unless input[:apns_sandbox_channel_response].nil?
      end
    end

    class UpdateApnsVoipChannelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateApnsVoipChannelInput, context: context)
        Validators::APNSVoipChannelRequest.validate!(input[:apns_voip_channel_request], context: "#{context}[:apns_voip_channel_request]") unless input[:apns_voip_channel_request].nil?
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
      end
    end

    class UpdateApnsVoipChannelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateApnsVoipChannelOutput, context: context)
        Validators::APNSVoipChannelResponse.validate!(input[:apns_voip_channel_response], context: "#{context}[:apns_voip_channel_response]") unless input[:apns_voip_channel_response].nil?
      end
    end

    class UpdateApnsVoipSandboxChannelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateApnsVoipSandboxChannelInput, context: context)
        Validators::APNSVoipSandboxChannelRequest.validate!(input[:apns_voip_sandbox_channel_request], context: "#{context}[:apns_voip_sandbox_channel_request]") unless input[:apns_voip_sandbox_channel_request].nil?
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
      end
    end

    class UpdateApnsVoipSandboxChannelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateApnsVoipSandboxChannelOutput, context: context)
        Validators::APNSVoipSandboxChannelResponse.validate!(input[:apns_voip_sandbox_channel_response], context: "#{context}[:apns_voip_sandbox_channel_response]") unless input[:apns_voip_sandbox_channel_response].nil?
      end
    end

    class UpdateApplicationSettingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateApplicationSettingsInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Validators::WriteApplicationSettingsRequest.validate!(input[:write_application_settings_request], context: "#{context}[:write_application_settings_request]") unless input[:write_application_settings_request].nil?
      end
    end

    class UpdateApplicationSettingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateApplicationSettingsOutput, context: context)
        Validators::ApplicationSettingsResource.validate!(input[:application_settings_resource], context: "#{context}[:application_settings_resource]") unless input[:application_settings_resource].nil?
      end
    end

    class UpdateAttributesRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAttributesRequest, context: context)
        Validators::ListOf__string.validate!(input[:blacklist], context: "#{context}[:blacklist]") unless input[:blacklist].nil?
      end
    end

    class UpdateBaiduChannelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateBaiduChannelInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Validators::BaiduChannelRequest.validate!(input[:baidu_channel_request], context: "#{context}[:baidu_channel_request]") unless input[:baidu_channel_request].nil?
      end
    end

    class UpdateBaiduChannelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateBaiduChannelOutput, context: context)
        Validators::BaiduChannelResponse.validate!(input[:baidu_channel_response], context: "#{context}[:baidu_channel_response]") unless input[:baidu_channel_response].nil?
      end
    end

    class UpdateCampaignInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateCampaignInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:campaign_id], ::String, context: "#{context}[:campaign_id]")
        Validators::WriteCampaignRequest.validate!(input[:write_campaign_request], context: "#{context}[:write_campaign_request]") unless input[:write_campaign_request].nil?
      end
    end

    class UpdateCampaignOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateCampaignOutput, context: context)
        Validators::CampaignResponse.validate!(input[:campaign_response], context: "#{context}[:campaign_response]") unless input[:campaign_response].nil?
      end
    end

    class UpdateEmailChannelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateEmailChannelInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Validators::EmailChannelRequest.validate!(input[:email_channel_request], context: "#{context}[:email_channel_request]") unless input[:email_channel_request].nil?
      end
    end

    class UpdateEmailChannelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateEmailChannelOutput, context: context)
        Validators::EmailChannelResponse.validate!(input[:email_channel_response], context: "#{context}[:email_channel_response]") unless input[:email_channel_response].nil?
      end
    end

    class UpdateEmailTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateEmailTemplateInput, context: context)
        Hearth::Validator.validate!(input[:create_new_version], ::TrueClass, ::FalseClass, context: "#{context}[:create_new_version]")
        Validators::EmailTemplateRequest.validate!(input[:email_template_request], context: "#{context}[:email_template_request]") unless input[:email_template_request].nil?
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class UpdateEmailTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateEmailTemplateOutput, context: context)
        Validators::MessageBody.validate!(input[:message_body], context: "#{context}[:message_body]") unless input[:message_body].nil?
      end
    end

    class UpdateEndpointInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateEndpointInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:endpoint_id], ::String, context: "#{context}[:endpoint_id]")
        Validators::EndpointRequest.validate!(input[:endpoint_request], context: "#{context}[:endpoint_request]") unless input[:endpoint_request].nil?
      end
    end

    class UpdateEndpointOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateEndpointOutput, context: context)
        Validators::MessageBody.validate!(input[:message_body], context: "#{context}[:message_body]") unless input[:message_body].nil?
      end
    end

    class UpdateEndpointsBatchInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateEndpointsBatchInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Validators::EndpointBatchRequest.validate!(input[:endpoint_batch_request], context: "#{context}[:endpoint_batch_request]") unless input[:endpoint_batch_request].nil?
      end
    end

    class UpdateEndpointsBatchOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateEndpointsBatchOutput, context: context)
        Validators::MessageBody.validate!(input[:message_body], context: "#{context}[:message_body]") unless input[:message_body].nil?
      end
    end

    class UpdateGcmChannelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateGcmChannelInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Validators::GCMChannelRequest.validate!(input[:gcm_channel_request], context: "#{context}[:gcm_channel_request]") unless input[:gcm_channel_request].nil?
      end
    end

    class UpdateGcmChannelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateGcmChannelOutput, context: context)
        Validators::GCMChannelResponse.validate!(input[:gcm_channel_response], context: "#{context}[:gcm_channel_response]") unless input[:gcm_channel_response].nil?
      end
    end

    class UpdateInAppTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateInAppTemplateInput, context: context)
        Hearth::Validator.validate!(input[:create_new_version], ::TrueClass, ::FalseClass, context: "#{context}[:create_new_version]")
        Validators::InAppTemplateRequest.validate!(input[:in_app_template_request], context: "#{context}[:in_app_template_request]") unless input[:in_app_template_request].nil?
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class UpdateInAppTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateInAppTemplateOutput, context: context)
        Validators::MessageBody.validate!(input[:message_body], context: "#{context}[:message_body]") unless input[:message_body].nil?
      end
    end

    class UpdateJourneyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateJourneyInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:journey_id], ::String, context: "#{context}[:journey_id]")
        Validators::WriteJourneyRequest.validate!(input[:write_journey_request], context: "#{context}[:write_journey_request]") unless input[:write_journey_request].nil?
      end
    end

    class UpdateJourneyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateJourneyOutput, context: context)
        Validators::JourneyResponse.validate!(input[:journey_response], context: "#{context}[:journey_response]") unless input[:journey_response].nil?
      end
    end

    class UpdateJourneyStateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateJourneyStateInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:journey_id], ::String, context: "#{context}[:journey_id]")
        Validators::JourneyStateRequest.validate!(input[:journey_state_request], context: "#{context}[:journey_state_request]") unless input[:journey_state_request].nil?
      end
    end

    class UpdateJourneyStateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateJourneyStateOutput, context: context)
        Validators::JourneyResponse.validate!(input[:journey_response], context: "#{context}[:journey_response]") unless input[:journey_response].nil?
      end
    end

    class UpdatePushTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePushTemplateInput, context: context)
        Hearth::Validator.validate!(input[:create_new_version], ::TrueClass, ::FalseClass, context: "#{context}[:create_new_version]")
        Validators::PushNotificationTemplateRequest.validate!(input[:push_notification_template_request], context: "#{context}[:push_notification_template_request]") unless input[:push_notification_template_request].nil?
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class UpdatePushTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePushTemplateOutput, context: context)
        Validators::MessageBody.validate!(input[:message_body], context: "#{context}[:message_body]") unless input[:message_body].nil?
      end
    end

    class UpdateRecommenderConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRecommenderConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:recommender_id], ::String, context: "#{context}[:recommender_id]")
        Validators::UpdateRecommenderConfigurationShape.validate!(input[:update_recommender_configuration], context: "#{context}[:update_recommender_configuration]") unless input[:update_recommender_configuration].nil?
      end
    end

    class UpdateRecommenderConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRecommenderConfigurationOutput, context: context)
        Validators::RecommenderConfigurationResponse.validate!(input[:recommender_configuration_response], context: "#{context}[:recommender_configuration_response]") unless input[:recommender_configuration_response].nil?
      end
    end

    class UpdateRecommenderConfigurationShape
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRecommenderConfigurationShape, context: context)
        Validators::MapOf__string.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:recommendation_provider_id_type], ::String, context: "#{context}[:recommendation_provider_id_type]")
        Hearth::Validator.validate!(input[:recommendation_provider_role_arn], ::String, context: "#{context}[:recommendation_provider_role_arn]")
        Hearth::Validator.validate!(input[:recommendation_provider_uri], ::String, context: "#{context}[:recommendation_provider_uri]")
        Hearth::Validator.validate!(input[:recommendation_transformer_uri], ::String, context: "#{context}[:recommendation_transformer_uri]")
        Hearth::Validator.validate!(input[:recommendations_display_name], ::String, context: "#{context}[:recommendations_display_name]")
        Hearth::Validator.validate!(input[:recommendations_per_message], ::Integer, context: "#{context}[:recommendations_per_message]")
      end
    end

    class UpdateSegmentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSegmentInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:segment_id], ::String, context: "#{context}[:segment_id]")
        Validators::WriteSegmentRequest.validate!(input[:write_segment_request], context: "#{context}[:write_segment_request]") unless input[:write_segment_request].nil?
      end
    end

    class UpdateSegmentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSegmentOutput, context: context)
        Validators::SegmentResponse.validate!(input[:segment_response], context: "#{context}[:segment_response]") unless input[:segment_response].nil?
      end
    end

    class UpdateSmsChannelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSmsChannelInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Validators::SMSChannelRequest.validate!(input[:sms_channel_request], context: "#{context}[:sms_channel_request]") unless input[:sms_channel_request].nil?
      end
    end

    class UpdateSmsChannelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSmsChannelOutput, context: context)
        Validators::SMSChannelResponse.validate!(input[:sms_channel_response], context: "#{context}[:sms_channel_response]") unless input[:sms_channel_response].nil?
      end
    end

    class UpdateSmsTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSmsTemplateInput, context: context)
        Hearth::Validator.validate!(input[:create_new_version], ::TrueClass, ::FalseClass, context: "#{context}[:create_new_version]")
        Validators::SMSTemplateRequest.validate!(input[:sms_template_request], context: "#{context}[:sms_template_request]") unless input[:sms_template_request].nil?
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class UpdateSmsTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSmsTemplateOutput, context: context)
        Validators::MessageBody.validate!(input[:message_body], context: "#{context}[:message_body]") unless input[:message_body].nil?
      end
    end

    class UpdateTemplateActiveVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateTemplateActiveVersionInput, context: context)
        Validators::TemplateActiveVersionRequest.validate!(input[:template_active_version_request], context: "#{context}[:template_active_version_request]") unless input[:template_active_version_request].nil?
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:template_type], ::String, context: "#{context}[:template_type]")
      end
    end

    class UpdateTemplateActiveVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateTemplateActiveVersionOutput, context: context)
        Validators::MessageBody.validate!(input[:message_body], context: "#{context}[:message_body]") unless input[:message_body].nil?
      end
    end

    class UpdateVoiceChannelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateVoiceChannelInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Validators::VoiceChannelRequest.validate!(input[:voice_channel_request], context: "#{context}[:voice_channel_request]") unless input[:voice_channel_request].nil?
      end
    end

    class UpdateVoiceChannelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateVoiceChannelOutput, context: context)
        Validators::VoiceChannelResponse.validate!(input[:voice_channel_response], context: "#{context}[:voice_channel_response]") unless input[:voice_channel_response].nil?
      end
    end

    class UpdateVoiceTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateVoiceTemplateInput, context: context)
        Hearth::Validator.validate!(input[:create_new_version], ::TrueClass, ::FalseClass, context: "#{context}[:create_new_version]")
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Validators::VoiceTemplateRequest.validate!(input[:voice_template_request], context: "#{context}[:voice_template_request]") unless input[:voice_template_request].nil?
      end
    end

    class UpdateVoiceTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateVoiceTemplateOutput, context: context)
        Validators::MessageBody.validate!(input[:message_body], context: "#{context}[:message_body]") unless input[:message_body].nil?
      end
    end

    class VerificationResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VerificationResponse, context: context)
        Hearth::Validator.validate!(input[:valid], ::TrueClass, ::FalseClass, context: "#{context}[:valid]")
      end
    end

    class VerifyOTPMessageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VerifyOTPMessageInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Validators::VerifyOTPMessageRequestParameters.validate!(input[:verify_otp_message_request_parameters], context: "#{context}[:verify_otp_message_request_parameters]") unless input[:verify_otp_message_request_parameters].nil?
      end
    end

    class VerifyOTPMessageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VerifyOTPMessageOutput, context: context)
        Validators::VerificationResponse.validate!(input[:verification_response], context: "#{context}[:verification_response]") unless input[:verification_response].nil?
      end
    end

    class VerifyOTPMessageRequestParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VerifyOTPMessageRequestParameters, context: context)
        Hearth::Validator.validate!(input[:destination_identity], ::String, context: "#{context}[:destination_identity]")
        Hearth::Validator.validate!(input[:otp], ::String, context: "#{context}[:otp]")
        Hearth::Validator.validate!(input[:reference_id], ::String, context: "#{context}[:reference_id]")
      end
    end

    class VoiceChannelRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VoiceChannelRequest, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
      end
    end

    class VoiceChannelResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VoiceChannelResponse, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:creation_date], ::String, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:has_credential], ::TrueClass, ::FalseClass, context: "#{context}[:has_credential]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:is_archived], ::TrueClass, ::FalseClass, context: "#{context}[:is_archived]")
        Hearth::Validator.validate!(input[:last_modified_by], ::String, context: "#{context}[:last_modified_by]")
        Hearth::Validator.validate!(input[:last_modified_date], ::String, context: "#{context}[:last_modified_date]")
        Hearth::Validator.validate!(input[:platform], ::String, context: "#{context}[:platform]")
        Hearth::Validator.validate!(input[:version], ::Integer, context: "#{context}[:version]")
      end
    end

    class VoiceMessage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VoiceMessage, context: context)
        Hearth::Validator.validate!(input[:body], ::String, context: "#{context}[:body]")
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
        Hearth::Validator.validate!(input[:origination_number], ::String, context: "#{context}[:origination_number]")
        Validators::MapOfListOf__string.validate!(input[:substitutions], context: "#{context}[:substitutions]") unless input[:substitutions].nil?
        Hearth::Validator.validate!(input[:voice_id], ::String, context: "#{context}[:voice_id]")
      end
    end

    class VoiceTemplateRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VoiceTemplateRequest, context: context)
        Hearth::Validator.validate!(input[:body], ::String, context: "#{context}[:body]")
        Hearth::Validator.validate!(input[:default_substitutions], ::String, context: "#{context}[:default_substitutions]")
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
        Validators::MapOf__string.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:template_description], ::String, context: "#{context}[:template_description]")
        Hearth::Validator.validate!(input[:voice_id], ::String, context: "#{context}[:voice_id]")
      end
    end

    class VoiceTemplateResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VoiceTemplateResponse, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:body], ::String, context: "#{context}[:body]")
        Hearth::Validator.validate!(input[:creation_date], ::String, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:default_substitutions], ::String, context: "#{context}[:default_substitutions]")
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
        Hearth::Validator.validate!(input[:last_modified_date], ::String, context: "#{context}[:last_modified_date]")
        Validators::MapOf__string.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:template_description], ::String, context: "#{context}[:template_description]")
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:template_type], ::String, context: "#{context}[:template_type]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:voice_id], ::String, context: "#{context}[:voice_id]")
      end
    end

    class WaitActivity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WaitActivity, context: context)
        Hearth::Validator.validate!(input[:next_activity], ::String, context: "#{context}[:next_activity]")
        Validators::WaitTime.validate!(input[:wait_time], context: "#{context}[:wait_time]") unless input[:wait_time].nil?
      end
    end

    class WaitTime
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WaitTime, context: context)
        Hearth::Validator.validate!(input[:wait_for], ::String, context: "#{context}[:wait_for]")
        Hearth::Validator.validate!(input[:wait_until], ::String, context: "#{context}[:wait_until]")
      end
    end

    class WriteApplicationSettingsRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WriteApplicationSettingsRequest, context: context)
        Validators::CampaignHook.validate!(input[:campaign_hook], context: "#{context}[:campaign_hook]") unless input[:campaign_hook].nil?
        Hearth::Validator.validate!(input[:cloud_watch_metrics_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:cloud_watch_metrics_enabled]")
        Hearth::Validator.validate!(input[:event_tagging_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:event_tagging_enabled]")
        Validators::CampaignLimits.validate!(input[:limits], context: "#{context}[:limits]") unless input[:limits].nil?
        Validators::QuietTime.validate!(input[:quiet_time], context: "#{context}[:quiet_time]") unless input[:quiet_time].nil?
      end
    end

    class WriteCampaignRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WriteCampaignRequest, context: context)
        Validators::ListOfWriteTreatmentResource.validate!(input[:additional_treatments], context: "#{context}[:additional_treatments]") unless input[:additional_treatments].nil?
        Validators::CustomDeliveryConfiguration.validate!(input[:custom_delivery_configuration], context: "#{context}[:custom_delivery_configuration]") unless input[:custom_delivery_configuration].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:holdout_percent], ::Integer, context: "#{context}[:holdout_percent]")
        Validators::CampaignHook.validate!(input[:hook], context: "#{context}[:hook]") unless input[:hook].nil?
        Hearth::Validator.validate!(input[:is_paused], ::TrueClass, ::FalseClass, context: "#{context}[:is_paused]")
        Validators::CampaignLimits.validate!(input[:limits], context: "#{context}[:limits]") unless input[:limits].nil?
        Validators::MessageConfiguration.validate!(input[:message_configuration], context: "#{context}[:message_configuration]") unless input[:message_configuration].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::Schedule.validate!(input[:schedule], context: "#{context}[:schedule]") unless input[:schedule].nil?
        Hearth::Validator.validate!(input[:segment_id], ::String, context: "#{context}[:segment_id]")
        Hearth::Validator.validate!(input[:segment_version], ::Integer, context: "#{context}[:segment_version]")
        Validators::MapOf__string.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Validators::TemplateConfiguration.validate!(input[:template_configuration], context: "#{context}[:template_configuration]") unless input[:template_configuration].nil?
        Hearth::Validator.validate!(input[:treatment_description], ::String, context: "#{context}[:treatment_description]")
        Hearth::Validator.validate!(input[:treatment_name], ::String, context: "#{context}[:treatment_name]")
        Hearth::Validator.validate!(input[:priority], ::Integer, context: "#{context}[:priority]")
      end
    end

    class WriteEventStream
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WriteEventStream, context: context)
        Hearth::Validator.validate!(input[:destination_stream_arn], ::String, context: "#{context}[:destination_stream_arn]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
      end
    end

    class WriteJourneyRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WriteJourneyRequest, context: context)
        Validators::MapOfActivity.validate!(input[:activities], context: "#{context}[:activities]") unless input[:activities].nil?
        Hearth::Validator.validate!(input[:creation_date], ::String, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:last_modified_date], ::String, context: "#{context}[:last_modified_date]")
        Validators::JourneyLimits.validate!(input[:limits], context: "#{context}[:limits]") unless input[:limits].nil?
        Hearth::Validator.validate!(input[:local_time], ::TrueClass, ::FalseClass, context: "#{context}[:local_time]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::QuietTime.validate!(input[:quiet_time], context: "#{context}[:quiet_time]") unless input[:quiet_time].nil?
        Hearth::Validator.validate!(input[:refresh_frequency], ::String, context: "#{context}[:refresh_frequency]")
        Validators::JourneySchedule.validate!(input[:schedule], context: "#{context}[:schedule]") unless input[:schedule].nil?
        Hearth::Validator.validate!(input[:start_activity], ::String, context: "#{context}[:start_activity]")
        Validators::StartCondition.validate!(input[:start_condition], context: "#{context}[:start_condition]") unless input[:start_condition].nil?
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:wait_for_quiet_time], ::TrueClass, ::FalseClass, context: "#{context}[:wait_for_quiet_time]")
        Hearth::Validator.validate!(input[:refresh_on_segment_update], ::TrueClass, ::FalseClass, context: "#{context}[:refresh_on_segment_update]")
        Validators::JourneyChannelSettings.validate!(input[:journey_channel_settings], context: "#{context}[:journey_channel_settings]") unless input[:journey_channel_settings].nil?
      end
    end

    class WriteSegmentRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WriteSegmentRequest, context: context)
        Validators::SegmentDimensions.validate!(input[:dimensions], context: "#{context}[:dimensions]") unless input[:dimensions].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::SegmentGroupList.validate!(input[:segment_groups], context: "#{context}[:segment_groups]") unless input[:segment_groups].nil?
        Validators::MapOf__string.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class WriteTreatmentResource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WriteTreatmentResource, context: context)
        Validators::CustomDeliveryConfiguration.validate!(input[:custom_delivery_configuration], context: "#{context}[:custom_delivery_configuration]") unless input[:custom_delivery_configuration].nil?
        Validators::MessageConfiguration.validate!(input[:message_configuration], context: "#{context}[:message_configuration]") unless input[:message_configuration].nil?
        Validators::Schedule.validate!(input[:schedule], context: "#{context}[:schedule]") unless input[:schedule].nil?
        Hearth::Validator.validate!(input[:size_percent], ::Integer, context: "#{context}[:size_percent]")
        Validators::TemplateConfiguration.validate!(input[:template_configuration], context: "#{context}[:template_configuration]") unless input[:template_configuration].nil?
        Hearth::Validator.validate!(input[:treatment_description], ::String, context: "#{context}[:treatment_description]")
        Hearth::Validator.validate!(input[:treatment_name], ::String, context: "#{context}[:treatment_name]")
      end
    end

  end
end
