# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SSMIncidents
  module Builders

    # Operation Builder for CreateReplicationSet
    class CreateReplicationSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/createReplicationSet')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['regions'] = Builders::RegionMapInput.build(input[:regions]) unless input[:regions].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for RegionMapInput
    class RegionMapInput
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::RegionMapInputValue.build(value) unless value.nil?
        end
        data
      end
    end

    # Structure Builder for RegionMapInputValue
    class RegionMapInputValue
      def self.build(input)
        data = {}
        data['sseKmsKeyId'] = input[:sse_kms_key_id] unless input[:sse_kms_key_id].nil?
        data
      end
    end

    # Operation Builder for CreateResponsePlan
    class CreateResponsePlan
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/createResponsePlan')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['displayName'] = input[:display_name] unless input[:display_name].nil?
        data['incidentTemplate'] = Builders::IncidentTemplate.build(input[:incident_template]) unless input[:incident_template].nil?
        data['chatChannel'] = Builders::ChatChannel.build(input[:chat_channel]) unless input[:chat_channel].nil?
        data['engagements'] = Builders::EngagementSet.build(input[:engagements]).to_a unless input[:engagements].nil?
        data['actions'] = Builders::ActionsList.build(input[:actions]) unless input[:actions].nil?
        data['tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for TagMap
    class TagMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # List Builder for ActionsList
    class ActionsList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Action.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Action
    class Action
      def self.build(input)
        data = {}
        case input
        when Types::Action::SsmAutomation
          data['ssmAutomation'] = (Builders::SsmAutomation.build(input) unless input.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::Action"
        end

        data
      end
    end

    # Structure Builder for SsmAutomation
    class SsmAutomation
      def self.build(input)
        data = {}
        data['roleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['documentName'] = input[:document_name] unless input[:document_name].nil?
        data['documentVersion'] = input[:document_version] unless input[:document_version].nil?
        data['targetAccount'] = input[:target_account] unless input[:target_account].nil?
        data['parameters'] = Builders::SsmParameters.build(input[:parameters]) unless input[:parameters].nil?
        data['dynamicParameters'] = Builders::DynamicSsmParameters.build(input[:dynamic_parameters]) unless input[:dynamic_parameters].nil?
        data
      end
    end

    # Map Builder for DynamicSsmParameters
    class DynamicSsmParameters
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::DynamicSsmParameterValue.build(value) unless value.nil?
        end
        data
      end
    end

    # Structure Builder for DynamicSsmParameterValue
    class DynamicSsmParameterValue
      def self.build(input)
        data = {}
        case input
        when Types::DynamicSsmParameterValue::Variable
          data['variable'] = input
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::DynamicSsmParameterValue"
        end

        data
      end
    end

    # Map Builder for SsmParameters
    class SsmParameters
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::SsmParameterValues.build(value) unless value.nil?
        end
        data
      end
    end

    # List Builder for SsmParameterValues
    class SsmParameterValues
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for EngagementSet
    class EngagementSet
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ChatChannel
    class ChatChannel
      def self.build(input)
        data = {}
        case input
        when Types::ChatChannel::Empty
          data['empty'] = (Builders::EmptyChatChannel.build(input) unless input.nil?)
        when Types::ChatChannel::ChatbotSns
          data['chatbotSns'] = (Builders::ChatbotSnsConfigurationSet.build(input).to_a unless input.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::ChatChannel"
        end

        data
      end
    end

    # List Builder for ChatbotSnsConfigurationSet
    class ChatbotSnsConfigurationSet
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for EmptyChatChannel
    class EmptyChatChannel
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for IncidentTemplate
    class IncidentTemplate
      def self.build(input)
        data = {}
        data['title'] = input[:title] unless input[:title].nil?
        data['impact'] = input[:impact] unless input[:impact].nil?
        data['summary'] = input[:summary] unless input[:summary].nil?
        data['dedupeString'] = input[:dedupe_string] unless input[:dedupe_string].nil?
        data['notificationTargets'] = Builders::NotificationTargetSet.build(input[:notification_targets]) unless input[:notification_targets].nil?
        data
      end
    end

    # List Builder for NotificationTargetSet
    class NotificationTargetSet
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::NotificationTargetItem.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for NotificationTargetItem
    class NotificationTargetItem
      def self.build(input)
        data = {}
        case input
        when Types::NotificationTargetItem::SnsTopicArn
          data['snsTopicArn'] = input
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::NotificationTargetItem"
        end

        data
      end
    end

    # Operation Builder for CreateTimelineEvent
    class CreateTimelineEvent
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/createTimelineEvent')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        data['incidentRecordArn'] = input[:incident_record_arn] unless input[:incident_record_arn].nil?
        data['eventTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:event_time]).to_i unless input[:event_time].nil?
        data['eventType'] = input[:event_type] unless input[:event_type].nil?
        data['eventData'] = input[:event_data] unless input[:event_data].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteIncidentRecord
    class DeleteIncidentRecord
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/deleteIncidentRecord')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['arn'] = input[:arn] unless input[:arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteReplicationSet
    class DeleteReplicationSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/deleteReplicationSet')
        params = Hearth::Query::ParamList.new
        params['arn'] = input[:arn].to_s unless input[:arn].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteResourcePolicy
    class DeleteResourcePolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/deleteResourcePolicy')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['resourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['policyId'] = input[:policy_id] unless input[:policy_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteResponsePlan
    class DeleteResponsePlan
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/deleteResponsePlan')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['arn'] = input[:arn] unless input[:arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteTimelineEvent
    class DeleteTimelineEvent
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/deleteTimelineEvent')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['incidentRecordArn'] = input[:incident_record_arn] unless input[:incident_record_arn].nil?
        data['eventId'] = input[:event_id] unless input[:event_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetIncidentRecord
    class GetIncidentRecord
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/getIncidentRecord')
        params = Hearth::Query::ParamList.new
        params['arn'] = input[:arn].to_s unless input[:arn].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetReplicationSet
    class GetReplicationSet
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/getReplicationSet')
        params = Hearth::Query::ParamList.new
        params['arn'] = input[:arn].to_s unless input[:arn].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetResourcePolicies
    class GetResourcePolicies
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/getResourcePolicies')
        params = Hearth::Query::ParamList.new
        params['resourceArn'] = input[:resource_arn].to_s unless input[:resource_arn].nil?
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetResponsePlan
    class GetResponsePlan
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/getResponsePlan')
        params = Hearth::Query::ParamList.new
        params['arn'] = input[:arn].to_s unless input[:arn].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetTimelineEvent
    class GetTimelineEvent
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/getTimelineEvent')
        params = Hearth::Query::ParamList.new
        params['incidentRecordArn'] = input[:incident_record_arn].to_s unless input[:incident_record_arn].nil?
        params['eventId'] = input[:event_id].to_s unless input[:event_id].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListIncidentRecords
    class ListIncidentRecords
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/listIncidentRecords')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['filters'] = Builders::FilterList.build(input[:filters]) unless input[:filters].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for FilterList
    class FilterList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Filter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Filter
    class Filter
      def self.build(input)
        data = {}
        data['key'] = input[:key] unless input[:key].nil?
        data['condition'] = Builders::Condition.build(input[:condition]) unless input[:condition].nil?
        data
      end
    end

    # Structure Builder for Condition
    class Condition
      def self.build(input)
        data = {}
        case input
        when Types::Condition::Before
          data['before'] = Hearth::TimeHelper.to_epoch_seconds(input).to_i
        when Types::Condition::After
          data['after'] = Hearth::TimeHelper.to_epoch_seconds(input).to_i
        when Types::Condition::Equals
          input = input.__getobj__
          data['equals'] = (Builders::AttributeValueList.build(input) unless input.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::Condition"
        end

        data
      end
    end

    # Structure Builder for AttributeValueList
    class AttributeValueList
      def self.build(input)
        data = {}
        case input
        when Types::AttributeValueList::StringValues
          data['stringValues'] = (Builders::StringList.build(input) unless input.nil?)
        when Types::AttributeValueList::IntegerValues
          data['integerValues'] = (Builders::IntegerList.build(input) unless input.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::AttributeValueList"
        end

        data
      end
    end

    # List Builder for IntegerList
    class IntegerList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for StringList
    class StringList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ListRelatedItems
    class ListRelatedItems
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/listRelatedItems')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['incidentRecordArn'] = input[:incident_record_arn] unless input[:incident_record_arn].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListReplicationSets
    class ListReplicationSets
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/listReplicationSets')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListResponsePlans
    class ListResponsePlans
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/listResponsePlans')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<resourceArn>s',
            resourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListTimelineEvents
    class ListTimelineEvents
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/listTimelineEvents')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['incidentRecordArn'] = input[:incident_record_arn] unless input[:incident_record_arn].nil?
        data['filters'] = Builders::FilterList.build(input[:filters]) unless input[:filters].nil?
        data['sortBy'] = input[:sort_by] unless input[:sort_by].nil?
        data['sortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutResourcePolicy
    class PutResourcePolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/putResourcePolicy')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['resourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['policy'] = input[:policy] unless input[:policy].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartIncident
    class StartIncident
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/startIncident')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        data['responsePlanArn'] = input[:response_plan_arn] unless input[:response_plan_arn].nil?
        data['title'] = input[:title] unless input[:title].nil?
        data['impact'] = input[:impact] unless input[:impact].nil?
        data['triggerDetails'] = Builders::TriggerDetails.build(input[:trigger_details]) unless input[:trigger_details].nil?
        data['relatedItems'] = Builders::RelatedItemList.build(input[:related_items]) unless input[:related_items].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for RelatedItemList
    class RelatedItemList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::RelatedItem.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for RelatedItem
    class RelatedItem
      def self.build(input)
        data = {}
        data['identifier'] = Builders::ItemIdentifier.build(input[:identifier]) unless input[:identifier].nil?
        data['title'] = input[:title] unless input[:title].nil?
        data
      end
    end

    # Structure Builder for ItemIdentifier
    class ItemIdentifier
      def self.build(input)
        data = {}
        data['value'] = Builders::ItemValue.build(input[:value]) unless input[:value].nil?
        data['type'] = input[:type] unless input[:type].nil?
        data
      end
    end

    # Structure Builder for ItemValue
    class ItemValue
      def self.build(input)
        data = {}
        case input
        when Types::ItemValue::Arn
          data['arn'] = input
        when Types::ItemValue::Url
          data['url'] = input
        when Types::ItemValue::MetricDefinition
          data['metricDefinition'] = input
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::ItemValue"
        end

        data
      end
    end

    # Structure Builder for TriggerDetails
    class TriggerDetails
      def self.build(input)
        data = {}
        data['source'] = input[:source] unless input[:source].nil?
        data['triggerArn'] = input[:trigger_arn] unless input[:trigger_arn].nil?
        data['timestamp'] = Hearth::TimeHelper.to_epoch_seconds(input[:timestamp]).to_i unless input[:timestamp].nil?
        data['rawData'] = input[:raw_data] unless input[:raw_data].nil?
        data
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<resourceArn>s',
            resourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<resourceArn>s',
            resourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        unless input[:tag_keys].nil? || input[:tag_keys].empty?
          params['tagKeys'] = input[:tag_keys].map do |value|
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

    # Operation Builder for UpdateDeletionProtection
    class UpdateDeletionProtection
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/updateDeletionProtection')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['arn'] = input[:arn] unless input[:arn].nil?
        data['deletionProtected'] = input[:deletion_protected] unless input[:deletion_protected].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateIncidentRecord
    class UpdateIncidentRecord
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/updateIncidentRecord')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        data['arn'] = input[:arn] unless input[:arn].nil?
        data['title'] = input[:title] unless input[:title].nil?
        data['summary'] = input[:summary] unless input[:summary].nil?
        data['impact'] = input[:impact] unless input[:impact].nil?
        data['status'] = input[:status] unless input[:status].nil?
        data['chatChannel'] = Builders::ChatChannel.build(input[:chat_channel]) unless input[:chat_channel].nil?
        data['notificationTargets'] = Builders::NotificationTargetSet.build(input[:notification_targets]) unless input[:notification_targets].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateRelatedItems
    class UpdateRelatedItems
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/updateRelatedItems')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        data['incidentRecordArn'] = input[:incident_record_arn] unless input[:incident_record_arn].nil?
        data['relatedItemsUpdate'] = Builders::RelatedItemsUpdate.build(input[:related_items_update]) unless input[:related_items_update].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for RelatedItemsUpdate
    class RelatedItemsUpdate
      def self.build(input)
        data = {}
        case input
        when Types::RelatedItemsUpdate::ItemToAdd
          data['itemToAdd'] = (Builders::RelatedItem.build(input) unless input.nil?)
        when Types::RelatedItemsUpdate::ItemToRemove
          data['itemToRemove'] = (Builders::ItemIdentifier.build(input) unless input.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::RelatedItemsUpdate"
        end

        data
      end
    end

    # Operation Builder for UpdateReplicationSet
    class UpdateReplicationSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/updateReplicationSet')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['arn'] = input[:arn] unless input[:arn].nil?
        data['actions'] = Builders::UpdateActionList.build(input[:actions]) unless input[:actions].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for UpdateActionList
    class UpdateActionList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::UpdateReplicationSetAction.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for UpdateReplicationSetAction
    class UpdateReplicationSetAction
      def self.build(input)
        data = {}
        case input
        when Types::UpdateReplicationSetAction::AddRegionAction
          data['addRegionAction'] = (Builders::AddRegionAction.build(input) unless input.nil?)
        when Types::UpdateReplicationSetAction::DeleteRegionAction
          data['deleteRegionAction'] = (Builders::DeleteRegionAction.build(input) unless input.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::UpdateReplicationSetAction"
        end

        data
      end
    end

    # Structure Builder for DeleteRegionAction
    class DeleteRegionAction
      def self.build(input)
        data = {}
        data['regionName'] = input[:region_name] unless input[:region_name].nil?
        data
      end
    end

    # Structure Builder for AddRegionAction
    class AddRegionAction
      def self.build(input)
        data = {}
        data['regionName'] = input[:region_name] unless input[:region_name].nil?
        data['sseKmsKeyId'] = input[:sse_kms_key_id] unless input[:sse_kms_key_id].nil?
        data
      end
    end

    # Operation Builder for UpdateResponsePlan
    class UpdateResponsePlan
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/updateResponsePlan')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        data['arn'] = input[:arn] unless input[:arn].nil?
        data['displayName'] = input[:display_name] unless input[:display_name].nil?
        data['incidentTemplateTitle'] = input[:incident_template_title] unless input[:incident_template_title].nil?
        data['incidentTemplateImpact'] = input[:incident_template_impact] unless input[:incident_template_impact].nil?
        data['incidentTemplateSummary'] = input[:incident_template_summary] unless input[:incident_template_summary].nil?
        data['incidentTemplateDedupeString'] = input[:incident_template_dedupe_string] unless input[:incident_template_dedupe_string].nil?
        data['incidentTemplateNotificationTargets'] = Builders::NotificationTargetSet.build(input[:incident_template_notification_targets]) unless input[:incident_template_notification_targets].nil?
        data['chatChannel'] = Builders::ChatChannel.build(input[:chat_channel]) unless input[:chat_channel].nil?
        data['engagements'] = Builders::EngagementSet.build(input[:engagements]).to_a unless input[:engagements].nil?
        data['actions'] = Builders::ActionsList.build(input[:actions]) unless input[:actions].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateTimelineEvent
    class UpdateTimelineEvent
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/updateTimelineEvent')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        data['incidentRecordArn'] = input[:incident_record_arn] unless input[:incident_record_arn].nil?
        data['eventId'] = input[:event_id] unless input[:event_id].nil?
        data['eventTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:event_time]).to_i unless input[:event_time].nil?
        data['eventType'] = input[:event_type] unless input[:event_type].nil?
        data['eventData'] = input[:event_data] unless input[:event_data].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
