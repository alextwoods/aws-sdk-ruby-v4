# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::PinpointEmail
  module Parsers

    # Operation Parser for CreateConfigurationSet
    class CreateConfigurationSet
      def self.parse(http_resp)
        data = Types::CreateConfigurationSetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for TooManyRequestsException
    class TooManyRequestsException
      def self.parse(http_resp)
        data = Types::TooManyRequestsException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for AlreadyExistsException
    class AlreadyExistsException
      def self.parse(http_resp)
        data = Types::AlreadyExistsException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for LimitExceededException
    class LimitExceededException
      def self.parse(http_resp)
        data = Types::LimitExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for NotFoundException
    class NotFoundException
      def self.parse(http_resp)
        data = Types::NotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ConcurrentModificationException
    class ConcurrentModificationException
      def self.parse(http_resp)
        data = Types::ConcurrentModificationException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for BadRequestException
    class BadRequestException
      def self.parse(http_resp)
        data = Types::BadRequestException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for CreateConfigurationSetEventDestination
    class CreateConfigurationSetEventDestination
      def self.parse(http_resp)
        data = Types::CreateConfigurationSetEventDestinationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for CreateDedicatedIpPool
    class CreateDedicatedIpPool
      def self.parse(http_resp)
        data = Types::CreateDedicatedIpPoolOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for CreateDeliverabilityTestReport
    class CreateDeliverabilityTestReport
      def self.parse(http_resp)
        data = Types::CreateDeliverabilityTestReportOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.report_id = map['ReportId']
        data.deliverability_test_status = map['DeliverabilityTestStatus']
        data
      end
    end

    # Error Parser for SendingPausedException
    class SendingPausedException
      def self.parse(http_resp)
        data = Types::SendingPausedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for MessageRejected
    class MessageRejected
      def self.parse(http_resp)
        data = Types::MessageRejected.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for AccountSuspendedException
    class AccountSuspendedException
      def self.parse(http_resp)
        data = Types::AccountSuspendedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for MailFromDomainNotVerifiedException
    class MailFromDomainNotVerifiedException
      def self.parse(http_resp)
        data = Types::MailFromDomainNotVerifiedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for CreateEmailIdentity
    class CreateEmailIdentity
      def self.parse(http_resp)
        data = Types::CreateEmailIdentityOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.identity_type = map['IdentityType']
        data.verified_for_sending_status = map['VerifiedForSendingStatus']
        data.dkim_attributes = (DkimAttributes.parse(map['DkimAttributes']) unless map['DkimAttributes'].nil?)
        data
      end
    end

    class DkimAttributes
      def self.parse(map)
        data = Types::DkimAttributes.new
        data.signing_enabled = map['SigningEnabled']
        data.status = map['Status']
        data.tokens = (DnsTokenList.parse(map['Tokens']) unless map['Tokens'].nil?)
        return data
      end
    end

    class DnsTokenList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for DeleteConfigurationSet
    class DeleteConfigurationSet
      def self.parse(http_resp)
        data = Types::DeleteConfigurationSetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteConfigurationSetEventDestination
    class DeleteConfigurationSetEventDestination
      def self.parse(http_resp)
        data = Types::DeleteConfigurationSetEventDestinationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteDedicatedIpPool
    class DeleteDedicatedIpPool
      def self.parse(http_resp)
        data = Types::DeleteDedicatedIpPoolOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteEmailIdentity
    class DeleteEmailIdentity
      def self.parse(http_resp)
        data = Types::DeleteEmailIdentityOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for GetAccount
    class GetAccount
      def self.parse(http_resp)
        data = Types::GetAccountOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.send_quota = (SendQuota.parse(map['SendQuota']) unless map['SendQuota'].nil?)
        data.sending_enabled = map['SendingEnabled']
        data.dedicated_ip_auto_warmup_enabled = map['DedicatedIpAutoWarmupEnabled']
        data.enforcement_status = map['EnforcementStatus']
        data.production_access_enabled = map['ProductionAccessEnabled']
        data
      end
    end

    class SendQuota
      def self.parse(map)
        data = Types::SendQuota.new
        data.max24_hour_send = Hearth::NumberHelper.deserialize(map['Max24HourSend'])
        data.max_send_rate = Hearth::NumberHelper.deserialize(map['MaxSendRate'])
        data.sent_last24_hours = Hearth::NumberHelper.deserialize(map['SentLast24Hours'])
        return data
      end
    end

    # Operation Parser for GetBlacklistReports
    class GetBlacklistReports
      def self.parse(http_resp)
        data = Types::GetBlacklistReportsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.blacklist_report = (BlacklistReport.parse(map['BlacklistReport']) unless map['BlacklistReport'].nil?)
        data
      end
    end

    class BlacklistReport
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = BlacklistEntries.parse(value) unless value.nil?
        end
        data
      end
    end

    class BlacklistEntries
      def self.parse(list)
        data = []
        list.map do |value|
          data << BlacklistEntry.parse(value) unless value.nil?
        end
        data
      end
    end

    class BlacklistEntry
      def self.parse(map)
        data = Types::BlacklistEntry.new
        data.rbl_name = map['RblName']
        data.listing_time = Time.at(map['ListingTime'].to_i) if map['ListingTime']
        data.description = map['Description']
        return data
      end
    end

    # Operation Parser for GetConfigurationSet
    class GetConfigurationSet
      def self.parse(http_resp)
        data = Types::GetConfigurationSetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.configuration_set_name = map['ConfigurationSetName']
        data.tracking_options = (TrackingOptions.parse(map['TrackingOptions']) unless map['TrackingOptions'].nil?)
        data.delivery_options = (DeliveryOptions.parse(map['DeliveryOptions']) unless map['DeliveryOptions'].nil?)
        data.reputation_options = (ReputationOptions.parse(map['ReputationOptions']) unless map['ReputationOptions'].nil?)
        data.sending_options = (SendingOptions.parse(map['SendingOptions']) unless map['SendingOptions'].nil?)
        data.tags = (TagList.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    class TagList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Tag.parse(value) unless value.nil?
        end
        data
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

    class SendingOptions
      def self.parse(map)
        data = Types::SendingOptions.new
        data.sending_enabled = map['SendingEnabled']
        return data
      end
    end

    class ReputationOptions
      def self.parse(map)
        data = Types::ReputationOptions.new
        data.reputation_metrics_enabled = map['ReputationMetricsEnabled']
        data.last_fresh_start = Time.at(map['LastFreshStart'].to_i) if map['LastFreshStart']
        return data
      end
    end

    class DeliveryOptions
      def self.parse(map)
        data = Types::DeliveryOptions.new
        data.tls_policy = map['TlsPolicy']
        data.sending_pool_name = map['SendingPoolName']
        return data
      end
    end

    class TrackingOptions
      def self.parse(map)
        data = Types::TrackingOptions.new
        data.custom_redirect_domain = map['CustomRedirectDomain']
        return data
      end
    end

    # Operation Parser for GetConfigurationSetEventDestinations
    class GetConfigurationSetEventDestinations
      def self.parse(http_resp)
        data = Types::GetConfigurationSetEventDestinationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.event_destinations = (EventDestinations.parse(map['EventDestinations']) unless map['EventDestinations'].nil?)
        data
      end
    end

    class EventDestinations
      def self.parse(list)
        data = []
        list.map do |value|
          data << EventDestination.parse(value) unless value.nil?
        end
        data
      end
    end

    class EventDestination
      def self.parse(map)
        data = Types::EventDestination.new
        data.name = map['Name']
        data.enabled = map['Enabled']
        data.matching_event_types = (EventTypes.parse(map['MatchingEventTypes']) unless map['MatchingEventTypes'].nil?)
        data.kinesis_firehose_destination = (KinesisFirehoseDestination.parse(map['KinesisFirehoseDestination']) unless map['KinesisFirehoseDestination'].nil?)
        data.cloud_watch_destination = (CloudWatchDestination.parse(map['CloudWatchDestination']) unless map['CloudWatchDestination'].nil?)
        data.sns_destination = (SnsDestination.parse(map['SnsDestination']) unless map['SnsDestination'].nil?)
        data.pinpoint_destination = (PinpointDestination.parse(map['PinpointDestination']) unless map['PinpointDestination'].nil?)
        return data
      end
    end

    class PinpointDestination
      def self.parse(map)
        data = Types::PinpointDestination.new
        data.application_arn = map['ApplicationArn']
        return data
      end
    end

    class SnsDestination
      def self.parse(map)
        data = Types::SnsDestination.new
        data.topic_arn = map['TopicArn']
        return data
      end
    end

    class CloudWatchDestination
      def self.parse(map)
        data = Types::CloudWatchDestination.new
        data.dimension_configurations = (CloudWatchDimensionConfigurations.parse(map['DimensionConfigurations']) unless map['DimensionConfigurations'].nil?)
        return data
      end
    end

    class CloudWatchDimensionConfigurations
      def self.parse(list)
        data = []
        list.map do |value|
          data << CloudWatchDimensionConfiguration.parse(value) unless value.nil?
        end
        data
      end
    end

    class CloudWatchDimensionConfiguration
      def self.parse(map)
        data = Types::CloudWatchDimensionConfiguration.new
        data.dimension_name = map['DimensionName']
        data.dimension_value_source = map['DimensionValueSource']
        data.default_dimension_value = map['DefaultDimensionValue']
        return data
      end
    end

    class KinesisFirehoseDestination
      def self.parse(map)
        data = Types::KinesisFirehoseDestination.new
        data.iam_role_arn = map['IamRoleArn']
        data.delivery_stream_arn = map['DeliveryStreamArn']
        return data
      end
    end

    class EventTypes
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetDedicatedIp
    class GetDedicatedIp
      def self.parse(http_resp)
        data = Types::GetDedicatedIpOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.dedicated_ip = (DedicatedIp.parse(map['DedicatedIp']) unless map['DedicatedIp'].nil?)
        data
      end
    end

    class DedicatedIp
      def self.parse(map)
        data = Types::DedicatedIp.new
        data.ip = map['Ip']
        data.warmup_status = map['WarmupStatus']
        data.warmup_percentage = map['WarmupPercentage']
        data.pool_name = map['PoolName']
        return data
      end
    end

    # Operation Parser for GetDedicatedIps
    class GetDedicatedIps
      def self.parse(http_resp)
        data = Types::GetDedicatedIpsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.dedicated_ips = (DedicatedIpList.parse(map['DedicatedIps']) unless map['DedicatedIps'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class DedicatedIpList
      def self.parse(list)
        data = []
        list.map do |value|
          data << DedicatedIp.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetDeliverabilityDashboardOptions
    class GetDeliverabilityDashboardOptions
      def self.parse(http_resp)
        data = Types::GetDeliverabilityDashboardOptionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.dashboard_enabled = map['DashboardEnabled']
        data.subscription_expiry_date = Time.at(map['SubscriptionExpiryDate'].to_i) if map['SubscriptionExpiryDate']
        data.account_status = map['AccountStatus']
        data.active_subscribed_domains = (DomainDeliverabilityTrackingOptions.parse(map['ActiveSubscribedDomains']) unless map['ActiveSubscribedDomains'].nil?)
        data.pending_expiration_subscribed_domains = (DomainDeliverabilityTrackingOptions.parse(map['PendingExpirationSubscribedDomains']) unless map['PendingExpirationSubscribedDomains'].nil?)
        data
      end
    end

    class DomainDeliverabilityTrackingOptions
      def self.parse(list)
        data = []
        list.map do |value|
          data << DomainDeliverabilityTrackingOption.parse(value) unless value.nil?
        end
        data
      end
    end

    class DomainDeliverabilityTrackingOption
      def self.parse(map)
        data = Types::DomainDeliverabilityTrackingOption.new
        data.domain = map['Domain']
        data.subscription_start_date = Time.at(map['SubscriptionStartDate'].to_i) if map['SubscriptionStartDate']
        data.inbox_placement_tracking_option = (InboxPlacementTrackingOption.parse(map['InboxPlacementTrackingOption']) unless map['InboxPlacementTrackingOption'].nil?)
        return data
      end
    end

    class InboxPlacementTrackingOption
      def self.parse(map)
        data = Types::InboxPlacementTrackingOption.new
        data.global = map['Global']
        data.tracked_isps = (IspNameList.parse(map['TrackedIsps']) unless map['TrackedIsps'].nil?)
        return data
      end
    end

    class IspNameList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetDeliverabilityTestReport
    class GetDeliverabilityTestReport
      def self.parse(http_resp)
        data = Types::GetDeliverabilityTestReportOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.deliverability_test_report = (DeliverabilityTestReport.parse(map['DeliverabilityTestReport']) unless map['DeliverabilityTestReport'].nil?)
        data.overall_placement = (PlacementStatistics.parse(map['OverallPlacement']) unless map['OverallPlacement'].nil?)
        data.isp_placements = (IspPlacements.parse(map['IspPlacements']) unless map['IspPlacements'].nil?)
        data.message = map['Message']
        data.tags = (TagList.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    class IspPlacements
      def self.parse(list)
        data = []
        list.map do |value|
          data << IspPlacement.parse(value) unless value.nil?
        end
        data
      end
    end

    class IspPlacement
      def self.parse(map)
        data = Types::IspPlacement.new
        data.isp_name = map['IspName']
        data.placement_statistics = (PlacementStatistics.parse(map['PlacementStatistics']) unless map['PlacementStatistics'].nil?)
        return data
      end
    end

    class PlacementStatistics
      def self.parse(map)
        data = Types::PlacementStatistics.new
        data.inbox_percentage = Hearth::NumberHelper.deserialize(map['InboxPercentage'])
        data.spam_percentage = Hearth::NumberHelper.deserialize(map['SpamPercentage'])
        data.missing_percentage = Hearth::NumberHelper.deserialize(map['MissingPercentage'])
        data.spf_percentage = Hearth::NumberHelper.deserialize(map['SpfPercentage'])
        data.dkim_percentage = Hearth::NumberHelper.deserialize(map['DkimPercentage'])
        return data
      end
    end

    class DeliverabilityTestReport
      def self.parse(map)
        data = Types::DeliverabilityTestReport.new
        data.report_id = map['ReportId']
        data.report_name = map['ReportName']
        data.subject = map['Subject']
        data.from_email_address = map['FromEmailAddress']
        data.create_date = Time.at(map['CreateDate'].to_i) if map['CreateDate']
        data.deliverability_test_status = map['DeliverabilityTestStatus']
        return data
      end
    end

    # Operation Parser for GetDomainDeliverabilityCampaign
    class GetDomainDeliverabilityCampaign
      def self.parse(http_resp)
        data = Types::GetDomainDeliverabilityCampaignOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.domain_deliverability_campaign = (DomainDeliverabilityCampaign.parse(map['DomainDeliverabilityCampaign']) unless map['DomainDeliverabilityCampaign'].nil?)
        data
      end
    end

    class DomainDeliverabilityCampaign
      def self.parse(map)
        data = Types::DomainDeliverabilityCampaign.new
        data.campaign_id = map['CampaignId']
        data.image_url = map['ImageUrl']
        data.subject = map['Subject']
        data.from_address = map['FromAddress']
        data.sending_ips = (IpList.parse(map['SendingIps']) unless map['SendingIps'].nil?)
        data.first_seen_date_time = Time.at(map['FirstSeenDateTime'].to_i) if map['FirstSeenDateTime']
        data.last_seen_date_time = Time.at(map['LastSeenDateTime'].to_i) if map['LastSeenDateTime']
        data.inbox_count = map['InboxCount']
        data.spam_count = map['SpamCount']
        data.read_rate = Hearth::NumberHelper.deserialize(map['ReadRate'])
        data.delete_rate = Hearth::NumberHelper.deserialize(map['DeleteRate'])
        data.read_delete_rate = Hearth::NumberHelper.deserialize(map['ReadDeleteRate'])
        data.projected_volume = map['ProjectedVolume']
        data.esps = (Esps.parse(map['Esps']) unless map['Esps'].nil?)
        return data
      end
    end

    class Esps
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class IpList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetDomainStatisticsReport
    class GetDomainStatisticsReport
      def self.parse(http_resp)
        data = Types::GetDomainStatisticsReportOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.overall_volume = (OverallVolume.parse(map['OverallVolume']) unless map['OverallVolume'].nil?)
        data.daily_volumes = (DailyVolumes.parse(map['DailyVolumes']) unless map['DailyVolumes'].nil?)
        data
      end
    end

    class DailyVolumes
      def self.parse(list)
        data = []
        list.map do |value|
          data << DailyVolume.parse(value) unless value.nil?
        end
        data
      end
    end

    class DailyVolume
      def self.parse(map)
        data = Types::DailyVolume.new
        data.start_date = Time.at(map['StartDate'].to_i) if map['StartDate']
        data.volume_statistics = (VolumeStatistics.parse(map['VolumeStatistics']) unless map['VolumeStatistics'].nil?)
        data.domain_isp_placements = (DomainIspPlacements.parse(map['DomainIspPlacements']) unless map['DomainIspPlacements'].nil?)
        return data
      end
    end

    class DomainIspPlacements
      def self.parse(list)
        data = []
        list.map do |value|
          data << DomainIspPlacement.parse(value) unless value.nil?
        end
        data
      end
    end

    class DomainIspPlacement
      def self.parse(map)
        data = Types::DomainIspPlacement.new
        data.isp_name = map['IspName']
        data.inbox_raw_count = map['InboxRawCount']
        data.spam_raw_count = map['SpamRawCount']
        data.inbox_percentage = Hearth::NumberHelper.deserialize(map['InboxPercentage'])
        data.spam_percentage = Hearth::NumberHelper.deserialize(map['SpamPercentage'])
        return data
      end
    end

    class VolumeStatistics
      def self.parse(map)
        data = Types::VolumeStatistics.new
        data.inbox_raw_count = map['InboxRawCount']
        data.spam_raw_count = map['SpamRawCount']
        data.projected_inbox = map['ProjectedInbox']
        data.projected_spam = map['ProjectedSpam']
        return data
      end
    end

    class OverallVolume
      def self.parse(map)
        data = Types::OverallVolume.new
        data.volume_statistics = (VolumeStatistics.parse(map['VolumeStatistics']) unless map['VolumeStatistics'].nil?)
        data.read_rate_percent = Hearth::NumberHelper.deserialize(map['ReadRatePercent'])
        data.domain_isp_placements = (DomainIspPlacements.parse(map['DomainIspPlacements']) unless map['DomainIspPlacements'].nil?)
        return data
      end
    end

    # Operation Parser for GetEmailIdentity
    class GetEmailIdentity
      def self.parse(http_resp)
        data = Types::GetEmailIdentityOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.identity_type = map['IdentityType']
        data.feedback_forwarding_status = map['FeedbackForwardingStatus']
        data.verified_for_sending_status = map['VerifiedForSendingStatus']
        data.dkim_attributes = (DkimAttributes.parse(map['DkimAttributes']) unless map['DkimAttributes'].nil?)
        data.mail_from_attributes = (MailFromAttributes.parse(map['MailFromAttributes']) unless map['MailFromAttributes'].nil?)
        data.tags = (TagList.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    class MailFromAttributes
      def self.parse(map)
        data = Types::MailFromAttributes.new
        data.mail_from_domain = map['MailFromDomain']
        data.mail_from_domain_status = map['MailFromDomainStatus']
        data.behavior_on_mx_failure = map['BehaviorOnMxFailure']
        return data
      end
    end

    # Operation Parser for ListConfigurationSets
    class ListConfigurationSets
      def self.parse(http_resp)
        data = Types::ListConfigurationSetsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.configuration_sets = (ConfigurationSetNameList.parse(map['ConfigurationSets']) unless map['ConfigurationSets'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ConfigurationSetNameList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListDedicatedIpPools
    class ListDedicatedIpPools
      def self.parse(http_resp)
        data = Types::ListDedicatedIpPoolsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.dedicated_ip_pools = (ListOfDedicatedIpPools.parse(map['DedicatedIpPools']) unless map['DedicatedIpPools'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ListOfDedicatedIpPools
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListDeliverabilityTestReports
    class ListDeliverabilityTestReports
      def self.parse(http_resp)
        data = Types::ListDeliverabilityTestReportsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.deliverability_test_reports = (DeliverabilityTestReports.parse(map['DeliverabilityTestReports']) unless map['DeliverabilityTestReports'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class DeliverabilityTestReports
      def self.parse(list)
        data = []
        list.map do |value|
          data << DeliverabilityTestReport.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListDomainDeliverabilityCampaigns
    class ListDomainDeliverabilityCampaigns
      def self.parse(http_resp)
        data = Types::ListDomainDeliverabilityCampaignsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.domain_deliverability_campaigns = (DomainDeliverabilityCampaignList.parse(map['DomainDeliverabilityCampaigns']) unless map['DomainDeliverabilityCampaigns'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class DomainDeliverabilityCampaignList
      def self.parse(list)
        data = []
        list.map do |value|
          data << DomainDeliverabilityCampaign.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListEmailIdentities
    class ListEmailIdentities
      def self.parse(http_resp)
        data = Types::ListEmailIdentitiesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.email_identities = (IdentityInfoList.parse(map['EmailIdentities']) unless map['EmailIdentities'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class IdentityInfoList
      def self.parse(list)
        data = []
        list.map do |value|
          data << IdentityInfo.parse(value) unless value.nil?
        end
        data
      end
    end

    class IdentityInfo
      def self.parse(map)
        data = Types::IdentityInfo.new
        data.identity_type = map['IdentityType']
        data.identity_name = map['IdentityName']
        data.sending_enabled = map['SendingEnabled']
        return data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (TagList.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    # Operation Parser for PutAccountDedicatedIpWarmupAttributes
    class PutAccountDedicatedIpWarmupAttributes
      def self.parse(http_resp)
        data = Types::PutAccountDedicatedIpWarmupAttributesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for PutAccountSendingAttributes
    class PutAccountSendingAttributes
      def self.parse(http_resp)
        data = Types::PutAccountSendingAttributesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for PutConfigurationSetDeliveryOptions
    class PutConfigurationSetDeliveryOptions
      def self.parse(http_resp)
        data = Types::PutConfigurationSetDeliveryOptionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for PutConfigurationSetReputationOptions
    class PutConfigurationSetReputationOptions
      def self.parse(http_resp)
        data = Types::PutConfigurationSetReputationOptionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for PutConfigurationSetSendingOptions
    class PutConfigurationSetSendingOptions
      def self.parse(http_resp)
        data = Types::PutConfigurationSetSendingOptionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for PutConfigurationSetTrackingOptions
    class PutConfigurationSetTrackingOptions
      def self.parse(http_resp)
        data = Types::PutConfigurationSetTrackingOptionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for PutDedicatedIpInPool
    class PutDedicatedIpInPool
      def self.parse(http_resp)
        data = Types::PutDedicatedIpInPoolOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for PutDedicatedIpWarmupAttributes
    class PutDedicatedIpWarmupAttributes
      def self.parse(http_resp)
        data = Types::PutDedicatedIpWarmupAttributesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for PutDeliverabilityDashboardOption
    class PutDeliverabilityDashboardOption
      def self.parse(http_resp)
        data = Types::PutDeliverabilityDashboardOptionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for PutEmailIdentityDkimAttributes
    class PutEmailIdentityDkimAttributes
      def self.parse(http_resp)
        data = Types::PutEmailIdentityDkimAttributesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for PutEmailIdentityFeedbackAttributes
    class PutEmailIdentityFeedbackAttributes
      def self.parse(http_resp)
        data = Types::PutEmailIdentityFeedbackAttributesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for PutEmailIdentityMailFromAttributes
    class PutEmailIdentityMailFromAttributes
      def self.parse(http_resp)
        data = Types::PutEmailIdentityMailFromAttributesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for SendEmail
    class SendEmail
      def self.parse(http_resp)
        data = Types::SendEmailOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.message_id = map['MessageId']
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

    # Operation Parser for UpdateConfigurationSetEventDestination
    class UpdateConfigurationSetEventDestination
      def self.parse(http_resp)
        data = Types::UpdateConfigurationSetEventDestinationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end
  end
end
