# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SSMContacts
  module Stubs

    # Operation Stubber for AcceptPage
    class AcceptPage
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ActivateContactChannel
    class ActivateContactChannel
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateContact
    class CreateContact
      def self.default(visited=[])
        {
          contact_arn: 'contact_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ContactArn'] = stub[:contact_arn] unless stub[:contact_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateContactChannel
    class CreateContactChannel
      def self.default(visited=[])
        {
          contact_channel_arn: 'contact_channel_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ContactChannelArn'] = stub[:contact_channel_arn] unless stub[:contact_channel_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeactivateContactChannel
    class DeactivateContactChannel
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteContactChannel
    class DeleteContactChannel
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeEngagement
    class DescribeEngagement
      def self.default(visited=[])
        {
          contact_arn: 'contact_arn',
          engagement_arn: 'engagement_arn',
          sender: 'sender',
          subject: 'subject',
          content: 'content',
          public_subject: 'public_subject',
          public_content: 'public_content',
          incident_id: 'incident_id',
          start_time: Time.now,
          stop_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ContactArn'] = stub[:contact_arn] unless stub[:contact_arn].nil?
        data['EngagementArn'] = stub[:engagement_arn] unless stub[:engagement_arn].nil?
        data['Sender'] = stub[:sender] unless stub[:sender].nil?
        data['Subject'] = stub[:subject] unless stub[:subject].nil?
        data['Content'] = stub[:content] unless stub[:content].nil?
        data['PublicSubject'] = stub[:public_subject] unless stub[:public_subject].nil?
        data['PublicContent'] = stub[:public_content] unless stub[:public_content].nil?
        data['IncidentId'] = stub[:incident_id] unless stub[:incident_id].nil?
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['StopTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:stop_time]).to_i unless stub[:stop_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribePage
    class DescribePage
      def self.default(visited=[])
        {
          page_arn: 'page_arn',
          engagement_arn: 'engagement_arn',
          contact_arn: 'contact_arn',
          sender: 'sender',
          subject: 'subject',
          content: 'content',
          public_subject: 'public_subject',
          public_content: 'public_content',
          incident_id: 'incident_id',
          sent_time: Time.now,
          read_time: Time.now,
          delivery_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PageArn'] = stub[:page_arn] unless stub[:page_arn].nil?
        data['EngagementArn'] = stub[:engagement_arn] unless stub[:engagement_arn].nil?
        data['ContactArn'] = stub[:contact_arn] unless stub[:contact_arn].nil?
        data['Sender'] = stub[:sender] unless stub[:sender].nil?
        data['Subject'] = stub[:subject] unless stub[:subject].nil?
        data['Content'] = stub[:content] unless stub[:content].nil?
        data['PublicSubject'] = stub[:public_subject] unless stub[:public_subject].nil?
        data['PublicContent'] = stub[:public_content] unless stub[:public_content].nil?
        data['IncidentId'] = stub[:incident_id] unless stub[:incident_id].nil?
        data['SentTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:sent_time]).to_i unless stub[:sent_time].nil?
        data['ReadTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:read_time]).to_i unless stub[:read_time].nil?
        data['DeliveryTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:delivery_time]).to_i unless stub[:delivery_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetContact
    class GetContact
      def self.default(visited=[])
        {
          contact_arn: 'contact_arn',
          alias: 'alias',
          display_name: 'display_name',
          type: 'type',
          plan: Plan.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ContactArn'] = stub[:contact_arn] unless stub[:contact_arn].nil?
        data['Alias'] = stub[:alias] unless stub[:alias].nil?
        data['DisplayName'] = stub[:display_name] unless stub[:display_name].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Plan'] = Stubs::Plan.stub(stub[:plan]) unless stub[:plan].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Plan
    class Plan
      def self.default(visited=[])
        return nil if visited.include?('Plan')
        visited = visited + ['Plan']
        {
          stages: StagesList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Plan.new
        data = {}
        data['Stages'] = Stubs::StagesList.stub(stub[:stages]) unless stub[:stages].nil?
        data
      end
    end

    # List Stubber for StagesList
    class StagesList
      def self.default(visited=[])
        return nil if visited.include?('StagesList')
        visited = visited + ['StagesList']
        [
          Stage.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Stage.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Stage
    class Stage
      def self.default(visited=[])
        return nil if visited.include?('Stage')
        visited = visited + ['Stage']
        {
          duration_in_minutes: 1,
          targets: TargetsList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Stage.new
        data = {}
        data['DurationInMinutes'] = stub[:duration_in_minutes] unless stub[:duration_in_minutes].nil?
        data['Targets'] = Stubs::TargetsList.stub(stub[:targets]) unless stub[:targets].nil?
        data
      end
    end

    # List Stubber for TargetsList
    class TargetsList
      def self.default(visited=[])
        return nil if visited.include?('TargetsList')
        visited = visited + ['TargetsList']
        [
          Target.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Target.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Target
    class Target
      def self.default(visited=[])
        return nil if visited.include?('Target')
        visited = visited + ['Target']
        {
          channel_target_info: ChannelTargetInfo.default(visited),
          contact_target_info: ContactTargetInfo.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Target.new
        data = {}
        data['ChannelTargetInfo'] = Stubs::ChannelTargetInfo.stub(stub[:channel_target_info]) unless stub[:channel_target_info].nil?
        data['ContactTargetInfo'] = Stubs::ContactTargetInfo.stub(stub[:contact_target_info]) unless stub[:contact_target_info].nil?
        data
      end
    end

    # Structure Stubber for ContactTargetInfo
    class ContactTargetInfo
      def self.default(visited=[])
        return nil if visited.include?('ContactTargetInfo')
        visited = visited + ['ContactTargetInfo']
        {
          contact_id: 'contact_id',
          is_essential: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::ContactTargetInfo.new
        data = {}
        data['ContactId'] = stub[:contact_id] unless stub[:contact_id].nil?
        data['IsEssential'] = stub[:is_essential] unless stub[:is_essential].nil?
        data
      end
    end

    # Structure Stubber for ChannelTargetInfo
    class ChannelTargetInfo
      def self.default(visited=[])
        return nil if visited.include?('ChannelTargetInfo')
        visited = visited + ['ChannelTargetInfo']
        {
          contact_channel_id: 'contact_channel_id',
          retry_interval_in_minutes: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ChannelTargetInfo.new
        data = {}
        data['ContactChannelId'] = stub[:contact_channel_id] unless stub[:contact_channel_id].nil?
        data['RetryIntervalInMinutes'] = stub[:retry_interval_in_minutes] unless stub[:retry_interval_in_minutes].nil?
        data
      end
    end

    # Operation Stubber for GetContactChannel
    class GetContactChannel
      def self.default(visited=[])
        {
          contact_arn: 'contact_arn',
          contact_channel_arn: 'contact_channel_arn',
          name: 'name',
          type: 'type',
          delivery_address: ContactChannelAddress.default(visited),
          activation_status: 'activation_status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ContactArn'] = stub[:contact_arn] unless stub[:contact_arn].nil?
        data['ContactChannelArn'] = stub[:contact_channel_arn] unless stub[:contact_channel_arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['DeliveryAddress'] = Stubs::ContactChannelAddress.stub(stub[:delivery_address]) unless stub[:delivery_address].nil?
        data['ActivationStatus'] = stub[:activation_status] unless stub[:activation_status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for ContactChannelAddress
    class ContactChannelAddress
      def self.default(visited=[])
        return nil if visited.include?('ContactChannelAddress')
        visited = visited + ['ContactChannelAddress']
        {
          simple_address: 'simple_address',
        }
      end

      def self.stub(stub)
        stub ||= Types::ContactChannelAddress.new
        data = {}
        data['SimpleAddress'] = stub[:simple_address] unless stub[:simple_address].nil?
        data
      end
    end

    # Operation Stubber for GetContactPolicy
    class GetContactPolicy
      def self.default(visited=[])
        {
          contact_arn: 'contact_arn',
          policy: 'policy',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ContactArn'] = stub[:contact_arn] unless stub[:contact_arn].nil?
        data['Policy'] = stub[:policy] unless stub[:policy].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListContactChannels
    class ListContactChannels
      def self.default(visited=[])
        {
          next_token: 'next_token',
          contact_channels: ContactChannelList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['ContactChannels'] = Stubs::ContactChannelList.stub(stub[:contact_channels]) unless stub[:contact_channels].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ContactChannelList
    class ContactChannelList
      def self.default(visited=[])
        return nil if visited.include?('ContactChannelList')
        visited = visited + ['ContactChannelList']
        [
          ContactChannel.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ContactChannel.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ContactChannel
    class ContactChannel
      def self.default(visited=[])
        return nil if visited.include?('ContactChannel')
        visited = visited + ['ContactChannel']
        {
          contact_channel_arn: 'contact_channel_arn',
          contact_arn: 'contact_arn',
          name: 'name',
          type: 'type',
          delivery_address: ContactChannelAddress.default(visited),
          activation_status: 'activation_status',
        }
      end

      def self.stub(stub)
        stub ||= Types::ContactChannel.new
        data = {}
        data['ContactChannelArn'] = stub[:contact_channel_arn] unless stub[:contact_channel_arn].nil?
        data['ContactArn'] = stub[:contact_arn] unless stub[:contact_arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['DeliveryAddress'] = Stubs::ContactChannelAddress.stub(stub[:delivery_address]) unless stub[:delivery_address].nil?
        data['ActivationStatus'] = stub[:activation_status] unless stub[:activation_status].nil?
        data
      end
    end

    # Operation Stubber for ListContacts
    class ListContacts
      def self.default(visited=[])
        {
          next_token: 'next_token',
          contacts: ContactsList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['Contacts'] = Stubs::ContactsList.stub(stub[:contacts]) unless stub[:contacts].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ContactsList
    class ContactsList
      def self.default(visited=[])
        return nil if visited.include?('ContactsList')
        visited = visited + ['ContactsList']
        [
          Contact.default(visited)
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
          contact_arn: 'contact_arn',
          alias: 'alias',
          display_name: 'display_name',
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::Contact.new
        data = {}
        data['ContactArn'] = stub[:contact_arn] unless stub[:contact_arn].nil?
        data['Alias'] = stub[:alias] unless stub[:alias].nil?
        data['DisplayName'] = stub[:display_name] unless stub[:display_name].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # Operation Stubber for ListEngagements
    class ListEngagements
      def self.default(visited=[])
        {
          next_token: 'next_token',
          engagements: EngagementsList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['Engagements'] = Stubs::EngagementsList.stub(stub[:engagements]) unless stub[:engagements].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for EngagementsList
    class EngagementsList
      def self.default(visited=[])
        return nil if visited.include?('EngagementsList')
        visited = visited + ['EngagementsList']
        [
          Engagement.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Engagement.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Engagement
    class Engagement
      def self.default(visited=[])
        return nil if visited.include?('Engagement')
        visited = visited + ['Engagement']
        {
          engagement_arn: 'engagement_arn',
          contact_arn: 'contact_arn',
          sender: 'sender',
          incident_id: 'incident_id',
          start_time: Time.now,
          stop_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::Engagement.new
        data = {}
        data['EngagementArn'] = stub[:engagement_arn] unless stub[:engagement_arn].nil?
        data['ContactArn'] = stub[:contact_arn] unless stub[:contact_arn].nil?
        data['Sender'] = stub[:sender] unless stub[:sender].nil?
        data['IncidentId'] = stub[:incident_id] unless stub[:incident_id].nil?
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['StopTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:stop_time]).to_i unless stub[:stop_time].nil?
        data
      end
    end

    # Operation Stubber for ListPageReceipts
    class ListPageReceipts
      def self.default(visited=[])
        {
          next_token: 'next_token',
          receipts: ReceiptsList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['Receipts'] = Stubs::ReceiptsList.stub(stub[:receipts]) unless stub[:receipts].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ReceiptsList
    class ReceiptsList
      def self.default(visited=[])
        return nil if visited.include?('ReceiptsList')
        visited = visited + ['ReceiptsList']
        [
          Receipt.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Receipt.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Receipt
    class Receipt
      def self.default(visited=[])
        return nil if visited.include?('Receipt')
        visited = visited + ['Receipt']
        {
          contact_channel_arn: 'contact_channel_arn',
          receipt_type: 'receipt_type',
          receipt_info: 'receipt_info',
          receipt_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::Receipt.new
        data = {}
        data['ContactChannelArn'] = stub[:contact_channel_arn] unless stub[:contact_channel_arn].nil?
        data['ReceiptType'] = stub[:receipt_type] unless stub[:receipt_type].nil?
        data['ReceiptInfo'] = stub[:receipt_info] unless stub[:receipt_info].nil?
        data['ReceiptTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:receipt_time]).to_i unless stub[:receipt_time].nil?
        data
      end
    end

    # Operation Stubber for ListPagesByContact
    class ListPagesByContact
      def self.default(visited=[])
        {
          next_token: 'next_token',
          pages: PagesList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['Pages'] = Stubs::PagesList.stub(stub[:pages]) unless stub[:pages].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for PagesList
    class PagesList
      def self.default(visited=[])
        return nil if visited.include?('PagesList')
        visited = visited + ['PagesList']
        [
          Page.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Page.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Page
    class Page
      def self.default(visited=[])
        return nil if visited.include?('Page')
        visited = visited + ['Page']
        {
          page_arn: 'page_arn',
          engagement_arn: 'engagement_arn',
          contact_arn: 'contact_arn',
          sender: 'sender',
          incident_id: 'incident_id',
          sent_time: Time.now,
          delivery_time: Time.now,
          read_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::Page.new
        data = {}
        data['PageArn'] = stub[:page_arn] unless stub[:page_arn].nil?
        data['EngagementArn'] = stub[:engagement_arn] unless stub[:engagement_arn].nil?
        data['ContactArn'] = stub[:contact_arn] unless stub[:contact_arn].nil?
        data['Sender'] = stub[:sender] unless stub[:sender].nil?
        data['IncidentId'] = stub[:incident_id] unless stub[:incident_id].nil?
        data['SentTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:sent_time]).to_i unless stub[:sent_time].nil?
        data['DeliveryTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:delivery_time]).to_i unless stub[:delivery_time].nil?
        data['ReadTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:read_time]).to_i unless stub[:read_time].nil?
        data
      end
    end

    # Operation Stubber for ListPagesByEngagement
    class ListPagesByEngagement
      def self.default(visited=[])
        {
          next_token: 'next_token',
          pages: PagesList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['Pages'] = Stubs::PagesList.stub(stub[:pages]) unless stub[:pages].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: TagsList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Tags'] = Stubs::TagsList.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for TagsList
    class TagsList
      def self.default(visited=[])
        return nil if visited.include?('TagsList')
        visited = visited + ['TagsList']
        [
          Tag.default(visited)
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

    # Operation Stubber for PutContactPolicy
    class PutContactPolicy
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for SendActivationCode
    class SendActivationCode
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartEngagement
    class StartEngagement
      def self.default(visited=[])
        {
          engagement_arn: 'engagement_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['EngagementArn'] = stub[:engagement_arn] unless stub[:engagement_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StopEngagement
    class StopEngagement
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
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
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
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
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateContactChannel
    class UpdateContactChannel
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
