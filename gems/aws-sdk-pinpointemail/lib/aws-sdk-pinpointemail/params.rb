# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::PinpointEmail
  module Params

    module AccountSuspendedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccountSuspendedException, context: context)
        type = Types::AccountSuspendedException.new
        type.message = params[:message]
        type
      end
    end

    module AlreadyExistsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AlreadyExistsException, context: context)
        type = Types::AlreadyExistsException.new
        type.message = params[:message]
        type
      end
    end

    module BadRequestException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BadRequestException, context: context)
        type = Types::BadRequestException.new
        type.message = params[:message]
        type
      end
    end

    module BlacklistEntries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BlacklistEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BlacklistEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BlacklistEntry, context: context)
        type = Types::BlacklistEntry.new
        type.rbl_name = params[:rbl_name]
        type.listing_time = params[:listing_time]
        type.description = params[:description]
        type
      end
    end

    module BlacklistItemNames
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module BlacklistReport
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = BlacklistEntries.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module Body
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Body, context: context)
        type = Types::Body.new
        type.text = Content.build(params[:text], context: "#{context}[:text]") unless params[:text].nil?
        type.html = Content.build(params[:html], context: "#{context}[:html]") unless params[:html].nil?
        type
      end
    end

    module CloudWatchDestination
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CloudWatchDestination, context: context)
        type = Types::CloudWatchDestination.new
        type.dimension_configurations = CloudWatchDimensionConfigurations.build(params[:dimension_configurations], context: "#{context}[:dimension_configurations]") unless params[:dimension_configurations].nil?
        type
      end
    end

    module CloudWatchDimensionConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CloudWatchDimensionConfiguration, context: context)
        type = Types::CloudWatchDimensionConfiguration.new
        type.dimension_name = params[:dimension_name]
        type.dimension_value_source = params[:dimension_value_source]
        type.default_dimension_value = params[:default_dimension_value]
        type
      end
    end

    module CloudWatchDimensionConfigurations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CloudWatchDimensionConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ConcurrentModificationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConcurrentModificationException, context: context)
        type = Types::ConcurrentModificationException.new
        type.message = params[:message]
        type
      end
    end

    module ConfigurationSetNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Content
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Content, context: context)
        type = Types::Content.new
        type.data = params[:data]
        type.charset = params[:charset]
        type
      end
    end

    module CreateConfigurationSetEventDestinationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateConfigurationSetEventDestinationInput, context: context)
        type = Types::CreateConfigurationSetEventDestinationInput.new
        type.configuration_set_name = params[:configuration_set_name]
        type.event_destination_name = params[:event_destination_name]
        type.event_destination = EventDestinationDefinition.build(params[:event_destination], context: "#{context}[:event_destination]") unless params[:event_destination].nil?
        type
      end
    end

    module CreateConfigurationSetEventDestinationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateConfigurationSetEventDestinationOutput, context: context)
        type = Types::CreateConfigurationSetEventDestinationOutput.new
        type
      end
    end

    module CreateConfigurationSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateConfigurationSetInput, context: context)
        type = Types::CreateConfigurationSetInput.new
        type.configuration_set_name = params[:configuration_set_name]
        type.tracking_options = TrackingOptions.build(params[:tracking_options], context: "#{context}[:tracking_options]") unless params[:tracking_options].nil?
        type.delivery_options = DeliveryOptions.build(params[:delivery_options], context: "#{context}[:delivery_options]") unless params[:delivery_options].nil?
        type.reputation_options = ReputationOptions.build(params[:reputation_options], context: "#{context}[:reputation_options]") unless params[:reputation_options].nil?
        type.sending_options = SendingOptions.build(params[:sending_options], context: "#{context}[:sending_options]") unless params[:sending_options].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateConfigurationSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateConfigurationSetOutput, context: context)
        type = Types::CreateConfigurationSetOutput.new
        type
      end
    end

    module CreateDedicatedIpPoolInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDedicatedIpPoolInput, context: context)
        type = Types::CreateDedicatedIpPoolInput.new
        type.pool_name = params[:pool_name]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateDedicatedIpPoolOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDedicatedIpPoolOutput, context: context)
        type = Types::CreateDedicatedIpPoolOutput.new
        type
      end
    end

    module CreateDeliverabilityTestReportInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDeliverabilityTestReportInput, context: context)
        type = Types::CreateDeliverabilityTestReportInput.new
        type.report_name = params[:report_name]
        type.from_email_address = params[:from_email_address]
        type.content = EmailContent.build(params[:content], context: "#{context}[:content]") unless params[:content].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateDeliverabilityTestReportOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDeliverabilityTestReportOutput, context: context)
        type = Types::CreateDeliverabilityTestReportOutput.new
        type.report_id = params[:report_id]
        type.deliverability_test_status = params[:deliverability_test_status]
        type
      end
    end

    module CreateEmailIdentityInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateEmailIdentityInput, context: context)
        type = Types::CreateEmailIdentityInput.new
        type.email_identity = params[:email_identity]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateEmailIdentityOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateEmailIdentityOutput, context: context)
        type = Types::CreateEmailIdentityOutput.new
        type.identity_type = params[:identity_type]
        type.verified_for_sending_status = params[:verified_for_sending_status]
        type.dkim_attributes = DkimAttributes.build(params[:dkim_attributes], context: "#{context}[:dkim_attributes]") unless params[:dkim_attributes].nil?
        type
      end
    end

    module DailyVolume
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DailyVolume, context: context)
        type = Types::DailyVolume.new
        type.start_date = params[:start_date]
        type.volume_statistics = VolumeStatistics.build(params[:volume_statistics], context: "#{context}[:volume_statistics]") unless params[:volume_statistics].nil?
        type.domain_isp_placements = DomainIspPlacements.build(params[:domain_isp_placements], context: "#{context}[:domain_isp_placements]") unless params[:domain_isp_placements].nil?
        type
      end
    end

    module DailyVolumes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DailyVolume.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DedicatedIp
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DedicatedIp, context: context)
        type = Types::DedicatedIp.new
        type.ip = params[:ip]
        type.warmup_status = params[:warmup_status]
        type.warmup_percentage = params[:warmup_percentage]
        type.pool_name = params[:pool_name]
        type
      end
    end

    module DedicatedIpList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DedicatedIp.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DeleteConfigurationSetEventDestinationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteConfigurationSetEventDestinationInput, context: context)
        type = Types::DeleteConfigurationSetEventDestinationInput.new
        type.configuration_set_name = params[:configuration_set_name]
        type.event_destination_name = params[:event_destination_name]
        type
      end
    end

    module DeleteConfigurationSetEventDestinationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteConfigurationSetEventDestinationOutput, context: context)
        type = Types::DeleteConfigurationSetEventDestinationOutput.new
        type
      end
    end

    module DeleteConfigurationSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteConfigurationSetInput, context: context)
        type = Types::DeleteConfigurationSetInput.new
        type.configuration_set_name = params[:configuration_set_name]
        type
      end
    end

    module DeleteConfigurationSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteConfigurationSetOutput, context: context)
        type = Types::DeleteConfigurationSetOutput.new
        type
      end
    end

    module DeleteDedicatedIpPoolInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDedicatedIpPoolInput, context: context)
        type = Types::DeleteDedicatedIpPoolInput.new
        type.pool_name = params[:pool_name]
        type
      end
    end

    module DeleteDedicatedIpPoolOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDedicatedIpPoolOutput, context: context)
        type = Types::DeleteDedicatedIpPoolOutput.new
        type
      end
    end

    module DeleteEmailIdentityInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEmailIdentityInput, context: context)
        type = Types::DeleteEmailIdentityInput.new
        type.email_identity = params[:email_identity]
        type
      end
    end

    module DeleteEmailIdentityOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEmailIdentityOutput, context: context)
        type = Types::DeleteEmailIdentityOutput.new
        type
      end
    end

    module DeliverabilityTestReport
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeliverabilityTestReport, context: context)
        type = Types::DeliverabilityTestReport.new
        type.report_id = params[:report_id]
        type.report_name = params[:report_name]
        type.subject = params[:subject]
        type.from_email_address = params[:from_email_address]
        type.create_date = params[:create_date]
        type.deliverability_test_status = params[:deliverability_test_status]
        type
      end
    end

    module DeliverabilityTestReports
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DeliverabilityTestReport.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DeliveryOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeliveryOptions, context: context)
        type = Types::DeliveryOptions.new
        type.tls_policy = params[:tls_policy]
        type.sending_pool_name = params[:sending_pool_name]
        type
      end
    end

    module Destination
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Destination, context: context)
        type = Types::Destination.new
        type.to_addresses = EmailAddressList.build(params[:to_addresses], context: "#{context}[:to_addresses]") unless params[:to_addresses].nil?
        type.cc_addresses = EmailAddressList.build(params[:cc_addresses], context: "#{context}[:cc_addresses]") unless params[:cc_addresses].nil?
        type.bcc_addresses = EmailAddressList.build(params[:bcc_addresses], context: "#{context}[:bcc_addresses]") unless params[:bcc_addresses].nil?
        type
      end
    end

    module DkimAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DkimAttributes, context: context)
        type = Types::DkimAttributes.new
        type.signing_enabled = params[:signing_enabled]
        type.status = params[:status]
        type.tokens = DnsTokenList.build(params[:tokens], context: "#{context}[:tokens]") unless params[:tokens].nil?
        type
      end
    end

    module DnsTokenList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module DomainDeliverabilityCampaign
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DomainDeliverabilityCampaign, context: context)
        type = Types::DomainDeliverabilityCampaign.new
        type.campaign_id = params[:campaign_id]
        type.image_url = params[:image_url]
        type.subject = params[:subject]
        type.from_address = params[:from_address]
        type.sending_ips = IpList.build(params[:sending_ips], context: "#{context}[:sending_ips]") unless params[:sending_ips].nil?
        type.first_seen_date_time = params[:first_seen_date_time]
        type.last_seen_date_time = params[:last_seen_date_time]
        type.inbox_count = params[:inbox_count]
        type.spam_count = params[:spam_count]
        type.read_rate = params[:read_rate]
        type.delete_rate = params[:delete_rate]
        type.read_delete_rate = params[:read_delete_rate]
        type.projected_volume = params[:projected_volume]
        type.esps = Esps.build(params[:esps], context: "#{context}[:esps]") unless params[:esps].nil?
        type
      end
    end

    module DomainDeliverabilityCampaignList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DomainDeliverabilityCampaign.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DomainDeliverabilityTrackingOption
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DomainDeliverabilityTrackingOption, context: context)
        type = Types::DomainDeliverabilityTrackingOption.new
        type.domain = params[:domain]
        type.subscription_start_date = params[:subscription_start_date]
        type.inbox_placement_tracking_option = InboxPlacementTrackingOption.build(params[:inbox_placement_tracking_option], context: "#{context}[:inbox_placement_tracking_option]") unless params[:inbox_placement_tracking_option].nil?
        type
      end
    end

    module DomainDeliverabilityTrackingOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DomainDeliverabilityTrackingOption.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DomainIspPlacement
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DomainIspPlacement, context: context)
        type = Types::DomainIspPlacement.new
        type.isp_name = params[:isp_name]
        type.inbox_raw_count = params[:inbox_raw_count]
        type.spam_raw_count = params[:spam_raw_count]
        type.inbox_percentage = params[:inbox_percentage]
        type.spam_percentage = params[:spam_percentage]
        type
      end
    end

    module DomainIspPlacements
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DomainIspPlacement.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EmailAddressList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module EmailContent
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EmailContent, context: context)
        type = Types::EmailContent.new
        type.simple = Message.build(params[:simple], context: "#{context}[:simple]") unless params[:simple].nil?
        type.raw = RawMessage.build(params[:raw], context: "#{context}[:raw]") unless params[:raw].nil?
        type.template = Template.build(params[:template], context: "#{context}[:template]") unless params[:template].nil?
        type
      end
    end

    module Esps
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module EventDestination
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EventDestination, context: context)
        type = Types::EventDestination.new
        type.name = params[:name]
        type.enabled = params[:enabled]
        type.matching_event_types = EventTypes.build(params[:matching_event_types], context: "#{context}[:matching_event_types]") unless params[:matching_event_types].nil?
        type.kinesis_firehose_destination = KinesisFirehoseDestination.build(params[:kinesis_firehose_destination], context: "#{context}[:kinesis_firehose_destination]") unless params[:kinesis_firehose_destination].nil?
        type.cloud_watch_destination = CloudWatchDestination.build(params[:cloud_watch_destination], context: "#{context}[:cloud_watch_destination]") unless params[:cloud_watch_destination].nil?
        type.sns_destination = SnsDestination.build(params[:sns_destination], context: "#{context}[:sns_destination]") unless params[:sns_destination].nil?
        type.pinpoint_destination = PinpointDestination.build(params[:pinpoint_destination], context: "#{context}[:pinpoint_destination]") unless params[:pinpoint_destination].nil?
        type
      end
    end

    module EventDestinationDefinition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EventDestinationDefinition, context: context)
        type = Types::EventDestinationDefinition.new
        type.enabled = params[:enabled]
        type.matching_event_types = EventTypes.build(params[:matching_event_types], context: "#{context}[:matching_event_types]") unless params[:matching_event_types].nil?
        type.kinesis_firehose_destination = KinesisFirehoseDestination.build(params[:kinesis_firehose_destination], context: "#{context}[:kinesis_firehose_destination]") unless params[:kinesis_firehose_destination].nil?
        type.cloud_watch_destination = CloudWatchDestination.build(params[:cloud_watch_destination], context: "#{context}[:cloud_watch_destination]") unless params[:cloud_watch_destination].nil?
        type.sns_destination = SnsDestination.build(params[:sns_destination], context: "#{context}[:sns_destination]") unless params[:sns_destination].nil?
        type.pinpoint_destination = PinpointDestination.build(params[:pinpoint_destination], context: "#{context}[:pinpoint_destination]") unless params[:pinpoint_destination].nil?
        type
      end
    end

    module EventDestinations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EventDestination.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EventTypes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module GetAccountInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAccountInput, context: context)
        type = Types::GetAccountInput.new
        type
      end
    end

    module GetAccountOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAccountOutput, context: context)
        type = Types::GetAccountOutput.new
        type.send_quota = SendQuota.build(params[:send_quota], context: "#{context}[:send_quota]") unless params[:send_quota].nil?
        type.sending_enabled = params[:sending_enabled]
        type.dedicated_ip_auto_warmup_enabled = params[:dedicated_ip_auto_warmup_enabled]
        type.enforcement_status = params[:enforcement_status]
        type.production_access_enabled = params[:production_access_enabled]
        type
      end
    end

    module GetBlacklistReportsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBlacklistReportsInput, context: context)
        type = Types::GetBlacklistReportsInput.new
        type.blacklist_item_names = BlacklistItemNames.build(params[:blacklist_item_names], context: "#{context}[:blacklist_item_names]") unless params[:blacklist_item_names].nil?
        type
      end
    end

    module GetBlacklistReportsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBlacklistReportsOutput, context: context)
        type = Types::GetBlacklistReportsOutput.new
        type.blacklist_report = BlacklistReport.build(params[:blacklist_report], context: "#{context}[:blacklist_report]") unless params[:blacklist_report].nil?
        type
      end
    end

    module GetConfigurationSetEventDestinationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetConfigurationSetEventDestinationsInput, context: context)
        type = Types::GetConfigurationSetEventDestinationsInput.new
        type.configuration_set_name = params[:configuration_set_name]
        type
      end
    end

    module GetConfigurationSetEventDestinationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetConfigurationSetEventDestinationsOutput, context: context)
        type = Types::GetConfigurationSetEventDestinationsOutput.new
        type.event_destinations = EventDestinations.build(params[:event_destinations], context: "#{context}[:event_destinations]") unless params[:event_destinations].nil?
        type
      end
    end

    module GetConfigurationSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetConfigurationSetInput, context: context)
        type = Types::GetConfigurationSetInput.new
        type.configuration_set_name = params[:configuration_set_name]
        type
      end
    end

    module GetConfigurationSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetConfigurationSetOutput, context: context)
        type = Types::GetConfigurationSetOutput.new
        type.configuration_set_name = params[:configuration_set_name]
        type.tracking_options = TrackingOptions.build(params[:tracking_options], context: "#{context}[:tracking_options]") unless params[:tracking_options].nil?
        type.delivery_options = DeliveryOptions.build(params[:delivery_options], context: "#{context}[:delivery_options]") unless params[:delivery_options].nil?
        type.reputation_options = ReputationOptions.build(params[:reputation_options], context: "#{context}[:reputation_options]") unless params[:reputation_options].nil?
        type.sending_options = SendingOptions.build(params[:sending_options], context: "#{context}[:sending_options]") unless params[:sending_options].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module GetDedicatedIpInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDedicatedIpInput, context: context)
        type = Types::GetDedicatedIpInput.new
        type.ip = params[:ip]
        type
      end
    end

    module GetDedicatedIpOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDedicatedIpOutput, context: context)
        type = Types::GetDedicatedIpOutput.new
        type.dedicated_ip = DedicatedIp.build(params[:dedicated_ip], context: "#{context}[:dedicated_ip]") unless params[:dedicated_ip].nil?
        type
      end
    end

    module GetDedicatedIpsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDedicatedIpsInput, context: context)
        type = Types::GetDedicatedIpsInput.new
        type.pool_name = params[:pool_name]
        type.next_token = params[:next_token]
        type.page_size = params[:page_size]
        type
      end
    end

    module GetDedicatedIpsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDedicatedIpsOutput, context: context)
        type = Types::GetDedicatedIpsOutput.new
        type.dedicated_ips = DedicatedIpList.build(params[:dedicated_ips], context: "#{context}[:dedicated_ips]") unless params[:dedicated_ips].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetDeliverabilityDashboardOptionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDeliverabilityDashboardOptionsInput, context: context)
        type = Types::GetDeliverabilityDashboardOptionsInput.new
        type
      end
    end

    module GetDeliverabilityDashboardOptionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDeliverabilityDashboardOptionsOutput, context: context)
        type = Types::GetDeliverabilityDashboardOptionsOutput.new
        type.dashboard_enabled = params[:dashboard_enabled]
        type.subscription_expiry_date = params[:subscription_expiry_date]
        type.account_status = params[:account_status]
        type.active_subscribed_domains = DomainDeliverabilityTrackingOptions.build(params[:active_subscribed_domains], context: "#{context}[:active_subscribed_domains]") unless params[:active_subscribed_domains].nil?
        type.pending_expiration_subscribed_domains = DomainDeliverabilityTrackingOptions.build(params[:pending_expiration_subscribed_domains], context: "#{context}[:pending_expiration_subscribed_domains]") unless params[:pending_expiration_subscribed_domains].nil?
        type
      end
    end

    module GetDeliverabilityTestReportInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDeliverabilityTestReportInput, context: context)
        type = Types::GetDeliverabilityTestReportInput.new
        type.report_id = params[:report_id]
        type
      end
    end

    module GetDeliverabilityTestReportOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDeliverabilityTestReportOutput, context: context)
        type = Types::GetDeliverabilityTestReportOutput.new
        type.deliverability_test_report = DeliverabilityTestReport.build(params[:deliverability_test_report], context: "#{context}[:deliverability_test_report]") unless params[:deliverability_test_report].nil?
        type.overall_placement = PlacementStatistics.build(params[:overall_placement], context: "#{context}[:overall_placement]") unless params[:overall_placement].nil?
        type.isp_placements = IspPlacements.build(params[:isp_placements], context: "#{context}[:isp_placements]") unless params[:isp_placements].nil?
        type.message = params[:message]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module GetDomainDeliverabilityCampaignInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDomainDeliverabilityCampaignInput, context: context)
        type = Types::GetDomainDeliverabilityCampaignInput.new
        type.campaign_id = params[:campaign_id]
        type
      end
    end

    module GetDomainDeliverabilityCampaignOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDomainDeliverabilityCampaignOutput, context: context)
        type = Types::GetDomainDeliverabilityCampaignOutput.new
        type.domain_deliverability_campaign = DomainDeliverabilityCampaign.build(params[:domain_deliverability_campaign], context: "#{context}[:domain_deliverability_campaign]") unless params[:domain_deliverability_campaign].nil?
        type
      end
    end

    module GetDomainStatisticsReportInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDomainStatisticsReportInput, context: context)
        type = Types::GetDomainStatisticsReportInput.new
        type.domain = params[:domain]
        type.start_date = params[:start_date]
        type.end_date = params[:end_date]
        type
      end
    end

    module GetDomainStatisticsReportOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDomainStatisticsReportOutput, context: context)
        type = Types::GetDomainStatisticsReportOutput.new
        type.overall_volume = OverallVolume.build(params[:overall_volume], context: "#{context}[:overall_volume]") unless params[:overall_volume].nil?
        type.daily_volumes = DailyVolumes.build(params[:daily_volumes], context: "#{context}[:daily_volumes]") unless params[:daily_volumes].nil?
        type
      end
    end

    module GetEmailIdentityInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEmailIdentityInput, context: context)
        type = Types::GetEmailIdentityInput.new
        type.email_identity = params[:email_identity]
        type
      end
    end

    module GetEmailIdentityOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEmailIdentityOutput, context: context)
        type = Types::GetEmailIdentityOutput.new
        type.identity_type = params[:identity_type]
        type.feedback_forwarding_status = params[:feedback_forwarding_status]
        type.verified_for_sending_status = params[:verified_for_sending_status]
        type.dkim_attributes = DkimAttributes.build(params[:dkim_attributes], context: "#{context}[:dkim_attributes]") unless params[:dkim_attributes].nil?
        type.mail_from_attributes = MailFromAttributes.build(params[:mail_from_attributes], context: "#{context}[:mail_from_attributes]") unless params[:mail_from_attributes].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module IdentityInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IdentityInfo, context: context)
        type = Types::IdentityInfo.new
        type.identity_type = params[:identity_type]
        type.identity_name = params[:identity_name]
        type.sending_enabled = params[:sending_enabled]
        type
      end
    end

    module IdentityInfoList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << IdentityInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InboxPlacementTrackingOption
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InboxPlacementTrackingOption, context: context)
        type = Types::InboxPlacementTrackingOption.new
        type.global = params[:global]
        type.tracked_isps = IspNameList.build(params[:tracked_isps], context: "#{context}[:tracked_isps]") unless params[:tracked_isps].nil?
        type
      end
    end

    module IpList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module IspNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module IspPlacement
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IspPlacement, context: context)
        type = Types::IspPlacement.new
        type.isp_name = params[:isp_name]
        type.placement_statistics = PlacementStatistics.build(params[:placement_statistics], context: "#{context}[:placement_statistics]") unless params[:placement_statistics].nil?
        type
      end
    end

    module IspPlacements
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << IspPlacement.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module KinesisFirehoseDestination
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KinesisFirehoseDestination, context: context)
        type = Types::KinesisFirehoseDestination.new
        type.iam_role_arn = params[:iam_role_arn]
        type.delivery_stream_arn = params[:delivery_stream_arn]
        type
      end
    end

    module LimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LimitExceededException, context: context)
        type = Types::LimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module ListConfigurationSetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListConfigurationSetsInput, context: context)
        type = Types::ListConfigurationSetsInput.new
        type.next_token = params[:next_token]
        type.page_size = params[:page_size]
        type
      end
    end

    module ListConfigurationSetsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListConfigurationSetsOutput, context: context)
        type = Types::ListConfigurationSetsOutput.new
        type.configuration_sets = ConfigurationSetNameList.build(params[:configuration_sets], context: "#{context}[:configuration_sets]") unless params[:configuration_sets].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDedicatedIpPoolsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDedicatedIpPoolsInput, context: context)
        type = Types::ListDedicatedIpPoolsInput.new
        type.next_token = params[:next_token]
        type.page_size = params[:page_size]
        type
      end
    end

    module ListDedicatedIpPoolsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDedicatedIpPoolsOutput, context: context)
        type = Types::ListDedicatedIpPoolsOutput.new
        type.dedicated_ip_pools = ListOfDedicatedIpPools.build(params[:dedicated_ip_pools], context: "#{context}[:dedicated_ip_pools]") unless params[:dedicated_ip_pools].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDeliverabilityTestReportsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDeliverabilityTestReportsInput, context: context)
        type = Types::ListDeliverabilityTestReportsInput.new
        type.next_token = params[:next_token]
        type.page_size = params[:page_size]
        type
      end
    end

    module ListDeliverabilityTestReportsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDeliverabilityTestReportsOutput, context: context)
        type = Types::ListDeliverabilityTestReportsOutput.new
        type.deliverability_test_reports = DeliverabilityTestReports.build(params[:deliverability_test_reports], context: "#{context}[:deliverability_test_reports]") unless params[:deliverability_test_reports].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDomainDeliverabilityCampaignsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDomainDeliverabilityCampaignsInput, context: context)
        type = Types::ListDomainDeliverabilityCampaignsInput.new
        type.start_date = params[:start_date]
        type.end_date = params[:end_date]
        type.subscribed_domain = params[:subscribed_domain]
        type.next_token = params[:next_token]
        type.page_size = params[:page_size]
        type
      end
    end

    module ListDomainDeliverabilityCampaignsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDomainDeliverabilityCampaignsOutput, context: context)
        type = Types::ListDomainDeliverabilityCampaignsOutput.new
        type.domain_deliverability_campaigns = DomainDeliverabilityCampaignList.build(params[:domain_deliverability_campaigns], context: "#{context}[:domain_deliverability_campaigns]") unless params[:domain_deliverability_campaigns].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListEmailIdentitiesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEmailIdentitiesInput, context: context)
        type = Types::ListEmailIdentitiesInput.new
        type.next_token = params[:next_token]
        type.page_size = params[:page_size]
        type
      end
    end

    module ListEmailIdentitiesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEmailIdentitiesOutput, context: context)
        type = Types::ListEmailIdentitiesOutput.new
        type.email_identities = IdentityInfoList.build(params[:email_identities], context: "#{context}[:email_identities]") unless params[:email_identities].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListOfDedicatedIpPools
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
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
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module MailFromAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MailFromAttributes, context: context)
        type = Types::MailFromAttributes.new
        type.mail_from_domain = params[:mail_from_domain]
        type.mail_from_domain_status = params[:mail_from_domain_status]
        type.behavior_on_mx_failure = params[:behavior_on_mx_failure]
        type
      end
    end

    module MailFromDomainNotVerifiedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MailFromDomainNotVerifiedException, context: context)
        type = Types::MailFromDomainNotVerifiedException.new
        type.message = params[:message]
        type
      end
    end

    module Message
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Message, context: context)
        type = Types::Message.new
        type.subject = Content.build(params[:subject], context: "#{context}[:subject]") unless params[:subject].nil?
        type.body = Body.build(params[:body], context: "#{context}[:body]") unless params[:body].nil?
        type
      end
    end

    module MessageRejected
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MessageRejected, context: context)
        type = Types::MessageRejected.new
        type.message = params[:message]
        type
      end
    end

    module MessageTag
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MessageTag, context: context)
        type = Types::MessageTag.new
        type.name = params[:name]
        type.value = params[:value]
        type
      end
    end

    module MessageTagList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MessageTag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module NotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotFoundException, context: context)
        type = Types::NotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module OverallVolume
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OverallVolume, context: context)
        type = Types::OverallVolume.new
        type.volume_statistics = VolumeStatistics.build(params[:volume_statistics], context: "#{context}[:volume_statistics]") unless params[:volume_statistics].nil?
        type.read_rate_percent = params[:read_rate_percent]
        type.domain_isp_placements = DomainIspPlacements.build(params[:domain_isp_placements], context: "#{context}[:domain_isp_placements]") unless params[:domain_isp_placements].nil?
        type
      end
    end

    module PinpointDestination
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PinpointDestination, context: context)
        type = Types::PinpointDestination.new
        type.application_arn = params[:application_arn]
        type
      end
    end

    module PlacementStatistics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PlacementStatistics, context: context)
        type = Types::PlacementStatistics.new
        type.inbox_percentage = params[:inbox_percentage]
        type.spam_percentage = params[:spam_percentage]
        type.missing_percentage = params[:missing_percentage]
        type.spf_percentage = params[:spf_percentage]
        type.dkim_percentage = params[:dkim_percentage]
        type
      end
    end

    module PutAccountDedicatedIpWarmupAttributesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutAccountDedicatedIpWarmupAttributesInput, context: context)
        type = Types::PutAccountDedicatedIpWarmupAttributesInput.new
        type.auto_warmup_enabled = params[:auto_warmup_enabled]
        type
      end
    end

    module PutAccountDedicatedIpWarmupAttributesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutAccountDedicatedIpWarmupAttributesOutput, context: context)
        type = Types::PutAccountDedicatedIpWarmupAttributesOutput.new
        type
      end
    end

    module PutAccountSendingAttributesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutAccountSendingAttributesInput, context: context)
        type = Types::PutAccountSendingAttributesInput.new
        type.sending_enabled = params[:sending_enabled]
        type
      end
    end

    module PutAccountSendingAttributesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutAccountSendingAttributesOutput, context: context)
        type = Types::PutAccountSendingAttributesOutput.new
        type
      end
    end

    module PutConfigurationSetDeliveryOptionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutConfigurationSetDeliveryOptionsInput, context: context)
        type = Types::PutConfigurationSetDeliveryOptionsInput.new
        type.configuration_set_name = params[:configuration_set_name]
        type.tls_policy = params[:tls_policy]
        type.sending_pool_name = params[:sending_pool_name]
        type
      end
    end

    module PutConfigurationSetDeliveryOptionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutConfigurationSetDeliveryOptionsOutput, context: context)
        type = Types::PutConfigurationSetDeliveryOptionsOutput.new
        type
      end
    end

    module PutConfigurationSetReputationOptionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutConfigurationSetReputationOptionsInput, context: context)
        type = Types::PutConfigurationSetReputationOptionsInput.new
        type.configuration_set_name = params[:configuration_set_name]
        type.reputation_metrics_enabled = params[:reputation_metrics_enabled]
        type
      end
    end

    module PutConfigurationSetReputationOptionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutConfigurationSetReputationOptionsOutput, context: context)
        type = Types::PutConfigurationSetReputationOptionsOutput.new
        type
      end
    end

    module PutConfigurationSetSendingOptionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutConfigurationSetSendingOptionsInput, context: context)
        type = Types::PutConfigurationSetSendingOptionsInput.new
        type.configuration_set_name = params[:configuration_set_name]
        type.sending_enabled = params[:sending_enabled]
        type
      end
    end

    module PutConfigurationSetSendingOptionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutConfigurationSetSendingOptionsOutput, context: context)
        type = Types::PutConfigurationSetSendingOptionsOutput.new
        type
      end
    end

    module PutConfigurationSetTrackingOptionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutConfigurationSetTrackingOptionsInput, context: context)
        type = Types::PutConfigurationSetTrackingOptionsInput.new
        type.configuration_set_name = params[:configuration_set_name]
        type.custom_redirect_domain = params[:custom_redirect_domain]
        type
      end
    end

    module PutConfigurationSetTrackingOptionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutConfigurationSetTrackingOptionsOutput, context: context)
        type = Types::PutConfigurationSetTrackingOptionsOutput.new
        type
      end
    end

    module PutDedicatedIpInPoolInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutDedicatedIpInPoolInput, context: context)
        type = Types::PutDedicatedIpInPoolInput.new
        type.ip = params[:ip]
        type.destination_pool_name = params[:destination_pool_name]
        type
      end
    end

    module PutDedicatedIpInPoolOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutDedicatedIpInPoolOutput, context: context)
        type = Types::PutDedicatedIpInPoolOutput.new
        type
      end
    end

    module PutDedicatedIpWarmupAttributesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutDedicatedIpWarmupAttributesInput, context: context)
        type = Types::PutDedicatedIpWarmupAttributesInput.new
        type.ip = params[:ip]
        type.warmup_percentage = params[:warmup_percentage]
        type
      end
    end

    module PutDedicatedIpWarmupAttributesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutDedicatedIpWarmupAttributesOutput, context: context)
        type = Types::PutDedicatedIpWarmupAttributesOutput.new
        type
      end
    end

    module PutDeliverabilityDashboardOptionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutDeliverabilityDashboardOptionInput, context: context)
        type = Types::PutDeliverabilityDashboardOptionInput.new
        type.dashboard_enabled = params[:dashboard_enabled]
        type.subscribed_domains = DomainDeliverabilityTrackingOptions.build(params[:subscribed_domains], context: "#{context}[:subscribed_domains]") unless params[:subscribed_domains].nil?
        type
      end
    end

    module PutDeliverabilityDashboardOptionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutDeliverabilityDashboardOptionOutput, context: context)
        type = Types::PutDeliverabilityDashboardOptionOutput.new
        type
      end
    end

    module PutEmailIdentityDkimAttributesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutEmailIdentityDkimAttributesInput, context: context)
        type = Types::PutEmailIdentityDkimAttributesInput.new
        type.email_identity = params[:email_identity]
        type.signing_enabled = params[:signing_enabled]
        type
      end
    end

    module PutEmailIdentityDkimAttributesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutEmailIdentityDkimAttributesOutput, context: context)
        type = Types::PutEmailIdentityDkimAttributesOutput.new
        type
      end
    end

    module PutEmailIdentityFeedbackAttributesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutEmailIdentityFeedbackAttributesInput, context: context)
        type = Types::PutEmailIdentityFeedbackAttributesInput.new
        type.email_identity = params[:email_identity]
        type.email_forwarding_enabled = params[:email_forwarding_enabled]
        type
      end
    end

    module PutEmailIdentityFeedbackAttributesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutEmailIdentityFeedbackAttributesOutput, context: context)
        type = Types::PutEmailIdentityFeedbackAttributesOutput.new
        type
      end
    end

    module PutEmailIdentityMailFromAttributesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutEmailIdentityMailFromAttributesInput, context: context)
        type = Types::PutEmailIdentityMailFromAttributesInput.new
        type.email_identity = params[:email_identity]
        type.mail_from_domain = params[:mail_from_domain]
        type.behavior_on_mx_failure = params[:behavior_on_mx_failure]
        type
      end
    end

    module PutEmailIdentityMailFromAttributesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutEmailIdentityMailFromAttributesOutput, context: context)
        type = Types::PutEmailIdentityMailFromAttributesOutput.new
        type
      end
    end

    module RawMessage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RawMessage, context: context)
        type = Types::RawMessage.new
        type.data = params[:data]
        type
      end
    end

    module ReputationOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReputationOptions, context: context)
        type = Types::ReputationOptions.new
        type.reputation_metrics_enabled = params[:reputation_metrics_enabled]
        type.last_fresh_start = params[:last_fresh_start]
        type
      end
    end

    module SendEmailInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendEmailInput, context: context)
        type = Types::SendEmailInput.new
        type.from_email_address = params[:from_email_address]
        type.destination = Destination.build(params[:destination], context: "#{context}[:destination]") unless params[:destination].nil?
        type.reply_to_addresses = EmailAddressList.build(params[:reply_to_addresses], context: "#{context}[:reply_to_addresses]") unless params[:reply_to_addresses].nil?
        type.feedback_forwarding_email_address = params[:feedback_forwarding_email_address]
        type.content = EmailContent.build(params[:content], context: "#{context}[:content]") unless params[:content].nil?
        type.email_tags = MessageTagList.build(params[:email_tags], context: "#{context}[:email_tags]") unless params[:email_tags].nil?
        type.configuration_set_name = params[:configuration_set_name]
        type
      end
    end

    module SendEmailOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendEmailOutput, context: context)
        type = Types::SendEmailOutput.new
        type.message_id = params[:message_id]
        type
      end
    end

    module SendQuota
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendQuota, context: context)
        type = Types::SendQuota.new
        type.max24_hour_send = params[:max24_hour_send]
        type.max_send_rate = params[:max_send_rate]
        type.sent_last24_hours = params[:sent_last24_hours]
        type
      end
    end

    module SendingOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendingOptions, context: context)
        type = Types::SendingOptions.new
        type.sending_enabled = params[:sending_enabled]
        type
      end
    end

    module SendingPausedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendingPausedException, context: context)
        type = Types::SendingPausedException.new
        type.message = params[:message]
        type
      end
    end

    module SnsDestination
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SnsDestination, context: context)
        type = Types::SnsDestination.new
        type.topic_arn = params[:topic_arn]
        type
      end
    end

    module Tag
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Tag, context: context)
        type = Types::Tag.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module TagKeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
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

    module Template
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Template, context: context)
        type = Types::Template.new
        type.template_arn = params[:template_arn]
        type.template_data = params[:template_data]
        type
      end
    end

    module TooManyRequestsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyRequestsException, context: context)
        type = Types::TooManyRequestsException.new
        type.message = params[:message]
        type
      end
    end

    module TrackingOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TrackingOptions, context: context)
        type = Types::TrackingOptions.new
        type.custom_redirect_domain = params[:custom_redirect_domain]
        type
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = TagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
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

    module UpdateConfigurationSetEventDestinationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateConfigurationSetEventDestinationInput, context: context)
        type = Types::UpdateConfigurationSetEventDestinationInput.new
        type.configuration_set_name = params[:configuration_set_name]
        type.event_destination_name = params[:event_destination_name]
        type.event_destination = EventDestinationDefinition.build(params[:event_destination], context: "#{context}[:event_destination]") unless params[:event_destination].nil?
        type
      end
    end

    module UpdateConfigurationSetEventDestinationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateConfigurationSetEventDestinationOutput, context: context)
        type = Types::UpdateConfigurationSetEventDestinationOutput.new
        type
      end
    end

    module VolumeStatistics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VolumeStatistics, context: context)
        type = Types::VolumeStatistics.new
        type.inbox_raw_count = params[:inbox_raw_count]
        type.spam_raw_count = params[:spam_raw_count]
        type.projected_inbox = params[:projected_inbox]
        type.projected_spam = params[:projected_spam]
        type
      end
    end

  end
end
