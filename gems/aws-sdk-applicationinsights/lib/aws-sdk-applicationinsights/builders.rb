# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::ApplicationInsights
  module Builders

    # Operation Builder for CreateApplication
    class CreateApplication
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'EC2WindowsBarleyService.CreateApplication'
        data = {}
        data['ResourceGroupName'] = input[:resource_group_name] unless input[:resource_group_name].nil?
        data['OpsCenterEnabled'] = input[:ops_center_enabled] unless input[:ops_center_enabled].nil?
        data['CWEMonitorEnabled'] = input[:cwe_monitor_enabled] unless input[:cwe_monitor_enabled].nil?
        data['OpsItemSNSTopicArn'] = input[:ops_item_sns_topic_arn] unless input[:ops_item_sns_topic_arn].nil?
        data['Tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        data['AutoConfigEnabled'] = input[:auto_config_enabled] unless input[:auto_config_enabled].nil?
        data['AutoCreate'] = input[:auto_create] unless input[:auto_create].nil?
        data['GroupingType'] = input[:grouping_type] unless input[:grouping_type].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagList
    class TagList
      def self.build(input)
        data = []
        input.each do |element|
          data << Tag.build(element) unless element.nil?
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

    # Operation Builder for CreateComponent
    class CreateComponent
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'EC2WindowsBarleyService.CreateComponent'
        data = {}
        data['ResourceGroupName'] = input[:resource_group_name] unless input[:resource_group_name].nil?
        data['ComponentName'] = input[:component_name] unless input[:component_name].nil?
        data['ResourceList'] = ResourceList.build(input[:resource_list]) unless input[:resource_list].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ResourceList
    class ResourceList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateLogPattern
    class CreateLogPattern
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'EC2WindowsBarleyService.CreateLogPattern'
        data = {}
        data['ResourceGroupName'] = input[:resource_group_name] unless input[:resource_group_name].nil?
        data['PatternSetName'] = input[:pattern_set_name] unless input[:pattern_set_name].nil?
        data['PatternName'] = input[:pattern_name] unless input[:pattern_name].nil?
        data['Pattern'] = input[:pattern] unless input[:pattern].nil?
        data['Rank'] = input[:rank] unless input[:rank].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteApplication
    class DeleteApplication
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'EC2WindowsBarleyService.DeleteApplication'
        data = {}
        data['ResourceGroupName'] = input[:resource_group_name] unless input[:resource_group_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteComponent
    class DeleteComponent
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'EC2WindowsBarleyService.DeleteComponent'
        data = {}
        data['ResourceGroupName'] = input[:resource_group_name] unless input[:resource_group_name].nil?
        data['ComponentName'] = input[:component_name] unless input[:component_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteLogPattern
    class DeleteLogPattern
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'EC2WindowsBarleyService.DeleteLogPattern'
        data = {}
        data['ResourceGroupName'] = input[:resource_group_name] unless input[:resource_group_name].nil?
        data['PatternSetName'] = input[:pattern_set_name] unless input[:pattern_set_name].nil?
        data['PatternName'] = input[:pattern_name] unless input[:pattern_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeApplication
    class DescribeApplication
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'EC2WindowsBarleyService.DescribeApplication'
        data = {}
        data['ResourceGroupName'] = input[:resource_group_name] unless input[:resource_group_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeComponent
    class DescribeComponent
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'EC2WindowsBarleyService.DescribeComponent'
        data = {}
        data['ResourceGroupName'] = input[:resource_group_name] unless input[:resource_group_name].nil?
        data['ComponentName'] = input[:component_name] unless input[:component_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeComponentConfiguration
    class DescribeComponentConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'EC2WindowsBarleyService.DescribeComponentConfiguration'
        data = {}
        data['ResourceGroupName'] = input[:resource_group_name] unless input[:resource_group_name].nil?
        data['ComponentName'] = input[:component_name] unless input[:component_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeComponentConfigurationRecommendation
    class DescribeComponentConfigurationRecommendation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'EC2WindowsBarleyService.DescribeComponentConfigurationRecommendation'
        data = {}
        data['ResourceGroupName'] = input[:resource_group_name] unless input[:resource_group_name].nil?
        data['ComponentName'] = input[:component_name] unless input[:component_name].nil?
        data['Tier'] = input[:tier] unless input[:tier].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeLogPattern
    class DescribeLogPattern
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'EC2WindowsBarleyService.DescribeLogPattern'
        data = {}
        data['ResourceGroupName'] = input[:resource_group_name] unless input[:resource_group_name].nil?
        data['PatternSetName'] = input[:pattern_set_name] unless input[:pattern_set_name].nil?
        data['PatternName'] = input[:pattern_name] unless input[:pattern_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeObservation
    class DescribeObservation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'EC2WindowsBarleyService.DescribeObservation'
        data = {}
        data['ObservationId'] = input[:observation_id] unless input[:observation_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeProblem
    class DescribeProblem
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'EC2WindowsBarleyService.DescribeProblem'
        data = {}
        data['ProblemId'] = input[:problem_id] unless input[:problem_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeProblemObservations
    class DescribeProblemObservations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'EC2WindowsBarleyService.DescribeProblemObservations'
        data = {}
        data['ProblemId'] = input[:problem_id] unless input[:problem_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListApplications
    class ListApplications
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'EC2WindowsBarleyService.ListApplications'
        data = {}
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListComponents
    class ListComponents
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'EC2WindowsBarleyService.ListComponents'
        data = {}
        data['ResourceGroupName'] = input[:resource_group_name] unless input[:resource_group_name].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListConfigurationHistory
    class ListConfigurationHistory
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'EC2WindowsBarleyService.ListConfigurationHistory'
        data = {}
        data['ResourceGroupName'] = input[:resource_group_name] unless input[:resource_group_name].nil?
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:start_time]).to_i unless input[:start_time].nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:end_time]).to_i unless input[:end_time].nil?
        data['EventStatus'] = input[:event_status] unless input[:event_status].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListLogPatternSets
    class ListLogPatternSets
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'EC2WindowsBarleyService.ListLogPatternSets'
        data = {}
        data['ResourceGroupName'] = input[:resource_group_name] unless input[:resource_group_name].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListLogPatterns
    class ListLogPatterns
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'EC2WindowsBarleyService.ListLogPatterns'
        data = {}
        data['ResourceGroupName'] = input[:resource_group_name] unless input[:resource_group_name].nil?
        data['PatternSetName'] = input[:pattern_set_name] unless input[:pattern_set_name].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListProblems
    class ListProblems
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'EC2WindowsBarleyService.ListProblems'
        data = {}
        data['ResourceGroupName'] = input[:resource_group_name] unless input[:resource_group_name].nil?
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:start_time]).to_i unless input[:start_time].nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:end_time]).to_i unless input[:end_time].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['ComponentName'] = input[:component_name] unless input[:component_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'EC2WindowsBarleyService.ListTagsForResource'
        data = {}
        data['ResourceARN'] = input[:resource_arn] unless input[:resource_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'EC2WindowsBarleyService.TagResource'
        data = {}
        data['ResourceARN'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['Tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'EC2WindowsBarleyService.UntagResource'
        data = {}
        data['ResourceARN'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['TagKeys'] = TagKeyList.build(input[:tag_keys]) unless input[:tag_keys].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
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

    # Operation Builder for UpdateApplication
    class UpdateApplication
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'EC2WindowsBarleyService.UpdateApplication'
        data = {}
        data['ResourceGroupName'] = input[:resource_group_name] unless input[:resource_group_name].nil?
        data['OpsCenterEnabled'] = input[:ops_center_enabled] unless input[:ops_center_enabled].nil?
        data['CWEMonitorEnabled'] = input[:cwe_monitor_enabled] unless input[:cwe_monitor_enabled].nil?
        data['OpsItemSNSTopicArn'] = input[:ops_item_sns_topic_arn] unless input[:ops_item_sns_topic_arn].nil?
        data['RemoveSNSTopic'] = input[:remove_sns_topic] unless input[:remove_sns_topic].nil?
        data['AutoConfigEnabled'] = input[:auto_config_enabled] unless input[:auto_config_enabled].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateComponent
    class UpdateComponent
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'EC2WindowsBarleyService.UpdateComponent'
        data = {}
        data['ResourceGroupName'] = input[:resource_group_name] unless input[:resource_group_name].nil?
        data['ComponentName'] = input[:component_name] unless input[:component_name].nil?
        data['NewComponentName'] = input[:new_component_name] unless input[:new_component_name].nil?
        data['ResourceList'] = ResourceList.build(input[:resource_list]) unless input[:resource_list].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateComponentConfiguration
    class UpdateComponentConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'EC2WindowsBarleyService.UpdateComponentConfiguration'
        data = {}
        data['ResourceGroupName'] = input[:resource_group_name] unless input[:resource_group_name].nil?
        data['ComponentName'] = input[:component_name] unless input[:component_name].nil?
        data['Monitor'] = input[:monitor] unless input[:monitor].nil?
        data['Tier'] = input[:tier] unless input[:tier].nil?
        data['ComponentConfiguration'] = input[:component_configuration] unless input[:component_configuration].nil?
        data['AutoConfigEnabled'] = input[:auto_config_enabled] unless input[:auto_config_enabled].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateLogPattern
    class UpdateLogPattern
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'EC2WindowsBarleyService.UpdateLogPattern'
        data = {}
        data['ResourceGroupName'] = input[:resource_group_name] unless input[:resource_group_name].nil?
        data['PatternSetName'] = input[:pattern_set_name] unless input[:pattern_set_name].nil?
        data['PatternName'] = input[:pattern_name] unless input[:pattern_name].nil?
        data['Pattern'] = input[:pattern] unless input[:pattern].nil?
        data['Rank'] = input[:rank] unless input[:rank].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
