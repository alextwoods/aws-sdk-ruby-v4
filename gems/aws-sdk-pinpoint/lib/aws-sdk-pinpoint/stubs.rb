# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Pinpoint
  module Stubs

    # Operation Stubber for CreateApp
    class CreateApp
      def self.default(visited=[])
        {
          application_response: Stubs::ApplicationResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::ApplicationResponse.stub(stub[:application_response]) unless stub[:application_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ApplicationResponse
    class ApplicationResponse
      def self.default(visited=[])
        return nil if visited.include?('ApplicationResponse')
        visited = visited + ['ApplicationResponse']
        {
          arn: 'arn',
          id: 'id',
          name: 'name',
          tags: Stubs::MapOf__string.default(visited),
          creation_date: 'creation_date',
        }
      end

      def self.stub(stub)
        stub ||= Types::ApplicationResponse.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['tags'] = Stubs::MapOf__string.stub(stub[:tags]) unless stub[:tags].nil?
        data['CreationDate'] = stub[:creation_date] unless stub[:creation_date].nil?
        data
      end
    end

    # Map Stubber for MapOf__string
    class MapOf__string
      def self.default(visited=[])
        return nil if visited.include?('MapOf__string')
        visited = visited + ['MapOf__string']
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

    # Operation Stubber for CreateCampaign
    class CreateCampaign
      def self.default(visited=[])
        {
          campaign_response: Stubs::CampaignResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::CampaignResponse.stub(stub[:campaign_response]) unless stub[:campaign_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for CampaignResponse
    class CampaignResponse
      def self.default(visited=[])
        return nil if visited.include?('CampaignResponse')
        visited = visited + ['CampaignResponse']
        {
          additional_treatments: Stubs::ListOfTreatmentResource.default(visited),
          application_id: 'application_id',
          arn: 'arn',
          creation_date: 'creation_date',
          custom_delivery_configuration: Stubs::CustomDeliveryConfiguration.default(visited),
          default_state: Stubs::CampaignState.default(visited),
          description: 'description',
          holdout_percent: 1,
          hook: Stubs::CampaignHook.default(visited),
          id: 'id',
          is_paused: false,
          last_modified_date: 'last_modified_date',
          limits: Stubs::CampaignLimits.default(visited),
          message_configuration: Stubs::MessageConfiguration.default(visited),
          name: 'name',
          schedule: Stubs::Schedule.default(visited),
          segment_id: 'segment_id',
          segment_version: 1,
          state: Stubs::CampaignState.default(visited),
          tags: Stubs::MapOf__string.default(visited),
          template_configuration: Stubs::TemplateConfiguration.default(visited),
          treatment_description: 'treatment_description',
          treatment_name: 'treatment_name',
          version: 1,
          priority: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::CampaignResponse.new
        data = {}
        data['AdditionalTreatments'] = Stubs::ListOfTreatmentResource.stub(stub[:additional_treatments]) unless stub[:additional_treatments].nil?
        data['ApplicationId'] = stub[:application_id] unless stub[:application_id].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['CreationDate'] = stub[:creation_date] unless stub[:creation_date].nil?
        data['CustomDeliveryConfiguration'] = Stubs::CustomDeliveryConfiguration.stub(stub[:custom_delivery_configuration]) unless stub[:custom_delivery_configuration].nil?
        data['DefaultState'] = Stubs::CampaignState.stub(stub[:default_state]) unless stub[:default_state].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['HoldoutPercent'] = stub[:holdout_percent] unless stub[:holdout_percent].nil?
        data['Hook'] = Stubs::CampaignHook.stub(stub[:hook]) unless stub[:hook].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['IsPaused'] = stub[:is_paused] unless stub[:is_paused].nil?
        data['LastModifiedDate'] = stub[:last_modified_date] unless stub[:last_modified_date].nil?
        data['Limits'] = Stubs::CampaignLimits.stub(stub[:limits]) unless stub[:limits].nil?
        data['MessageConfiguration'] = Stubs::MessageConfiguration.stub(stub[:message_configuration]) unless stub[:message_configuration].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Schedule'] = Stubs::Schedule.stub(stub[:schedule]) unless stub[:schedule].nil?
        data['SegmentId'] = stub[:segment_id] unless stub[:segment_id].nil?
        data['SegmentVersion'] = stub[:segment_version] unless stub[:segment_version].nil?
        data['State'] = Stubs::CampaignState.stub(stub[:state]) unless stub[:state].nil?
        data['tags'] = Stubs::MapOf__string.stub(stub[:tags]) unless stub[:tags].nil?
        data['TemplateConfiguration'] = Stubs::TemplateConfiguration.stub(stub[:template_configuration]) unless stub[:template_configuration].nil?
        data['TreatmentDescription'] = stub[:treatment_description] unless stub[:treatment_description].nil?
        data['TreatmentName'] = stub[:treatment_name] unless stub[:treatment_name].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        data['Priority'] = stub[:priority] unless stub[:priority].nil?
        data
      end
    end

    # Structure Stubber for TemplateConfiguration
    class TemplateConfiguration
      def self.default(visited=[])
        return nil if visited.include?('TemplateConfiguration')
        visited = visited + ['TemplateConfiguration']
        {
          email_template: Stubs::Template.default(visited),
          push_template: Stubs::Template.default(visited),
          sms_template: Stubs::Template.default(visited),
          voice_template: Stubs::Template.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TemplateConfiguration.new
        data = {}
        data['EmailTemplate'] = Stubs::Template.stub(stub[:email_template]) unless stub[:email_template].nil?
        data['PushTemplate'] = Stubs::Template.stub(stub[:push_template]) unless stub[:push_template].nil?
        data['SMSTemplate'] = Stubs::Template.stub(stub[:sms_template]) unless stub[:sms_template].nil?
        data['VoiceTemplate'] = Stubs::Template.stub(stub[:voice_template]) unless stub[:voice_template].nil?
        data
      end
    end

    # Structure Stubber for Template
    class Template
      def self.default(visited=[])
        return nil if visited.include?('Template')
        visited = visited + ['Template']
        {
          name: 'name',
          version: 'version',
        }
      end

      def self.stub(stub)
        stub ||= Types::Template.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        data
      end
    end

    # Structure Stubber for CampaignState
    class CampaignState
      def self.default(visited=[])
        return nil if visited.include?('CampaignState')
        visited = visited + ['CampaignState']
        {
          campaign_status: 'campaign_status',
        }
      end

      def self.stub(stub)
        stub ||= Types::CampaignState.new
        data = {}
        data['CampaignStatus'] = stub[:campaign_status] unless stub[:campaign_status].nil?
        data
      end
    end

    # Structure Stubber for Schedule
    class Schedule
      def self.default(visited=[])
        return nil if visited.include?('Schedule')
        visited = visited + ['Schedule']
        {
          end_time: 'end_time',
          event_filter: Stubs::CampaignEventFilter.default(visited),
          frequency: 'frequency',
          is_local_time: false,
          quiet_time: Stubs::QuietTime.default(visited),
          start_time: 'start_time',
          timezone: 'timezone',
        }
      end

      def self.stub(stub)
        stub ||= Types::Schedule.new
        data = {}
        data['EndTime'] = stub[:end_time] unless stub[:end_time].nil?
        data['EventFilter'] = Stubs::CampaignEventFilter.stub(stub[:event_filter]) unless stub[:event_filter].nil?
        data['Frequency'] = stub[:frequency] unless stub[:frequency].nil?
        data['IsLocalTime'] = stub[:is_local_time] unless stub[:is_local_time].nil?
        data['QuietTime'] = Stubs::QuietTime.stub(stub[:quiet_time]) unless stub[:quiet_time].nil?
        data['StartTime'] = stub[:start_time] unless stub[:start_time].nil?
        data['Timezone'] = stub[:timezone] unless stub[:timezone].nil?
        data
      end
    end

    # Structure Stubber for QuietTime
    class QuietTime
      def self.default(visited=[])
        return nil if visited.include?('QuietTime')
        visited = visited + ['QuietTime']
        {
          end: 'end',
          start: 'start',
        }
      end

      def self.stub(stub)
        stub ||= Types::QuietTime.new
        data = {}
        data['End'] = stub[:end] unless stub[:end].nil?
        data['Start'] = stub[:start] unless stub[:start].nil?
        data
      end
    end

    # Structure Stubber for CampaignEventFilter
    class CampaignEventFilter
      def self.default(visited=[])
        return nil if visited.include?('CampaignEventFilter')
        visited = visited + ['CampaignEventFilter']
        {
          dimensions: Stubs::EventDimensions.default(visited),
          filter_type: 'filter_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::CampaignEventFilter.new
        data = {}
        data['Dimensions'] = Stubs::EventDimensions.stub(stub[:dimensions]) unless stub[:dimensions].nil?
        data['FilterType'] = stub[:filter_type] unless stub[:filter_type].nil?
        data
      end
    end

    # Structure Stubber for EventDimensions
    class EventDimensions
      def self.default(visited=[])
        return nil if visited.include?('EventDimensions')
        visited = visited + ['EventDimensions']
        {
          attributes: Stubs::MapOfAttributeDimension.default(visited),
          event_type: Stubs::SetDimension.default(visited),
          metrics: Stubs::MapOfMetricDimension.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::EventDimensions.new
        data = {}
        data['Attributes'] = Stubs::MapOfAttributeDimension.stub(stub[:attributes]) unless stub[:attributes].nil?
        data['EventType'] = Stubs::SetDimension.stub(stub[:event_type]) unless stub[:event_type].nil?
        data['Metrics'] = Stubs::MapOfMetricDimension.stub(stub[:metrics]) unless stub[:metrics].nil?
        data
      end
    end

    # Map Stubber for MapOfMetricDimension
    class MapOfMetricDimension
      def self.default(visited=[])
        return nil if visited.include?('MapOfMetricDimension')
        visited = visited + ['MapOfMetricDimension']
        {
          test_key: Stubs::MetricDimension.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::MetricDimension.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for MetricDimension
    class MetricDimension
      def self.default(visited=[])
        return nil if visited.include?('MetricDimension')
        visited = visited + ['MetricDimension']
        {
          comparison_operator: 'comparison_operator',
          value: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::MetricDimension.new
        data = {}
        data['ComparisonOperator'] = stub[:comparison_operator] unless stub[:comparison_operator].nil?
        data['Value'] = Hearth::NumberHelper.serialize(stub[:value])
        data
      end
    end

    # Structure Stubber for SetDimension
    class SetDimension
      def self.default(visited=[])
        return nil if visited.include?('SetDimension')
        visited = visited + ['SetDimension']
        {
          dimension_type: 'dimension_type',
          values: Stubs::ListOf__string.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SetDimension.new
        data = {}
        data['DimensionType'] = stub[:dimension_type] unless stub[:dimension_type].nil?
        data['Values'] = Stubs::ListOf__string.stub(stub[:values]) unless stub[:values].nil?
        data
      end
    end

    # List Stubber for ListOf__string
    class ListOf__string
      def self.default(visited=[])
        return nil if visited.include?('ListOf__string')
        visited = visited + ['ListOf__string']
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

    # Map Stubber for MapOfAttributeDimension
    class MapOfAttributeDimension
      def self.default(visited=[])
        return nil if visited.include?('MapOfAttributeDimension')
        visited = visited + ['MapOfAttributeDimension']
        {
          test_key: Stubs::AttributeDimension.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::AttributeDimension.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for AttributeDimension
    class AttributeDimension
      def self.default(visited=[])
        return nil if visited.include?('AttributeDimension')
        visited = visited + ['AttributeDimension']
        {
          attribute_type: 'attribute_type',
          values: Stubs::ListOf__string.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AttributeDimension.new
        data = {}
        data['AttributeType'] = stub[:attribute_type] unless stub[:attribute_type].nil?
        data['Values'] = Stubs::ListOf__string.stub(stub[:values]) unless stub[:values].nil?
        data
      end
    end

    # Structure Stubber for MessageConfiguration
    class MessageConfiguration
      def self.default(visited=[])
        return nil if visited.include?('MessageConfiguration')
        visited = visited + ['MessageConfiguration']
        {
          adm_message: Stubs::Message.default(visited),
          apns_message: Stubs::Message.default(visited),
          baidu_message: Stubs::Message.default(visited),
          custom_message: Stubs::CampaignCustomMessage.default(visited),
          default_message: Stubs::Message.default(visited),
          email_message: Stubs::CampaignEmailMessage.default(visited),
          gcm_message: Stubs::Message.default(visited),
          sms_message: Stubs::CampaignSmsMessage.default(visited),
          in_app_message: Stubs::CampaignInAppMessage.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::MessageConfiguration.new
        data = {}
        data['ADMMessage'] = Stubs::Message.stub(stub[:adm_message]) unless stub[:adm_message].nil?
        data['APNSMessage'] = Stubs::Message.stub(stub[:apns_message]) unless stub[:apns_message].nil?
        data['BaiduMessage'] = Stubs::Message.stub(stub[:baidu_message]) unless stub[:baidu_message].nil?
        data['CustomMessage'] = Stubs::CampaignCustomMessage.stub(stub[:custom_message]) unless stub[:custom_message].nil?
        data['DefaultMessage'] = Stubs::Message.stub(stub[:default_message]) unless stub[:default_message].nil?
        data['EmailMessage'] = Stubs::CampaignEmailMessage.stub(stub[:email_message]) unless stub[:email_message].nil?
        data['GCMMessage'] = Stubs::Message.stub(stub[:gcm_message]) unless stub[:gcm_message].nil?
        data['SMSMessage'] = Stubs::CampaignSmsMessage.stub(stub[:sms_message]) unless stub[:sms_message].nil?
        data['InAppMessage'] = Stubs::CampaignInAppMessage.stub(stub[:in_app_message]) unless stub[:in_app_message].nil?
        data
      end
    end

    # Structure Stubber for CampaignInAppMessage
    class CampaignInAppMessage
      def self.default(visited=[])
        return nil if visited.include?('CampaignInAppMessage')
        visited = visited + ['CampaignInAppMessage']
        {
          body: 'body',
          content: Stubs::ListOfInAppMessageContent.default(visited),
          custom_config: Stubs::MapOf__string.default(visited),
          layout: 'layout',
        }
      end

      def self.stub(stub)
        stub ||= Types::CampaignInAppMessage.new
        data = {}
        data['Body'] = stub[:body] unless stub[:body].nil?
        data['Content'] = Stubs::ListOfInAppMessageContent.stub(stub[:content]) unless stub[:content].nil?
        data['CustomConfig'] = Stubs::MapOf__string.stub(stub[:custom_config]) unless stub[:custom_config].nil?
        data['Layout'] = stub[:layout] unless stub[:layout].nil?
        data
      end
    end

    # List Stubber for ListOfInAppMessageContent
    class ListOfInAppMessageContent
      def self.default(visited=[])
        return nil if visited.include?('ListOfInAppMessageContent')
        visited = visited + ['ListOfInAppMessageContent']
        [
          Stubs::InAppMessageContent.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::InAppMessageContent.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for InAppMessageContent
    class InAppMessageContent
      def self.default(visited=[])
        return nil if visited.include?('InAppMessageContent')
        visited = visited + ['InAppMessageContent']
        {
          background_color: 'background_color',
          body_config: Stubs::InAppMessageBodyConfig.default(visited),
          header_config: Stubs::InAppMessageHeaderConfig.default(visited),
          image_url: 'image_url',
          primary_btn: Stubs::InAppMessageButton.default(visited),
          secondary_btn: Stubs::InAppMessageButton.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::InAppMessageContent.new
        data = {}
        data['BackgroundColor'] = stub[:background_color] unless stub[:background_color].nil?
        data['BodyConfig'] = Stubs::InAppMessageBodyConfig.stub(stub[:body_config]) unless stub[:body_config].nil?
        data['HeaderConfig'] = Stubs::InAppMessageHeaderConfig.stub(stub[:header_config]) unless stub[:header_config].nil?
        data['ImageUrl'] = stub[:image_url] unless stub[:image_url].nil?
        data['PrimaryBtn'] = Stubs::InAppMessageButton.stub(stub[:primary_btn]) unless stub[:primary_btn].nil?
        data['SecondaryBtn'] = Stubs::InAppMessageButton.stub(stub[:secondary_btn]) unless stub[:secondary_btn].nil?
        data
      end
    end

    # Structure Stubber for InAppMessageButton
    class InAppMessageButton
      def self.default(visited=[])
        return nil if visited.include?('InAppMessageButton')
        visited = visited + ['InAppMessageButton']
        {
          android: Stubs::OverrideButtonConfiguration.default(visited),
          default_config: Stubs::DefaultButtonConfiguration.default(visited),
          ios: Stubs::OverrideButtonConfiguration.default(visited),
          web: Stubs::OverrideButtonConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::InAppMessageButton.new
        data = {}
        data['Android'] = Stubs::OverrideButtonConfiguration.stub(stub[:android]) unless stub[:android].nil?
        data['DefaultConfig'] = Stubs::DefaultButtonConfiguration.stub(stub[:default_config]) unless stub[:default_config].nil?
        data['IOS'] = Stubs::OverrideButtonConfiguration.stub(stub[:ios]) unless stub[:ios].nil?
        data['Web'] = Stubs::OverrideButtonConfiguration.stub(stub[:web]) unless stub[:web].nil?
        data
      end
    end

    # Structure Stubber for OverrideButtonConfiguration
    class OverrideButtonConfiguration
      def self.default(visited=[])
        return nil if visited.include?('OverrideButtonConfiguration')
        visited = visited + ['OverrideButtonConfiguration']
        {
          button_action: 'button_action',
          link: 'link',
        }
      end

      def self.stub(stub)
        stub ||= Types::OverrideButtonConfiguration.new
        data = {}
        data['ButtonAction'] = stub[:button_action] unless stub[:button_action].nil?
        data['Link'] = stub[:link] unless stub[:link].nil?
        data
      end
    end

    # Structure Stubber for DefaultButtonConfiguration
    class DefaultButtonConfiguration
      def self.default(visited=[])
        return nil if visited.include?('DefaultButtonConfiguration')
        visited = visited + ['DefaultButtonConfiguration']
        {
          background_color: 'background_color',
          border_radius: 1,
          button_action: 'button_action',
          link: 'link',
          text: 'text',
          text_color: 'text_color',
        }
      end

      def self.stub(stub)
        stub ||= Types::DefaultButtonConfiguration.new
        data = {}
        data['BackgroundColor'] = stub[:background_color] unless stub[:background_color].nil?
        data['BorderRadius'] = stub[:border_radius] unless stub[:border_radius].nil?
        data['ButtonAction'] = stub[:button_action] unless stub[:button_action].nil?
        data['Link'] = stub[:link] unless stub[:link].nil?
        data['Text'] = stub[:text] unless stub[:text].nil?
        data['TextColor'] = stub[:text_color] unless stub[:text_color].nil?
        data
      end
    end

    # Structure Stubber for InAppMessageHeaderConfig
    class InAppMessageHeaderConfig
      def self.default(visited=[])
        return nil if visited.include?('InAppMessageHeaderConfig')
        visited = visited + ['InAppMessageHeaderConfig']
        {
          alignment: 'alignment',
          header: 'header',
          text_color: 'text_color',
        }
      end

      def self.stub(stub)
        stub ||= Types::InAppMessageHeaderConfig.new
        data = {}
        data['Alignment'] = stub[:alignment] unless stub[:alignment].nil?
        data['Header'] = stub[:header] unless stub[:header].nil?
        data['TextColor'] = stub[:text_color] unless stub[:text_color].nil?
        data
      end
    end

    # Structure Stubber for InAppMessageBodyConfig
    class InAppMessageBodyConfig
      def self.default(visited=[])
        return nil if visited.include?('InAppMessageBodyConfig')
        visited = visited + ['InAppMessageBodyConfig']
        {
          alignment: 'alignment',
          body: 'body',
          text_color: 'text_color',
        }
      end

      def self.stub(stub)
        stub ||= Types::InAppMessageBodyConfig.new
        data = {}
        data['Alignment'] = stub[:alignment] unless stub[:alignment].nil?
        data['Body'] = stub[:body] unless stub[:body].nil?
        data['TextColor'] = stub[:text_color] unless stub[:text_color].nil?
        data
      end
    end

    # Structure Stubber for CampaignSmsMessage
    class CampaignSmsMessage
      def self.default(visited=[])
        return nil if visited.include?('CampaignSmsMessage')
        visited = visited + ['CampaignSmsMessage']
        {
          body: 'body',
          message_type: 'message_type',
          origination_number: 'origination_number',
          sender_id: 'sender_id',
          entity_id: 'entity_id',
          template_id: 'template_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::CampaignSmsMessage.new
        data = {}
        data['Body'] = stub[:body] unless stub[:body].nil?
        data['MessageType'] = stub[:message_type] unless stub[:message_type].nil?
        data['OriginationNumber'] = stub[:origination_number] unless stub[:origination_number].nil?
        data['SenderId'] = stub[:sender_id] unless stub[:sender_id].nil?
        data['EntityId'] = stub[:entity_id] unless stub[:entity_id].nil?
        data['TemplateId'] = stub[:template_id] unless stub[:template_id].nil?
        data
      end
    end

    # Structure Stubber for Message
    class Message
      def self.default(visited=[])
        return nil if visited.include?('Message')
        visited = visited + ['Message']
        {
          action: 'action',
          body: 'body',
          image_icon_url: 'image_icon_url',
          image_small_icon_url: 'image_small_icon_url',
          image_url: 'image_url',
          json_body: 'json_body',
          media_url: 'media_url',
          raw_content: 'raw_content',
          silent_push: false,
          time_to_live: 1,
          title: 'title',
          url: 'url',
        }
      end

      def self.stub(stub)
        stub ||= Types::Message.new
        data = {}
        data['Action'] = stub[:action] unless stub[:action].nil?
        data['Body'] = stub[:body] unless stub[:body].nil?
        data['ImageIconUrl'] = stub[:image_icon_url] unless stub[:image_icon_url].nil?
        data['ImageSmallIconUrl'] = stub[:image_small_icon_url] unless stub[:image_small_icon_url].nil?
        data['ImageUrl'] = stub[:image_url] unless stub[:image_url].nil?
        data['JsonBody'] = stub[:json_body] unless stub[:json_body].nil?
        data['MediaUrl'] = stub[:media_url] unless stub[:media_url].nil?
        data['RawContent'] = stub[:raw_content] unless stub[:raw_content].nil?
        data['SilentPush'] = stub[:silent_push] unless stub[:silent_push].nil?
        data['TimeToLive'] = stub[:time_to_live] unless stub[:time_to_live].nil?
        data['Title'] = stub[:title] unless stub[:title].nil?
        data['Url'] = stub[:url] unless stub[:url].nil?
        data
      end
    end

    # Structure Stubber for CampaignEmailMessage
    class CampaignEmailMessage
      def self.default(visited=[])
        return nil if visited.include?('CampaignEmailMessage')
        visited = visited + ['CampaignEmailMessage']
        {
          body: 'body',
          from_address: 'from_address',
          html_body: 'html_body',
          title: 'title',
        }
      end

      def self.stub(stub)
        stub ||= Types::CampaignEmailMessage.new
        data = {}
        data['Body'] = stub[:body] unless stub[:body].nil?
        data['FromAddress'] = stub[:from_address] unless stub[:from_address].nil?
        data['HtmlBody'] = stub[:html_body] unless stub[:html_body].nil?
        data['Title'] = stub[:title] unless stub[:title].nil?
        data
      end
    end

    # Structure Stubber for CampaignCustomMessage
    class CampaignCustomMessage
      def self.default(visited=[])
        return nil if visited.include?('CampaignCustomMessage')
        visited = visited + ['CampaignCustomMessage']
        {
          data: 'data',
        }
      end

      def self.stub(stub)
        stub ||= Types::CampaignCustomMessage.new
        data = {}
        data['Data'] = stub[:data] unless stub[:data].nil?
        data
      end
    end

    # Structure Stubber for CampaignLimits
    class CampaignLimits
      def self.default(visited=[])
        return nil if visited.include?('CampaignLimits')
        visited = visited + ['CampaignLimits']
        {
          daily: 1,
          maximum_duration: 1,
          messages_per_second: 1,
          total: 1,
          session: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::CampaignLimits.new
        data = {}
        data['Daily'] = stub[:daily] unless stub[:daily].nil?
        data['MaximumDuration'] = stub[:maximum_duration] unless stub[:maximum_duration].nil?
        data['MessagesPerSecond'] = stub[:messages_per_second] unless stub[:messages_per_second].nil?
        data['Total'] = stub[:total] unless stub[:total].nil?
        data['Session'] = stub[:session] unless stub[:session].nil?
        data
      end
    end

    # Structure Stubber for CampaignHook
    class CampaignHook
      def self.default(visited=[])
        return nil if visited.include?('CampaignHook')
        visited = visited + ['CampaignHook']
        {
          lambda_function_name: 'lambda_function_name',
          mode: 'mode',
          web_url: 'web_url',
        }
      end

      def self.stub(stub)
        stub ||= Types::CampaignHook.new
        data = {}
        data['LambdaFunctionName'] = stub[:lambda_function_name] unless stub[:lambda_function_name].nil?
        data['Mode'] = stub[:mode] unless stub[:mode].nil?
        data['WebUrl'] = stub[:web_url] unless stub[:web_url].nil?
        data
      end
    end

    # Structure Stubber for CustomDeliveryConfiguration
    class CustomDeliveryConfiguration
      def self.default(visited=[])
        return nil if visited.include?('CustomDeliveryConfiguration')
        visited = visited + ['CustomDeliveryConfiguration']
        {
          delivery_uri: 'delivery_uri',
          endpoint_types: Stubs::ListOf__EndpointTypesElement.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CustomDeliveryConfiguration.new
        data = {}
        data['DeliveryUri'] = stub[:delivery_uri] unless stub[:delivery_uri].nil?
        data['EndpointTypes'] = Stubs::ListOf__EndpointTypesElement.stub(stub[:endpoint_types]) unless stub[:endpoint_types].nil?
        data
      end
    end

    # List Stubber for ListOf__EndpointTypesElement
    class ListOf__EndpointTypesElement
      def self.default(visited=[])
        return nil if visited.include?('ListOf__EndpointTypesElement')
        visited = visited + ['ListOf__EndpointTypesElement']
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

    # List Stubber for ListOfTreatmentResource
    class ListOfTreatmentResource
      def self.default(visited=[])
        return nil if visited.include?('ListOfTreatmentResource')
        visited = visited + ['ListOfTreatmentResource']
        [
          Stubs::TreatmentResource.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::TreatmentResource.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TreatmentResource
    class TreatmentResource
      def self.default(visited=[])
        return nil if visited.include?('TreatmentResource')
        visited = visited + ['TreatmentResource']
        {
          custom_delivery_configuration: Stubs::CustomDeliveryConfiguration.default(visited),
          id: 'id',
          message_configuration: Stubs::MessageConfiguration.default(visited),
          schedule: Stubs::Schedule.default(visited),
          size_percent: 1,
          state: Stubs::CampaignState.default(visited),
          template_configuration: Stubs::TemplateConfiguration.default(visited),
          treatment_description: 'treatment_description',
          treatment_name: 'treatment_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::TreatmentResource.new
        data = {}
        data['CustomDeliveryConfiguration'] = Stubs::CustomDeliveryConfiguration.stub(stub[:custom_delivery_configuration]) unless stub[:custom_delivery_configuration].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['MessageConfiguration'] = Stubs::MessageConfiguration.stub(stub[:message_configuration]) unless stub[:message_configuration].nil?
        data['Schedule'] = Stubs::Schedule.stub(stub[:schedule]) unless stub[:schedule].nil?
        data['SizePercent'] = stub[:size_percent] unless stub[:size_percent].nil?
        data['State'] = Stubs::CampaignState.stub(stub[:state]) unless stub[:state].nil?
        data['TemplateConfiguration'] = Stubs::TemplateConfiguration.stub(stub[:template_configuration]) unless stub[:template_configuration].nil?
        data['TreatmentDescription'] = stub[:treatment_description] unless stub[:treatment_description].nil?
        data['TreatmentName'] = stub[:treatment_name] unless stub[:treatment_name].nil?
        data
      end
    end

    # Operation Stubber for CreateEmailTemplate
    class CreateEmailTemplate
      def self.default(visited=[])
        {
          create_template_message_body: Stubs::CreateTemplateMessageBody.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::CreateTemplateMessageBody.stub(stub[:create_template_message_body]) unless stub[:create_template_message_body].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for CreateTemplateMessageBody
    class CreateTemplateMessageBody
      def self.default(visited=[])
        return nil if visited.include?('CreateTemplateMessageBody')
        visited = visited + ['CreateTemplateMessageBody']
        {
          arn: 'arn',
          message: 'message',
          request_id: 'request_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::CreateTemplateMessageBody.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data['RequestID'] = stub[:request_id] unless stub[:request_id].nil?
        data
      end
    end

    # Operation Stubber for CreateExportJob
    class CreateExportJob
      def self.default(visited=[])
        {
          export_job_response: Stubs::ExportJobResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::ExportJobResponse.stub(stub[:export_job_response]) unless stub[:export_job_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ExportJobResponse
    class ExportJobResponse
      def self.default(visited=[])
        return nil if visited.include?('ExportJobResponse')
        visited = visited + ['ExportJobResponse']
        {
          application_id: 'application_id',
          completed_pieces: 1,
          completion_date: 'completion_date',
          creation_date: 'creation_date',
          definition: Stubs::ExportJobResource.default(visited),
          failed_pieces: 1,
          failures: Stubs::ListOf__string.default(visited),
          id: 'id',
          job_status: 'job_status',
          total_failures: 1,
          total_pieces: 1,
          total_processed: 1,
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::ExportJobResponse.new
        data = {}
        data['ApplicationId'] = stub[:application_id] unless stub[:application_id].nil?
        data['CompletedPieces'] = stub[:completed_pieces] unless stub[:completed_pieces].nil?
        data['CompletionDate'] = stub[:completion_date] unless stub[:completion_date].nil?
        data['CreationDate'] = stub[:creation_date] unless stub[:creation_date].nil?
        data['Definition'] = Stubs::ExportJobResource.stub(stub[:definition]) unless stub[:definition].nil?
        data['FailedPieces'] = stub[:failed_pieces] unless stub[:failed_pieces].nil?
        data['Failures'] = Stubs::ListOf__string.stub(stub[:failures]) unless stub[:failures].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['JobStatus'] = stub[:job_status] unless stub[:job_status].nil?
        data['TotalFailures'] = stub[:total_failures] unless stub[:total_failures].nil?
        data['TotalPieces'] = stub[:total_pieces] unless stub[:total_pieces].nil?
        data['TotalProcessed'] = stub[:total_processed] unless stub[:total_processed].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # Structure Stubber for ExportJobResource
    class ExportJobResource
      def self.default(visited=[])
        return nil if visited.include?('ExportJobResource')
        visited = visited + ['ExportJobResource']
        {
          role_arn: 'role_arn',
          s3_url_prefix: 's3_url_prefix',
          segment_id: 'segment_id',
          segment_version: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ExportJobResource.new
        data = {}
        data['RoleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['S3UrlPrefix'] = stub[:s3_url_prefix] unless stub[:s3_url_prefix].nil?
        data['SegmentId'] = stub[:segment_id] unless stub[:segment_id].nil?
        data['SegmentVersion'] = stub[:segment_version] unless stub[:segment_version].nil?
        data
      end
    end

    # Operation Stubber for CreateImportJob
    class CreateImportJob
      def self.default(visited=[])
        {
          import_job_response: Stubs::ImportJobResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::ImportJobResponse.stub(stub[:import_job_response]) unless stub[:import_job_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ImportJobResponse
    class ImportJobResponse
      def self.default(visited=[])
        return nil if visited.include?('ImportJobResponse')
        visited = visited + ['ImportJobResponse']
        {
          application_id: 'application_id',
          completed_pieces: 1,
          completion_date: 'completion_date',
          creation_date: 'creation_date',
          definition: Stubs::ImportJobResource.default(visited),
          failed_pieces: 1,
          failures: Stubs::ListOf__string.default(visited),
          id: 'id',
          job_status: 'job_status',
          total_failures: 1,
          total_pieces: 1,
          total_processed: 1,
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::ImportJobResponse.new
        data = {}
        data['ApplicationId'] = stub[:application_id] unless stub[:application_id].nil?
        data['CompletedPieces'] = stub[:completed_pieces] unless stub[:completed_pieces].nil?
        data['CompletionDate'] = stub[:completion_date] unless stub[:completion_date].nil?
        data['CreationDate'] = stub[:creation_date] unless stub[:creation_date].nil?
        data['Definition'] = Stubs::ImportJobResource.stub(stub[:definition]) unless stub[:definition].nil?
        data['FailedPieces'] = stub[:failed_pieces] unless stub[:failed_pieces].nil?
        data['Failures'] = Stubs::ListOf__string.stub(stub[:failures]) unless stub[:failures].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['JobStatus'] = stub[:job_status] unless stub[:job_status].nil?
        data['TotalFailures'] = stub[:total_failures] unless stub[:total_failures].nil?
        data['TotalPieces'] = stub[:total_pieces] unless stub[:total_pieces].nil?
        data['TotalProcessed'] = stub[:total_processed] unless stub[:total_processed].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # Structure Stubber for ImportJobResource
    class ImportJobResource
      def self.default(visited=[])
        return nil if visited.include?('ImportJobResource')
        visited = visited + ['ImportJobResource']
        {
          define_segment: false,
          external_id: 'external_id',
          format: 'format',
          register_endpoints: false,
          role_arn: 'role_arn',
          s3_url: 's3_url',
          segment_id: 'segment_id',
          segment_name: 'segment_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::ImportJobResource.new
        data = {}
        data['DefineSegment'] = stub[:define_segment] unless stub[:define_segment].nil?
        data['ExternalId'] = stub[:external_id] unless stub[:external_id].nil?
        data['Format'] = stub[:format] unless stub[:format].nil?
        data['RegisterEndpoints'] = stub[:register_endpoints] unless stub[:register_endpoints].nil?
        data['RoleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['S3Url'] = stub[:s3_url] unless stub[:s3_url].nil?
        data['SegmentId'] = stub[:segment_id] unless stub[:segment_id].nil?
        data['SegmentName'] = stub[:segment_name] unless stub[:segment_name].nil?
        data
      end
    end

    # Operation Stubber for CreateInAppTemplate
    class CreateInAppTemplate
      def self.default(visited=[])
        {
          template_create_message_body: Stubs::TemplateCreateMessageBody.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::TemplateCreateMessageBody.stub(stub[:template_create_message_body]) unless stub[:template_create_message_body].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for TemplateCreateMessageBody
    class TemplateCreateMessageBody
      def self.default(visited=[])
        return nil if visited.include?('TemplateCreateMessageBody')
        visited = visited + ['TemplateCreateMessageBody']
        {
          arn: 'arn',
          message: 'message',
          request_id: 'request_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::TemplateCreateMessageBody.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data['RequestID'] = stub[:request_id] unless stub[:request_id].nil?
        data
      end
    end

    # Operation Stubber for CreateJourney
    class CreateJourney
      def self.default(visited=[])
        {
          journey_response: Stubs::JourneyResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::JourneyResponse.stub(stub[:journey_response]) unless stub[:journey_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for JourneyResponse
    class JourneyResponse
      def self.default(visited=[])
        return nil if visited.include?('JourneyResponse')
        visited = visited + ['JourneyResponse']
        {
          activities: Stubs::MapOfActivity.default(visited),
          application_id: 'application_id',
          creation_date: 'creation_date',
          id: 'id',
          last_modified_date: 'last_modified_date',
          limits: Stubs::JourneyLimits.default(visited),
          local_time: false,
          name: 'name',
          quiet_time: Stubs::QuietTime.default(visited),
          refresh_frequency: 'refresh_frequency',
          schedule: Stubs::JourneySchedule.default(visited),
          start_activity: 'start_activity',
          start_condition: Stubs::StartCondition.default(visited),
          state: 'state',
          tags: Stubs::MapOf__string.default(visited),
          wait_for_quiet_time: false,
          refresh_on_segment_update: false,
          journey_channel_settings: Stubs::JourneyChannelSettings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::JourneyResponse.new
        data = {}
        data['Activities'] = Stubs::MapOfActivity.stub(stub[:activities]) unless stub[:activities].nil?
        data['ApplicationId'] = stub[:application_id] unless stub[:application_id].nil?
        data['CreationDate'] = stub[:creation_date] unless stub[:creation_date].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['LastModifiedDate'] = stub[:last_modified_date] unless stub[:last_modified_date].nil?
        data['Limits'] = Stubs::JourneyLimits.stub(stub[:limits]) unless stub[:limits].nil?
        data['LocalTime'] = stub[:local_time] unless stub[:local_time].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['QuietTime'] = Stubs::QuietTime.stub(stub[:quiet_time]) unless stub[:quiet_time].nil?
        data['RefreshFrequency'] = stub[:refresh_frequency] unless stub[:refresh_frequency].nil?
        data['Schedule'] = Stubs::JourneySchedule.stub(stub[:schedule]) unless stub[:schedule].nil?
        data['StartActivity'] = stub[:start_activity] unless stub[:start_activity].nil?
        data['StartCondition'] = Stubs::StartCondition.stub(stub[:start_condition]) unless stub[:start_condition].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['tags'] = Stubs::MapOf__string.stub(stub[:tags]) unless stub[:tags].nil?
        data['WaitForQuietTime'] = stub[:wait_for_quiet_time] unless stub[:wait_for_quiet_time].nil?
        data['RefreshOnSegmentUpdate'] = stub[:refresh_on_segment_update] unless stub[:refresh_on_segment_update].nil?
        data['JourneyChannelSettings'] = Stubs::JourneyChannelSettings.stub(stub[:journey_channel_settings]) unless stub[:journey_channel_settings].nil?
        data
      end
    end

    # Structure Stubber for JourneyChannelSettings
    class JourneyChannelSettings
      def self.default(visited=[])
        return nil if visited.include?('JourneyChannelSettings')
        visited = visited + ['JourneyChannelSettings']
        {
          connect_campaign_arn: 'connect_campaign_arn',
          connect_campaign_execution_role_arn: 'connect_campaign_execution_role_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::JourneyChannelSettings.new
        data = {}
        data['ConnectCampaignArn'] = stub[:connect_campaign_arn] unless stub[:connect_campaign_arn].nil?
        data['ConnectCampaignExecutionRoleArn'] = stub[:connect_campaign_execution_role_arn] unless stub[:connect_campaign_execution_role_arn].nil?
        data
      end
    end

    # Structure Stubber for StartCondition
    class StartCondition
      def self.default(visited=[])
        return nil if visited.include?('StartCondition')
        visited = visited + ['StartCondition']
        {
          description: 'description',
          event_start_condition: Stubs::EventStartCondition.default(visited),
          segment_start_condition: Stubs::SegmentCondition.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::StartCondition.new
        data = {}
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['EventStartCondition'] = Stubs::EventStartCondition.stub(stub[:event_start_condition]) unless stub[:event_start_condition].nil?
        data['SegmentStartCondition'] = Stubs::SegmentCondition.stub(stub[:segment_start_condition]) unless stub[:segment_start_condition].nil?
        data
      end
    end

    # Structure Stubber for SegmentCondition
    class SegmentCondition
      def self.default(visited=[])
        return nil if visited.include?('SegmentCondition')
        visited = visited + ['SegmentCondition']
        {
          segment_id: 'segment_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::SegmentCondition.new
        data = {}
        data['SegmentId'] = stub[:segment_id] unless stub[:segment_id].nil?
        data
      end
    end

    # Structure Stubber for EventStartCondition
    class EventStartCondition
      def self.default(visited=[])
        return nil if visited.include?('EventStartCondition')
        visited = visited + ['EventStartCondition']
        {
          event_filter: Stubs::EventFilter.default(visited),
          segment_id: 'segment_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::EventStartCondition.new
        data = {}
        data['EventFilter'] = Stubs::EventFilter.stub(stub[:event_filter]) unless stub[:event_filter].nil?
        data['SegmentId'] = stub[:segment_id] unless stub[:segment_id].nil?
        data
      end
    end

    # Structure Stubber for EventFilter
    class EventFilter
      def self.default(visited=[])
        return nil if visited.include?('EventFilter')
        visited = visited + ['EventFilter']
        {
          dimensions: Stubs::EventDimensions.default(visited),
          filter_type: 'filter_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::EventFilter.new
        data = {}
        data['Dimensions'] = Stubs::EventDimensions.stub(stub[:dimensions]) unless stub[:dimensions].nil?
        data['FilterType'] = stub[:filter_type] unless stub[:filter_type].nil?
        data
      end
    end

    # Structure Stubber for JourneySchedule
    class JourneySchedule
      def self.default(visited=[])
        return nil if visited.include?('JourneySchedule')
        visited = visited + ['JourneySchedule']
        {
          end_time: Time.now,
          start_time: Time.now,
          timezone: 'timezone',
        }
      end

      def self.stub(stub)
        stub ||= Types::JourneySchedule.new
        data = {}
        data['EndTime'] = Hearth::TimeHelper.to_date_time(stub[:end_time]) unless stub[:end_time].nil?
        data['StartTime'] = Hearth::TimeHelper.to_date_time(stub[:start_time]) unless stub[:start_time].nil?
        data['Timezone'] = stub[:timezone] unless stub[:timezone].nil?
        data
      end
    end

    # Structure Stubber for JourneyLimits
    class JourneyLimits
      def self.default(visited=[])
        return nil if visited.include?('JourneyLimits')
        visited = visited + ['JourneyLimits']
        {
          daily_cap: 1,
          endpoint_reentry_cap: 1,
          messages_per_second: 1,
          endpoint_reentry_interval: 'endpoint_reentry_interval',
        }
      end

      def self.stub(stub)
        stub ||= Types::JourneyLimits.new
        data = {}
        data['DailyCap'] = stub[:daily_cap] unless stub[:daily_cap].nil?
        data['EndpointReentryCap'] = stub[:endpoint_reentry_cap] unless stub[:endpoint_reentry_cap].nil?
        data['MessagesPerSecond'] = stub[:messages_per_second] unless stub[:messages_per_second].nil?
        data['EndpointReentryInterval'] = stub[:endpoint_reentry_interval] unless stub[:endpoint_reentry_interval].nil?
        data
      end
    end

    # Map Stubber for MapOfActivity
    class MapOfActivity
      def self.default(visited=[])
        return nil if visited.include?('MapOfActivity')
        visited = visited + ['MapOfActivity']
        {
          test_key: Stubs::Activity.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::Activity.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for Activity
    class Activity
      def self.default(visited=[])
        return nil if visited.include?('Activity')
        visited = visited + ['Activity']
        {
          custom: Stubs::CustomMessageActivity.default(visited),
          conditional_split: Stubs::ConditionalSplitActivity.default(visited),
          description: 'description',
          email: Stubs::EmailMessageActivity.default(visited),
          holdout: Stubs::HoldoutActivity.default(visited),
          multi_condition: Stubs::MultiConditionalSplitActivity.default(visited),
          push: Stubs::PushMessageActivity.default(visited),
          random_split: Stubs::RandomSplitActivity.default(visited),
          sms: Stubs::SMSMessageActivity.default(visited),
          wait: Stubs::WaitActivity.default(visited),
          contact_center: Stubs::ContactCenterActivity.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Activity.new
        data = {}
        data['CUSTOM'] = Stubs::CustomMessageActivity.stub(stub[:custom]) unless stub[:custom].nil?
        data['ConditionalSplit'] = Stubs::ConditionalSplitActivity.stub(stub[:conditional_split]) unless stub[:conditional_split].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['EMAIL'] = Stubs::EmailMessageActivity.stub(stub[:email]) unless stub[:email].nil?
        data['Holdout'] = Stubs::HoldoutActivity.stub(stub[:holdout]) unless stub[:holdout].nil?
        data['MultiCondition'] = Stubs::MultiConditionalSplitActivity.stub(stub[:multi_condition]) unless stub[:multi_condition].nil?
        data['PUSH'] = Stubs::PushMessageActivity.stub(stub[:push]) unless stub[:push].nil?
        data['RandomSplit'] = Stubs::RandomSplitActivity.stub(stub[:random_split]) unless stub[:random_split].nil?
        data['SMS'] = Stubs::SMSMessageActivity.stub(stub[:sms]) unless stub[:sms].nil?
        data['Wait'] = Stubs::WaitActivity.stub(stub[:wait]) unless stub[:wait].nil?
        data['ContactCenter'] = Stubs::ContactCenterActivity.stub(stub[:contact_center]) unless stub[:contact_center].nil?
        data
      end
    end

    # Structure Stubber for ContactCenterActivity
    class ContactCenterActivity
      def self.default(visited=[])
        return nil if visited.include?('ContactCenterActivity')
        visited = visited + ['ContactCenterActivity']
        {
          next_activity: 'next_activity',
        }
      end

      def self.stub(stub)
        stub ||= Types::ContactCenterActivity.new
        data = {}
        data['NextActivity'] = stub[:next_activity] unless stub[:next_activity].nil?
        data
      end
    end

    # Structure Stubber for WaitActivity
    class WaitActivity
      def self.default(visited=[])
        return nil if visited.include?('WaitActivity')
        visited = visited + ['WaitActivity']
        {
          next_activity: 'next_activity',
          wait_time: Stubs::WaitTime.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::WaitActivity.new
        data = {}
        data['NextActivity'] = stub[:next_activity] unless stub[:next_activity].nil?
        data['WaitTime'] = Stubs::WaitTime.stub(stub[:wait_time]) unless stub[:wait_time].nil?
        data
      end
    end

    # Structure Stubber for WaitTime
    class WaitTime
      def self.default(visited=[])
        return nil if visited.include?('WaitTime')
        visited = visited + ['WaitTime']
        {
          wait_for: 'wait_for',
          wait_until: 'wait_until',
        }
      end

      def self.stub(stub)
        stub ||= Types::WaitTime.new
        data = {}
        data['WaitFor'] = stub[:wait_for] unless stub[:wait_for].nil?
        data['WaitUntil'] = stub[:wait_until] unless stub[:wait_until].nil?
        data
      end
    end

    # Structure Stubber for SMSMessageActivity
    class SMSMessageActivity
      def self.default(visited=[])
        return nil if visited.include?('SMSMessageActivity')
        visited = visited + ['SMSMessageActivity']
        {
          message_config: Stubs::JourneySMSMessage.default(visited),
          next_activity: 'next_activity',
          template_name: 'template_name',
          template_version: 'template_version',
        }
      end

      def self.stub(stub)
        stub ||= Types::SMSMessageActivity.new
        data = {}
        data['MessageConfig'] = Stubs::JourneySMSMessage.stub(stub[:message_config]) unless stub[:message_config].nil?
        data['NextActivity'] = stub[:next_activity] unless stub[:next_activity].nil?
        data['TemplateName'] = stub[:template_name] unless stub[:template_name].nil?
        data['TemplateVersion'] = stub[:template_version] unless stub[:template_version].nil?
        data
      end
    end

    # Structure Stubber for JourneySMSMessage
    class JourneySMSMessage
      def self.default(visited=[])
        return nil if visited.include?('JourneySMSMessage')
        visited = visited + ['JourneySMSMessage']
        {
          message_type: 'message_type',
          origination_number: 'origination_number',
          sender_id: 'sender_id',
          entity_id: 'entity_id',
          template_id: 'template_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::JourneySMSMessage.new
        data = {}
        data['MessageType'] = stub[:message_type] unless stub[:message_type].nil?
        data['OriginationNumber'] = stub[:origination_number] unless stub[:origination_number].nil?
        data['SenderId'] = stub[:sender_id] unless stub[:sender_id].nil?
        data['EntityId'] = stub[:entity_id] unless stub[:entity_id].nil?
        data['TemplateId'] = stub[:template_id] unless stub[:template_id].nil?
        data
      end
    end

    # Structure Stubber for RandomSplitActivity
    class RandomSplitActivity
      def self.default(visited=[])
        return nil if visited.include?('RandomSplitActivity')
        visited = visited + ['RandomSplitActivity']
        {
          branches: Stubs::ListOfRandomSplitEntry.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RandomSplitActivity.new
        data = {}
        data['Branches'] = Stubs::ListOfRandomSplitEntry.stub(stub[:branches]) unless stub[:branches].nil?
        data
      end
    end

    # List Stubber for ListOfRandomSplitEntry
    class ListOfRandomSplitEntry
      def self.default(visited=[])
        return nil if visited.include?('ListOfRandomSplitEntry')
        visited = visited + ['ListOfRandomSplitEntry']
        [
          Stubs::RandomSplitEntry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::RandomSplitEntry.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RandomSplitEntry
    class RandomSplitEntry
      def self.default(visited=[])
        return nil if visited.include?('RandomSplitEntry')
        visited = visited + ['RandomSplitEntry']
        {
          next_activity: 'next_activity',
          percentage: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::RandomSplitEntry.new
        data = {}
        data['NextActivity'] = stub[:next_activity] unless stub[:next_activity].nil?
        data['Percentage'] = stub[:percentage] unless stub[:percentage].nil?
        data
      end
    end

    # Structure Stubber for PushMessageActivity
    class PushMessageActivity
      def self.default(visited=[])
        return nil if visited.include?('PushMessageActivity')
        visited = visited + ['PushMessageActivity']
        {
          message_config: Stubs::JourneyPushMessage.default(visited),
          next_activity: 'next_activity',
          template_name: 'template_name',
          template_version: 'template_version',
        }
      end

      def self.stub(stub)
        stub ||= Types::PushMessageActivity.new
        data = {}
        data['MessageConfig'] = Stubs::JourneyPushMessage.stub(stub[:message_config]) unless stub[:message_config].nil?
        data['NextActivity'] = stub[:next_activity] unless stub[:next_activity].nil?
        data['TemplateName'] = stub[:template_name] unless stub[:template_name].nil?
        data['TemplateVersion'] = stub[:template_version] unless stub[:template_version].nil?
        data
      end
    end

    # Structure Stubber for JourneyPushMessage
    class JourneyPushMessage
      def self.default(visited=[])
        return nil if visited.include?('JourneyPushMessage')
        visited = visited + ['JourneyPushMessage']
        {
          time_to_live: 'time_to_live',
        }
      end

      def self.stub(stub)
        stub ||= Types::JourneyPushMessage.new
        data = {}
        data['TimeToLive'] = stub[:time_to_live] unless stub[:time_to_live].nil?
        data
      end
    end

    # Structure Stubber for MultiConditionalSplitActivity
    class MultiConditionalSplitActivity
      def self.default(visited=[])
        return nil if visited.include?('MultiConditionalSplitActivity')
        visited = visited + ['MultiConditionalSplitActivity']
        {
          branches: Stubs::ListOfMultiConditionalBranch.default(visited),
          default_activity: 'default_activity',
          evaluation_wait_time: Stubs::WaitTime.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::MultiConditionalSplitActivity.new
        data = {}
        data['Branches'] = Stubs::ListOfMultiConditionalBranch.stub(stub[:branches]) unless stub[:branches].nil?
        data['DefaultActivity'] = stub[:default_activity] unless stub[:default_activity].nil?
        data['EvaluationWaitTime'] = Stubs::WaitTime.stub(stub[:evaluation_wait_time]) unless stub[:evaluation_wait_time].nil?
        data
      end
    end

    # List Stubber for ListOfMultiConditionalBranch
    class ListOfMultiConditionalBranch
      def self.default(visited=[])
        return nil if visited.include?('ListOfMultiConditionalBranch')
        visited = visited + ['ListOfMultiConditionalBranch']
        [
          Stubs::MultiConditionalBranch.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::MultiConditionalBranch.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MultiConditionalBranch
    class MultiConditionalBranch
      def self.default(visited=[])
        return nil if visited.include?('MultiConditionalBranch')
        visited = visited + ['MultiConditionalBranch']
        {
          condition: Stubs::SimpleCondition.default(visited),
          next_activity: 'next_activity',
        }
      end

      def self.stub(stub)
        stub ||= Types::MultiConditionalBranch.new
        data = {}
        data['Condition'] = Stubs::SimpleCondition.stub(stub[:condition]) unless stub[:condition].nil?
        data['NextActivity'] = stub[:next_activity] unless stub[:next_activity].nil?
        data
      end
    end

    # Structure Stubber for SimpleCondition
    class SimpleCondition
      def self.default(visited=[])
        return nil if visited.include?('SimpleCondition')
        visited = visited + ['SimpleCondition']
        {
          event_condition: Stubs::EventCondition.default(visited),
          segment_condition: Stubs::SegmentCondition.default(visited),
          segment_dimensions: Stubs::SegmentDimensions.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SimpleCondition.new
        data = {}
        data['EventCondition'] = Stubs::EventCondition.stub(stub[:event_condition]) unless stub[:event_condition].nil?
        data['SegmentCondition'] = Stubs::SegmentCondition.stub(stub[:segment_condition]) unless stub[:segment_condition].nil?
        data['segmentDimensions'] = Stubs::SegmentDimensions.stub(stub[:segment_dimensions]) unless stub[:segment_dimensions].nil?
        data
      end
    end

    # Structure Stubber for SegmentDimensions
    class SegmentDimensions
      def self.default(visited=[])
        return nil if visited.include?('SegmentDimensions')
        visited = visited + ['SegmentDimensions']
        {
          attributes: Stubs::MapOfAttributeDimension.default(visited),
          behavior: Stubs::SegmentBehaviors.default(visited),
          demographic: Stubs::SegmentDemographics.default(visited),
          location: Stubs::SegmentLocation.default(visited),
          metrics: Stubs::MapOfMetricDimension.default(visited),
          user_attributes: Stubs::MapOfAttributeDimension.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SegmentDimensions.new
        data = {}
        data['Attributes'] = Stubs::MapOfAttributeDimension.stub(stub[:attributes]) unless stub[:attributes].nil?
        data['Behavior'] = Stubs::SegmentBehaviors.stub(stub[:behavior]) unless stub[:behavior].nil?
        data['Demographic'] = Stubs::SegmentDemographics.stub(stub[:demographic]) unless stub[:demographic].nil?
        data['Location'] = Stubs::SegmentLocation.stub(stub[:location]) unless stub[:location].nil?
        data['Metrics'] = Stubs::MapOfMetricDimension.stub(stub[:metrics]) unless stub[:metrics].nil?
        data['UserAttributes'] = Stubs::MapOfAttributeDimension.stub(stub[:user_attributes]) unless stub[:user_attributes].nil?
        data
      end
    end

    # Structure Stubber for SegmentLocation
    class SegmentLocation
      def self.default(visited=[])
        return nil if visited.include?('SegmentLocation')
        visited = visited + ['SegmentLocation']
        {
          country: Stubs::SetDimension.default(visited),
          gps_point: Stubs::GPSPointDimension.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SegmentLocation.new
        data = {}
        data['Country'] = Stubs::SetDimension.stub(stub[:country]) unless stub[:country].nil?
        data['GPSPoint'] = Stubs::GPSPointDimension.stub(stub[:gps_point]) unless stub[:gps_point].nil?
        data
      end
    end

    # Structure Stubber for GPSPointDimension
    class GPSPointDimension
      def self.default(visited=[])
        return nil if visited.include?('GPSPointDimension')
        visited = visited + ['GPSPointDimension']
        {
          coordinates: Stubs::GPSCoordinates.default(visited),
          range_in_kilometers: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::GPSPointDimension.new
        data = {}
        data['Coordinates'] = Stubs::GPSCoordinates.stub(stub[:coordinates]) unless stub[:coordinates].nil?
        data['RangeInKilometers'] = Hearth::NumberHelper.serialize(stub[:range_in_kilometers])
        data
      end
    end

    # Structure Stubber for GPSCoordinates
    class GPSCoordinates
      def self.default(visited=[])
        return nil if visited.include?('GPSCoordinates')
        visited = visited + ['GPSCoordinates']
        {
          latitude: 1.0,
          longitude: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::GPSCoordinates.new
        data = {}
        data['Latitude'] = Hearth::NumberHelper.serialize(stub[:latitude])
        data['Longitude'] = Hearth::NumberHelper.serialize(stub[:longitude])
        data
      end
    end

    # Structure Stubber for SegmentDemographics
    class SegmentDemographics
      def self.default(visited=[])
        return nil if visited.include?('SegmentDemographics')
        visited = visited + ['SegmentDemographics']
        {
          app_version: Stubs::SetDimension.default(visited),
          channel: Stubs::SetDimension.default(visited),
          device_type: Stubs::SetDimension.default(visited),
          make: Stubs::SetDimension.default(visited),
          model: Stubs::SetDimension.default(visited),
          platform: Stubs::SetDimension.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SegmentDemographics.new
        data = {}
        data['AppVersion'] = Stubs::SetDimension.stub(stub[:app_version]) unless stub[:app_version].nil?
        data['Channel'] = Stubs::SetDimension.stub(stub[:channel]) unless stub[:channel].nil?
        data['DeviceType'] = Stubs::SetDimension.stub(stub[:device_type]) unless stub[:device_type].nil?
        data['Make'] = Stubs::SetDimension.stub(stub[:make]) unless stub[:make].nil?
        data['Model'] = Stubs::SetDimension.stub(stub[:model]) unless stub[:model].nil?
        data['Platform'] = Stubs::SetDimension.stub(stub[:platform]) unless stub[:platform].nil?
        data
      end
    end

    # Structure Stubber for SegmentBehaviors
    class SegmentBehaviors
      def self.default(visited=[])
        return nil if visited.include?('SegmentBehaviors')
        visited = visited + ['SegmentBehaviors']
        {
          recency: Stubs::RecencyDimension.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SegmentBehaviors.new
        data = {}
        data['Recency'] = Stubs::RecencyDimension.stub(stub[:recency]) unless stub[:recency].nil?
        data
      end
    end

    # Structure Stubber for RecencyDimension
    class RecencyDimension
      def self.default(visited=[])
        return nil if visited.include?('RecencyDimension')
        visited = visited + ['RecencyDimension']
        {
          duration: 'duration',
          recency_type: 'recency_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::RecencyDimension.new
        data = {}
        data['Duration'] = stub[:duration] unless stub[:duration].nil?
        data['RecencyType'] = stub[:recency_type] unless stub[:recency_type].nil?
        data
      end
    end

    # Structure Stubber for EventCondition
    class EventCondition
      def self.default(visited=[])
        return nil if visited.include?('EventCondition')
        visited = visited + ['EventCondition']
        {
          dimensions: Stubs::EventDimensions.default(visited),
          message_activity: 'message_activity',
        }
      end

      def self.stub(stub)
        stub ||= Types::EventCondition.new
        data = {}
        data['Dimensions'] = Stubs::EventDimensions.stub(stub[:dimensions]) unless stub[:dimensions].nil?
        data['MessageActivity'] = stub[:message_activity] unless stub[:message_activity].nil?
        data
      end
    end

    # Structure Stubber for HoldoutActivity
    class HoldoutActivity
      def self.default(visited=[])
        return nil if visited.include?('HoldoutActivity')
        visited = visited + ['HoldoutActivity']
        {
          next_activity: 'next_activity',
          percentage: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::HoldoutActivity.new
        data = {}
        data['NextActivity'] = stub[:next_activity] unless stub[:next_activity].nil?
        data['Percentage'] = stub[:percentage] unless stub[:percentage].nil?
        data
      end
    end

    # Structure Stubber for EmailMessageActivity
    class EmailMessageActivity
      def self.default(visited=[])
        return nil if visited.include?('EmailMessageActivity')
        visited = visited + ['EmailMessageActivity']
        {
          message_config: Stubs::JourneyEmailMessage.default(visited),
          next_activity: 'next_activity',
          template_name: 'template_name',
          template_version: 'template_version',
        }
      end

      def self.stub(stub)
        stub ||= Types::EmailMessageActivity.new
        data = {}
        data['MessageConfig'] = Stubs::JourneyEmailMessage.stub(stub[:message_config]) unless stub[:message_config].nil?
        data['NextActivity'] = stub[:next_activity] unless stub[:next_activity].nil?
        data['TemplateName'] = stub[:template_name] unless stub[:template_name].nil?
        data['TemplateVersion'] = stub[:template_version] unless stub[:template_version].nil?
        data
      end
    end

    # Structure Stubber for JourneyEmailMessage
    class JourneyEmailMessage
      def self.default(visited=[])
        return nil if visited.include?('JourneyEmailMessage')
        visited = visited + ['JourneyEmailMessage']
        {
          from_address: 'from_address',
        }
      end

      def self.stub(stub)
        stub ||= Types::JourneyEmailMessage.new
        data = {}
        data['FromAddress'] = stub[:from_address] unless stub[:from_address].nil?
        data
      end
    end

    # Structure Stubber for ConditionalSplitActivity
    class ConditionalSplitActivity
      def self.default(visited=[])
        return nil if visited.include?('ConditionalSplitActivity')
        visited = visited + ['ConditionalSplitActivity']
        {
          condition: Stubs::Condition.default(visited),
          evaluation_wait_time: Stubs::WaitTime.default(visited),
          false_activity: 'false_activity',
          true_activity: 'true_activity',
        }
      end

      def self.stub(stub)
        stub ||= Types::ConditionalSplitActivity.new
        data = {}
        data['Condition'] = Stubs::Condition.stub(stub[:condition]) unless stub[:condition].nil?
        data['EvaluationWaitTime'] = Stubs::WaitTime.stub(stub[:evaluation_wait_time]) unless stub[:evaluation_wait_time].nil?
        data['FalseActivity'] = stub[:false_activity] unless stub[:false_activity].nil?
        data['TrueActivity'] = stub[:true_activity] unless stub[:true_activity].nil?
        data
      end
    end

    # Structure Stubber for Condition
    class Condition
      def self.default(visited=[])
        return nil if visited.include?('Condition')
        visited = visited + ['Condition']
        {
          conditions: Stubs::ListOfSimpleCondition.default(visited),
          operator: 'operator',
        }
      end

      def self.stub(stub)
        stub ||= Types::Condition.new
        data = {}
        data['Conditions'] = Stubs::ListOfSimpleCondition.stub(stub[:conditions]) unless stub[:conditions].nil?
        data['Operator'] = stub[:operator] unless stub[:operator].nil?
        data
      end
    end

    # List Stubber for ListOfSimpleCondition
    class ListOfSimpleCondition
      def self.default(visited=[])
        return nil if visited.include?('ListOfSimpleCondition')
        visited = visited + ['ListOfSimpleCondition']
        [
          Stubs::SimpleCondition.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SimpleCondition.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CustomMessageActivity
    class CustomMessageActivity
      def self.default(visited=[])
        return nil if visited.include?('CustomMessageActivity')
        visited = visited + ['CustomMessageActivity']
        {
          delivery_uri: 'delivery_uri',
          endpoint_types: Stubs::ListOf__EndpointTypesElement.default(visited),
          message_config: Stubs::JourneyCustomMessage.default(visited),
          next_activity: 'next_activity',
          template_name: 'template_name',
          template_version: 'template_version',
        }
      end

      def self.stub(stub)
        stub ||= Types::CustomMessageActivity.new
        data = {}
        data['DeliveryUri'] = stub[:delivery_uri] unless stub[:delivery_uri].nil?
        data['EndpointTypes'] = Stubs::ListOf__EndpointTypesElement.stub(stub[:endpoint_types]) unless stub[:endpoint_types].nil?
        data['MessageConfig'] = Stubs::JourneyCustomMessage.stub(stub[:message_config]) unless stub[:message_config].nil?
        data['NextActivity'] = stub[:next_activity] unless stub[:next_activity].nil?
        data['TemplateName'] = stub[:template_name] unless stub[:template_name].nil?
        data['TemplateVersion'] = stub[:template_version] unless stub[:template_version].nil?
        data
      end
    end

    # Structure Stubber for JourneyCustomMessage
    class JourneyCustomMessage
      def self.default(visited=[])
        return nil if visited.include?('JourneyCustomMessage')
        visited = visited + ['JourneyCustomMessage']
        {
          data: 'data',
        }
      end

      def self.stub(stub)
        stub ||= Types::JourneyCustomMessage.new
        data = {}
        data['Data'] = stub[:data] unless stub[:data].nil?
        data
      end
    end

    # Operation Stubber for CreatePushTemplate
    class CreatePushTemplate
      def self.default(visited=[])
        {
          create_template_message_body: Stubs::CreateTemplateMessageBody.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::CreateTemplateMessageBody.stub(stub[:create_template_message_body]) unless stub[:create_template_message_body].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateRecommenderConfiguration
    class CreateRecommenderConfiguration
      def self.default(visited=[])
        {
          recommender_configuration_response: Stubs::RecommenderConfigurationResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::RecommenderConfigurationResponse.stub(stub[:recommender_configuration_response]) unless stub[:recommender_configuration_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for RecommenderConfigurationResponse
    class RecommenderConfigurationResponse
      def self.default(visited=[])
        return nil if visited.include?('RecommenderConfigurationResponse')
        visited = visited + ['RecommenderConfigurationResponse']
        {
          attributes: Stubs::MapOf__string.default(visited),
          creation_date: 'creation_date',
          description: 'description',
          id: 'id',
          last_modified_date: 'last_modified_date',
          name: 'name',
          recommendation_provider_id_type: 'recommendation_provider_id_type',
          recommendation_provider_role_arn: 'recommendation_provider_role_arn',
          recommendation_provider_uri: 'recommendation_provider_uri',
          recommendation_transformer_uri: 'recommendation_transformer_uri',
          recommendations_display_name: 'recommendations_display_name',
          recommendations_per_message: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::RecommenderConfigurationResponse.new
        data = {}
        data['Attributes'] = Stubs::MapOf__string.stub(stub[:attributes]) unless stub[:attributes].nil?
        data['CreationDate'] = stub[:creation_date] unless stub[:creation_date].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['LastModifiedDate'] = stub[:last_modified_date] unless stub[:last_modified_date].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['RecommendationProviderIdType'] = stub[:recommendation_provider_id_type] unless stub[:recommendation_provider_id_type].nil?
        data['RecommendationProviderRoleArn'] = stub[:recommendation_provider_role_arn] unless stub[:recommendation_provider_role_arn].nil?
        data['RecommendationProviderUri'] = stub[:recommendation_provider_uri] unless stub[:recommendation_provider_uri].nil?
        data['RecommendationTransformerUri'] = stub[:recommendation_transformer_uri] unless stub[:recommendation_transformer_uri].nil?
        data['RecommendationsDisplayName'] = stub[:recommendations_display_name] unless stub[:recommendations_display_name].nil?
        data['RecommendationsPerMessage'] = stub[:recommendations_per_message] unless stub[:recommendations_per_message].nil?
        data
      end
    end

    # Operation Stubber for CreateSegment
    class CreateSegment
      def self.default(visited=[])
        {
          segment_response: Stubs::SegmentResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::SegmentResponse.stub(stub[:segment_response]) unless stub[:segment_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for SegmentResponse
    class SegmentResponse
      def self.default(visited=[])
        return nil if visited.include?('SegmentResponse')
        visited = visited + ['SegmentResponse']
        {
          application_id: 'application_id',
          arn: 'arn',
          creation_date: 'creation_date',
          dimensions: Stubs::SegmentDimensions.default(visited),
          id: 'id',
          import_definition: Stubs::SegmentImportResource.default(visited),
          last_modified_date: 'last_modified_date',
          name: 'name',
          segment_groups: Stubs::SegmentGroupList.default(visited),
          segment_type: 'segment_type',
          tags: Stubs::MapOf__string.default(visited),
          version: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::SegmentResponse.new
        data = {}
        data['ApplicationId'] = stub[:application_id] unless stub[:application_id].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['CreationDate'] = stub[:creation_date] unless stub[:creation_date].nil?
        data['Dimensions'] = Stubs::SegmentDimensions.stub(stub[:dimensions]) unless stub[:dimensions].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['ImportDefinition'] = Stubs::SegmentImportResource.stub(stub[:import_definition]) unless stub[:import_definition].nil?
        data['LastModifiedDate'] = stub[:last_modified_date] unless stub[:last_modified_date].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['SegmentGroups'] = Stubs::SegmentGroupList.stub(stub[:segment_groups]) unless stub[:segment_groups].nil?
        data['SegmentType'] = stub[:segment_type] unless stub[:segment_type].nil?
        data['tags'] = Stubs::MapOf__string.stub(stub[:tags]) unless stub[:tags].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        data
      end
    end

    # Structure Stubber for SegmentGroupList
    class SegmentGroupList
      def self.default(visited=[])
        return nil if visited.include?('SegmentGroupList')
        visited = visited + ['SegmentGroupList']
        {
          groups: Stubs::ListOfSegmentGroup.default(visited),
          include: 'include',
        }
      end

      def self.stub(stub)
        stub ||= Types::SegmentGroupList.new
        data = {}
        data['Groups'] = Stubs::ListOfSegmentGroup.stub(stub[:groups]) unless stub[:groups].nil?
        data['Include'] = stub[:include] unless stub[:include].nil?
        data
      end
    end

    # List Stubber for ListOfSegmentGroup
    class ListOfSegmentGroup
      def self.default(visited=[])
        return nil if visited.include?('ListOfSegmentGroup')
        visited = visited + ['ListOfSegmentGroup']
        [
          Stubs::SegmentGroup.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SegmentGroup.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SegmentGroup
    class SegmentGroup
      def self.default(visited=[])
        return nil if visited.include?('SegmentGroup')
        visited = visited + ['SegmentGroup']
        {
          dimensions: Stubs::ListOfSegmentDimensions.default(visited),
          source_segments: Stubs::ListOfSegmentReference.default(visited),
          source_type: 'source_type',
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::SegmentGroup.new
        data = {}
        data['Dimensions'] = Stubs::ListOfSegmentDimensions.stub(stub[:dimensions]) unless stub[:dimensions].nil?
        data['SourceSegments'] = Stubs::ListOfSegmentReference.stub(stub[:source_segments]) unless stub[:source_segments].nil?
        data['SourceType'] = stub[:source_type] unless stub[:source_type].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # List Stubber for ListOfSegmentReference
    class ListOfSegmentReference
      def self.default(visited=[])
        return nil if visited.include?('ListOfSegmentReference')
        visited = visited + ['ListOfSegmentReference']
        [
          Stubs::SegmentReference.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SegmentReference.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SegmentReference
    class SegmentReference
      def self.default(visited=[])
        return nil if visited.include?('SegmentReference')
        visited = visited + ['SegmentReference']
        {
          id: 'id',
          version: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::SegmentReference.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        data
      end
    end

    # List Stubber for ListOfSegmentDimensions
    class ListOfSegmentDimensions
      def self.default(visited=[])
        return nil if visited.include?('ListOfSegmentDimensions')
        visited = visited + ['ListOfSegmentDimensions']
        [
          Stubs::SegmentDimensions.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SegmentDimensions.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SegmentImportResource
    class SegmentImportResource
      def self.default(visited=[])
        return nil if visited.include?('SegmentImportResource')
        visited = visited + ['SegmentImportResource']
        {
          channel_counts: Stubs::MapOf__integer.default(visited),
          external_id: 'external_id',
          format: 'format',
          role_arn: 'role_arn',
          s3_url: 's3_url',
          size: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::SegmentImportResource.new
        data = {}
        data['ChannelCounts'] = Stubs::MapOf__integer.stub(stub[:channel_counts]) unless stub[:channel_counts].nil?
        data['ExternalId'] = stub[:external_id] unless stub[:external_id].nil?
        data['Format'] = stub[:format] unless stub[:format].nil?
        data['RoleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['S3Url'] = stub[:s3_url] unless stub[:s3_url].nil?
        data['Size'] = stub[:size] unless stub[:size].nil?
        data
      end
    end

    # Map Stubber for MapOf__integer
    class MapOf__integer
      def self.default(visited=[])
        return nil if visited.include?('MapOf__integer')
        visited = visited + ['MapOf__integer']
        {
          test_key: 1
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

    # Operation Stubber for CreateSmsTemplate
    class CreateSmsTemplate
      def self.default(visited=[])
        {
          create_template_message_body: Stubs::CreateTemplateMessageBody.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::CreateTemplateMessageBody.stub(stub[:create_template_message_body]) unless stub[:create_template_message_body].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateVoiceTemplate
    class CreateVoiceTemplate
      def self.default(visited=[])
        {
          create_template_message_body: Stubs::CreateTemplateMessageBody.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::CreateTemplateMessageBody.stub(stub[:create_template_message_body]) unless stub[:create_template_message_body].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteAdmChannel
    class DeleteAdmChannel
      def self.default(visited=[])
        {
          adm_channel_response: Stubs::ADMChannelResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::ADMChannelResponse.stub(stub[:adm_channel_response]) unless stub[:adm_channel_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ADMChannelResponse
    class ADMChannelResponse
      def self.default(visited=[])
        return nil if visited.include?('ADMChannelResponse')
        visited = visited + ['ADMChannelResponse']
        {
          application_id: 'application_id',
          creation_date: 'creation_date',
          enabled: false,
          has_credential: false,
          id: 'id',
          is_archived: false,
          last_modified_by: 'last_modified_by',
          last_modified_date: 'last_modified_date',
          platform: 'platform',
          version: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ADMChannelResponse.new
        data = {}
        data['ApplicationId'] = stub[:application_id] unless stub[:application_id].nil?
        data['CreationDate'] = stub[:creation_date] unless stub[:creation_date].nil?
        data['Enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data['HasCredential'] = stub[:has_credential] unless stub[:has_credential].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['IsArchived'] = stub[:is_archived] unless stub[:is_archived].nil?
        data['LastModifiedBy'] = stub[:last_modified_by] unless stub[:last_modified_by].nil?
        data['LastModifiedDate'] = stub[:last_modified_date] unless stub[:last_modified_date].nil?
        data['Platform'] = stub[:platform] unless stub[:platform].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        data
      end
    end

    # Operation Stubber for DeleteApnsChannel
    class DeleteApnsChannel
      def self.default(visited=[])
        {
          apns_channel_response: Stubs::APNSChannelResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::APNSChannelResponse.stub(stub[:apns_channel_response]) unless stub[:apns_channel_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for APNSChannelResponse
    class APNSChannelResponse
      def self.default(visited=[])
        return nil if visited.include?('APNSChannelResponse')
        visited = visited + ['APNSChannelResponse']
        {
          application_id: 'application_id',
          creation_date: 'creation_date',
          default_authentication_method: 'default_authentication_method',
          enabled: false,
          has_credential: false,
          has_token_key: false,
          id: 'id',
          is_archived: false,
          last_modified_by: 'last_modified_by',
          last_modified_date: 'last_modified_date',
          platform: 'platform',
          version: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::APNSChannelResponse.new
        data = {}
        data['ApplicationId'] = stub[:application_id] unless stub[:application_id].nil?
        data['CreationDate'] = stub[:creation_date] unless stub[:creation_date].nil?
        data['DefaultAuthenticationMethod'] = stub[:default_authentication_method] unless stub[:default_authentication_method].nil?
        data['Enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data['HasCredential'] = stub[:has_credential] unless stub[:has_credential].nil?
        data['HasTokenKey'] = stub[:has_token_key] unless stub[:has_token_key].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['IsArchived'] = stub[:is_archived] unless stub[:is_archived].nil?
        data['LastModifiedBy'] = stub[:last_modified_by] unless stub[:last_modified_by].nil?
        data['LastModifiedDate'] = stub[:last_modified_date] unless stub[:last_modified_date].nil?
        data['Platform'] = stub[:platform] unless stub[:platform].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        data
      end
    end

    # Operation Stubber for DeleteApnsSandboxChannel
    class DeleteApnsSandboxChannel
      def self.default(visited=[])
        {
          apns_sandbox_channel_response: Stubs::APNSSandboxChannelResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::APNSSandboxChannelResponse.stub(stub[:apns_sandbox_channel_response]) unless stub[:apns_sandbox_channel_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for APNSSandboxChannelResponse
    class APNSSandboxChannelResponse
      def self.default(visited=[])
        return nil if visited.include?('APNSSandboxChannelResponse')
        visited = visited + ['APNSSandboxChannelResponse']
        {
          application_id: 'application_id',
          creation_date: 'creation_date',
          default_authentication_method: 'default_authentication_method',
          enabled: false,
          has_credential: false,
          has_token_key: false,
          id: 'id',
          is_archived: false,
          last_modified_by: 'last_modified_by',
          last_modified_date: 'last_modified_date',
          platform: 'platform',
          version: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::APNSSandboxChannelResponse.new
        data = {}
        data['ApplicationId'] = stub[:application_id] unless stub[:application_id].nil?
        data['CreationDate'] = stub[:creation_date] unless stub[:creation_date].nil?
        data['DefaultAuthenticationMethod'] = stub[:default_authentication_method] unless stub[:default_authentication_method].nil?
        data['Enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data['HasCredential'] = stub[:has_credential] unless stub[:has_credential].nil?
        data['HasTokenKey'] = stub[:has_token_key] unless stub[:has_token_key].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['IsArchived'] = stub[:is_archived] unless stub[:is_archived].nil?
        data['LastModifiedBy'] = stub[:last_modified_by] unless stub[:last_modified_by].nil?
        data['LastModifiedDate'] = stub[:last_modified_date] unless stub[:last_modified_date].nil?
        data['Platform'] = stub[:platform] unless stub[:platform].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        data
      end
    end

    # Operation Stubber for DeleteApnsVoipChannel
    class DeleteApnsVoipChannel
      def self.default(visited=[])
        {
          apns_voip_channel_response: Stubs::APNSVoipChannelResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::APNSVoipChannelResponse.stub(stub[:apns_voip_channel_response]) unless stub[:apns_voip_channel_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for APNSVoipChannelResponse
    class APNSVoipChannelResponse
      def self.default(visited=[])
        return nil if visited.include?('APNSVoipChannelResponse')
        visited = visited + ['APNSVoipChannelResponse']
        {
          application_id: 'application_id',
          creation_date: 'creation_date',
          default_authentication_method: 'default_authentication_method',
          enabled: false,
          has_credential: false,
          has_token_key: false,
          id: 'id',
          is_archived: false,
          last_modified_by: 'last_modified_by',
          last_modified_date: 'last_modified_date',
          platform: 'platform',
          version: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::APNSVoipChannelResponse.new
        data = {}
        data['ApplicationId'] = stub[:application_id] unless stub[:application_id].nil?
        data['CreationDate'] = stub[:creation_date] unless stub[:creation_date].nil?
        data['DefaultAuthenticationMethod'] = stub[:default_authentication_method] unless stub[:default_authentication_method].nil?
        data['Enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data['HasCredential'] = stub[:has_credential] unless stub[:has_credential].nil?
        data['HasTokenKey'] = stub[:has_token_key] unless stub[:has_token_key].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['IsArchived'] = stub[:is_archived] unless stub[:is_archived].nil?
        data['LastModifiedBy'] = stub[:last_modified_by] unless stub[:last_modified_by].nil?
        data['LastModifiedDate'] = stub[:last_modified_date] unless stub[:last_modified_date].nil?
        data['Platform'] = stub[:platform] unless stub[:platform].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        data
      end
    end

    # Operation Stubber for DeleteApnsVoipSandboxChannel
    class DeleteApnsVoipSandboxChannel
      def self.default(visited=[])
        {
          apns_voip_sandbox_channel_response: Stubs::APNSVoipSandboxChannelResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::APNSVoipSandboxChannelResponse.stub(stub[:apns_voip_sandbox_channel_response]) unless stub[:apns_voip_sandbox_channel_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for APNSVoipSandboxChannelResponse
    class APNSVoipSandboxChannelResponse
      def self.default(visited=[])
        return nil if visited.include?('APNSVoipSandboxChannelResponse')
        visited = visited + ['APNSVoipSandboxChannelResponse']
        {
          application_id: 'application_id',
          creation_date: 'creation_date',
          default_authentication_method: 'default_authentication_method',
          enabled: false,
          has_credential: false,
          has_token_key: false,
          id: 'id',
          is_archived: false,
          last_modified_by: 'last_modified_by',
          last_modified_date: 'last_modified_date',
          platform: 'platform',
          version: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::APNSVoipSandboxChannelResponse.new
        data = {}
        data['ApplicationId'] = stub[:application_id] unless stub[:application_id].nil?
        data['CreationDate'] = stub[:creation_date] unless stub[:creation_date].nil?
        data['DefaultAuthenticationMethod'] = stub[:default_authentication_method] unless stub[:default_authentication_method].nil?
        data['Enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data['HasCredential'] = stub[:has_credential] unless stub[:has_credential].nil?
        data['HasTokenKey'] = stub[:has_token_key] unless stub[:has_token_key].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['IsArchived'] = stub[:is_archived] unless stub[:is_archived].nil?
        data['LastModifiedBy'] = stub[:last_modified_by] unless stub[:last_modified_by].nil?
        data['LastModifiedDate'] = stub[:last_modified_date] unless stub[:last_modified_date].nil?
        data['Platform'] = stub[:platform] unless stub[:platform].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        data
      end
    end

    # Operation Stubber for DeleteApp
    class DeleteApp
      def self.default(visited=[])
        {
          application_response: Stubs::ApplicationResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::ApplicationResponse.stub(stub[:application_response]) unless stub[:application_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteBaiduChannel
    class DeleteBaiduChannel
      def self.default(visited=[])
        {
          baidu_channel_response: Stubs::BaiduChannelResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::BaiduChannelResponse.stub(stub[:baidu_channel_response]) unless stub[:baidu_channel_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for BaiduChannelResponse
    class BaiduChannelResponse
      def self.default(visited=[])
        return nil if visited.include?('BaiduChannelResponse')
        visited = visited + ['BaiduChannelResponse']
        {
          application_id: 'application_id',
          creation_date: 'creation_date',
          credential: 'credential',
          enabled: false,
          has_credential: false,
          id: 'id',
          is_archived: false,
          last_modified_by: 'last_modified_by',
          last_modified_date: 'last_modified_date',
          platform: 'platform',
          version: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::BaiduChannelResponse.new
        data = {}
        data['ApplicationId'] = stub[:application_id] unless stub[:application_id].nil?
        data['CreationDate'] = stub[:creation_date] unless stub[:creation_date].nil?
        data['Credential'] = stub[:credential] unless stub[:credential].nil?
        data['Enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data['HasCredential'] = stub[:has_credential] unless stub[:has_credential].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['IsArchived'] = stub[:is_archived] unless stub[:is_archived].nil?
        data['LastModifiedBy'] = stub[:last_modified_by] unless stub[:last_modified_by].nil?
        data['LastModifiedDate'] = stub[:last_modified_date] unless stub[:last_modified_date].nil?
        data['Platform'] = stub[:platform] unless stub[:platform].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        data
      end
    end

    # Operation Stubber for DeleteCampaign
    class DeleteCampaign
      def self.default(visited=[])
        {
          campaign_response: Stubs::CampaignResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::CampaignResponse.stub(stub[:campaign_response]) unless stub[:campaign_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteEmailChannel
    class DeleteEmailChannel
      def self.default(visited=[])
        {
          email_channel_response: Stubs::EmailChannelResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::EmailChannelResponse.stub(stub[:email_channel_response]) unless stub[:email_channel_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for EmailChannelResponse
    class EmailChannelResponse
      def self.default(visited=[])
        return nil if visited.include?('EmailChannelResponse')
        visited = visited + ['EmailChannelResponse']
        {
          application_id: 'application_id',
          configuration_set: 'configuration_set',
          creation_date: 'creation_date',
          enabled: false,
          from_address: 'from_address',
          has_credential: false,
          id: 'id',
          identity: 'identity',
          is_archived: false,
          last_modified_by: 'last_modified_by',
          last_modified_date: 'last_modified_date',
          messages_per_second: 1,
          platform: 'platform',
          role_arn: 'role_arn',
          version: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::EmailChannelResponse.new
        data = {}
        data['ApplicationId'] = stub[:application_id] unless stub[:application_id].nil?
        data['ConfigurationSet'] = stub[:configuration_set] unless stub[:configuration_set].nil?
        data['CreationDate'] = stub[:creation_date] unless stub[:creation_date].nil?
        data['Enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data['FromAddress'] = stub[:from_address] unless stub[:from_address].nil?
        data['HasCredential'] = stub[:has_credential] unless stub[:has_credential].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Identity'] = stub[:identity] unless stub[:identity].nil?
        data['IsArchived'] = stub[:is_archived] unless stub[:is_archived].nil?
        data['LastModifiedBy'] = stub[:last_modified_by] unless stub[:last_modified_by].nil?
        data['LastModifiedDate'] = stub[:last_modified_date] unless stub[:last_modified_date].nil?
        data['MessagesPerSecond'] = stub[:messages_per_second] unless stub[:messages_per_second].nil?
        data['Platform'] = stub[:platform] unless stub[:platform].nil?
        data['RoleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        data
      end
    end

    # Operation Stubber for DeleteEmailTemplate
    class DeleteEmailTemplate
      def self.default(visited=[])
        {
          message_body: Stubs::MessageBody.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::MessageBody.stub(stub[:message_body]) unless stub[:message_body].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for MessageBody
    class MessageBody
      def self.default(visited=[])
        return nil if visited.include?('MessageBody')
        visited = visited + ['MessageBody']
        {
          message: 'message',
          request_id: 'request_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::MessageBody.new
        data = {}
        data['Message'] = stub[:message] unless stub[:message].nil?
        data['RequestID'] = stub[:request_id] unless stub[:request_id].nil?
        data
      end
    end

    # Operation Stubber for DeleteEndpoint
    class DeleteEndpoint
      def self.default(visited=[])
        {
          endpoint_response: Stubs::EndpointResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::EndpointResponse.stub(stub[:endpoint_response]) unless stub[:endpoint_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for EndpointResponse
    class EndpointResponse
      def self.default(visited=[])
        return nil if visited.include?('EndpointResponse')
        visited = visited + ['EndpointResponse']
        {
          address: 'address',
          application_id: 'application_id',
          attributes: Stubs::MapOfListOf__string.default(visited),
          channel_type: 'channel_type',
          cohort_id: 'cohort_id',
          creation_date: 'creation_date',
          demographic: Stubs::EndpointDemographic.default(visited),
          effective_date: 'effective_date',
          endpoint_status: 'endpoint_status',
          id: 'id',
          location: Stubs::EndpointLocation.default(visited),
          metrics: Stubs::MapOf__double.default(visited),
          opt_out: 'opt_out',
          request_id: 'request_id',
          user: Stubs::EndpointUser.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::EndpointResponse.new
        data = {}
        data['Address'] = stub[:address] unless stub[:address].nil?
        data['ApplicationId'] = stub[:application_id] unless stub[:application_id].nil?
        data['Attributes'] = Stubs::MapOfListOf__string.stub(stub[:attributes]) unless stub[:attributes].nil?
        data['ChannelType'] = stub[:channel_type] unless stub[:channel_type].nil?
        data['CohortId'] = stub[:cohort_id] unless stub[:cohort_id].nil?
        data['CreationDate'] = stub[:creation_date] unless stub[:creation_date].nil?
        data['Demographic'] = Stubs::EndpointDemographic.stub(stub[:demographic]) unless stub[:demographic].nil?
        data['EffectiveDate'] = stub[:effective_date] unless stub[:effective_date].nil?
        data['EndpointStatus'] = stub[:endpoint_status] unless stub[:endpoint_status].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Location'] = Stubs::EndpointLocation.stub(stub[:location]) unless stub[:location].nil?
        data['Metrics'] = Stubs::MapOf__double.stub(stub[:metrics]) unless stub[:metrics].nil?
        data['OptOut'] = stub[:opt_out] unless stub[:opt_out].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['User'] = Stubs::EndpointUser.stub(stub[:user]) unless stub[:user].nil?
        data
      end
    end

    # Structure Stubber for EndpointUser
    class EndpointUser
      def self.default(visited=[])
        return nil if visited.include?('EndpointUser')
        visited = visited + ['EndpointUser']
        {
          user_attributes: Stubs::MapOfListOf__string.default(visited),
          user_id: 'user_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::EndpointUser.new
        data = {}
        data['UserAttributes'] = Stubs::MapOfListOf__string.stub(stub[:user_attributes]) unless stub[:user_attributes].nil?
        data['UserId'] = stub[:user_id] unless stub[:user_id].nil?
        data
      end
    end

    # Map Stubber for MapOfListOf__string
    class MapOfListOf__string
      def self.default(visited=[])
        return nil if visited.include?('MapOfListOf__string')
        visited = visited + ['MapOfListOf__string']
        {
          test_key: Stubs::ListOf__string.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::ListOf__string.stub(value) unless value.nil?
        end
        data
      end
    end

    # Map Stubber for MapOf__double
    class MapOf__double
      def self.default(visited=[])
        return nil if visited.include?('MapOf__double')
        visited = visited + ['MapOf__double']
        {
          test_key: 1.0
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Hearth::NumberHelper.serialize(value)
        end
        data
      end
    end

    # Structure Stubber for EndpointLocation
    class EndpointLocation
      def self.default(visited=[])
        return nil if visited.include?('EndpointLocation')
        visited = visited + ['EndpointLocation']
        {
          city: 'city',
          country: 'country',
          latitude: 1.0,
          longitude: 1.0,
          postal_code: 'postal_code',
          region: 'region',
        }
      end

      def self.stub(stub)
        stub ||= Types::EndpointLocation.new
        data = {}
        data['City'] = stub[:city] unless stub[:city].nil?
        data['Country'] = stub[:country] unless stub[:country].nil?
        data['Latitude'] = Hearth::NumberHelper.serialize(stub[:latitude])
        data['Longitude'] = Hearth::NumberHelper.serialize(stub[:longitude])
        data['PostalCode'] = stub[:postal_code] unless stub[:postal_code].nil?
        data['Region'] = stub[:region] unless stub[:region].nil?
        data
      end
    end

    # Structure Stubber for EndpointDemographic
    class EndpointDemographic
      def self.default(visited=[])
        return nil if visited.include?('EndpointDemographic')
        visited = visited + ['EndpointDemographic']
        {
          app_version: 'app_version',
          locale: 'locale',
          make: 'make',
          model: 'model',
          model_version: 'model_version',
          platform: 'platform',
          platform_version: 'platform_version',
          timezone: 'timezone',
        }
      end

      def self.stub(stub)
        stub ||= Types::EndpointDemographic.new
        data = {}
        data['AppVersion'] = stub[:app_version] unless stub[:app_version].nil?
        data['Locale'] = stub[:locale] unless stub[:locale].nil?
        data['Make'] = stub[:make] unless stub[:make].nil?
        data['Model'] = stub[:model] unless stub[:model].nil?
        data['ModelVersion'] = stub[:model_version] unless stub[:model_version].nil?
        data['Platform'] = stub[:platform] unless stub[:platform].nil?
        data['PlatformVersion'] = stub[:platform_version] unless stub[:platform_version].nil?
        data['Timezone'] = stub[:timezone] unless stub[:timezone].nil?
        data
      end
    end

    # Operation Stubber for DeleteEventStream
    class DeleteEventStream
      def self.default(visited=[])
        {
          event_stream: Stubs::EventStream.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::EventStream.stub(stub[:event_stream]) unless stub[:event_stream].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for EventStream
    class EventStream
      def self.default(visited=[])
        return nil if visited.include?('EventStream')
        visited = visited + ['EventStream']
        {
          application_id: 'application_id',
          destination_stream_arn: 'destination_stream_arn',
          external_id: 'external_id',
          last_modified_date: 'last_modified_date',
          last_updated_by: 'last_updated_by',
          role_arn: 'role_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::EventStream.new
        data = {}
        data['ApplicationId'] = stub[:application_id] unless stub[:application_id].nil?
        data['DestinationStreamArn'] = stub[:destination_stream_arn] unless stub[:destination_stream_arn].nil?
        data['ExternalId'] = stub[:external_id] unless stub[:external_id].nil?
        data['LastModifiedDate'] = stub[:last_modified_date] unless stub[:last_modified_date].nil?
        data['LastUpdatedBy'] = stub[:last_updated_by] unless stub[:last_updated_by].nil?
        data['RoleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data
      end
    end

    # Operation Stubber for DeleteGcmChannel
    class DeleteGcmChannel
      def self.default(visited=[])
        {
          gcm_channel_response: Stubs::GCMChannelResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::GCMChannelResponse.stub(stub[:gcm_channel_response]) unless stub[:gcm_channel_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for GCMChannelResponse
    class GCMChannelResponse
      def self.default(visited=[])
        return nil if visited.include?('GCMChannelResponse')
        visited = visited + ['GCMChannelResponse']
        {
          application_id: 'application_id',
          creation_date: 'creation_date',
          credential: 'credential',
          enabled: false,
          has_credential: false,
          id: 'id',
          is_archived: false,
          last_modified_by: 'last_modified_by',
          last_modified_date: 'last_modified_date',
          platform: 'platform',
          version: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::GCMChannelResponse.new
        data = {}
        data['ApplicationId'] = stub[:application_id] unless stub[:application_id].nil?
        data['CreationDate'] = stub[:creation_date] unless stub[:creation_date].nil?
        data['Credential'] = stub[:credential] unless stub[:credential].nil?
        data['Enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data['HasCredential'] = stub[:has_credential] unless stub[:has_credential].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['IsArchived'] = stub[:is_archived] unless stub[:is_archived].nil?
        data['LastModifiedBy'] = stub[:last_modified_by] unless stub[:last_modified_by].nil?
        data['LastModifiedDate'] = stub[:last_modified_date] unless stub[:last_modified_date].nil?
        data['Platform'] = stub[:platform] unless stub[:platform].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        data
      end
    end

    # Operation Stubber for DeleteInAppTemplate
    class DeleteInAppTemplate
      def self.default(visited=[])
        {
          message_body: Stubs::MessageBody.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::MessageBody.stub(stub[:message_body]) unless stub[:message_body].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteJourney
    class DeleteJourney
      def self.default(visited=[])
        {
          journey_response: Stubs::JourneyResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::JourneyResponse.stub(stub[:journey_response]) unless stub[:journey_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeletePushTemplate
    class DeletePushTemplate
      def self.default(visited=[])
        {
          message_body: Stubs::MessageBody.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::MessageBody.stub(stub[:message_body]) unless stub[:message_body].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteRecommenderConfiguration
    class DeleteRecommenderConfiguration
      def self.default(visited=[])
        {
          recommender_configuration_response: Stubs::RecommenderConfigurationResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::RecommenderConfigurationResponse.stub(stub[:recommender_configuration_response]) unless stub[:recommender_configuration_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteSegment
    class DeleteSegment
      def self.default(visited=[])
        {
          segment_response: Stubs::SegmentResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::SegmentResponse.stub(stub[:segment_response]) unless stub[:segment_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteSmsChannel
    class DeleteSmsChannel
      def self.default(visited=[])
        {
          sms_channel_response: Stubs::SMSChannelResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::SMSChannelResponse.stub(stub[:sms_channel_response]) unless stub[:sms_channel_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for SMSChannelResponse
    class SMSChannelResponse
      def self.default(visited=[])
        return nil if visited.include?('SMSChannelResponse')
        visited = visited + ['SMSChannelResponse']
        {
          application_id: 'application_id',
          creation_date: 'creation_date',
          enabled: false,
          has_credential: false,
          id: 'id',
          is_archived: false,
          last_modified_by: 'last_modified_by',
          last_modified_date: 'last_modified_date',
          platform: 'platform',
          promotional_messages_per_second: 1,
          sender_id: 'sender_id',
          short_code: 'short_code',
          transactional_messages_per_second: 1,
          version: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::SMSChannelResponse.new
        data = {}
        data['ApplicationId'] = stub[:application_id] unless stub[:application_id].nil?
        data['CreationDate'] = stub[:creation_date] unless stub[:creation_date].nil?
        data['Enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data['HasCredential'] = stub[:has_credential] unless stub[:has_credential].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['IsArchived'] = stub[:is_archived] unless stub[:is_archived].nil?
        data['LastModifiedBy'] = stub[:last_modified_by] unless stub[:last_modified_by].nil?
        data['LastModifiedDate'] = stub[:last_modified_date] unless stub[:last_modified_date].nil?
        data['Platform'] = stub[:platform] unless stub[:platform].nil?
        data['PromotionalMessagesPerSecond'] = stub[:promotional_messages_per_second] unless stub[:promotional_messages_per_second].nil?
        data['SenderId'] = stub[:sender_id] unless stub[:sender_id].nil?
        data['ShortCode'] = stub[:short_code] unless stub[:short_code].nil?
        data['TransactionalMessagesPerSecond'] = stub[:transactional_messages_per_second] unless stub[:transactional_messages_per_second].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        data
      end
    end

    # Operation Stubber for DeleteSmsTemplate
    class DeleteSmsTemplate
      def self.default(visited=[])
        {
          message_body: Stubs::MessageBody.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::MessageBody.stub(stub[:message_body]) unless stub[:message_body].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteUserEndpoints
    class DeleteUserEndpoints
      def self.default(visited=[])
        {
          endpoints_response: Stubs::EndpointsResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::EndpointsResponse.stub(stub[:endpoints_response]) unless stub[:endpoints_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for EndpointsResponse
    class EndpointsResponse
      def self.default(visited=[])
        return nil if visited.include?('EndpointsResponse')
        visited = visited + ['EndpointsResponse']
        {
          item: Stubs::ListOfEndpointResponse.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::EndpointsResponse.new
        data = {}
        data['Item'] = Stubs::ListOfEndpointResponse.stub(stub[:item]) unless stub[:item].nil?
        data
      end
    end

    # List Stubber for ListOfEndpointResponse
    class ListOfEndpointResponse
      def self.default(visited=[])
        return nil if visited.include?('ListOfEndpointResponse')
        visited = visited + ['ListOfEndpointResponse']
        [
          Stubs::EndpointResponse.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::EndpointResponse.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DeleteVoiceChannel
    class DeleteVoiceChannel
      def self.default(visited=[])
        {
          voice_channel_response: Stubs::VoiceChannelResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::VoiceChannelResponse.stub(stub[:voice_channel_response]) unless stub[:voice_channel_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for VoiceChannelResponse
    class VoiceChannelResponse
      def self.default(visited=[])
        return nil if visited.include?('VoiceChannelResponse')
        visited = visited + ['VoiceChannelResponse']
        {
          application_id: 'application_id',
          creation_date: 'creation_date',
          enabled: false,
          has_credential: false,
          id: 'id',
          is_archived: false,
          last_modified_by: 'last_modified_by',
          last_modified_date: 'last_modified_date',
          platform: 'platform',
          version: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::VoiceChannelResponse.new
        data = {}
        data['ApplicationId'] = stub[:application_id] unless stub[:application_id].nil?
        data['CreationDate'] = stub[:creation_date] unless stub[:creation_date].nil?
        data['Enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data['HasCredential'] = stub[:has_credential] unless stub[:has_credential].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['IsArchived'] = stub[:is_archived] unless stub[:is_archived].nil?
        data['LastModifiedBy'] = stub[:last_modified_by] unless stub[:last_modified_by].nil?
        data['LastModifiedDate'] = stub[:last_modified_date] unless stub[:last_modified_date].nil?
        data['Platform'] = stub[:platform] unless stub[:platform].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        data
      end
    end

    # Operation Stubber for DeleteVoiceTemplate
    class DeleteVoiceTemplate
      def self.default(visited=[])
        {
          message_body: Stubs::MessageBody.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::MessageBody.stub(stub[:message_body]) unless stub[:message_body].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetAdmChannel
    class GetAdmChannel
      def self.default(visited=[])
        {
          adm_channel_response: Stubs::ADMChannelResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::ADMChannelResponse.stub(stub[:adm_channel_response]) unless stub[:adm_channel_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetApnsChannel
    class GetApnsChannel
      def self.default(visited=[])
        {
          apns_channel_response: Stubs::APNSChannelResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::APNSChannelResponse.stub(stub[:apns_channel_response]) unless stub[:apns_channel_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetApnsSandboxChannel
    class GetApnsSandboxChannel
      def self.default(visited=[])
        {
          apns_sandbox_channel_response: Stubs::APNSSandboxChannelResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::APNSSandboxChannelResponse.stub(stub[:apns_sandbox_channel_response]) unless stub[:apns_sandbox_channel_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetApnsVoipChannel
    class GetApnsVoipChannel
      def self.default(visited=[])
        {
          apns_voip_channel_response: Stubs::APNSVoipChannelResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::APNSVoipChannelResponse.stub(stub[:apns_voip_channel_response]) unless stub[:apns_voip_channel_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetApnsVoipSandboxChannel
    class GetApnsVoipSandboxChannel
      def self.default(visited=[])
        {
          apns_voip_sandbox_channel_response: Stubs::APNSVoipSandboxChannelResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::APNSVoipSandboxChannelResponse.stub(stub[:apns_voip_sandbox_channel_response]) unless stub[:apns_voip_sandbox_channel_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetApp
    class GetApp
      def self.default(visited=[])
        {
          application_response: Stubs::ApplicationResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::ApplicationResponse.stub(stub[:application_response]) unless stub[:application_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetApplicationDateRangeKpi
    class GetApplicationDateRangeKpi
      def self.default(visited=[])
        {
          application_date_range_kpi_response: Stubs::ApplicationDateRangeKpiResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::ApplicationDateRangeKpiResponse.stub(stub[:application_date_range_kpi_response]) unless stub[:application_date_range_kpi_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ApplicationDateRangeKpiResponse
    class ApplicationDateRangeKpiResponse
      def self.default(visited=[])
        return nil if visited.include?('ApplicationDateRangeKpiResponse')
        visited = visited + ['ApplicationDateRangeKpiResponse']
        {
          application_id: 'application_id',
          end_time: Time.now,
          kpi_name: 'kpi_name',
          kpi_result: Stubs::BaseKpiResult.default(visited),
          next_token: 'next_token',
          start_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ApplicationDateRangeKpiResponse.new
        data = {}
        data['ApplicationId'] = stub[:application_id] unless stub[:application_id].nil?
        data['EndTime'] = Hearth::TimeHelper.to_date_time(stub[:end_time]) unless stub[:end_time].nil?
        data['KpiName'] = stub[:kpi_name] unless stub[:kpi_name].nil?
        data['KpiResult'] = Stubs::BaseKpiResult.stub(stub[:kpi_result]) unless stub[:kpi_result].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['StartTime'] = Hearth::TimeHelper.to_date_time(stub[:start_time]) unless stub[:start_time].nil?
        data
      end
    end

    # Structure Stubber for BaseKpiResult
    class BaseKpiResult
      def self.default(visited=[])
        return nil if visited.include?('BaseKpiResult')
        visited = visited + ['BaseKpiResult']
        {
          rows: Stubs::ListOfResultRow.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BaseKpiResult.new
        data = {}
        data['Rows'] = Stubs::ListOfResultRow.stub(stub[:rows]) unless stub[:rows].nil?
        data
      end
    end

    # List Stubber for ListOfResultRow
    class ListOfResultRow
      def self.default(visited=[])
        return nil if visited.include?('ListOfResultRow')
        visited = visited + ['ListOfResultRow']
        [
          Stubs::ResultRow.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ResultRow.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ResultRow
    class ResultRow
      def self.default(visited=[])
        return nil if visited.include?('ResultRow')
        visited = visited + ['ResultRow']
        {
          grouped_bys: Stubs::ListOfResultRowValue.default(visited),
          values: Stubs::ListOfResultRowValue.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ResultRow.new
        data = {}
        data['GroupedBys'] = Stubs::ListOfResultRowValue.stub(stub[:grouped_bys]) unless stub[:grouped_bys].nil?
        data['Values'] = Stubs::ListOfResultRowValue.stub(stub[:values]) unless stub[:values].nil?
        data
      end
    end

    # List Stubber for ListOfResultRowValue
    class ListOfResultRowValue
      def self.default(visited=[])
        return nil if visited.include?('ListOfResultRowValue')
        visited = visited + ['ListOfResultRowValue']
        [
          Stubs::ResultRowValue.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ResultRowValue.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ResultRowValue
    class ResultRowValue
      def self.default(visited=[])
        return nil if visited.include?('ResultRowValue')
        visited = visited + ['ResultRowValue']
        {
          key: 'key',
          type: 'type',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::ResultRowValue.new
        data = {}
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for GetApplicationSettings
    class GetApplicationSettings
      def self.default(visited=[])
        {
          application_settings_resource: Stubs::ApplicationSettingsResource.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::ApplicationSettingsResource.stub(stub[:application_settings_resource]) unless stub[:application_settings_resource].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ApplicationSettingsResource
    class ApplicationSettingsResource
      def self.default(visited=[])
        return nil if visited.include?('ApplicationSettingsResource')
        visited = visited + ['ApplicationSettingsResource']
        {
          application_id: 'application_id',
          campaign_hook: Stubs::CampaignHook.default(visited),
          last_modified_date: 'last_modified_date',
          limits: Stubs::CampaignLimits.default(visited),
          quiet_time: Stubs::QuietTime.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ApplicationSettingsResource.new
        data = {}
        data['ApplicationId'] = stub[:application_id] unless stub[:application_id].nil?
        data['CampaignHook'] = Stubs::CampaignHook.stub(stub[:campaign_hook]) unless stub[:campaign_hook].nil?
        data['LastModifiedDate'] = stub[:last_modified_date] unless stub[:last_modified_date].nil?
        data['Limits'] = Stubs::CampaignLimits.stub(stub[:limits]) unless stub[:limits].nil?
        data['QuietTime'] = Stubs::QuietTime.stub(stub[:quiet_time]) unless stub[:quiet_time].nil?
        data
      end
    end

    # Operation Stubber for GetApps
    class GetApps
      def self.default(visited=[])
        {
          applications_response: Stubs::ApplicationsResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::ApplicationsResponse.stub(stub[:applications_response]) unless stub[:applications_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ApplicationsResponse
    class ApplicationsResponse
      def self.default(visited=[])
        return nil if visited.include?('ApplicationsResponse')
        visited = visited + ['ApplicationsResponse']
        {
          item: Stubs::ListOfApplicationResponse.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(stub)
        stub ||= Types::ApplicationsResponse.new
        data = {}
        data['Item'] = Stubs::ListOfApplicationResponse.stub(stub[:item]) unless stub[:item].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data
      end
    end

    # List Stubber for ListOfApplicationResponse
    class ListOfApplicationResponse
      def self.default(visited=[])
        return nil if visited.include?('ListOfApplicationResponse')
        visited = visited + ['ListOfApplicationResponse']
        [
          Stubs::ApplicationResponse.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ApplicationResponse.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for GetBaiduChannel
    class GetBaiduChannel
      def self.default(visited=[])
        {
          baidu_channel_response: Stubs::BaiduChannelResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::BaiduChannelResponse.stub(stub[:baidu_channel_response]) unless stub[:baidu_channel_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetCampaign
    class GetCampaign
      def self.default(visited=[])
        {
          campaign_response: Stubs::CampaignResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::CampaignResponse.stub(stub[:campaign_response]) unless stub[:campaign_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetCampaignActivities
    class GetCampaignActivities
      def self.default(visited=[])
        {
          activities_response: Stubs::ActivitiesResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::ActivitiesResponse.stub(stub[:activities_response]) unless stub[:activities_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ActivitiesResponse
    class ActivitiesResponse
      def self.default(visited=[])
        return nil if visited.include?('ActivitiesResponse')
        visited = visited + ['ActivitiesResponse']
        {
          item: Stubs::ListOfActivityResponse.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(stub)
        stub ||= Types::ActivitiesResponse.new
        data = {}
        data['Item'] = Stubs::ListOfActivityResponse.stub(stub[:item]) unless stub[:item].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data
      end
    end

    # List Stubber for ListOfActivityResponse
    class ListOfActivityResponse
      def self.default(visited=[])
        return nil if visited.include?('ListOfActivityResponse')
        visited = visited + ['ListOfActivityResponse']
        [
          Stubs::ActivityResponse.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ActivityResponse.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ActivityResponse
    class ActivityResponse
      def self.default(visited=[])
        return nil if visited.include?('ActivityResponse')
        visited = visited + ['ActivityResponse']
        {
          application_id: 'application_id',
          campaign_id: 'campaign_id',
          end: 'end',
          id: 'id',
          result: 'result',
          scheduled_start: 'scheduled_start',
          start: 'start',
          state: 'state',
          successful_endpoint_count: 1,
          timezones_completed_count: 1,
          timezones_total_count: 1,
          total_endpoint_count: 1,
          treatment_id: 'treatment_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::ActivityResponse.new
        data = {}
        data['ApplicationId'] = stub[:application_id] unless stub[:application_id].nil?
        data['CampaignId'] = stub[:campaign_id] unless stub[:campaign_id].nil?
        data['End'] = stub[:end] unless stub[:end].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Result'] = stub[:result] unless stub[:result].nil?
        data['ScheduledStart'] = stub[:scheduled_start] unless stub[:scheduled_start].nil?
        data['Start'] = stub[:start] unless stub[:start].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['SuccessfulEndpointCount'] = stub[:successful_endpoint_count] unless stub[:successful_endpoint_count].nil?
        data['TimezonesCompletedCount'] = stub[:timezones_completed_count] unless stub[:timezones_completed_count].nil?
        data['TimezonesTotalCount'] = stub[:timezones_total_count] unless stub[:timezones_total_count].nil?
        data['TotalEndpointCount'] = stub[:total_endpoint_count] unless stub[:total_endpoint_count].nil?
        data['TreatmentId'] = stub[:treatment_id] unless stub[:treatment_id].nil?
        data
      end
    end

    # Operation Stubber for GetCampaignDateRangeKpi
    class GetCampaignDateRangeKpi
      def self.default(visited=[])
        {
          campaign_date_range_kpi_response: Stubs::CampaignDateRangeKpiResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::CampaignDateRangeKpiResponse.stub(stub[:campaign_date_range_kpi_response]) unless stub[:campaign_date_range_kpi_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for CampaignDateRangeKpiResponse
    class CampaignDateRangeKpiResponse
      def self.default(visited=[])
        return nil if visited.include?('CampaignDateRangeKpiResponse')
        visited = visited + ['CampaignDateRangeKpiResponse']
        {
          application_id: 'application_id',
          campaign_id: 'campaign_id',
          end_time: Time.now,
          kpi_name: 'kpi_name',
          kpi_result: Stubs::BaseKpiResult.default(visited),
          next_token: 'next_token',
          start_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::CampaignDateRangeKpiResponse.new
        data = {}
        data['ApplicationId'] = stub[:application_id] unless stub[:application_id].nil?
        data['CampaignId'] = stub[:campaign_id] unless stub[:campaign_id].nil?
        data['EndTime'] = Hearth::TimeHelper.to_date_time(stub[:end_time]) unless stub[:end_time].nil?
        data['KpiName'] = stub[:kpi_name] unless stub[:kpi_name].nil?
        data['KpiResult'] = Stubs::BaseKpiResult.stub(stub[:kpi_result]) unless stub[:kpi_result].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['StartTime'] = Hearth::TimeHelper.to_date_time(stub[:start_time]) unless stub[:start_time].nil?
        data
      end
    end

    # Operation Stubber for GetCampaignVersion
    class GetCampaignVersion
      def self.default(visited=[])
        {
          campaign_response: Stubs::CampaignResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::CampaignResponse.stub(stub[:campaign_response]) unless stub[:campaign_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetCampaignVersions
    class GetCampaignVersions
      def self.default(visited=[])
        {
          campaigns_response: Stubs::CampaignsResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::CampaignsResponse.stub(stub[:campaigns_response]) unless stub[:campaigns_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for CampaignsResponse
    class CampaignsResponse
      def self.default(visited=[])
        return nil if visited.include?('CampaignsResponse')
        visited = visited + ['CampaignsResponse']
        {
          item: Stubs::ListOfCampaignResponse.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(stub)
        stub ||= Types::CampaignsResponse.new
        data = {}
        data['Item'] = Stubs::ListOfCampaignResponse.stub(stub[:item]) unless stub[:item].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data
      end
    end

    # List Stubber for ListOfCampaignResponse
    class ListOfCampaignResponse
      def self.default(visited=[])
        return nil if visited.include?('ListOfCampaignResponse')
        visited = visited + ['ListOfCampaignResponse']
        [
          Stubs::CampaignResponse.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::CampaignResponse.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for GetCampaigns
    class GetCampaigns
      def self.default(visited=[])
        {
          campaigns_response: Stubs::CampaignsResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::CampaignsResponse.stub(stub[:campaigns_response]) unless stub[:campaigns_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetChannels
    class GetChannels
      def self.default(visited=[])
        {
          channels_response: Stubs::ChannelsResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::ChannelsResponse.stub(stub[:channels_response]) unless stub[:channels_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ChannelsResponse
    class ChannelsResponse
      def self.default(visited=[])
        return nil if visited.include?('ChannelsResponse')
        visited = visited + ['ChannelsResponse']
        {
          channels: Stubs::MapOfChannelResponse.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ChannelsResponse.new
        data = {}
        data['Channels'] = Stubs::MapOfChannelResponse.stub(stub[:channels]) unless stub[:channels].nil?
        data
      end
    end

    # Map Stubber for MapOfChannelResponse
    class MapOfChannelResponse
      def self.default(visited=[])
        return nil if visited.include?('MapOfChannelResponse')
        visited = visited + ['MapOfChannelResponse']
        {
          test_key: Stubs::ChannelResponse.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::ChannelResponse.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for ChannelResponse
    class ChannelResponse
      def self.default(visited=[])
        return nil if visited.include?('ChannelResponse')
        visited = visited + ['ChannelResponse']
        {
          application_id: 'application_id',
          creation_date: 'creation_date',
          enabled: false,
          has_credential: false,
          id: 'id',
          is_archived: false,
          last_modified_by: 'last_modified_by',
          last_modified_date: 'last_modified_date',
          version: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ChannelResponse.new
        data = {}
        data['ApplicationId'] = stub[:application_id] unless stub[:application_id].nil?
        data['CreationDate'] = stub[:creation_date] unless stub[:creation_date].nil?
        data['Enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data['HasCredential'] = stub[:has_credential] unless stub[:has_credential].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['IsArchived'] = stub[:is_archived] unless stub[:is_archived].nil?
        data['LastModifiedBy'] = stub[:last_modified_by] unless stub[:last_modified_by].nil?
        data['LastModifiedDate'] = stub[:last_modified_date] unless stub[:last_modified_date].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        data
      end
    end

    # Operation Stubber for GetEmailChannel
    class GetEmailChannel
      def self.default(visited=[])
        {
          email_channel_response: Stubs::EmailChannelResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::EmailChannelResponse.stub(stub[:email_channel_response]) unless stub[:email_channel_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetEmailTemplate
    class GetEmailTemplate
      def self.default(visited=[])
        {
          email_template_response: Stubs::EmailTemplateResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::EmailTemplateResponse.stub(stub[:email_template_response]) unless stub[:email_template_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for EmailTemplateResponse
    class EmailTemplateResponse
      def self.default(visited=[])
        return nil if visited.include?('EmailTemplateResponse')
        visited = visited + ['EmailTemplateResponse']
        {
          arn: 'arn',
          creation_date: 'creation_date',
          default_substitutions: 'default_substitutions',
          html_part: 'html_part',
          last_modified_date: 'last_modified_date',
          recommender_id: 'recommender_id',
          subject: 'subject',
          tags: Stubs::MapOf__string.default(visited),
          template_description: 'template_description',
          template_name: 'template_name',
          template_type: 'template_type',
          text_part: 'text_part',
          version: 'version',
        }
      end

      def self.stub(stub)
        stub ||= Types::EmailTemplateResponse.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['CreationDate'] = stub[:creation_date] unless stub[:creation_date].nil?
        data['DefaultSubstitutions'] = stub[:default_substitutions] unless stub[:default_substitutions].nil?
        data['HtmlPart'] = stub[:html_part] unless stub[:html_part].nil?
        data['LastModifiedDate'] = stub[:last_modified_date] unless stub[:last_modified_date].nil?
        data['RecommenderId'] = stub[:recommender_id] unless stub[:recommender_id].nil?
        data['Subject'] = stub[:subject] unless stub[:subject].nil?
        data['tags'] = Stubs::MapOf__string.stub(stub[:tags]) unless stub[:tags].nil?
        data['TemplateDescription'] = stub[:template_description] unless stub[:template_description].nil?
        data['TemplateName'] = stub[:template_name] unless stub[:template_name].nil?
        data['TemplateType'] = stub[:template_type] unless stub[:template_type].nil?
        data['TextPart'] = stub[:text_part] unless stub[:text_part].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        data
      end
    end

    # Operation Stubber for GetEndpoint
    class GetEndpoint
      def self.default(visited=[])
        {
          endpoint_response: Stubs::EndpointResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::EndpointResponse.stub(stub[:endpoint_response]) unless stub[:endpoint_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetEventStream
    class GetEventStream
      def self.default(visited=[])
        {
          event_stream: Stubs::EventStream.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::EventStream.stub(stub[:event_stream]) unless stub[:event_stream].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetExportJob
    class GetExportJob
      def self.default(visited=[])
        {
          export_job_response: Stubs::ExportJobResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::ExportJobResponse.stub(stub[:export_job_response]) unless stub[:export_job_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetExportJobs
    class GetExportJobs
      def self.default(visited=[])
        {
          export_jobs_response: Stubs::ExportJobsResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::ExportJobsResponse.stub(stub[:export_jobs_response]) unless stub[:export_jobs_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ExportJobsResponse
    class ExportJobsResponse
      def self.default(visited=[])
        return nil if visited.include?('ExportJobsResponse')
        visited = visited + ['ExportJobsResponse']
        {
          item: Stubs::ListOfExportJobResponse.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(stub)
        stub ||= Types::ExportJobsResponse.new
        data = {}
        data['Item'] = Stubs::ListOfExportJobResponse.stub(stub[:item]) unless stub[:item].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data
      end
    end

    # List Stubber for ListOfExportJobResponse
    class ListOfExportJobResponse
      def self.default(visited=[])
        return nil if visited.include?('ListOfExportJobResponse')
        visited = visited + ['ListOfExportJobResponse']
        [
          Stubs::ExportJobResponse.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ExportJobResponse.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for GetGcmChannel
    class GetGcmChannel
      def self.default(visited=[])
        {
          gcm_channel_response: Stubs::GCMChannelResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::GCMChannelResponse.stub(stub[:gcm_channel_response]) unless stub[:gcm_channel_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetImportJob
    class GetImportJob
      def self.default(visited=[])
        {
          import_job_response: Stubs::ImportJobResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::ImportJobResponse.stub(stub[:import_job_response]) unless stub[:import_job_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetImportJobs
    class GetImportJobs
      def self.default(visited=[])
        {
          import_jobs_response: Stubs::ImportJobsResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::ImportJobsResponse.stub(stub[:import_jobs_response]) unless stub[:import_jobs_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ImportJobsResponse
    class ImportJobsResponse
      def self.default(visited=[])
        return nil if visited.include?('ImportJobsResponse')
        visited = visited + ['ImportJobsResponse']
        {
          item: Stubs::ListOfImportJobResponse.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(stub)
        stub ||= Types::ImportJobsResponse.new
        data = {}
        data['Item'] = Stubs::ListOfImportJobResponse.stub(stub[:item]) unless stub[:item].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data
      end
    end

    # List Stubber for ListOfImportJobResponse
    class ListOfImportJobResponse
      def self.default(visited=[])
        return nil if visited.include?('ListOfImportJobResponse')
        visited = visited + ['ListOfImportJobResponse']
        [
          Stubs::ImportJobResponse.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ImportJobResponse.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for GetInAppMessages
    class GetInAppMessages
      def self.default(visited=[])
        {
          in_app_messages_response: Stubs::InAppMessagesResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::InAppMessagesResponse.stub(stub[:in_app_messages_response]) unless stub[:in_app_messages_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for InAppMessagesResponse
    class InAppMessagesResponse
      def self.default(visited=[])
        return nil if visited.include?('InAppMessagesResponse')
        visited = visited + ['InAppMessagesResponse']
        {
          in_app_message_campaigns: Stubs::ListOfInAppMessageCampaign.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::InAppMessagesResponse.new
        data = {}
        data['InAppMessageCampaigns'] = Stubs::ListOfInAppMessageCampaign.stub(stub[:in_app_message_campaigns]) unless stub[:in_app_message_campaigns].nil?
        data
      end
    end

    # List Stubber for ListOfInAppMessageCampaign
    class ListOfInAppMessageCampaign
      def self.default(visited=[])
        return nil if visited.include?('ListOfInAppMessageCampaign')
        visited = visited + ['ListOfInAppMessageCampaign']
        [
          Stubs::InAppMessageCampaign.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::InAppMessageCampaign.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for InAppMessageCampaign
    class InAppMessageCampaign
      def self.default(visited=[])
        return nil if visited.include?('InAppMessageCampaign')
        visited = visited + ['InAppMessageCampaign']
        {
          campaign_id: 'campaign_id',
          daily_cap: 1,
          in_app_message: Stubs::InAppMessage.default(visited),
          priority: 1,
          schedule: Stubs::InAppCampaignSchedule.default(visited),
          session_cap: 1,
          total_cap: 1,
          treatment_id: 'treatment_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::InAppMessageCampaign.new
        data = {}
        data['CampaignId'] = stub[:campaign_id] unless stub[:campaign_id].nil?
        data['DailyCap'] = stub[:daily_cap] unless stub[:daily_cap].nil?
        data['InAppMessage'] = Stubs::InAppMessage.stub(stub[:in_app_message]) unless stub[:in_app_message].nil?
        data['Priority'] = stub[:priority] unless stub[:priority].nil?
        data['Schedule'] = Stubs::InAppCampaignSchedule.stub(stub[:schedule]) unless stub[:schedule].nil?
        data['SessionCap'] = stub[:session_cap] unless stub[:session_cap].nil?
        data['TotalCap'] = stub[:total_cap] unless stub[:total_cap].nil?
        data['TreatmentId'] = stub[:treatment_id] unless stub[:treatment_id].nil?
        data
      end
    end

    # Structure Stubber for InAppCampaignSchedule
    class InAppCampaignSchedule
      def self.default(visited=[])
        return nil if visited.include?('InAppCampaignSchedule')
        visited = visited + ['InAppCampaignSchedule']
        {
          end_date: 'end_date',
          event_filter: Stubs::CampaignEventFilter.default(visited),
          quiet_time: Stubs::QuietTime.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::InAppCampaignSchedule.new
        data = {}
        data['EndDate'] = stub[:end_date] unless stub[:end_date].nil?
        data['EventFilter'] = Stubs::CampaignEventFilter.stub(stub[:event_filter]) unless stub[:event_filter].nil?
        data['QuietTime'] = Stubs::QuietTime.stub(stub[:quiet_time]) unless stub[:quiet_time].nil?
        data
      end
    end

    # Structure Stubber for InAppMessage
    class InAppMessage
      def self.default(visited=[])
        return nil if visited.include?('InAppMessage')
        visited = visited + ['InAppMessage']
        {
          content: Stubs::ListOfInAppMessageContent.default(visited),
          custom_config: Stubs::MapOf__string.default(visited),
          layout: 'layout',
        }
      end

      def self.stub(stub)
        stub ||= Types::InAppMessage.new
        data = {}
        data['Content'] = Stubs::ListOfInAppMessageContent.stub(stub[:content]) unless stub[:content].nil?
        data['CustomConfig'] = Stubs::MapOf__string.stub(stub[:custom_config]) unless stub[:custom_config].nil?
        data['Layout'] = stub[:layout] unless stub[:layout].nil?
        data
      end
    end

    # Operation Stubber for GetInAppTemplate
    class GetInAppTemplate
      def self.default(visited=[])
        {
          in_app_template_response: Stubs::InAppTemplateResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::InAppTemplateResponse.stub(stub[:in_app_template_response]) unless stub[:in_app_template_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for InAppTemplateResponse
    class InAppTemplateResponse
      def self.default(visited=[])
        return nil if visited.include?('InAppTemplateResponse')
        visited = visited + ['InAppTemplateResponse']
        {
          arn: 'arn',
          content: Stubs::ListOfInAppMessageContent.default(visited),
          creation_date: 'creation_date',
          custom_config: Stubs::MapOf__string.default(visited),
          last_modified_date: 'last_modified_date',
          layout: 'layout',
          tags: Stubs::MapOf__string.default(visited),
          template_description: 'template_description',
          template_name: 'template_name',
          template_type: 'template_type',
          version: 'version',
        }
      end

      def self.stub(stub)
        stub ||= Types::InAppTemplateResponse.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Content'] = Stubs::ListOfInAppMessageContent.stub(stub[:content]) unless stub[:content].nil?
        data['CreationDate'] = stub[:creation_date] unless stub[:creation_date].nil?
        data['CustomConfig'] = Stubs::MapOf__string.stub(stub[:custom_config]) unless stub[:custom_config].nil?
        data['LastModifiedDate'] = stub[:last_modified_date] unless stub[:last_modified_date].nil?
        data['Layout'] = stub[:layout] unless stub[:layout].nil?
        data['tags'] = Stubs::MapOf__string.stub(stub[:tags]) unless stub[:tags].nil?
        data['TemplateDescription'] = stub[:template_description] unless stub[:template_description].nil?
        data['TemplateName'] = stub[:template_name] unless stub[:template_name].nil?
        data['TemplateType'] = stub[:template_type] unless stub[:template_type].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        data
      end
    end

    # Operation Stubber for GetJourney
    class GetJourney
      def self.default(visited=[])
        {
          journey_response: Stubs::JourneyResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::JourneyResponse.stub(stub[:journey_response]) unless stub[:journey_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetJourneyDateRangeKpi
    class GetJourneyDateRangeKpi
      def self.default(visited=[])
        {
          journey_date_range_kpi_response: Stubs::JourneyDateRangeKpiResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::JourneyDateRangeKpiResponse.stub(stub[:journey_date_range_kpi_response]) unless stub[:journey_date_range_kpi_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for JourneyDateRangeKpiResponse
    class JourneyDateRangeKpiResponse
      def self.default(visited=[])
        return nil if visited.include?('JourneyDateRangeKpiResponse')
        visited = visited + ['JourneyDateRangeKpiResponse']
        {
          application_id: 'application_id',
          end_time: Time.now,
          journey_id: 'journey_id',
          kpi_name: 'kpi_name',
          kpi_result: Stubs::BaseKpiResult.default(visited),
          next_token: 'next_token',
          start_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::JourneyDateRangeKpiResponse.new
        data = {}
        data['ApplicationId'] = stub[:application_id] unless stub[:application_id].nil?
        data['EndTime'] = Hearth::TimeHelper.to_date_time(stub[:end_time]) unless stub[:end_time].nil?
        data['JourneyId'] = stub[:journey_id] unless stub[:journey_id].nil?
        data['KpiName'] = stub[:kpi_name] unless stub[:kpi_name].nil?
        data['KpiResult'] = Stubs::BaseKpiResult.stub(stub[:kpi_result]) unless stub[:kpi_result].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['StartTime'] = Hearth::TimeHelper.to_date_time(stub[:start_time]) unless stub[:start_time].nil?
        data
      end
    end

    # Operation Stubber for GetJourneyExecutionActivityMetrics
    class GetJourneyExecutionActivityMetrics
      def self.default(visited=[])
        {
          journey_execution_activity_metrics_response: Stubs::JourneyExecutionActivityMetricsResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::JourneyExecutionActivityMetricsResponse.stub(stub[:journey_execution_activity_metrics_response]) unless stub[:journey_execution_activity_metrics_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for JourneyExecutionActivityMetricsResponse
    class JourneyExecutionActivityMetricsResponse
      def self.default(visited=[])
        return nil if visited.include?('JourneyExecutionActivityMetricsResponse')
        visited = visited + ['JourneyExecutionActivityMetricsResponse']
        {
          activity_type: 'activity_type',
          application_id: 'application_id',
          journey_activity_id: 'journey_activity_id',
          journey_id: 'journey_id',
          last_evaluated_time: 'last_evaluated_time',
          metrics: Stubs::MapOf__string.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::JourneyExecutionActivityMetricsResponse.new
        data = {}
        data['ActivityType'] = stub[:activity_type] unless stub[:activity_type].nil?
        data['ApplicationId'] = stub[:application_id] unless stub[:application_id].nil?
        data['JourneyActivityId'] = stub[:journey_activity_id] unless stub[:journey_activity_id].nil?
        data['JourneyId'] = stub[:journey_id] unless stub[:journey_id].nil?
        data['LastEvaluatedTime'] = stub[:last_evaluated_time] unless stub[:last_evaluated_time].nil?
        data['Metrics'] = Stubs::MapOf__string.stub(stub[:metrics]) unless stub[:metrics].nil?
        data
      end
    end

    # Operation Stubber for GetJourneyExecutionMetrics
    class GetJourneyExecutionMetrics
      def self.default(visited=[])
        {
          journey_execution_metrics_response: Stubs::JourneyExecutionMetricsResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::JourneyExecutionMetricsResponse.stub(stub[:journey_execution_metrics_response]) unless stub[:journey_execution_metrics_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for JourneyExecutionMetricsResponse
    class JourneyExecutionMetricsResponse
      def self.default(visited=[])
        return nil if visited.include?('JourneyExecutionMetricsResponse')
        visited = visited + ['JourneyExecutionMetricsResponse']
        {
          application_id: 'application_id',
          journey_id: 'journey_id',
          last_evaluated_time: 'last_evaluated_time',
          metrics: Stubs::MapOf__string.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::JourneyExecutionMetricsResponse.new
        data = {}
        data['ApplicationId'] = stub[:application_id] unless stub[:application_id].nil?
        data['JourneyId'] = stub[:journey_id] unless stub[:journey_id].nil?
        data['LastEvaluatedTime'] = stub[:last_evaluated_time] unless stub[:last_evaluated_time].nil?
        data['Metrics'] = Stubs::MapOf__string.stub(stub[:metrics]) unless stub[:metrics].nil?
        data
      end
    end

    # Operation Stubber for GetPushTemplate
    class GetPushTemplate
      def self.default(visited=[])
        {
          push_notification_template_response: Stubs::PushNotificationTemplateResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::PushNotificationTemplateResponse.stub(stub[:push_notification_template_response]) unless stub[:push_notification_template_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for PushNotificationTemplateResponse
    class PushNotificationTemplateResponse
      def self.default(visited=[])
        return nil if visited.include?('PushNotificationTemplateResponse')
        visited = visited + ['PushNotificationTemplateResponse']
        {
          adm: Stubs::AndroidPushNotificationTemplate.default(visited),
          apns: Stubs::APNSPushNotificationTemplate.default(visited),
          arn: 'arn',
          baidu: Stubs::AndroidPushNotificationTemplate.default(visited),
          creation_date: 'creation_date',
          default: Stubs::DefaultPushNotificationTemplate.default(visited),
          default_substitutions: 'default_substitutions',
          gcm: Stubs::AndroidPushNotificationTemplate.default(visited),
          last_modified_date: 'last_modified_date',
          recommender_id: 'recommender_id',
          tags: Stubs::MapOf__string.default(visited),
          template_description: 'template_description',
          template_name: 'template_name',
          template_type: 'template_type',
          version: 'version',
        }
      end

      def self.stub(stub)
        stub ||= Types::PushNotificationTemplateResponse.new
        data = {}
        data['ADM'] = Stubs::AndroidPushNotificationTemplate.stub(stub[:adm]) unless stub[:adm].nil?
        data['APNS'] = Stubs::APNSPushNotificationTemplate.stub(stub[:apns]) unless stub[:apns].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Baidu'] = Stubs::AndroidPushNotificationTemplate.stub(stub[:baidu]) unless stub[:baidu].nil?
        data['CreationDate'] = stub[:creation_date] unless stub[:creation_date].nil?
        data['Default'] = Stubs::DefaultPushNotificationTemplate.stub(stub[:default]) unless stub[:default].nil?
        data['DefaultSubstitutions'] = stub[:default_substitutions] unless stub[:default_substitutions].nil?
        data['GCM'] = Stubs::AndroidPushNotificationTemplate.stub(stub[:gcm]) unless stub[:gcm].nil?
        data['LastModifiedDate'] = stub[:last_modified_date] unless stub[:last_modified_date].nil?
        data['RecommenderId'] = stub[:recommender_id] unless stub[:recommender_id].nil?
        data['tags'] = Stubs::MapOf__string.stub(stub[:tags]) unless stub[:tags].nil?
        data['TemplateDescription'] = stub[:template_description] unless stub[:template_description].nil?
        data['TemplateName'] = stub[:template_name] unless stub[:template_name].nil?
        data['TemplateType'] = stub[:template_type] unless stub[:template_type].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        data
      end
    end

    # Structure Stubber for AndroidPushNotificationTemplate
    class AndroidPushNotificationTemplate
      def self.default(visited=[])
        return nil if visited.include?('AndroidPushNotificationTemplate')
        visited = visited + ['AndroidPushNotificationTemplate']
        {
          action: 'action',
          body: 'body',
          image_icon_url: 'image_icon_url',
          image_url: 'image_url',
          raw_content: 'raw_content',
          small_image_icon_url: 'small_image_icon_url',
          sound: 'sound',
          title: 'title',
          url: 'url',
        }
      end

      def self.stub(stub)
        stub ||= Types::AndroidPushNotificationTemplate.new
        data = {}
        data['Action'] = stub[:action] unless stub[:action].nil?
        data['Body'] = stub[:body] unless stub[:body].nil?
        data['ImageIconUrl'] = stub[:image_icon_url] unless stub[:image_icon_url].nil?
        data['ImageUrl'] = stub[:image_url] unless stub[:image_url].nil?
        data['RawContent'] = stub[:raw_content] unless stub[:raw_content].nil?
        data['SmallImageIconUrl'] = stub[:small_image_icon_url] unless stub[:small_image_icon_url].nil?
        data['Sound'] = stub[:sound] unless stub[:sound].nil?
        data['Title'] = stub[:title] unless stub[:title].nil?
        data['Url'] = stub[:url] unless stub[:url].nil?
        data
      end
    end

    # Structure Stubber for DefaultPushNotificationTemplate
    class DefaultPushNotificationTemplate
      def self.default(visited=[])
        return nil if visited.include?('DefaultPushNotificationTemplate')
        visited = visited + ['DefaultPushNotificationTemplate']
        {
          action: 'action',
          body: 'body',
          sound: 'sound',
          title: 'title',
          url: 'url',
        }
      end

      def self.stub(stub)
        stub ||= Types::DefaultPushNotificationTemplate.new
        data = {}
        data['Action'] = stub[:action] unless stub[:action].nil?
        data['Body'] = stub[:body] unless stub[:body].nil?
        data['Sound'] = stub[:sound] unless stub[:sound].nil?
        data['Title'] = stub[:title] unless stub[:title].nil?
        data['Url'] = stub[:url] unless stub[:url].nil?
        data
      end
    end

    # Structure Stubber for APNSPushNotificationTemplate
    class APNSPushNotificationTemplate
      def self.default(visited=[])
        return nil if visited.include?('APNSPushNotificationTemplate')
        visited = visited + ['APNSPushNotificationTemplate']
        {
          action: 'action',
          body: 'body',
          media_url: 'media_url',
          raw_content: 'raw_content',
          sound: 'sound',
          title: 'title',
          url: 'url',
        }
      end

      def self.stub(stub)
        stub ||= Types::APNSPushNotificationTemplate.new
        data = {}
        data['Action'] = stub[:action] unless stub[:action].nil?
        data['Body'] = stub[:body] unless stub[:body].nil?
        data['MediaUrl'] = stub[:media_url] unless stub[:media_url].nil?
        data['RawContent'] = stub[:raw_content] unless stub[:raw_content].nil?
        data['Sound'] = stub[:sound] unless stub[:sound].nil?
        data['Title'] = stub[:title] unless stub[:title].nil?
        data['Url'] = stub[:url] unless stub[:url].nil?
        data
      end
    end

    # Operation Stubber for GetRecommenderConfiguration
    class GetRecommenderConfiguration
      def self.default(visited=[])
        {
          recommender_configuration_response: Stubs::RecommenderConfigurationResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::RecommenderConfigurationResponse.stub(stub[:recommender_configuration_response]) unless stub[:recommender_configuration_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetRecommenderConfigurations
    class GetRecommenderConfigurations
      def self.default(visited=[])
        {
          list_recommender_configurations_response: Stubs::ListRecommenderConfigurationsResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::ListRecommenderConfigurationsResponse.stub(stub[:list_recommender_configurations_response]) unless stub[:list_recommender_configurations_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ListRecommenderConfigurationsResponse
    class ListRecommenderConfigurationsResponse
      def self.default(visited=[])
        return nil if visited.include?('ListRecommenderConfigurationsResponse')
        visited = visited + ['ListRecommenderConfigurationsResponse']
        {
          item: Stubs::ListOfRecommenderConfigurationResponse.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(stub)
        stub ||= Types::ListRecommenderConfigurationsResponse.new
        data = {}
        data['Item'] = Stubs::ListOfRecommenderConfigurationResponse.stub(stub[:item]) unless stub[:item].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data
      end
    end

    # List Stubber for ListOfRecommenderConfigurationResponse
    class ListOfRecommenderConfigurationResponse
      def self.default(visited=[])
        return nil if visited.include?('ListOfRecommenderConfigurationResponse')
        visited = visited + ['ListOfRecommenderConfigurationResponse']
        [
          Stubs::RecommenderConfigurationResponse.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::RecommenderConfigurationResponse.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for GetSegment
    class GetSegment
      def self.default(visited=[])
        {
          segment_response: Stubs::SegmentResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::SegmentResponse.stub(stub[:segment_response]) unless stub[:segment_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetSegmentExportJobs
    class GetSegmentExportJobs
      def self.default(visited=[])
        {
          export_jobs_response: Stubs::ExportJobsResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::ExportJobsResponse.stub(stub[:export_jobs_response]) unless stub[:export_jobs_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetSegmentImportJobs
    class GetSegmentImportJobs
      def self.default(visited=[])
        {
          import_jobs_response: Stubs::ImportJobsResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::ImportJobsResponse.stub(stub[:import_jobs_response]) unless stub[:import_jobs_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetSegmentVersion
    class GetSegmentVersion
      def self.default(visited=[])
        {
          segment_response: Stubs::SegmentResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::SegmentResponse.stub(stub[:segment_response]) unless stub[:segment_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetSegmentVersions
    class GetSegmentVersions
      def self.default(visited=[])
        {
          segments_response: Stubs::SegmentsResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::SegmentsResponse.stub(stub[:segments_response]) unless stub[:segments_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for SegmentsResponse
    class SegmentsResponse
      def self.default(visited=[])
        return nil if visited.include?('SegmentsResponse')
        visited = visited + ['SegmentsResponse']
        {
          item: Stubs::ListOfSegmentResponse.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(stub)
        stub ||= Types::SegmentsResponse.new
        data = {}
        data['Item'] = Stubs::ListOfSegmentResponse.stub(stub[:item]) unless stub[:item].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data
      end
    end

    # List Stubber for ListOfSegmentResponse
    class ListOfSegmentResponse
      def self.default(visited=[])
        return nil if visited.include?('ListOfSegmentResponse')
        visited = visited + ['ListOfSegmentResponse']
        [
          Stubs::SegmentResponse.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SegmentResponse.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for GetSegments
    class GetSegments
      def self.default(visited=[])
        {
          segments_response: Stubs::SegmentsResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::SegmentsResponse.stub(stub[:segments_response]) unless stub[:segments_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetSmsChannel
    class GetSmsChannel
      def self.default(visited=[])
        {
          sms_channel_response: Stubs::SMSChannelResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::SMSChannelResponse.stub(stub[:sms_channel_response]) unless stub[:sms_channel_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetSmsTemplate
    class GetSmsTemplate
      def self.default(visited=[])
        {
          sms_template_response: Stubs::SMSTemplateResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::SMSTemplateResponse.stub(stub[:sms_template_response]) unless stub[:sms_template_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for SMSTemplateResponse
    class SMSTemplateResponse
      def self.default(visited=[])
        return nil if visited.include?('SMSTemplateResponse')
        visited = visited + ['SMSTemplateResponse']
        {
          arn: 'arn',
          body: 'body',
          creation_date: 'creation_date',
          default_substitutions: 'default_substitutions',
          last_modified_date: 'last_modified_date',
          recommender_id: 'recommender_id',
          tags: Stubs::MapOf__string.default(visited),
          template_description: 'template_description',
          template_name: 'template_name',
          template_type: 'template_type',
          version: 'version',
        }
      end

      def self.stub(stub)
        stub ||= Types::SMSTemplateResponse.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Body'] = stub[:body] unless stub[:body].nil?
        data['CreationDate'] = stub[:creation_date] unless stub[:creation_date].nil?
        data['DefaultSubstitutions'] = stub[:default_substitutions] unless stub[:default_substitutions].nil?
        data['LastModifiedDate'] = stub[:last_modified_date] unless stub[:last_modified_date].nil?
        data['RecommenderId'] = stub[:recommender_id] unless stub[:recommender_id].nil?
        data['tags'] = Stubs::MapOf__string.stub(stub[:tags]) unless stub[:tags].nil?
        data['TemplateDescription'] = stub[:template_description] unless stub[:template_description].nil?
        data['TemplateName'] = stub[:template_name] unless stub[:template_name].nil?
        data['TemplateType'] = stub[:template_type] unless stub[:template_type].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        data
      end
    end

    # Operation Stubber for GetUserEndpoints
    class GetUserEndpoints
      def self.default(visited=[])
        {
          endpoints_response: Stubs::EndpointsResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::EndpointsResponse.stub(stub[:endpoints_response]) unless stub[:endpoints_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetVoiceChannel
    class GetVoiceChannel
      def self.default(visited=[])
        {
          voice_channel_response: Stubs::VoiceChannelResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::VoiceChannelResponse.stub(stub[:voice_channel_response]) unless stub[:voice_channel_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetVoiceTemplate
    class GetVoiceTemplate
      def self.default(visited=[])
        {
          voice_template_response: Stubs::VoiceTemplateResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::VoiceTemplateResponse.stub(stub[:voice_template_response]) unless stub[:voice_template_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for VoiceTemplateResponse
    class VoiceTemplateResponse
      def self.default(visited=[])
        return nil if visited.include?('VoiceTemplateResponse')
        visited = visited + ['VoiceTemplateResponse']
        {
          arn: 'arn',
          body: 'body',
          creation_date: 'creation_date',
          default_substitutions: 'default_substitutions',
          language_code: 'language_code',
          last_modified_date: 'last_modified_date',
          tags: Stubs::MapOf__string.default(visited),
          template_description: 'template_description',
          template_name: 'template_name',
          template_type: 'template_type',
          version: 'version',
          voice_id: 'voice_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::VoiceTemplateResponse.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Body'] = stub[:body] unless stub[:body].nil?
        data['CreationDate'] = stub[:creation_date] unless stub[:creation_date].nil?
        data['DefaultSubstitutions'] = stub[:default_substitutions] unless stub[:default_substitutions].nil?
        data['LanguageCode'] = stub[:language_code] unless stub[:language_code].nil?
        data['LastModifiedDate'] = stub[:last_modified_date] unless stub[:last_modified_date].nil?
        data['tags'] = Stubs::MapOf__string.stub(stub[:tags]) unless stub[:tags].nil?
        data['TemplateDescription'] = stub[:template_description] unless stub[:template_description].nil?
        data['TemplateName'] = stub[:template_name] unless stub[:template_name].nil?
        data['TemplateType'] = stub[:template_type] unless stub[:template_type].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        data['VoiceId'] = stub[:voice_id] unless stub[:voice_id].nil?
        data
      end
    end

    # Operation Stubber for ListJourneys
    class ListJourneys
      def self.default(visited=[])
        {
          journeys_response: Stubs::JourneysResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::JourneysResponse.stub(stub[:journeys_response]) unless stub[:journeys_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for JourneysResponse
    class JourneysResponse
      def self.default(visited=[])
        return nil if visited.include?('JourneysResponse')
        visited = visited + ['JourneysResponse']
        {
          item: Stubs::ListOfJourneyResponse.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(stub)
        stub ||= Types::JourneysResponse.new
        data = {}
        data['Item'] = Stubs::ListOfJourneyResponse.stub(stub[:item]) unless stub[:item].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data
      end
    end

    # List Stubber for ListOfJourneyResponse
    class ListOfJourneyResponse
      def self.default(visited=[])
        return nil if visited.include?('ListOfJourneyResponse')
        visited = visited + ['ListOfJourneyResponse']
        [
          Stubs::JourneyResponse.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::JourneyResponse.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags_model: Stubs::TagsModel.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::TagsModel.stub(stub[:tags_model]) unless stub[:tags_model].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for TagsModel
    class TagsModel
      def self.default(visited=[])
        return nil if visited.include?('TagsModel')
        visited = visited + ['TagsModel']
        {
          tags: Stubs::MapOf__string.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TagsModel.new
        data = {}
        data['tags'] = Stubs::MapOf__string.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Operation Stubber for ListTemplateVersions
    class ListTemplateVersions
      def self.default(visited=[])
        {
          template_versions_response: Stubs::TemplateVersionsResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::TemplateVersionsResponse.stub(stub[:template_versions_response]) unless stub[:template_versions_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for TemplateVersionsResponse
    class TemplateVersionsResponse
      def self.default(visited=[])
        return nil if visited.include?('TemplateVersionsResponse')
        visited = visited + ['TemplateVersionsResponse']
        {
          item: Stubs::ListOfTemplateVersionResponse.default(visited),
          message: 'message',
          next_token: 'next_token',
          request_id: 'request_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::TemplateVersionsResponse.new
        data = {}
        data['Item'] = Stubs::ListOfTemplateVersionResponse.stub(stub[:item]) unless stub[:item].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['RequestID'] = stub[:request_id] unless stub[:request_id].nil?
        data
      end
    end

    # List Stubber for ListOfTemplateVersionResponse
    class ListOfTemplateVersionResponse
      def self.default(visited=[])
        return nil if visited.include?('ListOfTemplateVersionResponse')
        visited = visited + ['ListOfTemplateVersionResponse']
        [
          Stubs::TemplateVersionResponse.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::TemplateVersionResponse.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TemplateVersionResponse
    class TemplateVersionResponse
      def self.default(visited=[])
        return nil if visited.include?('TemplateVersionResponse')
        visited = visited + ['TemplateVersionResponse']
        {
          creation_date: 'creation_date',
          default_substitutions: 'default_substitutions',
          last_modified_date: 'last_modified_date',
          template_description: 'template_description',
          template_name: 'template_name',
          template_type: 'template_type',
          version: 'version',
        }
      end

      def self.stub(stub)
        stub ||= Types::TemplateVersionResponse.new
        data = {}
        data['CreationDate'] = stub[:creation_date] unless stub[:creation_date].nil?
        data['DefaultSubstitutions'] = stub[:default_substitutions] unless stub[:default_substitutions].nil?
        data['LastModifiedDate'] = stub[:last_modified_date] unless stub[:last_modified_date].nil?
        data['TemplateDescription'] = stub[:template_description] unless stub[:template_description].nil?
        data['TemplateName'] = stub[:template_name] unless stub[:template_name].nil?
        data['TemplateType'] = stub[:template_type] unless stub[:template_type].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        data
      end
    end

    # Operation Stubber for ListTemplates
    class ListTemplates
      def self.default(visited=[])
        {
          templates_response: Stubs::TemplatesResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::TemplatesResponse.stub(stub[:templates_response]) unless stub[:templates_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for TemplatesResponse
    class TemplatesResponse
      def self.default(visited=[])
        return nil if visited.include?('TemplatesResponse')
        visited = visited + ['TemplatesResponse']
        {
          item: Stubs::ListOfTemplateResponse.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(stub)
        stub ||= Types::TemplatesResponse.new
        data = {}
        data['Item'] = Stubs::ListOfTemplateResponse.stub(stub[:item]) unless stub[:item].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data
      end
    end

    # List Stubber for ListOfTemplateResponse
    class ListOfTemplateResponse
      def self.default(visited=[])
        return nil if visited.include?('ListOfTemplateResponse')
        visited = visited + ['ListOfTemplateResponse']
        [
          Stubs::TemplateResponse.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::TemplateResponse.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TemplateResponse
    class TemplateResponse
      def self.default(visited=[])
        return nil if visited.include?('TemplateResponse')
        visited = visited + ['TemplateResponse']
        {
          arn: 'arn',
          creation_date: 'creation_date',
          default_substitutions: 'default_substitutions',
          last_modified_date: 'last_modified_date',
          tags: Stubs::MapOf__string.default(visited),
          template_description: 'template_description',
          template_name: 'template_name',
          template_type: 'template_type',
          version: 'version',
        }
      end

      def self.stub(stub)
        stub ||= Types::TemplateResponse.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['CreationDate'] = stub[:creation_date] unless stub[:creation_date].nil?
        data['DefaultSubstitutions'] = stub[:default_substitutions] unless stub[:default_substitutions].nil?
        data['LastModifiedDate'] = stub[:last_modified_date] unless stub[:last_modified_date].nil?
        data['tags'] = Stubs::MapOf__string.stub(stub[:tags]) unless stub[:tags].nil?
        data['TemplateDescription'] = stub[:template_description] unless stub[:template_description].nil?
        data['TemplateName'] = stub[:template_name] unless stub[:template_name].nil?
        data['TemplateType'] = stub[:template_type] unless stub[:template_type].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        data
      end
    end

    # Operation Stubber for PhoneNumberValidate
    class PhoneNumberValidate
      def self.default(visited=[])
        {
          number_validate_response: Stubs::NumberValidateResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::NumberValidateResponse.stub(stub[:number_validate_response]) unless stub[:number_validate_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for NumberValidateResponse
    class NumberValidateResponse
      def self.default(visited=[])
        return nil if visited.include?('NumberValidateResponse')
        visited = visited + ['NumberValidateResponse']
        {
          carrier: 'carrier',
          city: 'city',
          cleansed_phone_number_e164: 'cleansed_phone_number_e164',
          cleansed_phone_number_national: 'cleansed_phone_number_national',
          country: 'country',
          country_code_iso2: 'country_code_iso2',
          country_code_numeric: 'country_code_numeric',
          county: 'county',
          original_country_code_iso2: 'original_country_code_iso2',
          original_phone_number: 'original_phone_number',
          phone_type: 'phone_type',
          phone_type_code: 1,
          timezone: 'timezone',
          zip_code: 'zip_code',
        }
      end

      def self.stub(stub)
        stub ||= Types::NumberValidateResponse.new
        data = {}
        data['Carrier'] = stub[:carrier] unless stub[:carrier].nil?
        data['City'] = stub[:city] unless stub[:city].nil?
        data['CleansedPhoneNumberE164'] = stub[:cleansed_phone_number_e164] unless stub[:cleansed_phone_number_e164].nil?
        data['CleansedPhoneNumberNational'] = stub[:cleansed_phone_number_national] unless stub[:cleansed_phone_number_national].nil?
        data['Country'] = stub[:country] unless stub[:country].nil?
        data['CountryCodeIso2'] = stub[:country_code_iso2] unless stub[:country_code_iso2].nil?
        data['CountryCodeNumeric'] = stub[:country_code_numeric] unless stub[:country_code_numeric].nil?
        data['County'] = stub[:county] unless stub[:county].nil?
        data['OriginalCountryCodeIso2'] = stub[:original_country_code_iso2] unless stub[:original_country_code_iso2].nil?
        data['OriginalPhoneNumber'] = stub[:original_phone_number] unless stub[:original_phone_number].nil?
        data['PhoneType'] = stub[:phone_type] unless stub[:phone_type].nil?
        data['PhoneTypeCode'] = stub[:phone_type_code] unless stub[:phone_type_code].nil?
        data['Timezone'] = stub[:timezone] unless stub[:timezone].nil?
        data['ZipCode'] = stub[:zip_code] unless stub[:zip_code].nil?
        data
      end
    end

    # Operation Stubber for PutEventStream
    class PutEventStream
      def self.default(visited=[])
        {
          event_stream: Stubs::EventStream.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::EventStream.stub(stub[:event_stream]) unless stub[:event_stream].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for PutEvents
    class PutEvents
      def self.default(visited=[])
        {
          events_response: Stubs::EventsResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::EventsResponse.stub(stub[:events_response]) unless stub[:events_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for EventsResponse
    class EventsResponse
      def self.default(visited=[])
        return nil if visited.include?('EventsResponse')
        visited = visited + ['EventsResponse']
        {
          results: Stubs::MapOfItemResponse.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::EventsResponse.new
        data = {}
        data['Results'] = Stubs::MapOfItemResponse.stub(stub[:results]) unless stub[:results].nil?
        data
      end
    end

    # Map Stubber for MapOfItemResponse
    class MapOfItemResponse
      def self.default(visited=[])
        return nil if visited.include?('MapOfItemResponse')
        visited = visited + ['MapOfItemResponse']
        {
          test_key: Stubs::ItemResponse.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::ItemResponse.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for ItemResponse
    class ItemResponse
      def self.default(visited=[])
        return nil if visited.include?('ItemResponse')
        visited = visited + ['ItemResponse']
        {
          endpoint_item_response: Stubs::EndpointItemResponse.default(visited),
          events_item_response: Stubs::MapOfEventItemResponse.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ItemResponse.new
        data = {}
        data['EndpointItemResponse'] = Stubs::EndpointItemResponse.stub(stub[:endpoint_item_response]) unless stub[:endpoint_item_response].nil?
        data['EventsItemResponse'] = Stubs::MapOfEventItemResponse.stub(stub[:events_item_response]) unless stub[:events_item_response].nil?
        data
      end
    end

    # Map Stubber for MapOfEventItemResponse
    class MapOfEventItemResponse
      def self.default(visited=[])
        return nil if visited.include?('MapOfEventItemResponse')
        visited = visited + ['MapOfEventItemResponse']
        {
          test_key: Stubs::EventItemResponse.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::EventItemResponse.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for EventItemResponse
    class EventItemResponse
      def self.default(visited=[])
        return nil if visited.include?('EventItemResponse')
        visited = visited + ['EventItemResponse']
        {
          message: 'message',
          status_code: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::EventItemResponse.new
        data = {}
        data['Message'] = stub[:message] unless stub[:message].nil?
        data['StatusCode'] = stub[:status_code] unless stub[:status_code].nil?
        data
      end
    end

    # Structure Stubber for EndpointItemResponse
    class EndpointItemResponse
      def self.default(visited=[])
        return nil if visited.include?('EndpointItemResponse')
        visited = visited + ['EndpointItemResponse']
        {
          message: 'message',
          status_code: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::EndpointItemResponse.new
        data = {}
        data['Message'] = stub[:message] unless stub[:message].nil?
        data['StatusCode'] = stub[:status_code] unless stub[:status_code].nil?
        data
      end
    end

    # Operation Stubber for RemoveAttributes
    class RemoveAttributes
      def self.default(visited=[])
        {
          attributes_resource: Stubs::AttributesResource.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::AttributesResource.stub(stub[:attributes_resource]) unless stub[:attributes_resource].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for AttributesResource
    class AttributesResource
      def self.default(visited=[])
        return nil if visited.include?('AttributesResource')
        visited = visited + ['AttributesResource']
        {
          application_id: 'application_id',
          attribute_type: 'attribute_type',
          attributes: Stubs::ListOf__string.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AttributesResource.new
        data = {}
        data['ApplicationId'] = stub[:application_id] unless stub[:application_id].nil?
        data['AttributeType'] = stub[:attribute_type] unless stub[:attribute_type].nil?
        data['Attributes'] = Stubs::ListOf__string.stub(stub[:attributes]) unless stub[:attributes].nil?
        data
      end
    end

    # Operation Stubber for SendMessages
    class SendMessages
      def self.default(visited=[])
        {
          message_response: Stubs::MessageResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::MessageResponse.stub(stub[:message_response]) unless stub[:message_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for MessageResponse
    class MessageResponse
      def self.default(visited=[])
        return nil if visited.include?('MessageResponse')
        visited = visited + ['MessageResponse']
        {
          application_id: 'application_id',
          endpoint_result: Stubs::MapOfEndpointMessageResult.default(visited),
          request_id: 'request_id',
          result: Stubs::MapOfMessageResult.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::MessageResponse.new
        data = {}
        data['ApplicationId'] = stub[:application_id] unless stub[:application_id].nil?
        data['EndpointResult'] = Stubs::MapOfEndpointMessageResult.stub(stub[:endpoint_result]) unless stub[:endpoint_result].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['Result'] = Stubs::MapOfMessageResult.stub(stub[:result]) unless stub[:result].nil?
        data
      end
    end

    # Map Stubber for MapOfMessageResult
    class MapOfMessageResult
      def self.default(visited=[])
        return nil if visited.include?('MapOfMessageResult')
        visited = visited + ['MapOfMessageResult']
        {
          test_key: Stubs::MessageResult.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::MessageResult.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for MessageResult
    class MessageResult
      def self.default(visited=[])
        return nil if visited.include?('MessageResult')
        visited = visited + ['MessageResult']
        {
          delivery_status: 'delivery_status',
          message_id: 'message_id',
          status_code: 1,
          status_message: 'status_message',
          updated_token: 'updated_token',
        }
      end

      def self.stub(stub)
        stub ||= Types::MessageResult.new
        data = {}
        data['DeliveryStatus'] = stub[:delivery_status] unless stub[:delivery_status].nil?
        data['MessageId'] = stub[:message_id] unless stub[:message_id].nil?
        data['StatusCode'] = stub[:status_code] unless stub[:status_code].nil?
        data['StatusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        data['UpdatedToken'] = stub[:updated_token] unless stub[:updated_token].nil?
        data
      end
    end

    # Map Stubber for MapOfEndpointMessageResult
    class MapOfEndpointMessageResult
      def self.default(visited=[])
        return nil if visited.include?('MapOfEndpointMessageResult')
        visited = visited + ['MapOfEndpointMessageResult']
        {
          test_key: Stubs::EndpointMessageResult.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::EndpointMessageResult.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for EndpointMessageResult
    class EndpointMessageResult
      def self.default(visited=[])
        return nil if visited.include?('EndpointMessageResult')
        visited = visited + ['EndpointMessageResult']
        {
          address: 'address',
          delivery_status: 'delivery_status',
          message_id: 'message_id',
          status_code: 1,
          status_message: 'status_message',
          updated_token: 'updated_token',
        }
      end

      def self.stub(stub)
        stub ||= Types::EndpointMessageResult.new
        data = {}
        data['Address'] = stub[:address] unless stub[:address].nil?
        data['DeliveryStatus'] = stub[:delivery_status] unless stub[:delivery_status].nil?
        data['MessageId'] = stub[:message_id] unless stub[:message_id].nil?
        data['StatusCode'] = stub[:status_code] unless stub[:status_code].nil?
        data['StatusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        data['UpdatedToken'] = stub[:updated_token] unless stub[:updated_token].nil?
        data
      end
    end

    # Operation Stubber for SendOTPMessage
    class SendOTPMessage
      def self.default(visited=[])
        {
          message_response: Stubs::MessageResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::MessageResponse.stub(stub[:message_response]) unless stub[:message_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for SendUsersMessages
    class SendUsersMessages
      def self.default(visited=[])
        {
          send_users_message_response: Stubs::SendUsersMessageResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::SendUsersMessageResponse.stub(stub[:send_users_message_response]) unless stub[:send_users_message_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for SendUsersMessageResponse
    class SendUsersMessageResponse
      def self.default(visited=[])
        return nil if visited.include?('SendUsersMessageResponse')
        visited = visited + ['SendUsersMessageResponse']
        {
          application_id: 'application_id',
          request_id: 'request_id',
          result: Stubs::MapOfMapOfEndpointMessageResult.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SendUsersMessageResponse.new
        data = {}
        data['ApplicationId'] = stub[:application_id] unless stub[:application_id].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['Result'] = Stubs::MapOfMapOfEndpointMessageResult.stub(stub[:result]) unless stub[:result].nil?
        data
      end
    end

    # Map Stubber for MapOfMapOfEndpointMessageResult
    class MapOfMapOfEndpointMessageResult
      def self.default(visited=[])
        return nil if visited.include?('MapOfMapOfEndpointMessageResult')
        visited = visited + ['MapOfMapOfEndpointMessageResult']
        {
          test_key: Stubs::MapOfEndpointMessageResult.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::MapOfEndpointMessageResult.stub(value) unless value.nil?
        end
        data
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
        http_resp.status = 204
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
        http_resp.status = 204
      end
    end

    # Operation Stubber for UpdateAdmChannel
    class UpdateAdmChannel
      def self.default(visited=[])
        {
          adm_channel_response: Stubs::ADMChannelResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::ADMChannelResponse.stub(stub[:adm_channel_response]) unless stub[:adm_channel_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateApnsChannel
    class UpdateApnsChannel
      def self.default(visited=[])
        {
          apns_channel_response: Stubs::APNSChannelResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::APNSChannelResponse.stub(stub[:apns_channel_response]) unless stub[:apns_channel_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateApnsSandboxChannel
    class UpdateApnsSandboxChannel
      def self.default(visited=[])
        {
          apns_sandbox_channel_response: Stubs::APNSSandboxChannelResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::APNSSandboxChannelResponse.stub(stub[:apns_sandbox_channel_response]) unless stub[:apns_sandbox_channel_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateApnsVoipChannel
    class UpdateApnsVoipChannel
      def self.default(visited=[])
        {
          apns_voip_channel_response: Stubs::APNSVoipChannelResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::APNSVoipChannelResponse.stub(stub[:apns_voip_channel_response]) unless stub[:apns_voip_channel_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateApnsVoipSandboxChannel
    class UpdateApnsVoipSandboxChannel
      def self.default(visited=[])
        {
          apns_voip_sandbox_channel_response: Stubs::APNSVoipSandboxChannelResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::APNSVoipSandboxChannelResponse.stub(stub[:apns_voip_sandbox_channel_response]) unless stub[:apns_voip_sandbox_channel_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateApplicationSettings
    class UpdateApplicationSettings
      def self.default(visited=[])
        {
          application_settings_resource: Stubs::ApplicationSettingsResource.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::ApplicationSettingsResource.stub(stub[:application_settings_resource]) unless stub[:application_settings_resource].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateBaiduChannel
    class UpdateBaiduChannel
      def self.default(visited=[])
        {
          baidu_channel_response: Stubs::BaiduChannelResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::BaiduChannelResponse.stub(stub[:baidu_channel_response]) unless stub[:baidu_channel_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateCampaign
    class UpdateCampaign
      def self.default(visited=[])
        {
          campaign_response: Stubs::CampaignResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::CampaignResponse.stub(stub[:campaign_response]) unless stub[:campaign_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateEmailChannel
    class UpdateEmailChannel
      def self.default(visited=[])
        {
          email_channel_response: Stubs::EmailChannelResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::EmailChannelResponse.stub(stub[:email_channel_response]) unless stub[:email_channel_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateEmailTemplate
    class UpdateEmailTemplate
      def self.default(visited=[])
        {
          message_body: Stubs::MessageBody.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::MessageBody.stub(stub[:message_body]) unless stub[:message_body].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateEndpoint
    class UpdateEndpoint
      def self.default(visited=[])
        {
          message_body: Stubs::MessageBody.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::MessageBody.stub(stub[:message_body]) unless stub[:message_body].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateEndpointsBatch
    class UpdateEndpointsBatch
      def self.default(visited=[])
        {
          message_body: Stubs::MessageBody.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::MessageBody.stub(stub[:message_body]) unless stub[:message_body].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateGcmChannel
    class UpdateGcmChannel
      def self.default(visited=[])
        {
          gcm_channel_response: Stubs::GCMChannelResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::GCMChannelResponse.stub(stub[:gcm_channel_response]) unless stub[:gcm_channel_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateInAppTemplate
    class UpdateInAppTemplate
      def self.default(visited=[])
        {
          message_body: Stubs::MessageBody.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::MessageBody.stub(stub[:message_body]) unless stub[:message_body].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateJourney
    class UpdateJourney
      def self.default(visited=[])
        {
          journey_response: Stubs::JourneyResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::JourneyResponse.stub(stub[:journey_response]) unless stub[:journey_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateJourneyState
    class UpdateJourneyState
      def self.default(visited=[])
        {
          journey_response: Stubs::JourneyResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::JourneyResponse.stub(stub[:journey_response]) unless stub[:journey_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdatePushTemplate
    class UpdatePushTemplate
      def self.default(visited=[])
        {
          message_body: Stubs::MessageBody.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::MessageBody.stub(stub[:message_body]) unless stub[:message_body].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateRecommenderConfiguration
    class UpdateRecommenderConfiguration
      def self.default(visited=[])
        {
          recommender_configuration_response: Stubs::RecommenderConfigurationResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::RecommenderConfigurationResponse.stub(stub[:recommender_configuration_response]) unless stub[:recommender_configuration_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateSegment
    class UpdateSegment
      def self.default(visited=[])
        {
          segment_response: Stubs::SegmentResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::SegmentResponse.stub(stub[:segment_response]) unless stub[:segment_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateSmsChannel
    class UpdateSmsChannel
      def self.default(visited=[])
        {
          sms_channel_response: Stubs::SMSChannelResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::SMSChannelResponse.stub(stub[:sms_channel_response]) unless stub[:sms_channel_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateSmsTemplate
    class UpdateSmsTemplate
      def self.default(visited=[])
        {
          message_body: Stubs::MessageBody.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::MessageBody.stub(stub[:message_body]) unless stub[:message_body].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateTemplateActiveVersion
    class UpdateTemplateActiveVersion
      def self.default(visited=[])
        {
          message_body: Stubs::MessageBody.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::MessageBody.stub(stub[:message_body]) unless stub[:message_body].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateVoiceChannel
    class UpdateVoiceChannel
      def self.default(visited=[])
        {
          voice_channel_response: Stubs::VoiceChannelResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::VoiceChannelResponse.stub(stub[:voice_channel_response]) unless stub[:voice_channel_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateVoiceTemplate
    class UpdateVoiceTemplate
      def self.default(visited=[])
        {
          message_body: Stubs::MessageBody.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::MessageBody.stub(stub[:message_body]) unless stub[:message_body].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for VerifyOTPMessage
    class VerifyOTPMessage
      def self.default(visited=[])
        {
          verification_response: Stubs::VerificationResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::VerificationResponse.stub(stub[:verification_response]) unless stub[:verification_response].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for VerificationResponse
    class VerificationResponse
      def self.default(visited=[])
        return nil if visited.include?('VerificationResponse')
        visited = visited + ['VerificationResponse']
        {
          valid: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::VerificationResponse.new
        data = {}
        data['Valid'] = stub[:valid] unless stub[:valid].nil?
        data
      end
    end
  end
end
