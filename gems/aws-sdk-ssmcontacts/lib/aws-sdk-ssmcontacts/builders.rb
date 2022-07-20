# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SSMContacts
  module Builders

    # Operation Builder for AcceptPage
    class AcceptPage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SSMContacts.AcceptPage'
        data = {}
        data['PageId'] = input[:page_id] unless input[:page_id].nil?
        data['ContactChannelId'] = input[:contact_channel_id] unless input[:contact_channel_id].nil?
        data['AcceptType'] = input[:accept_type] unless input[:accept_type].nil?
        data['Note'] = input[:note] unless input[:note].nil?
        data['AcceptCode'] = input[:accept_code] unless input[:accept_code].nil?
        data['AcceptCodeValidation'] = input[:accept_code_validation] unless input[:accept_code_validation].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ActivateContactChannel
    class ActivateContactChannel
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SSMContacts.ActivateContactChannel'
        data = {}
        data['ContactChannelId'] = input[:contact_channel_id] unless input[:contact_channel_id].nil?
        data['ActivationCode'] = input[:activation_code] unless input[:activation_code].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateContact
    class CreateContact
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SSMContacts.CreateContact'
        data = {}
        data['Alias'] = input[:alias] unless input[:alias].nil?
        data['DisplayName'] = input[:display_name] unless input[:display_name].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data['Plan'] = Builders::Plan.build(input[:plan]) unless input[:plan].nil?
        data['Tags'] = Builders::TagsList.build(input[:tags]) unless input[:tags].nil?
        data['IdempotencyToken'] = input[:idempotency_token] unless input[:idempotency_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagsList
    class TagsList
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

    # Structure Builder for Plan
    class Plan
      def self.build(input)
        data = {}
        data['Stages'] = Builders::StagesList.build(input[:stages]) unless input[:stages].nil?
        data
      end
    end

    # List Builder for StagesList
    class StagesList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Stage.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Stage
    class Stage
      def self.build(input)
        data = {}
        data['DurationInMinutes'] = input[:duration_in_minutes] unless input[:duration_in_minutes].nil?
        data['Targets'] = Builders::TargetsList.build(input[:targets]) unless input[:targets].nil?
        data
      end
    end

    # List Builder for TargetsList
    class TargetsList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Target.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Target
    class Target
      def self.build(input)
        data = {}
        data['ChannelTargetInfo'] = Builders::ChannelTargetInfo.build(input[:channel_target_info]) unless input[:channel_target_info].nil?
        data['ContactTargetInfo'] = Builders::ContactTargetInfo.build(input[:contact_target_info]) unless input[:contact_target_info].nil?
        data
      end
    end

    # Structure Builder for ContactTargetInfo
    class ContactTargetInfo
      def self.build(input)
        data = {}
        data['ContactId'] = input[:contact_id] unless input[:contact_id].nil?
        data['IsEssential'] = input[:is_essential] unless input[:is_essential].nil?
        data
      end
    end

    # Structure Builder for ChannelTargetInfo
    class ChannelTargetInfo
      def self.build(input)
        data = {}
        data['ContactChannelId'] = input[:contact_channel_id] unless input[:contact_channel_id].nil?
        data['RetryIntervalInMinutes'] = input[:retry_interval_in_minutes] unless input[:retry_interval_in_minutes].nil?
        data
      end
    end

    # Operation Builder for CreateContactChannel
    class CreateContactChannel
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SSMContacts.CreateContactChannel'
        data = {}
        data['ContactId'] = input[:contact_id] unless input[:contact_id].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data['DeliveryAddress'] = Builders::ContactChannelAddress.build(input[:delivery_address]) unless input[:delivery_address].nil?
        data['DeferActivation'] = input[:defer_activation] unless input[:defer_activation].nil?
        data['IdempotencyToken'] = input[:idempotency_token] unless input[:idempotency_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ContactChannelAddress
    class ContactChannelAddress
      def self.build(input)
        data = {}
        data['SimpleAddress'] = input[:simple_address] unless input[:simple_address].nil?
        data
      end
    end

    # Operation Builder for DeactivateContactChannel
    class DeactivateContactChannel
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SSMContacts.DeactivateContactChannel'
        data = {}
        data['ContactChannelId'] = input[:contact_channel_id] unless input[:contact_channel_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteContact
    class DeleteContact
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SSMContacts.DeleteContact'
        data = {}
        data['ContactId'] = input[:contact_id] unless input[:contact_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteContactChannel
    class DeleteContactChannel
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SSMContacts.DeleteContactChannel'
        data = {}
        data['ContactChannelId'] = input[:contact_channel_id] unless input[:contact_channel_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeEngagement
    class DescribeEngagement
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SSMContacts.DescribeEngagement'
        data = {}
        data['EngagementId'] = input[:engagement_id] unless input[:engagement_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribePage
    class DescribePage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SSMContacts.DescribePage'
        data = {}
        data['PageId'] = input[:page_id] unless input[:page_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetContact
    class GetContact
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SSMContacts.GetContact'
        data = {}
        data['ContactId'] = input[:contact_id] unless input[:contact_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetContactChannel
    class GetContactChannel
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SSMContacts.GetContactChannel'
        data = {}
        data['ContactChannelId'] = input[:contact_channel_id] unless input[:contact_channel_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetContactPolicy
    class GetContactPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SSMContacts.GetContactPolicy'
        data = {}
        data['ContactArn'] = input[:contact_arn] unless input[:contact_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListContactChannels
    class ListContactChannels
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SSMContacts.ListContactChannels'
        data = {}
        data['ContactId'] = input[:contact_id] unless input[:contact_id].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListContacts
    class ListContacts
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SSMContacts.ListContacts'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['AliasPrefix'] = input[:alias_prefix] unless input[:alias_prefix].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListEngagements
    class ListEngagements
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SSMContacts.ListEngagements'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['IncidentId'] = input[:incident_id] unless input[:incident_id].nil?
        data['TimeRangeValue'] = Builders::TimeRange.build(input[:time_range_value]) unless input[:time_range_value].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for TimeRange
    class TimeRange
      def self.build(input)
        data = {}
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:start_time]).to_i unless input[:start_time].nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:end_time]).to_i unless input[:end_time].nil?
        data
      end
    end

    # Operation Builder for ListPageReceipts
    class ListPageReceipts
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SSMContacts.ListPageReceipts'
        data = {}
        data['PageId'] = input[:page_id] unless input[:page_id].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListPagesByContact
    class ListPagesByContact
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SSMContacts.ListPagesByContact'
        data = {}
        data['ContactId'] = input[:contact_id] unless input[:contact_id].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListPagesByEngagement
    class ListPagesByEngagement
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SSMContacts.ListPagesByEngagement'
        data = {}
        data['EngagementId'] = input[:engagement_id] unless input[:engagement_id].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SSMContacts.ListTagsForResource'
        data = {}
        data['ResourceARN'] = input[:resource_arn] unless input[:resource_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutContactPolicy
    class PutContactPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SSMContacts.PutContactPolicy'
        data = {}
        data['ContactArn'] = input[:contact_arn] unless input[:contact_arn].nil?
        data['Policy'] = input[:policy] unless input[:policy].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for SendActivationCode
    class SendActivationCode
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SSMContacts.SendActivationCode'
        data = {}
        data['ContactChannelId'] = input[:contact_channel_id] unless input[:contact_channel_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartEngagement
    class StartEngagement
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SSMContacts.StartEngagement'
        data = {}
        data['ContactId'] = input[:contact_id] unless input[:contact_id].nil?
        data['Sender'] = input[:sender] unless input[:sender].nil?
        data['Subject'] = input[:subject] unless input[:subject].nil?
        data['Content'] = input[:content] unless input[:content].nil?
        data['PublicSubject'] = input[:public_subject] unless input[:public_subject].nil?
        data['PublicContent'] = input[:public_content] unless input[:public_content].nil?
        data['IncidentId'] = input[:incident_id] unless input[:incident_id].nil?
        data['IdempotencyToken'] = input[:idempotency_token] unless input[:idempotency_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StopEngagement
    class StopEngagement
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SSMContacts.StopEngagement'
        data = {}
        data['EngagementId'] = input[:engagement_id] unless input[:engagement_id].nil?
        data['Reason'] = input[:reason] unless input[:reason].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SSMContacts.TagResource'
        data = {}
        data['ResourceARN'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['Tags'] = Builders::TagsList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SSMContacts.UntagResource'
        data = {}
        data['ResourceARN'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['TagKeys'] = Builders::TagKeyList.build(input[:tag_keys]) unless input[:tag_keys].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
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

    # Operation Builder for UpdateContact
    class UpdateContact
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SSMContacts.UpdateContact'
        data = {}
        data['ContactId'] = input[:contact_id] unless input[:contact_id].nil?
        data['DisplayName'] = input[:display_name] unless input[:display_name].nil?
        data['Plan'] = Builders::Plan.build(input[:plan]) unless input[:plan].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateContactChannel
    class UpdateContactChannel
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SSMContacts.UpdateContactChannel'
        data = {}
        data['ContactChannelId'] = input[:contact_channel_id] unless input[:contact_channel_id].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['DeliveryAddress'] = Builders::ContactChannelAddress.build(input[:delivery_address]) unless input[:delivery_address].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
