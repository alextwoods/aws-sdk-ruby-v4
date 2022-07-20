# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ApplicationInsights
  module Parsers

    # Operation Parser for CreateApplication
    class CreateApplication
      def self.parse(http_resp)
        data = Types::CreateApplicationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.application_info = (ApplicationInfo.parse(map['ApplicationInfo']) unless map['ApplicationInfo'].nil?)
        data
      end
    end

    class ApplicationInfo
      def self.parse(map)
        data = Types::ApplicationInfo.new
        data.resource_group_name = map['ResourceGroupName']
        data.life_cycle = map['LifeCycle']
        data.ops_item_sns_topic_arn = map['OpsItemSNSTopicArn']
        data.ops_center_enabled = map['OpsCenterEnabled']
        data.cwe_monitor_enabled = map['CWEMonitorEnabled']
        data.remarks = map['Remarks']
        data.auto_config_enabled = map['AutoConfigEnabled']
        data.discovery_type = map['DiscoveryType']
        return data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InternalServerException
    class InternalServerException
      def self.parse(http_resp)
        data = Types::InternalServerException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ResourceInUseException
    class ResourceInUseException
      def self.parse(http_resp)
        data = Types::ResourceInUseException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for TagsAlreadyExistException
    class TagsAlreadyExistException
      def self.parse(http_resp)
        data = Types::TagsAlreadyExistException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateComponent
    class CreateComponent
      def self.parse(http_resp)
        data = Types::CreateComponentOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for CreateLogPattern
    class CreateLogPattern
      def self.parse(http_resp)
        data = Types::CreateLogPatternOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.log_pattern = (LogPattern.parse(map['LogPattern']) unless map['LogPattern'].nil?)
        data.resource_group_name = map['ResourceGroupName']
        data
      end
    end

    class LogPattern
      def self.parse(map)
        data = Types::LogPattern.new
        data.pattern_set_name = map['PatternSetName']
        data.pattern_name = map['PatternName']
        data.pattern = map['Pattern']
        data.rank = map['Rank']
        return data
      end
    end

    # Operation Parser for DeleteApplication
    class DeleteApplication
      def self.parse(http_resp)
        data = Types::DeleteApplicationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for BadRequestException
    class BadRequestException
      def self.parse(http_resp)
        data = Types::BadRequestException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DeleteComponent
    class DeleteComponent
      def self.parse(http_resp)
        data = Types::DeleteComponentOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteLogPattern
    class DeleteLogPattern
      def self.parse(http_resp)
        data = Types::DeleteLogPatternOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DescribeApplication
    class DescribeApplication
      def self.parse(http_resp)
        data = Types::DescribeApplicationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.application_info = (ApplicationInfo.parse(map['ApplicationInfo']) unless map['ApplicationInfo'].nil?)
        data
      end
    end

    # Operation Parser for DescribeComponent
    class DescribeComponent
      def self.parse(http_resp)
        data = Types::DescribeComponentOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.application_component = (ApplicationComponent.parse(map['ApplicationComponent']) unless map['ApplicationComponent'].nil?)
        data.resource_list = (ResourceList.parse(map['ResourceList']) unless map['ResourceList'].nil?)
        data
      end
    end

    class ResourceList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class ApplicationComponent
      def self.parse(map)
        data = Types::ApplicationComponent.new
        data.component_name = map['ComponentName']
        data.component_remarks = map['ComponentRemarks']
        data.resource_type = map['ResourceType']
        data.os_type = map['OsType']
        data.tier = map['Tier']
        data.monitor = map['Monitor']
        data.detected_workload = (DetectedWorkload.parse(map['DetectedWorkload']) unless map['DetectedWorkload'].nil?)
        return data
      end
    end

    class DetectedWorkload
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = WorkloadMetaData.parse(value) unless value.nil?
        end
        data
      end
    end

    class WorkloadMetaData
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for DescribeComponentConfiguration
    class DescribeComponentConfiguration
      def self.parse(http_resp)
        data = Types::DescribeComponentConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.monitor = map['Monitor']
        data.tier = map['Tier']
        data.component_configuration = map['ComponentConfiguration']
        data
      end
    end

    # Operation Parser for DescribeComponentConfigurationRecommendation
    class DescribeComponentConfigurationRecommendation
      def self.parse(http_resp)
        data = Types::DescribeComponentConfigurationRecommendationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.component_configuration = map['ComponentConfiguration']
        data
      end
    end

    # Operation Parser for DescribeLogPattern
    class DescribeLogPattern
      def self.parse(http_resp)
        data = Types::DescribeLogPatternOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.resource_group_name = map['ResourceGroupName']
        data.log_pattern = (LogPattern.parse(map['LogPattern']) unless map['LogPattern'].nil?)
        data
      end
    end

    # Operation Parser for DescribeObservation
    class DescribeObservation
      def self.parse(http_resp)
        data = Types::DescribeObservationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.observation = (Observation.parse(map['Observation']) unless map['Observation'].nil?)
        data
      end
    end

    class Observation
      def self.parse(map)
        data = Types::Observation.new
        data.id = map['Id']
        data.start_time = Time.at(map['StartTime'].to_i) if map['StartTime']
        data.end_time = Time.at(map['EndTime'].to_i) if map['EndTime']
        data.source_type = map['SourceType']
        data.source_arn = map['SourceARN']
        data.log_group = map['LogGroup']
        data.line_time = Time.at(map['LineTime'].to_i) if map['LineTime']
        data.log_text = map['LogText']
        data.log_filter = map['LogFilter']
        data.metric_namespace = map['MetricNamespace']
        data.metric_name = map['MetricName']
        data.unit = map['Unit']
        data.value = Hearth::NumberHelper.deserialize(map['Value'])
        data.cloud_watch_event_id = map['CloudWatchEventId']
        data.cloud_watch_event_source = map['CloudWatchEventSource']
        data.cloud_watch_event_detail_type = map['CloudWatchEventDetailType']
        data.health_event_arn = map['HealthEventArn']
        data.health_service = map['HealthService']
        data.health_event_type_code = map['HealthEventTypeCode']
        data.health_event_type_category = map['HealthEventTypeCategory']
        data.health_event_description = map['HealthEventDescription']
        data.code_deploy_deployment_id = map['CodeDeployDeploymentId']
        data.code_deploy_deployment_group = map['CodeDeployDeploymentGroup']
        data.code_deploy_state = map['CodeDeployState']
        data.code_deploy_application = map['CodeDeployApplication']
        data.code_deploy_instance_group_id = map['CodeDeployInstanceGroupId']
        data.ec2_state = map['Ec2State']
        data.rds_event_categories = map['RdsEventCategories']
        data.rds_event_message = map['RdsEventMessage']
        data.s3_event_name = map['S3EventName']
        data.states_execution_arn = map['StatesExecutionArn']
        data.states_arn = map['StatesArn']
        data.states_status = map['StatesStatus']
        data.states_input = map['StatesInput']
        data.ebs_event = map['EbsEvent']
        data.ebs_result = map['EbsResult']
        data.ebs_cause = map['EbsCause']
        data.ebs_request_id = map['EbsRequestId']
        data.x_ray_fault_percent = map['XRayFaultPercent']
        data.x_ray_throttle_percent = map['XRayThrottlePercent']
        data.x_ray_error_percent = map['XRayErrorPercent']
        data.x_ray_request_count = map['XRayRequestCount']
        data.x_ray_request_average_latency = map['XRayRequestAverageLatency']
        data.x_ray_node_name = map['XRayNodeName']
        data.x_ray_node_type = map['XRayNodeType']
        return data
      end
    end

    # Operation Parser for DescribeProblem
    class DescribeProblem
      def self.parse(http_resp)
        data = Types::DescribeProblemOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.problem = (Problem.parse(map['Problem']) unless map['Problem'].nil?)
        data
      end
    end

    class Problem
      def self.parse(map)
        data = Types::Problem.new
        data.id = map['Id']
        data.title = map['Title']
        data.insights = map['Insights']
        data.status = map['Status']
        data.affected_resource = map['AffectedResource']
        data.start_time = Time.at(map['StartTime'].to_i) if map['StartTime']
        data.end_time = Time.at(map['EndTime'].to_i) if map['EndTime']
        data.severity_level = map['SeverityLevel']
        data.resource_group_name = map['ResourceGroupName']
        data.feedback = (Feedback.parse(map['Feedback']) unless map['Feedback'].nil?)
        data.recurring_count = map['RecurringCount']
        data.last_recurrence_time = Time.at(map['LastRecurrenceTime'].to_i) if map['LastRecurrenceTime']
        return data
      end
    end

    class Feedback
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for DescribeProblemObservations
    class DescribeProblemObservations
      def self.parse(http_resp)
        data = Types::DescribeProblemObservationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.related_observations = (RelatedObservations.parse(map['RelatedObservations']) unless map['RelatedObservations'].nil?)
        data
      end
    end

    class RelatedObservations
      def self.parse(map)
        data = Types::RelatedObservations.new
        data.observation_list = (ObservationList.parse(map['ObservationList']) unless map['ObservationList'].nil?)
        return data
      end
    end

    class ObservationList
      def self.parse(list)
        list.map do |value|
          Observation.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListApplications
    class ListApplications
      def self.parse(http_resp)
        data = Types::ListApplicationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.application_info_list = (ApplicationInfoList.parse(map['ApplicationInfoList']) unless map['ApplicationInfoList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ApplicationInfoList
      def self.parse(list)
        list.map do |value|
          ApplicationInfo.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListComponents
    class ListComponents
      def self.parse(http_resp)
        data = Types::ListComponentsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.application_component_list = (ApplicationComponentList.parse(map['ApplicationComponentList']) unless map['ApplicationComponentList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ApplicationComponentList
      def self.parse(list)
        list.map do |value|
          ApplicationComponent.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListConfigurationHistory
    class ListConfigurationHistory
      def self.parse(http_resp)
        data = Types::ListConfigurationHistoryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.event_list = (ConfigurationEventList.parse(map['EventList']) unless map['EventList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ConfigurationEventList
      def self.parse(list)
        list.map do |value|
          ConfigurationEvent.parse(value) unless value.nil?
        end
      end
    end

    class ConfigurationEvent
      def self.parse(map)
        data = Types::ConfigurationEvent.new
        data.monitored_resource_arn = map['MonitoredResourceARN']
        data.event_status = map['EventStatus']
        data.event_resource_type = map['EventResourceType']
        data.event_time = Time.at(map['EventTime'].to_i) if map['EventTime']
        data.event_detail = map['EventDetail']
        data.event_resource_name = map['EventResourceName']
        return data
      end
    end

    # Operation Parser for ListLogPatternSets
    class ListLogPatternSets
      def self.parse(http_resp)
        data = Types::ListLogPatternSetsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.resource_group_name = map['ResourceGroupName']
        data.log_pattern_sets = (LogPatternSetList.parse(map['LogPatternSets']) unless map['LogPatternSets'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class LogPatternSetList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for ListLogPatterns
    class ListLogPatterns
      def self.parse(http_resp)
        data = Types::ListLogPatternsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.resource_group_name = map['ResourceGroupName']
        data.log_patterns = (LogPatternList.parse(map['LogPatterns']) unless map['LogPatterns'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class LogPatternList
      def self.parse(list)
        list.map do |value|
          LogPattern.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListProblems
    class ListProblems
      def self.parse(http_resp)
        data = Types::ListProblemsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.problem_list = (ProblemList.parse(map['ProblemList']) unless map['ProblemList'].nil?)
        data.next_token = map['NextToken']
        data.resource_group_name = map['ResourceGroupName']
        data
      end
    end

    class ProblemList
      def self.parse(list)
        list.map do |value|
          Problem.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tags = (TagList.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    class TagList
      def self.parse(list)
        list.map do |value|
          Tag.parse(value) unless value.nil?
        end
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

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for TooManyTagsException
    class TooManyTagsException
      def self.parse(http_resp)
        data = Types::TooManyTagsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.resource_name = map['ResourceName']
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateApplication
    class UpdateApplication
      def self.parse(http_resp)
        data = Types::UpdateApplicationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.application_info = (ApplicationInfo.parse(map['ApplicationInfo']) unless map['ApplicationInfo'].nil?)
        data
      end
    end

    # Operation Parser for UpdateComponent
    class UpdateComponent
      def self.parse(http_resp)
        data = Types::UpdateComponentOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateComponentConfiguration
    class UpdateComponentConfiguration
      def self.parse(http_resp)
        data = Types::UpdateComponentConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateLogPattern
    class UpdateLogPattern
      def self.parse(http_resp)
        data = Types::UpdateLogPatternOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.resource_group_name = map['ResourceGroupName']
        data.log_pattern = (LogPattern.parse(map['LogPattern']) unless map['LogPattern'].nil?)
        data
      end
    end
  end
end
