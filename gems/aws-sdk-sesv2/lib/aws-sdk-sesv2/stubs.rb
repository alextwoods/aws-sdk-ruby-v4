# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SESv2
  module Stubs

    # Operation Stubber for CreateConfigurationSet
    class CreateConfigurationSet
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateConfigurationSetEventDestination
    class CreateConfigurationSetEventDestination
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateContact
    class CreateContact
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateContactList
    class CreateContactList
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateCustomVerificationEmailTemplate
    class CreateCustomVerificationEmailTemplate
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateDedicatedIpPool
    class CreateDedicatedIpPool
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateDeliverabilityTestReport
    class CreateDeliverabilityTestReport
      def self.default(visited=[])
        {
          report_id: 'report_id',
          deliverability_test_status: 'deliverability_test_status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ReportId'] = stub[:report_id] unless stub[:report_id].nil?
        data['DeliverabilityTestStatus'] = stub[:deliverability_test_status] unless stub[:deliverability_test_status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateEmailIdentity
    class CreateEmailIdentity
      def self.default(visited=[])
        {
          identity_type: 'identity_type',
          verified_for_sending_status: false,
          dkim_attributes: Stubs::DkimAttributes.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['IdentityType'] = stub[:identity_type] unless stub[:identity_type].nil?
        data['VerifiedForSendingStatus'] = stub[:verified_for_sending_status] unless stub[:verified_for_sending_status].nil?
        data['DkimAttributes'] = Stubs::DkimAttributes.stub(stub[:dkim_attributes]) unless stub[:dkim_attributes].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for DkimAttributes
    class DkimAttributes
      def self.default(visited=[])
        return nil if visited.include?('DkimAttributes')
        visited = visited + ['DkimAttributes']
        {
          signing_enabled: false,
          status: 'status',
          tokens: Stubs::DnsTokenList.default(visited),
          signing_attributes_origin: 'signing_attributes_origin',
          next_signing_key_length: 'next_signing_key_length',
          current_signing_key_length: 'current_signing_key_length',
          last_key_generation_timestamp: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::DkimAttributes.new
        data = {}
        data['SigningEnabled'] = stub[:signing_enabled] unless stub[:signing_enabled].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['Tokens'] = Stubs::DnsTokenList.stub(stub[:tokens]) unless stub[:tokens].nil?
        data['SigningAttributesOrigin'] = stub[:signing_attributes_origin] unless stub[:signing_attributes_origin].nil?
        data['NextSigningKeyLength'] = stub[:next_signing_key_length] unless stub[:next_signing_key_length].nil?
        data['CurrentSigningKeyLength'] = stub[:current_signing_key_length] unless stub[:current_signing_key_length].nil?
        data['LastKeyGenerationTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_key_generation_timestamp]).to_i unless stub[:last_key_generation_timestamp].nil?
        data
      end
    end

    # List Stubber for DnsTokenList
    class DnsTokenList
      def self.default(visited=[])
        return nil if visited.include?('DnsTokenList')
        visited = visited + ['DnsTokenList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for CreateEmailIdentityPolicy
    class CreateEmailIdentityPolicy
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateEmailTemplate
    class CreateEmailTemplate
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateImportJob
    class CreateImportJob
      def self.default(visited=[])
        {
          job_id: 'job_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['JobId'] = stub[:job_id] unless stub[:job_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteConfigurationSet
    class DeleteConfigurationSet
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteConfigurationSetEventDestination
    class DeleteConfigurationSetEventDestination
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteContact
    class DeleteContact
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteContactList
    class DeleteContactList
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteCustomVerificationEmailTemplate
    class DeleteCustomVerificationEmailTemplate
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteDedicatedIpPool
    class DeleteDedicatedIpPool
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteEmailIdentity
    class DeleteEmailIdentity
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteEmailIdentityPolicy
    class DeleteEmailIdentityPolicy
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteEmailTemplate
    class DeleteEmailTemplate
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteSuppressedDestination
    class DeleteSuppressedDestination
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetAccount
    class GetAccount
      def self.default(visited=[])
        {
          dedicated_ip_auto_warmup_enabled: false,
          enforcement_status: 'enforcement_status',
          production_access_enabled: false,
          send_quota: Stubs::SendQuota.default(visited),
          sending_enabled: false,
          suppression_attributes: Stubs::SuppressionAttributes.default(visited),
          details: Stubs::AccountDetails.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['DedicatedIpAutoWarmupEnabled'] = stub[:dedicated_ip_auto_warmup_enabled] unless stub[:dedicated_ip_auto_warmup_enabled].nil?
        data['EnforcementStatus'] = stub[:enforcement_status] unless stub[:enforcement_status].nil?
        data['ProductionAccessEnabled'] = stub[:production_access_enabled] unless stub[:production_access_enabled].nil?
        data['SendQuota'] = Stubs::SendQuota.stub(stub[:send_quota]) unless stub[:send_quota].nil?
        data['SendingEnabled'] = stub[:sending_enabled] unless stub[:sending_enabled].nil?
        data['SuppressionAttributes'] = Stubs::SuppressionAttributes.stub(stub[:suppression_attributes]) unless stub[:suppression_attributes].nil?
        data['Details'] = Stubs::AccountDetails.stub(stub[:details]) unless stub[:details].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for AccountDetails
    class AccountDetails
      def self.default(visited=[])
        return nil if visited.include?('AccountDetails')
        visited = visited + ['AccountDetails']
        {
          mail_type: 'mail_type',
          website_url: 'website_url',
          contact_language: 'contact_language',
          use_case_description: 'use_case_description',
          additional_contact_email_addresses: Stubs::AdditionalContactEmailAddresses.default(visited),
          review_details: Stubs::ReviewDetails.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AccountDetails.new
        data = {}
        data['MailType'] = stub[:mail_type] unless stub[:mail_type].nil?
        data['WebsiteURL'] = stub[:website_url] unless stub[:website_url].nil?
        data['ContactLanguage'] = stub[:contact_language] unless stub[:contact_language].nil?
        data['UseCaseDescription'] = stub[:use_case_description] unless stub[:use_case_description].nil?
        data['AdditionalContactEmailAddresses'] = Stubs::AdditionalContactEmailAddresses.stub(stub[:additional_contact_email_addresses]) unless stub[:additional_contact_email_addresses].nil?
        data['ReviewDetails'] = Stubs::ReviewDetails.stub(stub[:review_details]) unless stub[:review_details].nil?
        data
      end
    end

    # Structure Stubber for ReviewDetails
    class ReviewDetails
      def self.default(visited=[])
        return nil if visited.include?('ReviewDetails')
        visited = visited + ['ReviewDetails']
        {
          status: 'status',
          case_id: 'case_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::ReviewDetails.new
        data = {}
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['CaseId'] = stub[:case_id] unless stub[:case_id].nil?
        data
      end
    end

    # List Stubber for AdditionalContactEmailAddresses
    class AdditionalContactEmailAddresses
      def self.default(visited=[])
        return nil if visited.include?('AdditionalContactEmailAddresses')
        visited = visited + ['AdditionalContactEmailAddresses']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SuppressionAttributes
    class SuppressionAttributes
      def self.default(visited=[])
        return nil if visited.include?('SuppressionAttributes')
        visited = visited + ['SuppressionAttributes']
        {
          suppressed_reasons: Stubs::SuppressionListReasons.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SuppressionAttributes.new
        data = {}
        data['SuppressedReasons'] = Stubs::SuppressionListReasons.stub(stub[:suppressed_reasons]) unless stub[:suppressed_reasons].nil?
        data
      end
    end

    # List Stubber for SuppressionListReasons
    class SuppressionListReasons
      def self.default(visited=[])
        return nil if visited.include?('SuppressionListReasons')
        visited = visited + ['SuppressionListReasons']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SendQuota
    class SendQuota
      def self.default(visited=[])
        return nil if visited.include?('SendQuota')
        visited = visited + ['SendQuota']
        {
          max24_hour_send: 1.0,
          max_send_rate: 1.0,
          sent_last24_hours: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::SendQuota.new
        data = {}
        data['Max24HourSend'] = Hearth::NumberHelper.serialize(stub[:max24_hour_send])
        data['MaxSendRate'] = Hearth::NumberHelper.serialize(stub[:max_send_rate])
        data['SentLast24Hours'] = Hearth::NumberHelper.serialize(stub[:sent_last24_hours])
        data
      end
    end

    # Operation Stubber for GetBlacklistReports
    class GetBlacklistReports
      def self.default(visited=[])
        {
          blacklist_report: Stubs::BlacklistReport.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['BlacklistReport'] = Stubs::BlacklistReport.stub(stub[:blacklist_report]) unless stub[:blacklist_report].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Stubber for BlacklistReport
    class BlacklistReport
      def self.default(visited=[])
        return nil if visited.include?('BlacklistReport')
        visited = visited + ['BlacklistReport']
        {
          test_key: Stubs::BlacklistEntries.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::BlacklistEntries.stub(value) unless value.nil?
        end
        data
      end
    end

    # List Stubber for BlacklistEntries
    class BlacklistEntries
      def self.default(visited=[])
        return nil if visited.include?('BlacklistEntries')
        visited = visited + ['BlacklistEntries']
        [
          Stubs::BlacklistEntry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::BlacklistEntry.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BlacklistEntry
    class BlacklistEntry
      def self.default(visited=[])
        return nil if visited.include?('BlacklistEntry')
        visited = visited + ['BlacklistEntry']
        {
          rbl_name: 'rbl_name',
          listing_time: Time.now,
          description: 'description',
        }
      end

      def self.stub(stub)
        stub ||= Types::BlacklistEntry.new
        data = {}
        data['RblName'] = stub[:rbl_name] unless stub[:rbl_name].nil?
        data['ListingTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:listing_time]).to_i unless stub[:listing_time].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data
      end
    end

    # Operation Stubber for GetConfigurationSet
    class GetConfigurationSet
      def self.default(visited=[])
        {
          configuration_set_name: 'configuration_set_name',
          tracking_options: Stubs::TrackingOptions.default(visited),
          delivery_options: Stubs::DeliveryOptions.default(visited),
          reputation_options: Stubs::ReputationOptions.default(visited),
          sending_options: Stubs::SendingOptions.default(visited),
          tags: Stubs::TagList.default(visited),
          suppression_options: Stubs::SuppressionOptions.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ConfigurationSetName'] = stub[:configuration_set_name] unless stub[:configuration_set_name].nil?
        data['TrackingOptions'] = Stubs::TrackingOptions.stub(stub[:tracking_options]) unless stub[:tracking_options].nil?
        data['DeliveryOptions'] = Stubs::DeliveryOptions.stub(stub[:delivery_options]) unless stub[:delivery_options].nil?
        data['ReputationOptions'] = Stubs::ReputationOptions.stub(stub[:reputation_options]) unless stub[:reputation_options].nil?
        data['SendingOptions'] = Stubs::SendingOptions.stub(stub[:sending_options]) unless stub[:sending_options].nil?
        data['Tags'] = Stubs::TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['SuppressionOptions'] = Stubs::SuppressionOptions.stub(stub[:suppression_options]) unless stub[:suppression_options].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for SuppressionOptions
    class SuppressionOptions
      def self.default(visited=[])
        return nil if visited.include?('SuppressionOptions')
        visited = visited + ['SuppressionOptions']
        {
          suppressed_reasons: Stubs::SuppressionListReasons.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SuppressionOptions.new
        data = {}
        data['SuppressedReasons'] = Stubs::SuppressionListReasons.stub(stub[:suppressed_reasons]) unless stub[:suppressed_reasons].nil?
        data
      end
    end

    # List Stubber for TagList
    class TagList
      def self.default(visited=[])
        return nil if visited.include?('TagList')
        visited = visited + ['TagList']
        [
          Stubs::Tag.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Tag.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Tag
    class Tag
      def self.default(visited=[])
        return nil if visited.include?('Tag')
        visited = visited + ['Tag']
        {
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::Tag.new
        data = {}
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Structure Stubber for SendingOptions
    class SendingOptions
      def self.default(visited=[])
        return nil if visited.include?('SendingOptions')
        visited = visited + ['SendingOptions']
        {
          sending_enabled: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::SendingOptions.new
        data = {}
        data['SendingEnabled'] = stub[:sending_enabled] unless stub[:sending_enabled].nil?
        data
      end
    end

    # Structure Stubber for ReputationOptions
    class ReputationOptions
      def self.default(visited=[])
        return nil if visited.include?('ReputationOptions')
        visited = visited + ['ReputationOptions']
        {
          reputation_metrics_enabled: false,
          last_fresh_start: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ReputationOptions.new
        data = {}
        data['ReputationMetricsEnabled'] = stub[:reputation_metrics_enabled] unless stub[:reputation_metrics_enabled].nil?
        data['LastFreshStart'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_fresh_start]).to_i unless stub[:last_fresh_start].nil?
        data
      end
    end

    # Structure Stubber for DeliveryOptions
    class DeliveryOptions
      def self.default(visited=[])
        return nil if visited.include?('DeliveryOptions')
        visited = visited + ['DeliveryOptions']
        {
          tls_policy: 'tls_policy',
          sending_pool_name: 'sending_pool_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::DeliveryOptions.new
        data = {}
        data['TlsPolicy'] = stub[:tls_policy] unless stub[:tls_policy].nil?
        data['SendingPoolName'] = stub[:sending_pool_name] unless stub[:sending_pool_name].nil?
        data
      end
    end

    # Structure Stubber for TrackingOptions
    class TrackingOptions
      def self.default(visited=[])
        return nil if visited.include?('TrackingOptions')
        visited = visited + ['TrackingOptions']
        {
          custom_redirect_domain: 'custom_redirect_domain',
        }
      end

      def self.stub(stub)
        stub ||= Types::TrackingOptions.new
        data = {}
        data['CustomRedirectDomain'] = stub[:custom_redirect_domain] unless stub[:custom_redirect_domain].nil?
        data
      end
    end

    # Operation Stubber for GetConfigurationSetEventDestinations
    class GetConfigurationSetEventDestinations
      def self.default(visited=[])
        {
          event_destinations: Stubs::EventDestinations.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['EventDestinations'] = Stubs::EventDestinations.stub(stub[:event_destinations]) unless stub[:event_destinations].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for EventDestinations
    class EventDestinations
      def self.default(visited=[])
        return nil if visited.include?('EventDestinations')
        visited = visited + ['EventDestinations']
        [
          Stubs::EventDestination.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::EventDestination.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EventDestination
    class EventDestination
      def self.default(visited=[])
        return nil if visited.include?('EventDestination')
        visited = visited + ['EventDestination']
        {
          name: 'name',
          enabled: false,
          matching_event_types: Stubs::EventTypes.default(visited),
          kinesis_firehose_destination: Stubs::KinesisFirehoseDestination.default(visited),
          cloud_watch_destination: Stubs::CloudWatchDestination.default(visited),
          sns_destination: Stubs::SnsDestination.default(visited),
          pinpoint_destination: Stubs::PinpointDestination.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::EventDestination.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data['MatchingEventTypes'] = Stubs::EventTypes.stub(stub[:matching_event_types]) unless stub[:matching_event_types].nil?
        data['KinesisFirehoseDestination'] = Stubs::KinesisFirehoseDestination.stub(stub[:kinesis_firehose_destination]) unless stub[:kinesis_firehose_destination].nil?
        data['CloudWatchDestination'] = Stubs::CloudWatchDestination.stub(stub[:cloud_watch_destination]) unless stub[:cloud_watch_destination].nil?
        data['SnsDestination'] = Stubs::SnsDestination.stub(stub[:sns_destination]) unless stub[:sns_destination].nil?
        data['PinpointDestination'] = Stubs::PinpointDestination.stub(stub[:pinpoint_destination]) unless stub[:pinpoint_destination].nil?
        data
      end
    end

    # Structure Stubber for PinpointDestination
    class PinpointDestination
      def self.default(visited=[])
        return nil if visited.include?('PinpointDestination')
        visited = visited + ['PinpointDestination']
        {
          application_arn: 'application_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::PinpointDestination.new
        data = {}
        data['ApplicationArn'] = stub[:application_arn] unless stub[:application_arn].nil?
        data
      end
    end

    # Structure Stubber for SnsDestination
    class SnsDestination
      def self.default(visited=[])
        return nil if visited.include?('SnsDestination')
        visited = visited + ['SnsDestination']
        {
          topic_arn: 'topic_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::SnsDestination.new
        data = {}
        data['TopicArn'] = stub[:topic_arn] unless stub[:topic_arn].nil?
        data
      end
    end

    # Structure Stubber for CloudWatchDestination
    class CloudWatchDestination
      def self.default(visited=[])
        return nil if visited.include?('CloudWatchDestination')
        visited = visited + ['CloudWatchDestination']
        {
          dimension_configurations: Stubs::CloudWatchDimensionConfigurations.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CloudWatchDestination.new
        data = {}
        data['DimensionConfigurations'] = Stubs::CloudWatchDimensionConfigurations.stub(stub[:dimension_configurations]) unless stub[:dimension_configurations].nil?
        data
      end
    end

    # List Stubber for CloudWatchDimensionConfigurations
    class CloudWatchDimensionConfigurations
      def self.default(visited=[])
        return nil if visited.include?('CloudWatchDimensionConfigurations')
        visited = visited + ['CloudWatchDimensionConfigurations']
        [
          Stubs::CloudWatchDimensionConfiguration.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::CloudWatchDimensionConfiguration.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CloudWatchDimensionConfiguration
    class CloudWatchDimensionConfiguration
      def self.default(visited=[])
        return nil if visited.include?('CloudWatchDimensionConfiguration')
        visited = visited + ['CloudWatchDimensionConfiguration']
        {
          dimension_name: 'dimension_name',
          dimension_value_source: 'dimension_value_source',
          default_dimension_value: 'default_dimension_value',
        }
      end

      def self.stub(stub)
        stub ||= Types::CloudWatchDimensionConfiguration.new
        data = {}
        data['DimensionName'] = stub[:dimension_name] unless stub[:dimension_name].nil?
        data['DimensionValueSource'] = stub[:dimension_value_source] unless stub[:dimension_value_source].nil?
        data['DefaultDimensionValue'] = stub[:default_dimension_value] unless stub[:default_dimension_value].nil?
        data
      end
    end

    # Structure Stubber for KinesisFirehoseDestination
    class KinesisFirehoseDestination
      def self.default(visited=[])
        return nil if visited.include?('KinesisFirehoseDestination')
        visited = visited + ['KinesisFirehoseDestination']
        {
          iam_role_arn: 'iam_role_arn',
          delivery_stream_arn: 'delivery_stream_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::KinesisFirehoseDestination.new
        data = {}
        data['IamRoleArn'] = stub[:iam_role_arn] unless stub[:iam_role_arn].nil?
        data['DeliveryStreamArn'] = stub[:delivery_stream_arn] unless stub[:delivery_stream_arn].nil?
        data
      end
    end

    # List Stubber for EventTypes
    class EventTypes
      def self.default(visited=[])
        return nil if visited.include?('EventTypes')
        visited = visited + ['EventTypes']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for GetContact
    class GetContact
      def self.default(visited=[])
        {
          contact_list_name: 'contact_list_name',
          email_address: 'email_address',
          topic_preferences: Stubs::TopicPreferenceList.default(visited),
          topic_default_preferences: Stubs::TopicPreferenceList.default(visited),
          unsubscribe_all: false,
          attributes_data: 'attributes_data',
          created_timestamp: Time.now,
          last_updated_timestamp: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ContactListName'] = stub[:contact_list_name] unless stub[:contact_list_name].nil?
        data['EmailAddress'] = stub[:email_address] unless stub[:email_address].nil?
        data['TopicPreferences'] = Stubs::TopicPreferenceList.stub(stub[:topic_preferences]) unless stub[:topic_preferences].nil?
        data['TopicDefaultPreferences'] = Stubs::TopicPreferenceList.stub(stub[:topic_default_preferences]) unless stub[:topic_default_preferences].nil?
        data['UnsubscribeAll'] = stub[:unsubscribe_all] unless stub[:unsubscribe_all].nil?
        data['AttributesData'] = stub[:attributes_data] unless stub[:attributes_data].nil?
        data['CreatedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_timestamp]).to_i unless stub[:created_timestamp].nil?
        data['LastUpdatedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_timestamp]).to_i unless stub[:last_updated_timestamp].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for TopicPreferenceList
    class TopicPreferenceList
      def self.default(visited=[])
        return nil if visited.include?('TopicPreferenceList')
        visited = visited + ['TopicPreferenceList']
        [
          Stubs::TopicPreference.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::TopicPreference.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TopicPreference
    class TopicPreference
      def self.default(visited=[])
        return nil if visited.include?('TopicPreference')
        visited = visited + ['TopicPreference']
        {
          topic_name: 'topic_name',
          subscription_status: 'subscription_status',
        }
      end

      def self.stub(stub)
        stub ||= Types::TopicPreference.new
        data = {}
        data['TopicName'] = stub[:topic_name] unless stub[:topic_name].nil?
        data['SubscriptionStatus'] = stub[:subscription_status] unless stub[:subscription_status].nil?
        data
      end
    end

    # Operation Stubber for GetContactList
    class GetContactList
      def self.default(visited=[])
        {
          contact_list_name: 'contact_list_name',
          topics: Stubs::Topics.default(visited),
          description: 'description',
          created_timestamp: Time.now,
          last_updated_timestamp: Time.now,
          tags: Stubs::TagList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ContactListName'] = stub[:contact_list_name] unless stub[:contact_list_name].nil?
        data['Topics'] = Stubs::Topics.stub(stub[:topics]) unless stub[:topics].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['CreatedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_timestamp]).to_i unless stub[:created_timestamp].nil?
        data['LastUpdatedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_timestamp]).to_i unless stub[:last_updated_timestamp].nil?
        data['Tags'] = Stubs::TagList.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for Topics
    class Topics
      def self.default(visited=[])
        return nil if visited.include?('Topics')
        visited = visited + ['Topics']
        [
          Stubs::Topic.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Topic.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Topic
    class Topic
      def self.default(visited=[])
        return nil if visited.include?('Topic')
        visited = visited + ['Topic']
        {
          topic_name: 'topic_name',
          display_name: 'display_name',
          description: 'description',
          default_subscription_status: 'default_subscription_status',
        }
      end

      def self.stub(stub)
        stub ||= Types::Topic.new
        data = {}
        data['TopicName'] = stub[:topic_name] unless stub[:topic_name].nil?
        data['DisplayName'] = stub[:display_name] unless stub[:display_name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['DefaultSubscriptionStatus'] = stub[:default_subscription_status] unless stub[:default_subscription_status].nil?
        data
      end
    end

    # Operation Stubber for GetCustomVerificationEmailTemplate
    class GetCustomVerificationEmailTemplate
      def self.default(visited=[])
        {
          template_name: 'template_name',
          from_email_address: 'from_email_address',
          template_subject: 'template_subject',
          template_content: 'template_content',
          success_redirection_url: 'success_redirection_url',
          failure_redirection_url: 'failure_redirection_url',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['TemplateName'] = stub[:template_name] unless stub[:template_name].nil?
        data['FromEmailAddress'] = stub[:from_email_address] unless stub[:from_email_address].nil?
        data['TemplateSubject'] = stub[:template_subject] unless stub[:template_subject].nil?
        data['TemplateContent'] = stub[:template_content] unless stub[:template_content].nil?
        data['SuccessRedirectionURL'] = stub[:success_redirection_url] unless stub[:success_redirection_url].nil?
        data['FailureRedirectionURL'] = stub[:failure_redirection_url] unless stub[:failure_redirection_url].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetDedicatedIp
    class GetDedicatedIp
      def self.default(visited=[])
        {
          dedicated_ip: Stubs::DedicatedIp.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['DedicatedIp'] = Stubs::DedicatedIp.stub(stub[:dedicated_ip]) unless stub[:dedicated_ip].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for DedicatedIp
    class DedicatedIp
      def self.default(visited=[])
        return nil if visited.include?('DedicatedIp')
        visited = visited + ['DedicatedIp']
        {
          ip: 'ip',
          warmup_status: 'warmup_status',
          warmup_percentage: 1,
          pool_name: 'pool_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::DedicatedIp.new
        data = {}
        data['Ip'] = stub[:ip] unless stub[:ip].nil?
        data['WarmupStatus'] = stub[:warmup_status] unless stub[:warmup_status].nil?
        data['WarmupPercentage'] = stub[:warmup_percentage] unless stub[:warmup_percentage].nil?
        data['PoolName'] = stub[:pool_name] unless stub[:pool_name].nil?
        data
      end
    end

    # Operation Stubber for GetDedicatedIps
    class GetDedicatedIps
      def self.default(visited=[])
        {
          dedicated_ips: Stubs::DedicatedIpList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['DedicatedIps'] = Stubs::DedicatedIpList.stub(stub[:dedicated_ips]) unless stub[:dedicated_ips].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for DedicatedIpList
    class DedicatedIpList
      def self.default(visited=[])
        return nil if visited.include?('DedicatedIpList')
        visited = visited + ['DedicatedIpList']
        [
          Stubs::DedicatedIp.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DedicatedIp.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for GetDeliverabilityDashboardOptions
    class GetDeliverabilityDashboardOptions
      def self.default(visited=[])
        {
          dashboard_enabled: false,
          subscription_expiry_date: Time.now,
          account_status: 'account_status',
          active_subscribed_domains: Stubs::DomainDeliverabilityTrackingOptions.default(visited),
          pending_expiration_subscribed_domains: Stubs::DomainDeliverabilityTrackingOptions.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['DashboardEnabled'] = stub[:dashboard_enabled] unless stub[:dashboard_enabled].nil?
        data['SubscriptionExpiryDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:subscription_expiry_date]).to_i unless stub[:subscription_expiry_date].nil?
        data['AccountStatus'] = stub[:account_status] unless stub[:account_status].nil?
        data['ActiveSubscribedDomains'] = Stubs::DomainDeliverabilityTrackingOptions.stub(stub[:active_subscribed_domains]) unless stub[:active_subscribed_domains].nil?
        data['PendingExpirationSubscribedDomains'] = Stubs::DomainDeliverabilityTrackingOptions.stub(stub[:pending_expiration_subscribed_domains]) unless stub[:pending_expiration_subscribed_domains].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for DomainDeliverabilityTrackingOptions
    class DomainDeliverabilityTrackingOptions
      def self.default(visited=[])
        return nil if visited.include?('DomainDeliverabilityTrackingOptions')
        visited = visited + ['DomainDeliverabilityTrackingOptions']
        [
          Stubs::DomainDeliverabilityTrackingOption.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DomainDeliverabilityTrackingOption.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DomainDeliverabilityTrackingOption
    class DomainDeliverabilityTrackingOption
      def self.default(visited=[])
        return nil if visited.include?('DomainDeliverabilityTrackingOption')
        visited = visited + ['DomainDeliverabilityTrackingOption']
        {
          domain: 'domain',
          subscription_start_date: Time.now,
          inbox_placement_tracking_option: Stubs::InboxPlacementTrackingOption.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DomainDeliverabilityTrackingOption.new
        data = {}
        data['Domain'] = stub[:domain] unless stub[:domain].nil?
        data['SubscriptionStartDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:subscription_start_date]).to_i unless stub[:subscription_start_date].nil?
        data['InboxPlacementTrackingOption'] = Stubs::InboxPlacementTrackingOption.stub(stub[:inbox_placement_tracking_option]) unless stub[:inbox_placement_tracking_option].nil?
        data
      end
    end

    # Structure Stubber for InboxPlacementTrackingOption
    class InboxPlacementTrackingOption
      def self.default(visited=[])
        return nil if visited.include?('InboxPlacementTrackingOption')
        visited = visited + ['InboxPlacementTrackingOption']
        {
          global: false,
          tracked_isps: Stubs::IspNameList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::InboxPlacementTrackingOption.new
        data = {}
        data['Global'] = stub[:global] unless stub[:global].nil?
        data['TrackedIsps'] = Stubs::IspNameList.stub(stub[:tracked_isps]) unless stub[:tracked_isps].nil?
        data
      end
    end

    # List Stubber for IspNameList
    class IspNameList
      def self.default(visited=[])
        return nil if visited.include?('IspNameList')
        visited = visited + ['IspNameList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for GetDeliverabilityTestReport
    class GetDeliverabilityTestReport
      def self.default(visited=[])
        {
          deliverability_test_report: Stubs::DeliverabilityTestReport.default(visited),
          overall_placement: Stubs::PlacementStatistics.default(visited),
          isp_placements: Stubs::IspPlacements.default(visited),
          message: 'message',
          tags: Stubs::TagList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['DeliverabilityTestReport'] = Stubs::DeliverabilityTestReport.stub(stub[:deliverability_test_report]) unless stub[:deliverability_test_report].nil?
        data['OverallPlacement'] = Stubs::PlacementStatistics.stub(stub[:overall_placement]) unless stub[:overall_placement].nil?
        data['IspPlacements'] = Stubs::IspPlacements.stub(stub[:isp_placements]) unless stub[:isp_placements].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data['Tags'] = Stubs::TagList.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for IspPlacements
    class IspPlacements
      def self.default(visited=[])
        return nil if visited.include?('IspPlacements')
        visited = visited + ['IspPlacements']
        [
          Stubs::IspPlacement.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::IspPlacement.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for IspPlacement
    class IspPlacement
      def self.default(visited=[])
        return nil if visited.include?('IspPlacement')
        visited = visited + ['IspPlacement']
        {
          isp_name: 'isp_name',
          placement_statistics: Stubs::PlacementStatistics.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::IspPlacement.new
        data = {}
        data['IspName'] = stub[:isp_name] unless stub[:isp_name].nil?
        data['PlacementStatistics'] = Stubs::PlacementStatistics.stub(stub[:placement_statistics]) unless stub[:placement_statistics].nil?
        data
      end
    end

    # Structure Stubber for PlacementStatistics
    class PlacementStatistics
      def self.default(visited=[])
        return nil if visited.include?('PlacementStatistics')
        visited = visited + ['PlacementStatistics']
        {
          inbox_percentage: 1.0,
          spam_percentage: 1.0,
          missing_percentage: 1.0,
          spf_percentage: 1.0,
          dkim_percentage: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::PlacementStatistics.new
        data = {}
        data['InboxPercentage'] = Hearth::NumberHelper.serialize(stub[:inbox_percentage])
        data['SpamPercentage'] = Hearth::NumberHelper.serialize(stub[:spam_percentage])
        data['MissingPercentage'] = Hearth::NumberHelper.serialize(stub[:missing_percentage])
        data['SpfPercentage'] = Hearth::NumberHelper.serialize(stub[:spf_percentage])
        data['DkimPercentage'] = Hearth::NumberHelper.serialize(stub[:dkim_percentage])
        data
      end
    end

    # Structure Stubber for DeliverabilityTestReport
    class DeliverabilityTestReport
      def self.default(visited=[])
        return nil if visited.include?('DeliverabilityTestReport')
        visited = visited + ['DeliverabilityTestReport']
        {
          report_id: 'report_id',
          report_name: 'report_name',
          subject: 'subject',
          from_email_address: 'from_email_address',
          create_date: Time.now,
          deliverability_test_status: 'deliverability_test_status',
        }
      end

      def self.stub(stub)
        stub ||= Types::DeliverabilityTestReport.new
        data = {}
        data['ReportId'] = stub[:report_id] unless stub[:report_id].nil?
        data['ReportName'] = stub[:report_name] unless stub[:report_name].nil?
        data['Subject'] = stub[:subject] unless stub[:subject].nil?
        data['FromEmailAddress'] = stub[:from_email_address] unless stub[:from_email_address].nil?
        data['CreateDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:create_date]).to_i unless stub[:create_date].nil?
        data['DeliverabilityTestStatus'] = stub[:deliverability_test_status] unless stub[:deliverability_test_status].nil?
        data
      end
    end

    # Operation Stubber for GetDomainDeliverabilityCampaign
    class GetDomainDeliverabilityCampaign
      def self.default(visited=[])
        {
          domain_deliverability_campaign: Stubs::DomainDeliverabilityCampaign.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['DomainDeliverabilityCampaign'] = Stubs::DomainDeliverabilityCampaign.stub(stub[:domain_deliverability_campaign]) unless stub[:domain_deliverability_campaign].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for DomainDeliverabilityCampaign
    class DomainDeliverabilityCampaign
      def self.default(visited=[])
        return nil if visited.include?('DomainDeliverabilityCampaign')
        visited = visited + ['DomainDeliverabilityCampaign']
        {
          campaign_id: 'campaign_id',
          image_url: 'image_url',
          subject: 'subject',
          from_address: 'from_address',
          sending_ips: Stubs::IpList.default(visited),
          first_seen_date_time: Time.now,
          last_seen_date_time: Time.now,
          inbox_count: 1,
          spam_count: 1,
          read_rate: 1.0,
          delete_rate: 1.0,
          read_delete_rate: 1.0,
          projected_volume: 1,
          esps: Stubs::Esps.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DomainDeliverabilityCampaign.new
        data = {}
        data['CampaignId'] = stub[:campaign_id] unless stub[:campaign_id].nil?
        data['ImageUrl'] = stub[:image_url] unless stub[:image_url].nil?
        data['Subject'] = stub[:subject] unless stub[:subject].nil?
        data['FromAddress'] = stub[:from_address] unless stub[:from_address].nil?
        data['SendingIps'] = Stubs::IpList.stub(stub[:sending_ips]) unless stub[:sending_ips].nil?
        data['FirstSeenDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:first_seen_date_time]).to_i unless stub[:first_seen_date_time].nil?
        data['LastSeenDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_seen_date_time]).to_i unless stub[:last_seen_date_time].nil?
        data['InboxCount'] = stub[:inbox_count] unless stub[:inbox_count].nil?
        data['SpamCount'] = stub[:spam_count] unless stub[:spam_count].nil?
        data['ReadRate'] = Hearth::NumberHelper.serialize(stub[:read_rate])
        data['DeleteRate'] = Hearth::NumberHelper.serialize(stub[:delete_rate])
        data['ReadDeleteRate'] = Hearth::NumberHelper.serialize(stub[:read_delete_rate])
        data['ProjectedVolume'] = stub[:projected_volume] unless stub[:projected_volume].nil?
        data['Esps'] = Stubs::Esps.stub(stub[:esps]) unless stub[:esps].nil?
        data
      end
    end

    # List Stubber for Esps
    class Esps
      def self.default(visited=[])
        return nil if visited.include?('Esps')
        visited = visited + ['Esps']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Stubber for IpList
    class IpList
      def self.default(visited=[])
        return nil if visited.include?('IpList')
        visited = visited + ['IpList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for GetDomainStatisticsReport
    class GetDomainStatisticsReport
      def self.default(visited=[])
        {
          overall_volume: Stubs::OverallVolume.default(visited),
          daily_volumes: Stubs::DailyVolumes.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['OverallVolume'] = Stubs::OverallVolume.stub(stub[:overall_volume]) unless stub[:overall_volume].nil?
        data['DailyVolumes'] = Stubs::DailyVolumes.stub(stub[:daily_volumes]) unless stub[:daily_volumes].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for DailyVolumes
    class DailyVolumes
      def self.default(visited=[])
        return nil if visited.include?('DailyVolumes')
        visited = visited + ['DailyVolumes']
        [
          Stubs::DailyVolume.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DailyVolume.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DailyVolume
    class DailyVolume
      def self.default(visited=[])
        return nil if visited.include?('DailyVolume')
        visited = visited + ['DailyVolume']
        {
          start_date: Time.now,
          volume_statistics: Stubs::VolumeStatistics.default(visited),
          domain_isp_placements: Stubs::DomainIspPlacements.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DailyVolume.new
        data = {}
        data['StartDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_date]).to_i unless stub[:start_date].nil?
        data['VolumeStatistics'] = Stubs::VolumeStatistics.stub(stub[:volume_statistics]) unless stub[:volume_statistics].nil?
        data['DomainIspPlacements'] = Stubs::DomainIspPlacements.stub(stub[:domain_isp_placements]) unless stub[:domain_isp_placements].nil?
        data
      end
    end

    # List Stubber for DomainIspPlacements
    class DomainIspPlacements
      def self.default(visited=[])
        return nil if visited.include?('DomainIspPlacements')
        visited = visited + ['DomainIspPlacements']
        [
          Stubs::DomainIspPlacement.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DomainIspPlacement.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DomainIspPlacement
    class DomainIspPlacement
      def self.default(visited=[])
        return nil if visited.include?('DomainIspPlacement')
        visited = visited + ['DomainIspPlacement']
        {
          isp_name: 'isp_name',
          inbox_raw_count: 1,
          spam_raw_count: 1,
          inbox_percentage: 1.0,
          spam_percentage: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::DomainIspPlacement.new
        data = {}
        data['IspName'] = stub[:isp_name] unless stub[:isp_name].nil?
        data['InboxRawCount'] = stub[:inbox_raw_count] unless stub[:inbox_raw_count].nil?
        data['SpamRawCount'] = stub[:spam_raw_count] unless stub[:spam_raw_count].nil?
        data['InboxPercentage'] = Hearth::NumberHelper.serialize(stub[:inbox_percentage])
        data['SpamPercentage'] = Hearth::NumberHelper.serialize(stub[:spam_percentage])
        data
      end
    end

    # Structure Stubber for VolumeStatistics
    class VolumeStatistics
      def self.default(visited=[])
        return nil if visited.include?('VolumeStatistics')
        visited = visited + ['VolumeStatistics']
        {
          inbox_raw_count: 1,
          spam_raw_count: 1,
          projected_inbox: 1,
          projected_spam: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::VolumeStatistics.new
        data = {}
        data['InboxRawCount'] = stub[:inbox_raw_count] unless stub[:inbox_raw_count].nil?
        data['SpamRawCount'] = stub[:spam_raw_count] unless stub[:spam_raw_count].nil?
        data['ProjectedInbox'] = stub[:projected_inbox] unless stub[:projected_inbox].nil?
        data['ProjectedSpam'] = stub[:projected_spam] unless stub[:projected_spam].nil?
        data
      end
    end

    # Structure Stubber for OverallVolume
    class OverallVolume
      def self.default(visited=[])
        return nil if visited.include?('OverallVolume')
        visited = visited + ['OverallVolume']
        {
          volume_statistics: Stubs::VolumeStatistics.default(visited),
          read_rate_percent: 1.0,
          domain_isp_placements: Stubs::DomainIspPlacements.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::OverallVolume.new
        data = {}
        data['VolumeStatistics'] = Stubs::VolumeStatistics.stub(stub[:volume_statistics]) unless stub[:volume_statistics].nil?
        data['ReadRatePercent'] = Hearth::NumberHelper.serialize(stub[:read_rate_percent])
        data['DomainIspPlacements'] = Stubs::DomainIspPlacements.stub(stub[:domain_isp_placements]) unless stub[:domain_isp_placements].nil?
        data
      end
    end

    # Operation Stubber for GetEmailIdentity
    class GetEmailIdentity
      def self.default(visited=[])
        {
          identity_type: 'identity_type',
          feedback_forwarding_status: false,
          verified_for_sending_status: false,
          dkim_attributes: Stubs::DkimAttributes.default(visited),
          mail_from_attributes: Stubs::MailFromAttributes.default(visited),
          policies: Stubs::PolicyMap.default(visited),
          tags: Stubs::TagList.default(visited),
          configuration_set_name: 'configuration_set_name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['IdentityType'] = stub[:identity_type] unless stub[:identity_type].nil?
        data['FeedbackForwardingStatus'] = stub[:feedback_forwarding_status] unless stub[:feedback_forwarding_status].nil?
        data['VerifiedForSendingStatus'] = stub[:verified_for_sending_status] unless stub[:verified_for_sending_status].nil?
        data['DkimAttributes'] = Stubs::DkimAttributes.stub(stub[:dkim_attributes]) unless stub[:dkim_attributes].nil?
        data['MailFromAttributes'] = Stubs::MailFromAttributes.stub(stub[:mail_from_attributes]) unless stub[:mail_from_attributes].nil?
        data['Policies'] = Stubs::PolicyMap.stub(stub[:policies]) unless stub[:policies].nil?
        data['Tags'] = Stubs::TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['ConfigurationSetName'] = stub[:configuration_set_name] unless stub[:configuration_set_name].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Stubber for PolicyMap
    class PolicyMap
      def self.default(visited=[])
        return nil if visited.include?('PolicyMap')
        visited = visited + ['PolicyMap']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for MailFromAttributes
    class MailFromAttributes
      def self.default(visited=[])
        return nil if visited.include?('MailFromAttributes')
        visited = visited + ['MailFromAttributes']
        {
          mail_from_domain: 'mail_from_domain',
          mail_from_domain_status: 'mail_from_domain_status',
          behavior_on_mx_failure: 'behavior_on_mx_failure',
        }
      end

      def self.stub(stub)
        stub ||= Types::MailFromAttributes.new
        data = {}
        data['MailFromDomain'] = stub[:mail_from_domain] unless stub[:mail_from_domain].nil?
        data['MailFromDomainStatus'] = stub[:mail_from_domain_status] unless stub[:mail_from_domain_status].nil?
        data['BehaviorOnMxFailure'] = stub[:behavior_on_mx_failure] unless stub[:behavior_on_mx_failure].nil?
        data
      end
    end

    # Operation Stubber for GetEmailIdentityPolicies
    class GetEmailIdentityPolicies
      def self.default(visited=[])
        {
          policies: Stubs::PolicyMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Policies'] = Stubs::PolicyMap.stub(stub[:policies]) unless stub[:policies].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetEmailTemplate
    class GetEmailTemplate
      def self.default(visited=[])
        {
          template_name: 'template_name',
          template_content: Stubs::EmailTemplateContent.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['TemplateName'] = stub[:template_name] unless stub[:template_name].nil?
        data['TemplateContent'] = Stubs::EmailTemplateContent.stub(stub[:template_content]) unless stub[:template_content].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for EmailTemplateContent
    class EmailTemplateContent
      def self.default(visited=[])
        return nil if visited.include?('EmailTemplateContent')
        visited = visited + ['EmailTemplateContent']
        {
          subject: 'subject',
          text: 'text',
          html: 'html',
        }
      end

      def self.stub(stub)
        stub ||= Types::EmailTemplateContent.new
        data = {}
        data['Subject'] = stub[:subject] unless stub[:subject].nil?
        data['Text'] = stub[:text] unless stub[:text].nil?
        data['Html'] = stub[:html] unless stub[:html].nil?
        data
      end
    end

    # Operation Stubber for GetImportJob
    class GetImportJob
      def self.default(visited=[])
        {
          job_id: 'job_id',
          import_destination: Stubs::ImportDestination.default(visited),
          import_data_source: Stubs::ImportDataSource.default(visited),
          failure_info: Stubs::FailureInfo.default(visited),
          job_status: 'job_status',
          created_timestamp: Time.now,
          completed_timestamp: Time.now,
          processed_records_count: 1,
          failed_records_count: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['JobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['ImportDestination'] = Stubs::ImportDestination.stub(stub[:import_destination]) unless stub[:import_destination].nil?
        data['ImportDataSource'] = Stubs::ImportDataSource.stub(stub[:import_data_source]) unless stub[:import_data_source].nil?
        data['FailureInfo'] = Stubs::FailureInfo.stub(stub[:failure_info]) unless stub[:failure_info].nil?
        data['JobStatus'] = stub[:job_status] unless stub[:job_status].nil?
        data['CreatedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_timestamp]).to_i unless stub[:created_timestamp].nil?
        data['CompletedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:completed_timestamp]).to_i unless stub[:completed_timestamp].nil?
        data['ProcessedRecordsCount'] = stub[:processed_records_count] unless stub[:processed_records_count].nil?
        data['FailedRecordsCount'] = stub[:failed_records_count] unless stub[:failed_records_count].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for FailureInfo
    class FailureInfo
      def self.default(visited=[])
        return nil if visited.include?('FailureInfo')
        visited = visited + ['FailureInfo']
        {
          failed_records_s3_url: 'failed_records_s3_url',
          error_message: 'error_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::FailureInfo.new
        data = {}
        data['FailedRecordsS3Url'] = stub[:failed_records_s3_url] unless stub[:failed_records_s3_url].nil?
        data['ErrorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data
      end
    end

    # Structure Stubber for ImportDataSource
    class ImportDataSource
      def self.default(visited=[])
        return nil if visited.include?('ImportDataSource')
        visited = visited + ['ImportDataSource']
        {
          s3_url: 's3_url',
          data_format: 'data_format',
        }
      end

      def self.stub(stub)
        stub ||= Types::ImportDataSource.new
        data = {}
        data['S3Url'] = stub[:s3_url] unless stub[:s3_url].nil?
        data['DataFormat'] = stub[:data_format] unless stub[:data_format].nil?
        data
      end
    end

    # Structure Stubber for ImportDestination
    class ImportDestination
      def self.default(visited=[])
        return nil if visited.include?('ImportDestination')
        visited = visited + ['ImportDestination']
        {
          suppression_list_destination: Stubs::SuppressionListDestination.default(visited),
          contact_list_destination: Stubs::ContactListDestination.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ImportDestination.new
        data = {}
        data['SuppressionListDestination'] = Stubs::SuppressionListDestination.stub(stub[:suppression_list_destination]) unless stub[:suppression_list_destination].nil?
        data['ContactListDestination'] = Stubs::ContactListDestination.stub(stub[:contact_list_destination]) unless stub[:contact_list_destination].nil?
        data
      end
    end

    # Structure Stubber for ContactListDestination
    class ContactListDestination
      def self.default(visited=[])
        return nil if visited.include?('ContactListDestination')
        visited = visited + ['ContactListDestination']
        {
          contact_list_name: 'contact_list_name',
          contact_list_import_action: 'contact_list_import_action',
        }
      end

      def self.stub(stub)
        stub ||= Types::ContactListDestination.new
        data = {}
        data['ContactListName'] = stub[:contact_list_name] unless stub[:contact_list_name].nil?
        data['ContactListImportAction'] = stub[:contact_list_import_action] unless stub[:contact_list_import_action].nil?
        data
      end
    end

    # Structure Stubber for SuppressionListDestination
    class SuppressionListDestination
      def self.default(visited=[])
        return nil if visited.include?('SuppressionListDestination')
        visited = visited + ['SuppressionListDestination']
        {
          suppression_list_import_action: 'suppression_list_import_action',
        }
      end

      def self.stub(stub)
        stub ||= Types::SuppressionListDestination.new
        data = {}
        data['SuppressionListImportAction'] = stub[:suppression_list_import_action] unless stub[:suppression_list_import_action].nil?
        data
      end
    end

    # Operation Stubber for GetSuppressedDestination
    class GetSuppressedDestination
      def self.default(visited=[])
        {
          suppressed_destination: Stubs::SuppressedDestination.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['SuppressedDestination'] = Stubs::SuppressedDestination.stub(stub[:suppressed_destination]) unless stub[:suppressed_destination].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for SuppressedDestination
    class SuppressedDestination
      def self.default(visited=[])
        return nil if visited.include?('SuppressedDestination')
        visited = visited + ['SuppressedDestination']
        {
          email_address: 'email_address',
          reason: 'reason',
          last_update_time: Time.now,
          attributes: Stubs::SuppressedDestinationAttributes.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SuppressedDestination.new
        data = {}
        data['EmailAddress'] = stub[:email_address] unless stub[:email_address].nil?
        data['Reason'] = stub[:reason] unless stub[:reason].nil?
        data['LastUpdateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_update_time]).to_i unless stub[:last_update_time].nil?
        data['Attributes'] = Stubs::SuppressedDestinationAttributes.stub(stub[:attributes]) unless stub[:attributes].nil?
        data
      end
    end

    # Structure Stubber for SuppressedDestinationAttributes
    class SuppressedDestinationAttributes
      def self.default(visited=[])
        return nil if visited.include?('SuppressedDestinationAttributes')
        visited = visited + ['SuppressedDestinationAttributes']
        {
          message_id: 'message_id',
          feedback_id: 'feedback_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::SuppressedDestinationAttributes.new
        data = {}
        data['MessageId'] = stub[:message_id] unless stub[:message_id].nil?
        data['FeedbackId'] = stub[:feedback_id] unless stub[:feedback_id].nil?
        data
      end
    end

    # Operation Stubber for ListConfigurationSets
    class ListConfigurationSets
      def self.default(visited=[])
        {
          configuration_sets: Stubs::ConfigurationSetNameList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ConfigurationSets'] = Stubs::ConfigurationSetNameList.stub(stub[:configuration_sets]) unless stub[:configuration_sets].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ConfigurationSetNameList
    class ConfigurationSetNameList
      def self.default(visited=[])
        return nil if visited.include?('ConfigurationSetNameList')
        visited = visited + ['ConfigurationSetNameList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListContactLists
    class ListContactLists
      def self.default(visited=[])
        {
          contact_lists: Stubs::ListOfContactLists.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ContactLists'] = Stubs::ListOfContactLists.stub(stub[:contact_lists]) unless stub[:contact_lists].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ListOfContactLists
    class ListOfContactLists
      def self.default(visited=[])
        return nil if visited.include?('ListOfContactLists')
        visited = visited + ['ListOfContactLists']
        [
          Stubs::ContactList.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ContactList.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ContactList
    class ContactList
      def self.default(visited=[])
        return nil if visited.include?('ContactList')
        visited = visited + ['ContactList']
        {
          contact_list_name: 'contact_list_name',
          last_updated_timestamp: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ContactList.new
        data = {}
        data['ContactListName'] = stub[:contact_list_name] unless stub[:contact_list_name].nil?
        data['LastUpdatedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_timestamp]).to_i unless stub[:last_updated_timestamp].nil?
        data
      end
    end

    # Operation Stubber for ListContacts
    class ListContacts
      def self.default(visited=[])
        {
          contacts: Stubs::ListOfContacts.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Contacts'] = Stubs::ListOfContacts.stub(stub[:contacts]) unless stub[:contacts].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ListOfContacts
    class ListOfContacts
      def self.default(visited=[])
        return nil if visited.include?('ListOfContacts')
        visited = visited + ['ListOfContacts']
        [
          Stubs::Contact.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Contact.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Contact
    class Contact
      def self.default(visited=[])
        return nil if visited.include?('Contact')
        visited = visited + ['Contact']
        {
          email_address: 'email_address',
          topic_preferences: Stubs::TopicPreferenceList.default(visited),
          topic_default_preferences: Stubs::TopicPreferenceList.default(visited),
          unsubscribe_all: false,
          last_updated_timestamp: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::Contact.new
        data = {}
        data['EmailAddress'] = stub[:email_address] unless stub[:email_address].nil?
        data['TopicPreferences'] = Stubs::TopicPreferenceList.stub(stub[:topic_preferences]) unless stub[:topic_preferences].nil?
        data['TopicDefaultPreferences'] = Stubs::TopicPreferenceList.stub(stub[:topic_default_preferences]) unless stub[:topic_default_preferences].nil?
        data['UnsubscribeAll'] = stub[:unsubscribe_all] unless stub[:unsubscribe_all].nil?
        data['LastUpdatedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_timestamp]).to_i unless stub[:last_updated_timestamp].nil?
        data
      end
    end

    # Operation Stubber for ListCustomVerificationEmailTemplates
    class ListCustomVerificationEmailTemplates
      def self.default(visited=[])
        {
          custom_verification_email_templates: Stubs::CustomVerificationEmailTemplatesList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['CustomVerificationEmailTemplates'] = Stubs::CustomVerificationEmailTemplatesList.stub(stub[:custom_verification_email_templates]) unless stub[:custom_verification_email_templates].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for CustomVerificationEmailTemplatesList
    class CustomVerificationEmailTemplatesList
      def self.default(visited=[])
        return nil if visited.include?('CustomVerificationEmailTemplatesList')
        visited = visited + ['CustomVerificationEmailTemplatesList']
        [
          Stubs::CustomVerificationEmailTemplateMetadata.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::CustomVerificationEmailTemplateMetadata.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CustomVerificationEmailTemplateMetadata
    class CustomVerificationEmailTemplateMetadata
      def self.default(visited=[])
        return nil if visited.include?('CustomVerificationEmailTemplateMetadata')
        visited = visited + ['CustomVerificationEmailTemplateMetadata']
        {
          template_name: 'template_name',
          from_email_address: 'from_email_address',
          template_subject: 'template_subject',
          success_redirection_url: 'success_redirection_url',
          failure_redirection_url: 'failure_redirection_url',
        }
      end

      def self.stub(stub)
        stub ||= Types::CustomVerificationEmailTemplateMetadata.new
        data = {}
        data['TemplateName'] = stub[:template_name] unless stub[:template_name].nil?
        data['FromEmailAddress'] = stub[:from_email_address] unless stub[:from_email_address].nil?
        data['TemplateSubject'] = stub[:template_subject] unless stub[:template_subject].nil?
        data['SuccessRedirectionURL'] = stub[:success_redirection_url] unless stub[:success_redirection_url].nil?
        data['FailureRedirectionURL'] = stub[:failure_redirection_url] unless stub[:failure_redirection_url].nil?
        data
      end
    end

    # Operation Stubber for ListDedicatedIpPools
    class ListDedicatedIpPools
      def self.default(visited=[])
        {
          dedicated_ip_pools: Stubs::ListOfDedicatedIpPools.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['DedicatedIpPools'] = Stubs::ListOfDedicatedIpPools.stub(stub[:dedicated_ip_pools]) unless stub[:dedicated_ip_pools].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ListOfDedicatedIpPools
    class ListOfDedicatedIpPools
      def self.default(visited=[])
        return nil if visited.include?('ListOfDedicatedIpPools')
        visited = visited + ['ListOfDedicatedIpPools']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListDeliverabilityTestReports
    class ListDeliverabilityTestReports
      def self.default(visited=[])
        {
          deliverability_test_reports: Stubs::DeliverabilityTestReports.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['DeliverabilityTestReports'] = Stubs::DeliverabilityTestReports.stub(stub[:deliverability_test_reports]) unless stub[:deliverability_test_reports].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for DeliverabilityTestReports
    class DeliverabilityTestReports
      def self.default(visited=[])
        return nil if visited.include?('DeliverabilityTestReports')
        visited = visited + ['DeliverabilityTestReports']
        [
          Stubs::DeliverabilityTestReport.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DeliverabilityTestReport.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListDomainDeliverabilityCampaigns
    class ListDomainDeliverabilityCampaigns
      def self.default(visited=[])
        {
          domain_deliverability_campaigns: Stubs::DomainDeliverabilityCampaignList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['DomainDeliverabilityCampaigns'] = Stubs::DomainDeliverabilityCampaignList.stub(stub[:domain_deliverability_campaigns]) unless stub[:domain_deliverability_campaigns].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for DomainDeliverabilityCampaignList
    class DomainDeliverabilityCampaignList
      def self.default(visited=[])
        return nil if visited.include?('DomainDeliverabilityCampaignList')
        visited = visited + ['DomainDeliverabilityCampaignList']
        [
          Stubs::DomainDeliverabilityCampaign.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DomainDeliverabilityCampaign.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListEmailIdentities
    class ListEmailIdentities
      def self.default(visited=[])
        {
          email_identities: Stubs::IdentityInfoList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['EmailIdentities'] = Stubs::IdentityInfoList.stub(stub[:email_identities]) unless stub[:email_identities].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for IdentityInfoList
    class IdentityInfoList
      def self.default(visited=[])
        return nil if visited.include?('IdentityInfoList')
        visited = visited + ['IdentityInfoList']
        [
          Stubs::IdentityInfo.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::IdentityInfo.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for IdentityInfo
    class IdentityInfo
      def self.default(visited=[])
        return nil if visited.include?('IdentityInfo')
        visited = visited + ['IdentityInfo']
        {
          identity_type: 'identity_type',
          identity_name: 'identity_name',
          sending_enabled: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::IdentityInfo.new
        data = {}
        data['IdentityType'] = stub[:identity_type] unless stub[:identity_type].nil?
        data['IdentityName'] = stub[:identity_name] unless stub[:identity_name].nil?
        data['SendingEnabled'] = stub[:sending_enabled] unless stub[:sending_enabled].nil?
        data
      end
    end

    # Operation Stubber for ListEmailTemplates
    class ListEmailTemplates
      def self.default(visited=[])
        {
          templates_metadata: Stubs::EmailTemplateMetadataList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['TemplatesMetadata'] = Stubs::EmailTemplateMetadataList.stub(stub[:templates_metadata]) unless stub[:templates_metadata].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for EmailTemplateMetadataList
    class EmailTemplateMetadataList
      def self.default(visited=[])
        return nil if visited.include?('EmailTemplateMetadataList')
        visited = visited + ['EmailTemplateMetadataList']
        [
          Stubs::EmailTemplateMetadata.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::EmailTemplateMetadata.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EmailTemplateMetadata
    class EmailTemplateMetadata
      def self.default(visited=[])
        return nil if visited.include?('EmailTemplateMetadata')
        visited = visited + ['EmailTemplateMetadata']
        {
          template_name: 'template_name',
          created_timestamp: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::EmailTemplateMetadata.new
        data = {}
        data['TemplateName'] = stub[:template_name] unless stub[:template_name].nil?
        data['CreatedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_timestamp]).to_i unless stub[:created_timestamp].nil?
        data
      end
    end

    # Operation Stubber for ListImportJobs
    class ListImportJobs
      def self.default(visited=[])
        {
          import_jobs: Stubs::ImportJobSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ImportJobs'] = Stubs::ImportJobSummaryList.stub(stub[:import_jobs]) unless stub[:import_jobs].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ImportJobSummaryList
    class ImportJobSummaryList
      def self.default(visited=[])
        return nil if visited.include?('ImportJobSummaryList')
        visited = visited + ['ImportJobSummaryList']
        [
          Stubs::ImportJobSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ImportJobSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ImportJobSummary
    class ImportJobSummary
      def self.default(visited=[])
        return nil if visited.include?('ImportJobSummary')
        visited = visited + ['ImportJobSummary']
        {
          job_id: 'job_id',
          import_destination: Stubs::ImportDestination.default(visited),
          job_status: 'job_status',
          created_timestamp: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ImportJobSummary.new
        data = {}
        data['JobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['ImportDestination'] = Stubs::ImportDestination.stub(stub[:import_destination]) unless stub[:import_destination].nil?
        data['JobStatus'] = stub[:job_status] unless stub[:job_status].nil?
        data['CreatedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_timestamp]).to_i unless stub[:created_timestamp].nil?
        data
      end
    end

    # Operation Stubber for ListSuppressedDestinations
    class ListSuppressedDestinations
      def self.default(visited=[])
        {
          suppressed_destination_summaries: Stubs::SuppressedDestinationSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['SuppressedDestinationSummaries'] = Stubs::SuppressedDestinationSummaries.stub(stub[:suppressed_destination_summaries]) unless stub[:suppressed_destination_summaries].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for SuppressedDestinationSummaries
    class SuppressedDestinationSummaries
      def self.default(visited=[])
        return nil if visited.include?('SuppressedDestinationSummaries')
        visited = visited + ['SuppressedDestinationSummaries']
        [
          Stubs::SuppressedDestinationSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SuppressedDestinationSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SuppressedDestinationSummary
    class SuppressedDestinationSummary
      def self.default(visited=[])
        return nil if visited.include?('SuppressedDestinationSummary')
        visited = visited + ['SuppressedDestinationSummary']
        {
          email_address: 'email_address',
          reason: 'reason',
          last_update_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::SuppressedDestinationSummary.new
        data = {}
        data['EmailAddress'] = stub[:email_address] unless stub[:email_address].nil?
        data['Reason'] = stub[:reason] unless stub[:reason].nil?
        data['LastUpdateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_update_time]).to_i unless stub[:last_update_time].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: Stubs::TagList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Tags'] = Stubs::TagList.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for PutAccountDedicatedIpWarmupAttributes
    class PutAccountDedicatedIpWarmupAttributes
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutAccountDetails
    class PutAccountDetails
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutAccountSendingAttributes
    class PutAccountSendingAttributes
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutAccountSuppressionAttributes
    class PutAccountSuppressionAttributes
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutConfigurationSetDeliveryOptions
    class PutConfigurationSetDeliveryOptions
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutConfigurationSetReputationOptions
    class PutConfigurationSetReputationOptions
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutConfigurationSetSendingOptions
    class PutConfigurationSetSendingOptions
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutConfigurationSetSuppressionOptions
    class PutConfigurationSetSuppressionOptions
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutConfigurationSetTrackingOptions
    class PutConfigurationSetTrackingOptions
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutDedicatedIpInPool
    class PutDedicatedIpInPool
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutDedicatedIpWarmupAttributes
    class PutDedicatedIpWarmupAttributes
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutDeliverabilityDashboardOption
    class PutDeliverabilityDashboardOption
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutEmailIdentityConfigurationSetAttributes
    class PutEmailIdentityConfigurationSetAttributes
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutEmailIdentityDkimAttributes
    class PutEmailIdentityDkimAttributes
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutEmailIdentityDkimSigningAttributes
    class PutEmailIdentityDkimSigningAttributes
      def self.default(visited=[])
        {
          dkim_status: 'dkim_status',
          dkim_tokens: Stubs::DnsTokenList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['DkimStatus'] = stub[:dkim_status] unless stub[:dkim_status].nil?
        data['DkimTokens'] = Stubs::DnsTokenList.stub(stub[:dkim_tokens]) unless stub[:dkim_tokens].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for PutEmailIdentityFeedbackAttributes
    class PutEmailIdentityFeedbackAttributes
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutEmailIdentityMailFromAttributes
    class PutEmailIdentityMailFromAttributes
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutSuppressedDestination
    class PutSuppressedDestination
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for SendBulkEmail
    class SendBulkEmail
      def self.default(visited=[])
        {
          bulk_email_entry_results: Stubs::BulkEmailEntryResultList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['BulkEmailEntryResults'] = Stubs::BulkEmailEntryResultList.stub(stub[:bulk_email_entry_results]) unless stub[:bulk_email_entry_results].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for BulkEmailEntryResultList
    class BulkEmailEntryResultList
      def self.default(visited=[])
        return nil if visited.include?('BulkEmailEntryResultList')
        visited = visited + ['BulkEmailEntryResultList']
        [
          Stubs::BulkEmailEntryResult.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::BulkEmailEntryResult.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BulkEmailEntryResult
    class BulkEmailEntryResult
      def self.default(visited=[])
        return nil if visited.include?('BulkEmailEntryResult')
        visited = visited + ['BulkEmailEntryResult']
        {
          status: 'status',
          error: 'error',
          message_id: 'message_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::BulkEmailEntryResult.new
        data = {}
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['Error'] = stub[:error] unless stub[:error].nil?
        data['MessageId'] = stub[:message_id] unless stub[:message_id].nil?
        data
      end
    end

    # Operation Stubber for SendCustomVerificationEmail
    class SendCustomVerificationEmail
      def self.default(visited=[])
        {
          message_id: 'message_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['MessageId'] = stub[:message_id] unless stub[:message_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for SendEmail
    class SendEmail
      def self.default(visited=[])
        {
          message_id: 'message_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['MessageId'] = stub[:message_id] unless stub[:message_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for TagResource
    class TagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for TestRenderEmailTemplate
    class TestRenderEmailTemplate
      def self.default(visited=[])
        {
          rendered_template: 'rendered_template',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['RenderedTemplate'] = stub[:rendered_template] unless stub[:rendered_template].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UntagResource
    class UntagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateConfigurationSetEventDestination
    class UpdateConfigurationSetEventDestination
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateContact
    class UpdateContact
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateContactList
    class UpdateContactList
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateCustomVerificationEmailTemplate
    class UpdateCustomVerificationEmailTemplate
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateEmailIdentityPolicy
    class UpdateEmailIdentityPolicy
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateEmailTemplate
    class UpdateEmailTemplate
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end
  end
end
