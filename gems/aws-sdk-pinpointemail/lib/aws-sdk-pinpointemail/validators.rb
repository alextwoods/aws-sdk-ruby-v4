# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::PinpointEmail
  module Validators

    class AccountSuspendedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccountSuspendedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AlreadyExistsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AlreadyExistsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class BadRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BadRequestException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class BlacklistEntries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BlacklistEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BlacklistEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BlacklistEntry, context: context)
        Hearth::Validator.validate!(input[:rbl_name], ::String, context: "#{context}[:rbl_name]")
        Hearth::Validator.validate!(input[:listing_time], ::Time, context: "#{context}[:listing_time]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class BlacklistItemNames
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class BlacklistReport
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          BlacklistEntries.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class Body
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Body, context: context)
        Content.validate!(input[:text], context: "#{context}[:text]") unless input[:text].nil?
        Content.validate!(input[:html], context: "#{context}[:html]") unless input[:html].nil?
      end
    end

    class CloudWatchDestination
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CloudWatchDestination, context: context)
        CloudWatchDimensionConfigurations.validate!(input[:dimension_configurations], context: "#{context}[:dimension_configurations]") unless input[:dimension_configurations].nil?
      end
    end

    class CloudWatchDimensionConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CloudWatchDimensionConfiguration, context: context)
        Hearth::Validator.validate!(input[:dimension_name], ::String, context: "#{context}[:dimension_name]")
        Hearth::Validator.validate!(input[:dimension_value_source], ::String, context: "#{context}[:dimension_value_source]")
        Hearth::Validator.validate!(input[:default_dimension_value], ::String, context: "#{context}[:default_dimension_value]")
      end
    end

    class CloudWatchDimensionConfigurations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CloudWatchDimensionConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ConcurrentModificationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConcurrentModificationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ConfigurationSetNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Content
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Content, context: context)
        Hearth::Validator.validate!(input[:data], ::String, context: "#{context}[:data]")
        Hearth::Validator.validate!(input[:charset], ::String, context: "#{context}[:charset]")
      end
    end

    class CreateConfigurationSetEventDestinationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateConfigurationSetEventDestinationInput, context: context)
        Hearth::Validator.validate!(input[:configuration_set_name], ::String, context: "#{context}[:configuration_set_name]")
        Hearth::Validator.validate!(input[:event_destination_name], ::String, context: "#{context}[:event_destination_name]")
        EventDestinationDefinition.validate!(input[:event_destination], context: "#{context}[:event_destination]") unless input[:event_destination].nil?
      end
    end

    class CreateConfigurationSetEventDestinationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateConfigurationSetEventDestinationOutput, context: context)
      end
    end

    class CreateConfigurationSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateConfigurationSetInput, context: context)
        Hearth::Validator.validate!(input[:configuration_set_name], ::String, context: "#{context}[:configuration_set_name]")
        TrackingOptions.validate!(input[:tracking_options], context: "#{context}[:tracking_options]") unless input[:tracking_options].nil?
        DeliveryOptions.validate!(input[:delivery_options], context: "#{context}[:delivery_options]") unless input[:delivery_options].nil?
        ReputationOptions.validate!(input[:reputation_options], context: "#{context}[:reputation_options]") unless input[:reputation_options].nil?
        SendingOptions.validate!(input[:sending_options], context: "#{context}[:sending_options]") unless input[:sending_options].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateConfigurationSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateConfigurationSetOutput, context: context)
      end
    end

    class CreateDedicatedIpPoolInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDedicatedIpPoolInput, context: context)
        Hearth::Validator.validate!(input[:pool_name], ::String, context: "#{context}[:pool_name]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateDedicatedIpPoolOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDedicatedIpPoolOutput, context: context)
      end
    end

    class CreateDeliverabilityTestReportInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDeliverabilityTestReportInput, context: context)
        Hearth::Validator.validate!(input[:report_name], ::String, context: "#{context}[:report_name]")
        Hearth::Validator.validate!(input[:from_email_address], ::String, context: "#{context}[:from_email_address]")
        EmailContent.validate!(input[:content], context: "#{context}[:content]") unless input[:content].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateDeliverabilityTestReportOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDeliverabilityTestReportOutput, context: context)
        Hearth::Validator.validate!(input[:report_id], ::String, context: "#{context}[:report_id]")
        Hearth::Validator.validate!(input[:deliverability_test_status], ::String, context: "#{context}[:deliverability_test_status]")
      end
    end

    class CreateEmailIdentityInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateEmailIdentityInput, context: context)
        Hearth::Validator.validate!(input[:email_identity], ::String, context: "#{context}[:email_identity]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateEmailIdentityOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateEmailIdentityOutput, context: context)
        Hearth::Validator.validate!(input[:identity_type], ::String, context: "#{context}[:identity_type]")
        Hearth::Validator.validate!(input[:verified_for_sending_status], ::TrueClass, ::FalseClass, context: "#{context}[:verified_for_sending_status]")
        DkimAttributes.validate!(input[:dkim_attributes], context: "#{context}[:dkim_attributes]") unless input[:dkim_attributes].nil?
      end
    end

    class DailyVolume
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DailyVolume, context: context)
        Hearth::Validator.validate!(input[:start_date], ::Time, context: "#{context}[:start_date]")
        VolumeStatistics.validate!(input[:volume_statistics], context: "#{context}[:volume_statistics]") unless input[:volume_statistics].nil?
        DomainIspPlacements.validate!(input[:domain_isp_placements], context: "#{context}[:domain_isp_placements]") unless input[:domain_isp_placements].nil?
      end
    end

    class DailyVolumes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DailyVolume.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DedicatedIp
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DedicatedIp, context: context)
        Hearth::Validator.validate!(input[:ip], ::String, context: "#{context}[:ip]")
        Hearth::Validator.validate!(input[:warmup_status], ::String, context: "#{context}[:warmup_status]")
        Hearth::Validator.validate!(input[:warmup_percentage], ::Integer, context: "#{context}[:warmup_percentage]")
        Hearth::Validator.validate!(input[:pool_name], ::String, context: "#{context}[:pool_name]")
      end
    end

    class DedicatedIpList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DedicatedIp.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DeleteConfigurationSetEventDestinationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteConfigurationSetEventDestinationInput, context: context)
        Hearth::Validator.validate!(input[:configuration_set_name], ::String, context: "#{context}[:configuration_set_name]")
        Hearth::Validator.validate!(input[:event_destination_name], ::String, context: "#{context}[:event_destination_name]")
      end
    end

    class DeleteConfigurationSetEventDestinationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteConfigurationSetEventDestinationOutput, context: context)
      end
    end

    class DeleteConfigurationSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteConfigurationSetInput, context: context)
        Hearth::Validator.validate!(input[:configuration_set_name], ::String, context: "#{context}[:configuration_set_name]")
      end
    end

    class DeleteConfigurationSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteConfigurationSetOutput, context: context)
      end
    end

    class DeleteDedicatedIpPoolInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDedicatedIpPoolInput, context: context)
        Hearth::Validator.validate!(input[:pool_name], ::String, context: "#{context}[:pool_name]")
      end
    end

    class DeleteDedicatedIpPoolOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDedicatedIpPoolOutput, context: context)
      end
    end

    class DeleteEmailIdentityInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEmailIdentityInput, context: context)
        Hearth::Validator.validate!(input[:email_identity], ::String, context: "#{context}[:email_identity]")
      end
    end

    class DeleteEmailIdentityOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEmailIdentityOutput, context: context)
      end
    end

    class DeliverabilityTestReport
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeliverabilityTestReport, context: context)
        Hearth::Validator.validate!(input[:report_id], ::String, context: "#{context}[:report_id]")
        Hearth::Validator.validate!(input[:report_name], ::String, context: "#{context}[:report_name]")
        Hearth::Validator.validate!(input[:subject], ::String, context: "#{context}[:subject]")
        Hearth::Validator.validate!(input[:from_email_address], ::String, context: "#{context}[:from_email_address]")
        Hearth::Validator.validate!(input[:create_date], ::Time, context: "#{context}[:create_date]")
        Hearth::Validator.validate!(input[:deliverability_test_status], ::String, context: "#{context}[:deliverability_test_status]")
      end
    end

    class DeliverabilityTestReports
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DeliverabilityTestReport.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DeliveryOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeliveryOptions, context: context)
        Hearth::Validator.validate!(input[:tls_policy], ::String, context: "#{context}[:tls_policy]")
        Hearth::Validator.validate!(input[:sending_pool_name], ::String, context: "#{context}[:sending_pool_name]")
      end
    end

    class Destination
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Destination, context: context)
        EmailAddressList.validate!(input[:to_addresses], context: "#{context}[:to_addresses]") unless input[:to_addresses].nil?
        EmailAddressList.validate!(input[:cc_addresses], context: "#{context}[:cc_addresses]") unless input[:cc_addresses].nil?
        EmailAddressList.validate!(input[:bcc_addresses], context: "#{context}[:bcc_addresses]") unless input[:bcc_addresses].nil?
      end
    end

    class DkimAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DkimAttributes, context: context)
        Hearth::Validator.validate!(input[:signing_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:signing_enabled]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        DnsTokenList.validate!(input[:tokens], context: "#{context}[:tokens]") unless input[:tokens].nil?
      end
    end

    class DnsTokenList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DomainDeliverabilityCampaign
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DomainDeliverabilityCampaign, context: context)
        Hearth::Validator.validate!(input[:campaign_id], ::String, context: "#{context}[:campaign_id]")
        Hearth::Validator.validate!(input[:image_url], ::String, context: "#{context}[:image_url]")
        Hearth::Validator.validate!(input[:subject], ::String, context: "#{context}[:subject]")
        Hearth::Validator.validate!(input[:from_address], ::String, context: "#{context}[:from_address]")
        IpList.validate!(input[:sending_ips], context: "#{context}[:sending_ips]") unless input[:sending_ips].nil?
        Hearth::Validator.validate!(input[:first_seen_date_time], ::Time, context: "#{context}[:first_seen_date_time]")
        Hearth::Validator.validate!(input[:last_seen_date_time], ::Time, context: "#{context}[:last_seen_date_time]")
        Hearth::Validator.validate!(input[:inbox_count], ::Integer, context: "#{context}[:inbox_count]")
        Hearth::Validator.validate!(input[:spam_count], ::Integer, context: "#{context}[:spam_count]")
        Hearth::Validator.validate!(input[:read_rate], ::Float, context: "#{context}[:read_rate]")
        Hearth::Validator.validate!(input[:delete_rate], ::Float, context: "#{context}[:delete_rate]")
        Hearth::Validator.validate!(input[:read_delete_rate], ::Float, context: "#{context}[:read_delete_rate]")
        Hearth::Validator.validate!(input[:projected_volume], ::Integer, context: "#{context}[:projected_volume]")
        Esps.validate!(input[:esps], context: "#{context}[:esps]") unless input[:esps].nil?
      end
    end

    class DomainDeliverabilityCampaignList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DomainDeliverabilityCampaign.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DomainDeliverabilityTrackingOption
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DomainDeliverabilityTrackingOption, context: context)
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        Hearth::Validator.validate!(input[:subscription_start_date], ::Time, context: "#{context}[:subscription_start_date]")
        InboxPlacementTrackingOption.validate!(input[:inbox_placement_tracking_option], context: "#{context}[:inbox_placement_tracking_option]") unless input[:inbox_placement_tracking_option].nil?
      end
    end

    class DomainDeliverabilityTrackingOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DomainDeliverabilityTrackingOption.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DomainIspPlacement
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DomainIspPlacement, context: context)
        Hearth::Validator.validate!(input[:isp_name], ::String, context: "#{context}[:isp_name]")
        Hearth::Validator.validate!(input[:inbox_raw_count], ::Integer, context: "#{context}[:inbox_raw_count]")
        Hearth::Validator.validate!(input[:spam_raw_count], ::Integer, context: "#{context}[:spam_raw_count]")
        Hearth::Validator.validate!(input[:inbox_percentage], ::Float, context: "#{context}[:inbox_percentage]")
        Hearth::Validator.validate!(input[:spam_percentage], ::Float, context: "#{context}[:spam_percentage]")
      end
    end

    class DomainIspPlacements
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DomainIspPlacement.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EmailAddressList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class EmailContent
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EmailContent, context: context)
        Message.validate!(input[:simple], context: "#{context}[:simple]") unless input[:simple].nil?
        RawMessage.validate!(input[:raw], context: "#{context}[:raw]") unless input[:raw].nil?
        Template.validate!(input[:template], context: "#{context}[:template]") unless input[:template].nil?
      end
    end

    class Esps
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class EventDestination
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EventDestination, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        EventTypes.validate!(input[:matching_event_types], context: "#{context}[:matching_event_types]") unless input[:matching_event_types].nil?
        KinesisFirehoseDestination.validate!(input[:kinesis_firehose_destination], context: "#{context}[:kinesis_firehose_destination]") unless input[:kinesis_firehose_destination].nil?
        CloudWatchDestination.validate!(input[:cloud_watch_destination], context: "#{context}[:cloud_watch_destination]") unless input[:cloud_watch_destination].nil?
        SnsDestination.validate!(input[:sns_destination], context: "#{context}[:sns_destination]") unless input[:sns_destination].nil?
        PinpointDestination.validate!(input[:pinpoint_destination], context: "#{context}[:pinpoint_destination]") unless input[:pinpoint_destination].nil?
      end
    end

    class EventDestinationDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EventDestinationDefinition, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        EventTypes.validate!(input[:matching_event_types], context: "#{context}[:matching_event_types]") unless input[:matching_event_types].nil?
        KinesisFirehoseDestination.validate!(input[:kinesis_firehose_destination], context: "#{context}[:kinesis_firehose_destination]") unless input[:kinesis_firehose_destination].nil?
        CloudWatchDestination.validate!(input[:cloud_watch_destination], context: "#{context}[:cloud_watch_destination]") unless input[:cloud_watch_destination].nil?
        SnsDestination.validate!(input[:sns_destination], context: "#{context}[:sns_destination]") unless input[:sns_destination].nil?
        PinpointDestination.validate!(input[:pinpoint_destination], context: "#{context}[:pinpoint_destination]") unless input[:pinpoint_destination].nil?
      end
    end

    class EventDestinations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          EventDestination.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EventTypes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class GetAccountInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAccountInput, context: context)
      end
    end

    class GetAccountOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAccountOutput, context: context)
        SendQuota.validate!(input[:send_quota], context: "#{context}[:send_quota]") unless input[:send_quota].nil?
        Hearth::Validator.validate!(input[:sending_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:sending_enabled]")
        Hearth::Validator.validate!(input[:dedicated_ip_auto_warmup_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:dedicated_ip_auto_warmup_enabled]")
        Hearth::Validator.validate!(input[:enforcement_status], ::String, context: "#{context}[:enforcement_status]")
        Hearth::Validator.validate!(input[:production_access_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:production_access_enabled]")
      end
    end

    class GetBlacklistReportsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBlacklistReportsInput, context: context)
        BlacklistItemNames.validate!(input[:blacklist_item_names], context: "#{context}[:blacklist_item_names]") unless input[:blacklist_item_names].nil?
      end
    end

    class GetBlacklistReportsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBlacklistReportsOutput, context: context)
        BlacklistReport.validate!(input[:blacklist_report], context: "#{context}[:blacklist_report]") unless input[:blacklist_report].nil?
      end
    end

    class GetConfigurationSetEventDestinationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetConfigurationSetEventDestinationsInput, context: context)
        Hearth::Validator.validate!(input[:configuration_set_name], ::String, context: "#{context}[:configuration_set_name]")
      end
    end

    class GetConfigurationSetEventDestinationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetConfigurationSetEventDestinationsOutput, context: context)
        EventDestinations.validate!(input[:event_destinations], context: "#{context}[:event_destinations]") unless input[:event_destinations].nil?
      end
    end

    class GetConfigurationSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetConfigurationSetInput, context: context)
        Hearth::Validator.validate!(input[:configuration_set_name], ::String, context: "#{context}[:configuration_set_name]")
      end
    end

    class GetConfigurationSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetConfigurationSetOutput, context: context)
        Hearth::Validator.validate!(input[:configuration_set_name], ::String, context: "#{context}[:configuration_set_name]")
        TrackingOptions.validate!(input[:tracking_options], context: "#{context}[:tracking_options]") unless input[:tracking_options].nil?
        DeliveryOptions.validate!(input[:delivery_options], context: "#{context}[:delivery_options]") unless input[:delivery_options].nil?
        ReputationOptions.validate!(input[:reputation_options], context: "#{context}[:reputation_options]") unless input[:reputation_options].nil?
        SendingOptions.validate!(input[:sending_options], context: "#{context}[:sending_options]") unless input[:sending_options].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class GetDedicatedIpInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDedicatedIpInput, context: context)
        Hearth::Validator.validate!(input[:ip], ::String, context: "#{context}[:ip]")
      end
    end

    class GetDedicatedIpOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDedicatedIpOutput, context: context)
        DedicatedIp.validate!(input[:dedicated_ip], context: "#{context}[:dedicated_ip]") unless input[:dedicated_ip].nil?
      end
    end

    class GetDedicatedIpsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDedicatedIpsInput, context: context)
        Hearth::Validator.validate!(input[:pool_name], ::String, context: "#{context}[:pool_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:page_size], ::Integer, context: "#{context}[:page_size]")
      end
    end

    class GetDedicatedIpsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDedicatedIpsOutput, context: context)
        DedicatedIpList.validate!(input[:dedicated_ips], context: "#{context}[:dedicated_ips]") unless input[:dedicated_ips].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetDeliverabilityDashboardOptionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDeliverabilityDashboardOptionsInput, context: context)
      end
    end

    class GetDeliverabilityDashboardOptionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDeliverabilityDashboardOptionsOutput, context: context)
        Hearth::Validator.validate!(input[:dashboard_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:dashboard_enabled]")
        Hearth::Validator.validate!(input[:subscription_expiry_date], ::Time, context: "#{context}[:subscription_expiry_date]")
        Hearth::Validator.validate!(input[:account_status], ::String, context: "#{context}[:account_status]")
        DomainDeliverabilityTrackingOptions.validate!(input[:active_subscribed_domains], context: "#{context}[:active_subscribed_domains]") unless input[:active_subscribed_domains].nil?
        DomainDeliverabilityTrackingOptions.validate!(input[:pending_expiration_subscribed_domains], context: "#{context}[:pending_expiration_subscribed_domains]") unless input[:pending_expiration_subscribed_domains].nil?
      end
    end

    class GetDeliverabilityTestReportInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDeliverabilityTestReportInput, context: context)
        Hearth::Validator.validate!(input[:report_id], ::String, context: "#{context}[:report_id]")
      end
    end

    class GetDeliverabilityTestReportOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDeliverabilityTestReportOutput, context: context)
        DeliverabilityTestReport.validate!(input[:deliverability_test_report], context: "#{context}[:deliverability_test_report]") unless input[:deliverability_test_report].nil?
        PlacementStatistics.validate!(input[:overall_placement], context: "#{context}[:overall_placement]") unless input[:overall_placement].nil?
        IspPlacements.validate!(input[:isp_placements], context: "#{context}[:isp_placements]") unless input[:isp_placements].nil?
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class GetDomainDeliverabilityCampaignInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDomainDeliverabilityCampaignInput, context: context)
        Hearth::Validator.validate!(input[:campaign_id], ::String, context: "#{context}[:campaign_id]")
      end
    end

    class GetDomainDeliverabilityCampaignOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDomainDeliverabilityCampaignOutput, context: context)
        DomainDeliverabilityCampaign.validate!(input[:domain_deliverability_campaign], context: "#{context}[:domain_deliverability_campaign]") unless input[:domain_deliverability_campaign].nil?
      end
    end

    class GetDomainStatisticsReportInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDomainStatisticsReportInput, context: context)
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        Hearth::Validator.validate!(input[:start_date], ::Time, context: "#{context}[:start_date]")
        Hearth::Validator.validate!(input[:end_date], ::Time, context: "#{context}[:end_date]")
      end
    end

    class GetDomainStatisticsReportOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDomainStatisticsReportOutput, context: context)
        OverallVolume.validate!(input[:overall_volume], context: "#{context}[:overall_volume]") unless input[:overall_volume].nil?
        DailyVolumes.validate!(input[:daily_volumes], context: "#{context}[:daily_volumes]") unless input[:daily_volumes].nil?
      end
    end

    class GetEmailIdentityInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEmailIdentityInput, context: context)
        Hearth::Validator.validate!(input[:email_identity], ::String, context: "#{context}[:email_identity]")
      end
    end

    class GetEmailIdentityOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEmailIdentityOutput, context: context)
        Hearth::Validator.validate!(input[:identity_type], ::String, context: "#{context}[:identity_type]")
        Hearth::Validator.validate!(input[:feedback_forwarding_status], ::TrueClass, ::FalseClass, context: "#{context}[:feedback_forwarding_status]")
        Hearth::Validator.validate!(input[:verified_for_sending_status], ::TrueClass, ::FalseClass, context: "#{context}[:verified_for_sending_status]")
        DkimAttributes.validate!(input[:dkim_attributes], context: "#{context}[:dkim_attributes]") unless input[:dkim_attributes].nil?
        MailFromAttributes.validate!(input[:mail_from_attributes], context: "#{context}[:mail_from_attributes]") unless input[:mail_from_attributes].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class IdentityInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IdentityInfo, context: context)
        Hearth::Validator.validate!(input[:identity_type], ::String, context: "#{context}[:identity_type]")
        Hearth::Validator.validate!(input[:identity_name], ::String, context: "#{context}[:identity_name]")
        Hearth::Validator.validate!(input[:sending_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:sending_enabled]")
      end
    end

    class IdentityInfoList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          IdentityInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InboxPlacementTrackingOption
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InboxPlacementTrackingOption, context: context)
        Hearth::Validator.validate!(input[:global], ::TrueClass, ::FalseClass, context: "#{context}[:global]")
        IspNameList.validate!(input[:tracked_isps], context: "#{context}[:tracked_isps]") unless input[:tracked_isps].nil?
      end
    end

    class IpList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class IspNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class IspPlacement
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IspPlacement, context: context)
        Hearth::Validator.validate!(input[:isp_name], ::String, context: "#{context}[:isp_name]")
        PlacementStatistics.validate!(input[:placement_statistics], context: "#{context}[:placement_statistics]") unless input[:placement_statistics].nil?
      end
    end

    class IspPlacements
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          IspPlacement.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class KinesisFirehoseDestination
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KinesisFirehoseDestination, context: context)
        Hearth::Validator.validate!(input[:iam_role_arn], ::String, context: "#{context}[:iam_role_arn]")
        Hearth::Validator.validate!(input[:delivery_stream_arn], ::String, context: "#{context}[:delivery_stream_arn]")
      end
    end

    class LimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListConfigurationSetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListConfigurationSetsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:page_size], ::Integer, context: "#{context}[:page_size]")
      end
    end

    class ListConfigurationSetsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListConfigurationSetsOutput, context: context)
        ConfigurationSetNameList.validate!(input[:configuration_sets], context: "#{context}[:configuration_sets]") unless input[:configuration_sets].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDedicatedIpPoolsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDedicatedIpPoolsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:page_size], ::Integer, context: "#{context}[:page_size]")
      end
    end

    class ListDedicatedIpPoolsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDedicatedIpPoolsOutput, context: context)
        ListOfDedicatedIpPools.validate!(input[:dedicated_ip_pools], context: "#{context}[:dedicated_ip_pools]") unless input[:dedicated_ip_pools].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDeliverabilityTestReportsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDeliverabilityTestReportsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:page_size], ::Integer, context: "#{context}[:page_size]")
      end
    end

    class ListDeliverabilityTestReportsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDeliverabilityTestReportsOutput, context: context)
        DeliverabilityTestReports.validate!(input[:deliverability_test_reports], context: "#{context}[:deliverability_test_reports]") unless input[:deliverability_test_reports].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDomainDeliverabilityCampaignsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDomainDeliverabilityCampaignsInput, context: context)
        Hearth::Validator.validate!(input[:start_date], ::Time, context: "#{context}[:start_date]")
        Hearth::Validator.validate!(input[:end_date], ::Time, context: "#{context}[:end_date]")
        Hearth::Validator.validate!(input[:subscribed_domain], ::String, context: "#{context}[:subscribed_domain]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:page_size], ::Integer, context: "#{context}[:page_size]")
      end
    end

    class ListDomainDeliverabilityCampaignsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDomainDeliverabilityCampaignsOutput, context: context)
        DomainDeliverabilityCampaignList.validate!(input[:domain_deliverability_campaigns], context: "#{context}[:domain_deliverability_campaigns]") unless input[:domain_deliverability_campaigns].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListEmailIdentitiesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEmailIdentitiesInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:page_size], ::Integer, context: "#{context}[:page_size]")
      end
    end

    class ListEmailIdentitiesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEmailIdentitiesOutput, context: context)
        IdentityInfoList.validate!(input[:email_identities], context: "#{context}[:email_identities]") unless input[:email_identities].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListOfDedicatedIpPools
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
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
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class MailFromAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MailFromAttributes, context: context)
        Hearth::Validator.validate!(input[:mail_from_domain], ::String, context: "#{context}[:mail_from_domain]")
        Hearth::Validator.validate!(input[:mail_from_domain_status], ::String, context: "#{context}[:mail_from_domain_status]")
        Hearth::Validator.validate!(input[:behavior_on_mx_failure], ::String, context: "#{context}[:behavior_on_mx_failure]")
      end
    end

    class MailFromDomainNotVerifiedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MailFromDomainNotVerifiedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Message
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Message, context: context)
        Content.validate!(input[:subject], context: "#{context}[:subject]") unless input[:subject].nil?
        Body.validate!(input[:body], context: "#{context}[:body]") unless input[:body].nil?
      end
    end

    class MessageRejected
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MessageRejected, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class MessageTag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MessageTag, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class MessageTagList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MessageTag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class NotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class OverallVolume
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OverallVolume, context: context)
        VolumeStatistics.validate!(input[:volume_statistics], context: "#{context}[:volume_statistics]") unless input[:volume_statistics].nil?
        Hearth::Validator.validate!(input[:read_rate_percent], ::Float, context: "#{context}[:read_rate_percent]")
        DomainIspPlacements.validate!(input[:domain_isp_placements], context: "#{context}[:domain_isp_placements]") unless input[:domain_isp_placements].nil?
      end
    end

    class PinpointDestination
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PinpointDestination, context: context)
        Hearth::Validator.validate!(input[:application_arn], ::String, context: "#{context}[:application_arn]")
      end
    end

    class PlacementStatistics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PlacementStatistics, context: context)
        Hearth::Validator.validate!(input[:inbox_percentage], ::Float, context: "#{context}[:inbox_percentage]")
        Hearth::Validator.validate!(input[:spam_percentage], ::Float, context: "#{context}[:spam_percentage]")
        Hearth::Validator.validate!(input[:missing_percentage], ::Float, context: "#{context}[:missing_percentage]")
        Hearth::Validator.validate!(input[:spf_percentage], ::Float, context: "#{context}[:spf_percentage]")
        Hearth::Validator.validate!(input[:dkim_percentage], ::Float, context: "#{context}[:dkim_percentage]")
      end
    end

    class PutAccountDedicatedIpWarmupAttributesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutAccountDedicatedIpWarmupAttributesInput, context: context)
        Hearth::Validator.validate!(input[:auto_warmup_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:auto_warmup_enabled]")
      end
    end

    class PutAccountDedicatedIpWarmupAttributesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutAccountDedicatedIpWarmupAttributesOutput, context: context)
      end
    end

    class PutAccountSendingAttributesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutAccountSendingAttributesInput, context: context)
        Hearth::Validator.validate!(input[:sending_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:sending_enabled]")
      end
    end

    class PutAccountSendingAttributesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutAccountSendingAttributesOutput, context: context)
      end
    end

    class PutConfigurationSetDeliveryOptionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutConfigurationSetDeliveryOptionsInput, context: context)
        Hearth::Validator.validate!(input[:configuration_set_name], ::String, context: "#{context}[:configuration_set_name]")
        Hearth::Validator.validate!(input[:tls_policy], ::String, context: "#{context}[:tls_policy]")
        Hearth::Validator.validate!(input[:sending_pool_name], ::String, context: "#{context}[:sending_pool_name]")
      end
    end

    class PutConfigurationSetDeliveryOptionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutConfigurationSetDeliveryOptionsOutput, context: context)
      end
    end

    class PutConfigurationSetReputationOptionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutConfigurationSetReputationOptionsInput, context: context)
        Hearth::Validator.validate!(input[:configuration_set_name], ::String, context: "#{context}[:configuration_set_name]")
        Hearth::Validator.validate!(input[:reputation_metrics_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:reputation_metrics_enabled]")
      end
    end

    class PutConfigurationSetReputationOptionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutConfigurationSetReputationOptionsOutput, context: context)
      end
    end

    class PutConfigurationSetSendingOptionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutConfigurationSetSendingOptionsInput, context: context)
        Hearth::Validator.validate!(input[:configuration_set_name], ::String, context: "#{context}[:configuration_set_name]")
        Hearth::Validator.validate!(input[:sending_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:sending_enabled]")
      end
    end

    class PutConfigurationSetSendingOptionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutConfigurationSetSendingOptionsOutput, context: context)
      end
    end

    class PutConfigurationSetTrackingOptionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutConfigurationSetTrackingOptionsInput, context: context)
        Hearth::Validator.validate!(input[:configuration_set_name], ::String, context: "#{context}[:configuration_set_name]")
        Hearth::Validator.validate!(input[:custom_redirect_domain], ::String, context: "#{context}[:custom_redirect_domain]")
      end
    end

    class PutConfigurationSetTrackingOptionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutConfigurationSetTrackingOptionsOutput, context: context)
      end
    end

    class PutDedicatedIpInPoolInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutDedicatedIpInPoolInput, context: context)
        Hearth::Validator.validate!(input[:ip], ::String, context: "#{context}[:ip]")
        Hearth::Validator.validate!(input[:destination_pool_name], ::String, context: "#{context}[:destination_pool_name]")
      end
    end

    class PutDedicatedIpInPoolOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutDedicatedIpInPoolOutput, context: context)
      end
    end

    class PutDedicatedIpWarmupAttributesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutDedicatedIpWarmupAttributesInput, context: context)
        Hearth::Validator.validate!(input[:ip], ::String, context: "#{context}[:ip]")
        Hearth::Validator.validate!(input[:warmup_percentage], ::Integer, context: "#{context}[:warmup_percentage]")
      end
    end

    class PutDedicatedIpWarmupAttributesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutDedicatedIpWarmupAttributesOutput, context: context)
      end
    end

    class PutDeliverabilityDashboardOptionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutDeliverabilityDashboardOptionInput, context: context)
        Hearth::Validator.validate!(input[:dashboard_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:dashboard_enabled]")
        DomainDeliverabilityTrackingOptions.validate!(input[:subscribed_domains], context: "#{context}[:subscribed_domains]") unless input[:subscribed_domains].nil?
      end
    end

    class PutDeliverabilityDashboardOptionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutDeliverabilityDashboardOptionOutput, context: context)
      end
    end

    class PutEmailIdentityDkimAttributesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutEmailIdentityDkimAttributesInput, context: context)
        Hearth::Validator.validate!(input[:email_identity], ::String, context: "#{context}[:email_identity]")
        Hearth::Validator.validate!(input[:signing_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:signing_enabled]")
      end
    end

    class PutEmailIdentityDkimAttributesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutEmailIdentityDkimAttributesOutput, context: context)
      end
    end

    class PutEmailIdentityFeedbackAttributesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutEmailIdentityFeedbackAttributesInput, context: context)
        Hearth::Validator.validate!(input[:email_identity], ::String, context: "#{context}[:email_identity]")
        Hearth::Validator.validate!(input[:email_forwarding_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:email_forwarding_enabled]")
      end
    end

    class PutEmailIdentityFeedbackAttributesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutEmailIdentityFeedbackAttributesOutput, context: context)
      end
    end

    class PutEmailIdentityMailFromAttributesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutEmailIdentityMailFromAttributesInput, context: context)
        Hearth::Validator.validate!(input[:email_identity], ::String, context: "#{context}[:email_identity]")
        Hearth::Validator.validate!(input[:mail_from_domain], ::String, context: "#{context}[:mail_from_domain]")
        Hearth::Validator.validate!(input[:behavior_on_mx_failure], ::String, context: "#{context}[:behavior_on_mx_failure]")
      end
    end

    class PutEmailIdentityMailFromAttributesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutEmailIdentityMailFromAttributesOutput, context: context)
      end
    end

    class RawMessage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RawMessage, context: context)
        Hearth::Validator.validate!(input[:data], ::String, context: "#{context}[:data]")
      end
    end

    class ReputationOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReputationOptions, context: context)
        Hearth::Validator.validate!(input[:reputation_metrics_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:reputation_metrics_enabled]")
        Hearth::Validator.validate!(input[:last_fresh_start], ::Time, context: "#{context}[:last_fresh_start]")
      end
    end

    class SendEmailInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendEmailInput, context: context)
        Hearth::Validator.validate!(input[:from_email_address], ::String, context: "#{context}[:from_email_address]")
        Destination.validate!(input[:destination], context: "#{context}[:destination]") unless input[:destination].nil?
        EmailAddressList.validate!(input[:reply_to_addresses], context: "#{context}[:reply_to_addresses]") unless input[:reply_to_addresses].nil?
        Hearth::Validator.validate!(input[:feedback_forwarding_email_address], ::String, context: "#{context}[:feedback_forwarding_email_address]")
        EmailContent.validate!(input[:content], context: "#{context}[:content]") unless input[:content].nil?
        MessageTagList.validate!(input[:email_tags], context: "#{context}[:email_tags]") unless input[:email_tags].nil?
        Hearth::Validator.validate!(input[:configuration_set_name], ::String, context: "#{context}[:configuration_set_name]")
      end
    end

    class SendEmailOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendEmailOutput, context: context)
        Hearth::Validator.validate!(input[:message_id], ::String, context: "#{context}[:message_id]")
      end
    end

    class SendQuota
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendQuota, context: context)
        Hearth::Validator.validate!(input[:max24_hour_send], ::Float, context: "#{context}[:max24_hour_send]")
        Hearth::Validator.validate!(input[:max_send_rate], ::Float, context: "#{context}[:max_send_rate]")
        Hearth::Validator.validate!(input[:sent_last24_hours], ::Float, context: "#{context}[:sent_last24_hours]")
      end
    end

    class SendingOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendingOptions, context: context)
        Hearth::Validator.validate!(input[:sending_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:sending_enabled]")
      end
    end

    class SendingPausedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendingPausedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SnsDestination
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SnsDestination, context: context)
        Hearth::Validator.validate!(input[:topic_arn], ::String, context: "#{context}[:topic_arn]")
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

    class TagList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class Template
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Template, context: context)
        Hearth::Validator.validate!(input[:template_arn], ::String, context: "#{context}[:template_arn]")
        Hearth::Validator.validate!(input[:template_data], ::String, context: "#{context}[:template_data]")
      end
    end

    class TooManyRequestsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyRequestsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TrackingOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TrackingOptions, context: context)
        Hearth::Validator.validate!(input[:custom_redirect_domain], ::String, context: "#{context}[:custom_redirect_domain]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateConfigurationSetEventDestinationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateConfigurationSetEventDestinationInput, context: context)
        Hearth::Validator.validate!(input[:configuration_set_name], ::String, context: "#{context}[:configuration_set_name]")
        Hearth::Validator.validate!(input[:event_destination_name], ::String, context: "#{context}[:event_destination_name]")
        EventDestinationDefinition.validate!(input[:event_destination], context: "#{context}[:event_destination]") unless input[:event_destination].nil?
      end
    end

    class UpdateConfigurationSetEventDestinationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateConfigurationSetEventDestinationOutput, context: context)
      end
    end

    class VolumeStatistics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VolumeStatistics, context: context)
        Hearth::Validator.validate!(input[:inbox_raw_count], ::Integer, context: "#{context}[:inbox_raw_count]")
        Hearth::Validator.validate!(input[:spam_raw_count], ::Integer, context: "#{context}[:spam_raw_count]")
        Hearth::Validator.validate!(input[:projected_inbox], ::Integer, context: "#{context}[:projected_inbox]")
        Hearth::Validator.validate!(input[:projected_spam], ::Integer, context: "#{context}[:projected_spam]")
      end
    end

  end
end
