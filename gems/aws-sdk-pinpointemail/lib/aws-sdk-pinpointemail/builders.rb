# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::PinpointEmail
  module Builders

    # Operation Builder for CreateConfigurationSet
    class CreateConfigurationSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/v1/email/configuration-sets')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ConfigurationSetName'] = input[:configuration_set_name] unless input[:configuration_set_name].nil?
        data['TrackingOptions'] = Builders::TrackingOptions.build(input[:tracking_options]) unless input[:tracking_options].nil?
        data['DeliveryOptions'] = Builders::DeliveryOptions.build(input[:delivery_options]) unless input[:delivery_options].nil?
        data['ReputationOptions'] = Builders::ReputationOptions.build(input[:reputation_options]) unless input[:reputation_options].nil?
        data['SendingOptions'] = Builders::SendingOptions.build(input[:sending_options]) unless input[:sending_options].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagList
    class TagList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Tag.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Tag
    class Tag
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Structure Builder for SendingOptions
    class SendingOptions
      def self.build(input)
        data = {}
        data['SendingEnabled'] = input[:sending_enabled] unless input[:sending_enabled].nil?
        data
      end
    end

    # Structure Builder for ReputationOptions
    class ReputationOptions
      def self.build(input)
        data = {}
        data['ReputationMetricsEnabled'] = input[:reputation_metrics_enabled] unless input[:reputation_metrics_enabled].nil?
        data['LastFreshStart'] = Hearth::TimeHelper.to_epoch_seconds(input[:last_fresh_start]).to_i unless input[:last_fresh_start].nil?
        data
      end
    end

    # Structure Builder for DeliveryOptions
    class DeliveryOptions
      def self.build(input)
        data = {}
        data['TlsPolicy'] = input[:tls_policy] unless input[:tls_policy].nil?
        data['SendingPoolName'] = input[:sending_pool_name] unless input[:sending_pool_name].nil?
        data
      end
    end

    # Structure Builder for TrackingOptions
    class TrackingOptions
      def self.build(input)
        data = {}
        data['CustomRedirectDomain'] = input[:custom_redirect_domain] unless input[:custom_redirect_domain].nil?
        data
      end
    end

    # Operation Builder for CreateConfigurationSetEventDestination
    class CreateConfigurationSetEventDestination
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:configuration_set_name].to_s.empty?
          raise ArgumentError, "HTTP label :configuration_set_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/email/configuration-sets/%<ConfigurationSetName>s/event-destinations',
            ConfigurationSetName: Hearth::HTTP.uri_escape(input[:configuration_set_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['EventDestinationName'] = input[:event_destination_name] unless input[:event_destination_name].nil?
        data['EventDestination'] = Builders::EventDestinationDefinition.build(input[:event_destination]) unless input[:event_destination].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for EventDestinationDefinition
    class EventDestinationDefinition
      def self.build(input)
        data = {}
        data['Enabled'] = input[:enabled] unless input[:enabled].nil?
        data['MatchingEventTypes'] = Builders::EventTypes.build(input[:matching_event_types]) unless input[:matching_event_types].nil?
        data['KinesisFirehoseDestination'] = Builders::KinesisFirehoseDestination.build(input[:kinesis_firehose_destination]) unless input[:kinesis_firehose_destination].nil?
        data['CloudWatchDestination'] = Builders::CloudWatchDestination.build(input[:cloud_watch_destination]) unless input[:cloud_watch_destination].nil?
        data['SnsDestination'] = Builders::SnsDestination.build(input[:sns_destination]) unless input[:sns_destination].nil?
        data['PinpointDestination'] = Builders::PinpointDestination.build(input[:pinpoint_destination]) unless input[:pinpoint_destination].nil?
        data
      end
    end

    # Structure Builder for PinpointDestination
    class PinpointDestination
      def self.build(input)
        data = {}
        data['ApplicationArn'] = input[:application_arn] unless input[:application_arn].nil?
        data
      end
    end

    # Structure Builder for SnsDestination
    class SnsDestination
      def self.build(input)
        data = {}
        data['TopicArn'] = input[:topic_arn] unless input[:topic_arn].nil?
        data
      end
    end

    # Structure Builder for CloudWatchDestination
    class CloudWatchDestination
      def self.build(input)
        data = {}
        data['DimensionConfigurations'] = Builders::CloudWatchDimensionConfigurations.build(input[:dimension_configurations]) unless input[:dimension_configurations].nil?
        data
      end
    end

    # List Builder for CloudWatchDimensionConfigurations
    class CloudWatchDimensionConfigurations
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::CloudWatchDimensionConfiguration.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for CloudWatchDimensionConfiguration
    class CloudWatchDimensionConfiguration
      def self.build(input)
        data = {}
        data['DimensionName'] = input[:dimension_name] unless input[:dimension_name].nil?
        data['DimensionValueSource'] = input[:dimension_value_source] unless input[:dimension_value_source].nil?
        data['DefaultDimensionValue'] = input[:default_dimension_value] unless input[:default_dimension_value].nil?
        data
      end
    end

    # Structure Builder for KinesisFirehoseDestination
    class KinesisFirehoseDestination
      def self.build(input)
        data = {}
        data['IamRoleArn'] = input[:iam_role_arn] unless input[:iam_role_arn].nil?
        data['DeliveryStreamArn'] = input[:delivery_stream_arn] unless input[:delivery_stream_arn].nil?
        data
      end
    end

    # List Builder for EventTypes
    class EventTypes
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateDedicatedIpPool
    class CreateDedicatedIpPool
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/v1/email/dedicated-ip-pools')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['PoolName'] = input[:pool_name] unless input[:pool_name].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateDeliverabilityTestReport
    class CreateDeliverabilityTestReport
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/v1/email/deliverability-dashboard/test')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ReportName'] = input[:report_name] unless input[:report_name].nil?
        data['FromEmailAddress'] = input[:from_email_address] unless input[:from_email_address].nil?
        data['Content'] = Builders::EmailContent.build(input[:content]) unless input[:content].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for EmailContent
    class EmailContent
      def self.build(input)
        data = {}
        data['Simple'] = Builders::Message.build(input[:simple]) unless input[:simple].nil?
        data['Raw'] = Builders::RawMessage.build(input[:raw]) unless input[:raw].nil?
        data['Template'] = Builders::Template.build(input[:template]) unless input[:template].nil?
        data
      end
    end

    # Structure Builder for Template
    class Template
      def self.build(input)
        data = {}
        data['TemplateArn'] = input[:template_arn] unless input[:template_arn].nil?
        data['TemplateData'] = input[:template_data] unless input[:template_data].nil?
        data
      end
    end

    # Structure Builder for RawMessage
    class RawMessage
      def self.build(input)
        data = {}
        data['Data'] = Base64::encode64(input[:data]).strip unless input[:data].nil?
        data
      end
    end

    # Structure Builder for Message
    class Message
      def self.build(input)
        data = {}
        data['Subject'] = Builders::Content.build(input[:subject]) unless input[:subject].nil?
        data['Body'] = Builders::Body.build(input[:body]) unless input[:body].nil?
        data
      end
    end

    # Structure Builder for Body
    class Body
      def self.build(input)
        data = {}
        data['Text'] = Builders::Content.build(input[:text]) unless input[:text].nil?
        data['Html'] = Builders::Content.build(input[:html]) unless input[:html].nil?
        data
      end
    end

    # Structure Builder for Content
    class Content
      def self.build(input)
        data = {}
        data['Data'] = input[:data] unless input[:data].nil?
        data['Charset'] = input[:charset] unless input[:charset].nil?
        data
      end
    end

    # Operation Builder for CreateEmailIdentity
    class CreateEmailIdentity
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/v1/email/identities')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['EmailIdentity'] = input[:email_identity] unless input[:email_identity].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteConfigurationSet
    class DeleteConfigurationSet
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:configuration_set_name].to_s.empty?
          raise ArgumentError, "HTTP label :configuration_set_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/email/configuration-sets/%<ConfigurationSetName>s',
            ConfigurationSetName: Hearth::HTTP.uri_escape(input[:configuration_set_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteConfigurationSetEventDestination
    class DeleteConfigurationSetEventDestination
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:configuration_set_name].to_s.empty?
          raise ArgumentError, "HTTP label :configuration_set_name cannot be nil or empty."
        end
        if input[:event_destination_name].to_s.empty?
          raise ArgumentError, "HTTP label :event_destination_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/email/configuration-sets/%<ConfigurationSetName>s/event-destinations/%<EventDestinationName>s',
            ConfigurationSetName: Hearth::HTTP.uri_escape(input[:configuration_set_name].to_s),
            EventDestinationName: Hearth::HTTP.uri_escape(input[:event_destination_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteDedicatedIpPool
    class DeleteDedicatedIpPool
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:pool_name].to_s.empty?
          raise ArgumentError, "HTTP label :pool_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/email/dedicated-ip-pools/%<PoolName>s',
            PoolName: Hearth::HTTP.uri_escape(input[:pool_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteEmailIdentity
    class DeleteEmailIdentity
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:email_identity].to_s.empty?
          raise ArgumentError, "HTTP label :email_identity cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/email/identities/%<EmailIdentity>s',
            EmailIdentity: Hearth::HTTP.uri_escape(input[:email_identity].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetAccount
    class GetAccount
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/v1/email/account')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetBlacklistReports
    class GetBlacklistReports
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/v1/email/deliverability-dashboard/blacklist-report')
        params = Hearth::Query::ParamList.new
        unless input[:blacklist_item_names].nil? || input[:blacklist_item_names].empty?
          params['BlacklistItemNames'] = input[:blacklist_item_names].map do |value|
            value.to_s unless value.nil?
          end
        end
        http_req.append_query_params(params)
      end
    end

    # List Builder for BlacklistItemNames
    class BlacklistItemNames
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for GetConfigurationSet
    class GetConfigurationSet
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:configuration_set_name].to_s.empty?
          raise ArgumentError, "HTTP label :configuration_set_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/email/configuration-sets/%<ConfigurationSetName>s',
            ConfigurationSetName: Hearth::HTTP.uri_escape(input[:configuration_set_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetConfigurationSetEventDestinations
    class GetConfigurationSetEventDestinations
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:configuration_set_name].to_s.empty?
          raise ArgumentError, "HTTP label :configuration_set_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/email/configuration-sets/%<ConfigurationSetName>s/event-destinations',
            ConfigurationSetName: Hearth::HTTP.uri_escape(input[:configuration_set_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetDedicatedIp
    class GetDedicatedIp
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:ip].to_s.empty?
          raise ArgumentError, "HTTP label :ip cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/email/dedicated-ips/%<Ip>s',
            Ip: Hearth::HTTP.uri_escape(input[:ip].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetDedicatedIps
    class GetDedicatedIps
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/v1/email/dedicated-ips')
        params = Hearth::Query::ParamList.new
        params['PoolName'] = input[:pool_name].to_s unless input[:pool_name].nil?
        params['NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['PageSize'] = input[:page_size].to_s unless input[:page_size].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetDeliverabilityDashboardOptions
    class GetDeliverabilityDashboardOptions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/v1/email/deliverability-dashboard')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetDeliverabilityTestReport
    class GetDeliverabilityTestReport
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:report_id].to_s.empty?
          raise ArgumentError, "HTTP label :report_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/email/deliverability-dashboard/test-reports/%<ReportId>s',
            ReportId: Hearth::HTTP.uri_escape(input[:report_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetDomainDeliverabilityCampaign
    class GetDomainDeliverabilityCampaign
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:campaign_id].to_s.empty?
          raise ArgumentError, "HTTP label :campaign_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/email/deliverability-dashboard/campaigns/%<CampaignId>s',
            CampaignId: Hearth::HTTP.uri_escape(input[:campaign_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetDomainStatisticsReport
    class GetDomainStatisticsReport
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:domain].to_s.empty?
          raise ArgumentError, "HTTP label :domain cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/email/deliverability-dashboard/statistics-report/%<Domain>s',
            Domain: Hearth::HTTP.uri_escape(input[:domain].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['StartDate'] = Hearth::TimeHelper.to_date_time(input[:start_date]) unless input[:start_date].nil?
        params['EndDate'] = Hearth::TimeHelper.to_date_time(input[:end_date]) unless input[:end_date].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetEmailIdentity
    class GetEmailIdentity
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:email_identity].to_s.empty?
          raise ArgumentError, "HTTP label :email_identity cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/email/identities/%<EmailIdentity>s',
            EmailIdentity: Hearth::HTTP.uri_escape(input[:email_identity].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListConfigurationSets
    class ListConfigurationSets
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/v1/email/configuration-sets')
        params = Hearth::Query::ParamList.new
        params['NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['PageSize'] = input[:page_size].to_s unless input[:page_size].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListDedicatedIpPools
    class ListDedicatedIpPools
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/v1/email/dedicated-ip-pools')
        params = Hearth::Query::ParamList.new
        params['NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['PageSize'] = input[:page_size].to_s unless input[:page_size].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListDeliverabilityTestReports
    class ListDeliverabilityTestReports
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/v1/email/deliverability-dashboard/test-reports')
        params = Hearth::Query::ParamList.new
        params['NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['PageSize'] = input[:page_size].to_s unless input[:page_size].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListDomainDeliverabilityCampaigns
    class ListDomainDeliverabilityCampaigns
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:subscribed_domain].to_s.empty?
          raise ArgumentError, "HTTP label :subscribed_domain cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/email/deliverability-dashboard/domains/%<SubscribedDomain>s/campaigns',
            SubscribedDomain: Hearth::HTTP.uri_escape(input[:subscribed_domain].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['StartDate'] = Hearth::TimeHelper.to_date_time(input[:start_date]) unless input[:start_date].nil?
        params['EndDate'] = Hearth::TimeHelper.to_date_time(input[:end_date]) unless input[:end_date].nil?
        params['NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['PageSize'] = input[:page_size].to_s unless input[:page_size].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListEmailIdentities
    class ListEmailIdentities
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/v1/email/identities')
        params = Hearth::Query::ParamList.new
        params['NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['PageSize'] = input[:page_size].to_s unless input[:page_size].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/v1/email/tags')
        params = Hearth::Query::ParamList.new
        params['ResourceArn'] = input[:resource_arn].to_s unless input[:resource_arn].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for PutAccountDedicatedIpWarmupAttributes
    class PutAccountDedicatedIpWarmupAttributes
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/v1/email/account/dedicated-ips/warmup')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['AutoWarmupEnabled'] = input[:auto_warmup_enabled] unless input[:auto_warmup_enabled].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutAccountSendingAttributes
    class PutAccountSendingAttributes
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/v1/email/account/sending')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['SendingEnabled'] = input[:sending_enabled] unless input[:sending_enabled].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutConfigurationSetDeliveryOptions
    class PutConfigurationSetDeliveryOptions
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:configuration_set_name].to_s.empty?
          raise ArgumentError, "HTTP label :configuration_set_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/email/configuration-sets/%<ConfigurationSetName>s/delivery-options',
            ConfigurationSetName: Hearth::HTTP.uri_escape(input[:configuration_set_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['TlsPolicy'] = input[:tls_policy] unless input[:tls_policy].nil?
        data['SendingPoolName'] = input[:sending_pool_name] unless input[:sending_pool_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutConfigurationSetReputationOptions
    class PutConfigurationSetReputationOptions
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:configuration_set_name].to_s.empty?
          raise ArgumentError, "HTTP label :configuration_set_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/email/configuration-sets/%<ConfigurationSetName>s/reputation-options',
            ConfigurationSetName: Hearth::HTTP.uri_escape(input[:configuration_set_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ReputationMetricsEnabled'] = input[:reputation_metrics_enabled] unless input[:reputation_metrics_enabled].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutConfigurationSetSendingOptions
    class PutConfigurationSetSendingOptions
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:configuration_set_name].to_s.empty?
          raise ArgumentError, "HTTP label :configuration_set_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/email/configuration-sets/%<ConfigurationSetName>s/sending',
            ConfigurationSetName: Hearth::HTTP.uri_escape(input[:configuration_set_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['SendingEnabled'] = input[:sending_enabled] unless input[:sending_enabled].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutConfigurationSetTrackingOptions
    class PutConfigurationSetTrackingOptions
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:configuration_set_name].to_s.empty?
          raise ArgumentError, "HTTP label :configuration_set_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/email/configuration-sets/%<ConfigurationSetName>s/tracking-options',
            ConfigurationSetName: Hearth::HTTP.uri_escape(input[:configuration_set_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['CustomRedirectDomain'] = input[:custom_redirect_domain] unless input[:custom_redirect_domain].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutDedicatedIpInPool
    class PutDedicatedIpInPool
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:ip].to_s.empty?
          raise ArgumentError, "HTTP label :ip cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/email/dedicated-ips/%<Ip>s/pool',
            Ip: Hearth::HTTP.uri_escape(input[:ip].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['DestinationPoolName'] = input[:destination_pool_name] unless input[:destination_pool_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutDedicatedIpWarmupAttributes
    class PutDedicatedIpWarmupAttributes
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:ip].to_s.empty?
          raise ArgumentError, "HTTP label :ip cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/email/dedicated-ips/%<Ip>s/warmup',
            Ip: Hearth::HTTP.uri_escape(input[:ip].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['WarmupPercentage'] = input[:warmup_percentage] unless input[:warmup_percentage].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutDeliverabilityDashboardOption
    class PutDeliverabilityDashboardOption
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/v1/email/deliverability-dashboard')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['DashboardEnabled'] = input[:dashboard_enabled] unless input[:dashboard_enabled].nil?
        data['SubscribedDomains'] = Builders::DomainDeliverabilityTrackingOptions.build(input[:subscribed_domains]) unless input[:subscribed_domains].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for DomainDeliverabilityTrackingOptions
    class DomainDeliverabilityTrackingOptions
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::DomainDeliverabilityTrackingOption.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for DomainDeliverabilityTrackingOption
    class DomainDeliverabilityTrackingOption
      def self.build(input)
        data = {}
        data['Domain'] = input[:domain] unless input[:domain].nil?
        data['SubscriptionStartDate'] = Hearth::TimeHelper.to_epoch_seconds(input[:subscription_start_date]).to_i unless input[:subscription_start_date].nil?
        data['InboxPlacementTrackingOption'] = Builders::InboxPlacementTrackingOption.build(input[:inbox_placement_tracking_option]) unless input[:inbox_placement_tracking_option].nil?
        data
      end
    end

    # Structure Builder for InboxPlacementTrackingOption
    class InboxPlacementTrackingOption
      def self.build(input)
        data = {}
        data['Global'] = input[:global] unless input[:global].nil?
        data['TrackedIsps'] = Builders::IspNameList.build(input[:tracked_isps]) unless input[:tracked_isps].nil?
        data
      end
    end

    # List Builder for IspNameList
    class IspNameList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for PutEmailIdentityDkimAttributes
    class PutEmailIdentityDkimAttributes
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:email_identity].to_s.empty?
          raise ArgumentError, "HTTP label :email_identity cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/email/identities/%<EmailIdentity>s/dkim',
            EmailIdentity: Hearth::HTTP.uri_escape(input[:email_identity].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['SigningEnabled'] = input[:signing_enabled] unless input[:signing_enabled].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutEmailIdentityFeedbackAttributes
    class PutEmailIdentityFeedbackAttributes
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:email_identity].to_s.empty?
          raise ArgumentError, "HTTP label :email_identity cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/email/identities/%<EmailIdentity>s/feedback',
            EmailIdentity: Hearth::HTTP.uri_escape(input[:email_identity].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['EmailForwardingEnabled'] = input[:email_forwarding_enabled] unless input[:email_forwarding_enabled].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutEmailIdentityMailFromAttributes
    class PutEmailIdentityMailFromAttributes
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:email_identity].to_s.empty?
          raise ArgumentError, "HTTP label :email_identity cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/email/identities/%<EmailIdentity>s/mail-from',
            EmailIdentity: Hearth::HTTP.uri_escape(input[:email_identity].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['MailFromDomain'] = input[:mail_from_domain] unless input[:mail_from_domain].nil?
        data['BehaviorOnMxFailure'] = input[:behavior_on_mx_failure] unless input[:behavior_on_mx_failure].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for SendEmail
    class SendEmail
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/v1/email/outbound-emails')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['FromEmailAddress'] = input[:from_email_address] unless input[:from_email_address].nil?
        data['Destination'] = Builders::Destination.build(input[:destination]) unless input[:destination].nil?
        data['ReplyToAddresses'] = Builders::EmailAddressList.build(input[:reply_to_addresses]) unless input[:reply_to_addresses].nil?
        data['FeedbackForwardingEmailAddress'] = input[:feedback_forwarding_email_address] unless input[:feedback_forwarding_email_address].nil?
        data['Content'] = Builders::EmailContent.build(input[:content]) unless input[:content].nil?
        data['EmailTags'] = Builders::MessageTagList.build(input[:email_tags]) unless input[:email_tags].nil?
        data['ConfigurationSetName'] = input[:configuration_set_name] unless input[:configuration_set_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for MessageTagList
    class MessageTagList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::MessageTag.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for MessageTag
    class MessageTag
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # List Builder for EmailAddressList
    class EmailAddressList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Destination
    class Destination
      def self.build(input)
        data = {}
        data['ToAddresses'] = Builders::EmailAddressList.build(input[:to_addresses]) unless input[:to_addresses].nil?
        data['CcAddresses'] = Builders::EmailAddressList.build(input[:cc_addresses]) unless input[:cc_addresses].nil?
        data['BccAddresses'] = Builders::EmailAddressList.build(input[:bcc_addresses]) unless input[:bcc_addresses].nil?
        data
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/v1/email/tags')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        http_req.append_path('/v1/email/tags')
        params = Hearth::Query::ParamList.new
        params['ResourceArn'] = input[:resource_arn].to_s unless input[:resource_arn].nil?
        unless input[:tag_keys].nil? || input[:tag_keys].empty?
          params['TagKeys'] = input[:tag_keys].map do |value|
            value.to_s unless value.nil?
          end
        end
        http_req.append_query_params(params)
      end
    end

    # List Builder for TagKeyList
    class TagKeyList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateConfigurationSetEventDestination
    class UpdateConfigurationSetEventDestination
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:configuration_set_name].to_s.empty?
          raise ArgumentError, "HTTP label :configuration_set_name cannot be nil or empty."
        end
        if input[:event_destination_name].to_s.empty?
          raise ArgumentError, "HTTP label :event_destination_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/email/configuration-sets/%<ConfigurationSetName>s/event-destinations/%<EventDestinationName>s',
            ConfigurationSetName: Hearth::HTTP.uri_escape(input[:configuration_set_name].to_s),
            EventDestinationName: Hearth::HTTP.uri_escape(input[:event_destination_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['EventDestination'] = Builders::EventDestinationDefinition.build(input[:event_destination]) unless input[:event_destination].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
