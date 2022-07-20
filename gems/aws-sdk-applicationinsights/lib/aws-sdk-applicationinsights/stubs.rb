# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ApplicationInsights
  module Stubs

    # Operation Stubber for CreateApplication
    class CreateApplication
      def self.default(visited=[])
        {
          application_info: ApplicationInfo.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ApplicationInfo'] = Stubs::ApplicationInfo.stub(stub[:application_info]) unless stub[:application_info].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for ApplicationInfo
    class ApplicationInfo
      def self.default(visited=[])
        return nil if visited.include?('ApplicationInfo')
        visited = visited + ['ApplicationInfo']
        {
          resource_group_name: 'resource_group_name',
          life_cycle: 'life_cycle',
          ops_item_sns_topic_arn: 'ops_item_sns_topic_arn',
          ops_center_enabled: false,
          cwe_monitor_enabled: false,
          remarks: 'remarks',
          auto_config_enabled: false,
          discovery_type: 'discovery_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::ApplicationInfo.new
        data = {}
        data['ResourceGroupName'] = stub[:resource_group_name] unless stub[:resource_group_name].nil?
        data['LifeCycle'] = stub[:life_cycle] unless stub[:life_cycle].nil?
        data['OpsItemSNSTopicArn'] = stub[:ops_item_sns_topic_arn] unless stub[:ops_item_sns_topic_arn].nil?
        data['OpsCenterEnabled'] = stub[:ops_center_enabled] unless stub[:ops_center_enabled].nil?
        data['CWEMonitorEnabled'] = stub[:cwe_monitor_enabled] unless stub[:cwe_monitor_enabled].nil?
        data['Remarks'] = stub[:remarks] unless stub[:remarks].nil?
        data['AutoConfigEnabled'] = stub[:auto_config_enabled] unless stub[:auto_config_enabled].nil?
        data['DiscoveryType'] = stub[:discovery_type] unless stub[:discovery_type].nil?
        data
      end
    end

    # Operation Stubber for CreateComponent
    class CreateComponent
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

    # Operation Stubber for CreateLogPattern
    class CreateLogPattern
      def self.default(visited=[])
        {
          log_pattern: LogPattern.default(visited),
          resource_group_name: 'resource_group_name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['LogPattern'] = Stubs::LogPattern.stub(stub[:log_pattern]) unless stub[:log_pattern].nil?
        data['ResourceGroupName'] = stub[:resource_group_name] unless stub[:resource_group_name].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for LogPattern
    class LogPattern
      def self.default(visited=[])
        return nil if visited.include?('LogPattern')
        visited = visited + ['LogPattern']
        {
          pattern_set_name: 'pattern_set_name',
          pattern_name: 'pattern_name',
          pattern: 'pattern',
          rank: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::LogPattern.new
        data = {}
        data['PatternSetName'] = stub[:pattern_set_name] unless stub[:pattern_set_name].nil?
        data['PatternName'] = stub[:pattern_name] unless stub[:pattern_name].nil?
        data['Pattern'] = stub[:pattern] unless stub[:pattern].nil?
        data['Rank'] = stub[:rank] unless stub[:rank].nil?
        data
      end
    end

    # Operation Stubber for DeleteApplication
    class DeleteApplication
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

    # Operation Stubber for DeleteComponent
    class DeleteComponent
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

    # Operation Stubber for DeleteLogPattern
    class DeleteLogPattern
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

    # Operation Stubber for DescribeApplication
    class DescribeApplication
      def self.default(visited=[])
        {
          application_info: ApplicationInfo.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ApplicationInfo'] = Stubs::ApplicationInfo.stub(stub[:application_info]) unless stub[:application_info].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeComponent
    class DescribeComponent
      def self.default(visited=[])
        {
          application_component: ApplicationComponent.default(visited),
          resource_list: ResourceList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ApplicationComponent'] = Stubs::ApplicationComponent.stub(stub[:application_component]) unless stub[:application_component].nil?
        data['ResourceList'] = Stubs::ResourceList.stub(stub[:resource_list]) unless stub[:resource_list].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ResourceList
    class ResourceList
      def self.default(visited=[])
        return nil if visited.include?('ResourceList')
        visited = visited + ['ResourceList']
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

    # Structure Stubber for ApplicationComponent
    class ApplicationComponent
      def self.default(visited=[])
        return nil if visited.include?('ApplicationComponent')
        visited = visited + ['ApplicationComponent']
        {
          component_name: 'component_name',
          component_remarks: 'component_remarks',
          resource_type: 'resource_type',
          os_type: 'os_type',
          tier: 'tier',
          monitor: false,
          detected_workload: DetectedWorkload.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ApplicationComponent.new
        data = {}
        data['ComponentName'] = stub[:component_name] unless stub[:component_name].nil?
        data['ComponentRemarks'] = stub[:component_remarks] unless stub[:component_remarks].nil?
        data['ResourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['OsType'] = stub[:os_type] unless stub[:os_type].nil?
        data['Tier'] = stub[:tier] unless stub[:tier].nil?
        data['Monitor'] = stub[:monitor] unless stub[:monitor].nil?
        data['DetectedWorkload'] = Stubs::DetectedWorkload.stub(stub[:detected_workload]) unless stub[:detected_workload].nil?
        data
      end
    end

    # Map Stubber for DetectedWorkload
    class DetectedWorkload
      def self.default(visited=[])
        return nil if visited.include?('DetectedWorkload')
        visited = visited + ['DetectedWorkload']
        {
          test_key: WorkloadMetaData.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::WorkloadMetaData.stub(value) unless value.nil?
        end
        data
      end
    end

    # Map Stubber for WorkloadMetaData
    class WorkloadMetaData
      def self.default(visited=[])
        return nil if visited.include?('WorkloadMetaData')
        visited = visited + ['WorkloadMetaData']
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

    # Operation Stubber for DescribeComponentConfiguration
    class DescribeComponentConfiguration
      def self.default(visited=[])
        {
          monitor: false,
          tier: 'tier',
          component_configuration: 'component_configuration',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Monitor'] = stub[:monitor] unless stub[:monitor].nil?
        data['Tier'] = stub[:tier] unless stub[:tier].nil?
        data['ComponentConfiguration'] = stub[:component_configuration] unless stub[:component_configuration].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeComponentConfigurationRecommendation
    class DescribeComponentConfigurationRecommendation
      def self.default(visited=[])
        {
          component_configuration: 'component_configuration',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ComponentConfiguration'] = stub[:component_configuration] unless stub[:component_configuration].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeLogPattern
    class DescribeLogPattern
      def self.default(visited=[])
        {
          resource_group_name: 'resource_group_name',
          log_pattern: LogPattern.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ResourceGroupName'] = stub[:resource_group_name] unless stub[:resource_group_name].nil?
        data['LogPattern'] = Stubs::LogPattern.stub(stub[:log_pattern]) unless stub[:log_pattern].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeObservation
    class DescribeObservation
      def self.default(visited=[])
        {
          observation: Observation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Observation'] = Stubs::Observation.stub(stub[:observation]) unless stub[:observation].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Observation
    class Observation
      def self.default(visited=[])
        return nil if visited.include?('Observation')
        visited = visited + ['Observation']
        {
          id: 'id',
          start_time: Time.now,
          end_time: Time.now,
          source_type: 'source_type',
          source_arn: 'source_arn',
          log_group: 'log_group',
          line_time: Time.now,
          log_text: 'log_text',
          log_filter: 'log_filter',
          metric_namespace: 'metric_namespace',
          metric_name: 'metric_name',
          unit: 'unit',
          value: 1.0,
          cloud_watch_event_id: 'cloud_watch_event_id',
          cloud_watch_event_source: 'cloud_watch_event_source',
          cloud_watch_event_detail_type: 'cloud_watch_event_detail_type',
          health_event_arn: 'health_event_arn',
          health_service: 'health_service',
          health_event_type_code: 'health_event_type_code',
          health_event_type_category: 'health_event_type_category',
          health_event_description: 'health_event_description',
          code_deploy_deployment_id: 'code_deploy_deployment_id',
          code_deploy_deployment_group: 'code_deploy_deployment_group',
          code_deploy_state: 'code_deploy_state',
          code_deploy_application: 'code_deploy_application',
          code_deploy_instance_group_id: 'code_deploy_instance_group_id',
          ec2_state: 'ec2_state',
          rds_event_categories: 'rds_event_categories',
          rds_event_message: 'rds_event_message',
          s3_event_name: 's3_event_name',
          states_execution_arn: 'states_execution_arn',
          states_arn: 'states_arn',
          states_status: 'states_status',
          states_input: 'states_input',
          ebs_event: 'ebs_event',
          ebs_result: 'ebs_result',
          ebs_cause: 'ebs_cause',
          ebs_request_id: 'ebs_request_id',
          x_ray_fault_percent: 1,
          x_ray_throttle_percent: 1,
          x_ray_error_percent: 1,
          x_ray_request_count: 1,
          x_ray_request_average_latency: 1,
          x_ray_node_name: 'x_ray_node_name',
          x_ray_node_type: 'x_ray_node_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::Observation.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_time]).to_i unless stub[:end_time].nil?
        data['SourceType'] = stub[:source_type] unless stub[:source_type].nil?
        data['SourceARN'] = stub[:source_arn] unless stub[:source_arn].nil?
        data['LogGroup'] = stub[:log_group] unless stub[:log_group].nil?
        data['LineTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:line_time]).to_i unless stub[:line_time].nil?
        data['LogText'] = stub[:log_text] unless stub[:log_text].nil?
        data['LogFilter'] = stub[:log_filter] unless stub[:log_filter].nil?
        data['MetricNamespace'] = stub[:metric_namespace] unless stub[:metric_namespace].nil?
        data['MetricName'] = stub[:metric_name] unless stub[:metric_name].nil?
        data['Unit'] = stub[:unit] unless stub[:unit].nil?
        data['Value'] = Hearth::NumberHelper.serialize(stub[:value])
        data['CloudWatchEventId'] = stub[:cloud_watch_event_id] unless stub[:cloud_watch_event_id].nil?
        data['CloudWatchEventSource'] = stub[:cloud_watch_event_source] unless stub[:cloud_watch_event_source].nil?
        data['CloudWatchEventDetailType'] = stub[:cloud_watch_event_detail_type] unless stub[:cloud_watch_event_detail_type].nil?
        data['HealthEventArn'] = stub[:health_event_arn] unless stub[:health_event_arn].nil?
        data['HealthService'] = stub[:health_service] unless stub[:health_service].nil?
        data['HealthEventTypeCode'] = stub[:health_event_type_code] unless stub[:health_event_type_code].nil?
        data['HealthEventTypeCategory'] = stub[:health_event_type_category] unless stub[:health_event_type_category].nil?
        data['HealthEventDescription'] = stub[:health_event_description] unless stub[:health_event_description].nil?
        data['CodeDeployDeploymentId'] = stub[:code_deploy_deployment_id] unless stub[:code_deploy_deployment_id].nil?
        data['CodeDeployDeploymentGroup'] = stub[:code_deploy_deployment_group] unless stub[:code_deploy_deployment_group].nil?
        data['CodeDeployState'] = stub[:code_deploy_state] unless stub[:code_deploy_state].nil?
        data['CodeDeployApplication'] = stub[:code_deploy_application] unless stub[:code_deploy_application].nil?
        data['CodeDeployInstanceGroupId'] = stub[:code_deploy_instance_group_id] unless stub[:code_deploy_instance_group_id].nil?
        data['Ec2State'] = stub[:ec2_state] unless stub[:ec2_state].nil?
        data['RdsEventCategories'] = stub[:rds_event_categories] unless stub[:rds_event_categories].nil?
        data['RdsEventMessage'] = stub[:rds_event_message] unless stub[:rds_event_message].nil?
        data['S3EventName'] = stub[:s3_event_name] unless stub[:s3_event_name].nil?
        data['StatesExecutionArn'] = stub[:states_execution_arn] unless stub[:states_execution_arn].nil?
        data['StatesArn'] = stub[:states_arn] unless stub[:states_arn].nil?
        data['StatesStatus'] = stub[:states_status] unless stub[:states_status].nil?
        data['StatesInput'] = stub[:states_input] unless stub[:states_input].nil?
        data['EbsEvent'] = stub[:ebs_event] unless stub[:ebs_event].nil?
        data['EbsResult'] = stub[:ebs_result] unless stub[:ebs_result].nil?
        data['EbsCause'] = stub[:ebs_cause] unless stub[:ebs_cause].nil?
        data['EbsRequestId'] = stub[:ebs_request_id] unless stub[:ebs_request_id].nil?
        data['XRayFaultPercent'] = stub[:x_ray_fault_percent] unless stub[:x_ray_fault_percent].nil?
        data['XRayThrottlePercent'] = stub[:x_ray_throttle_percent] unless stub[:x_ray_throttle_percent].nil?
        data['XRayErrorPercent'] = stub[:x_ray_error_percent] unless stub[:x_ray_error_percent].nil?
        data['XRayRequestCount'] = stub[:x_ray_request_count] unless stub[:x_ray_request_count].nil?
        data['XRayRequestAverageLatency'] = stub[:x_ray_request_average_latency] unless stub[:x_ray_request_average_latency].nil?
        data['XRayNodeName'] = stub[:x_ray_node_name] unless stub[:x_ray_node_name].nil?
        data['XRayNodeType'] = stub[:x_ray_node_type] unless stub[:x_ray_node_type].nil?
        data
      end
    end

    # Operation Stubber for DescribeProblem
    class DescribeProblem
      def self.default(visited=[])
        {
          problem: Problem.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Problem'] = Stubs::Problem.stub(stub[:problem]) unless stub[:problem].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Problem
    class Problem
      def self.default(visited=[])
        return nil if visited.include?('Problem')
        visited = visited + ['Problem']
        {
          id: 'id',
          title: 'title',
          insights: 'insights',
          status: 'status',
          affected_resource: 'affected_resource',
          start_time: Time.now,
          end_time: Time.now,
          severity_level: 'severity_level',
          resource_group_name: 'resource_group_name',
          feedback: Feedback.default(visited),
          recurring_count: 1,
          last_recurrence_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::Problem.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Title'] = stub[:title] unless stub[:title].nil?
        data['Insights'] = stub[:insights] unless stub[:insights].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['AffectedResource'] = stub[:affected_resource] unless stub[:affected_resource].nil?
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_time]).to_i unless stub[:end_time].nil?
        data['SeverityLevel'] = stub[:severity_level] unless stub[:severity_level].nil?
        data['ResourceGroupName'] = stub[:resource_group_name] unless stub[:resource_group_name].nil?
        data['Feedback'] = Stubs::Feedback.stub(stub[:feedback]) unless stub[:feedback].nil?
        data['RecurringCount'] = stub[:recurring_count] unless stub[:recurring_count].nil?
        data['LastRecurrenceTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_recurrence_time]).to_i unless stub[:last_recurrence_time].nil?
        data
      end
    end

    # Map Stubber for Feedback
    class Feedback
      def self.default(visited=[])
        return nil if visited.include?('Feedback')
        visited = visited + ['Feedback']
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

    # Operation Stubber for DescribeProblemObservations
    class DescribeProblemObservations
      def self.default(visited=[])
        {
          related_observations: RelatedObservations.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['RelatedObservations'] = Stubs::RelatedObservations.stub(stub[:related_observations]) unless stub[:related_observations].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for RelatedObservations
    class RelatedObservations
      def self.default(visited=[])
        return nil if visited.include?('RelatedObservations')
        visited = visited + ['RelatedObservations']
        {
          observation_list: ObservationList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RelatedObservations.new
        data = {}
        data['ObservationList'] = Stubs::ObservationList.stub(stub[:observation_list]) unless stub[:observation_list].nil?
        data
      end
    end

    # List Stubber for ObservationList
    class ObservationList
      def self.default(visited=[])
        return nil if visited.include?('ObservationList')
        visited = visited + ['ObservationList']
        [
          Observation.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Observation.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListApplications
    class ListApplications
      def self.default(visited=[])
        {
          application_info_list: ApplicationInfoList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ApplicationInfoList'] = Stubs::ApplicationInfoList.stub(stub[:application_info_list]) unless stub[:application_info_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ApplicationInfoList
    class ApplicationInfoList
      def self.default(visited=[])
        return nil if visited.include?('ApplicationInfoList')
        visited = visited + ['ApplicationInfoList']
        [
          ApplicationInfo.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ApplicationInfo.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListComponents
    class ListComponents
      def self.default(visited=[])
        {
          application_component_list: ApplicationComponentList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ApplicationComponentList'] = Stubs::ApplicationComponentList.stub(stub[:application_component_list]) unless stub[:application_component_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ApplicationComponentList
    class ApplicationComponentList
      def self.default(visited=[])
        return nil if visited.include?('ApplicationComponentList')
        visited = visited + ['ApplicationComponentList']
        [
          ApplicationComponent.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ApplicationComponent.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListConfigurationHistory
    class ListConfigurationHistory
      def self.default(visited=[])
        {
          event_list: ConfigurationEventList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['EventList'] = Stubs::ConfigurationEventList.stub(stub[:event_list]) unless stub[:event_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ConfigurationEventList
    class ConfigurationEventList
      def self.default(visited=[])
        return nil if visited.include?('ConfigurationEventList')
        visited = visited + ['ConfigurationEventList']
        [
          ConfigurationEvent.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ConfigurationEvent.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ConfigurationEvent
    class ConfigurationEvent
      def self.default(visited=[])
        return nil if visited.include?('ConfigurationEvent')
        visited = visited + ['ConfigurationEvent']
        {
          monitored_resource_arn: 'monitored_resource_arn',
          event_status: 'event_status',
          event_resource_type: 'event_resource_type',
          event_time: Time.now,
          event_detail: 'event_detail',
          event_resource_name: 'event_resource_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::ConfigurationEvent.new
        data = {}
        data['MonitoredResourceARN'] = stub[:monitored_resource_arn] unless stub[:monitored_resource_arn].nil?
        data['EventStatus'] = stub[:event_status] unless stub[:event_status].nil?
        data['EventResourceType'] = stub[:event_resource_type] unless stub[:event_resource_type].nil?
        data['EventTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:event_time]).to_i unless stub[:event_time].nil?
        data['EventDetail'] = stub[:event_detail] unless stub[:event_detail].nil?
        data['EventResourceName'] = stub[:event_resource_name] unless stub[:event_resource_name].nil?
        data
      end
    end

    # Operation Stubber for ListLogPatternSets
    class ListLogPatternSets
      def self.default(visited=[])
        {
          resource_group_name: 'resource_group_name',
          log_pattern_sets: LogPatternSetList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ResourceGroupName'] = stub[:resource_group_name] unless stub[:resource_group_name].nil?
        data['LogPatternSets'] = Stubs::LogPatternSetList.stub(stub[:log_pattern_sets]) unless stub[:log_pattern_sets].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for LogPatternSetList
    class LogPatternSetList
      def self.default(visited=[])
        return nil if visited.include?('LogPatternSetList')
        visited = visited + ['LogPatternSetList']
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

    # Operation Stubber for ListLogPatterns
    class ListLogPatterns
      def self.default(visited=[])
        {
          resource_group_name: 'resource_group_name',
          log_patterns: LogPatternList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ResourceGroupName'] = stub[:resource_group_name] unless stub[:resource_group_name].nil?
        data['LogPatterns'] = Stubs::LogPatternList.stub(stub[:log_patterns]) unless stub[:log_patterns].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for LogPatternList
    class LogPatternList
      def self.default(visited=[])
        return nil if visited.include?('LogPatternList')
        visited = visited + ['LogPatternList']
        [
          LogPattern.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::LogPattern.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListProblems
    class ListProblems
      def self.default(visited=[])
        {
          problem_list: ProblemList.default(visited),
          next_token: 'next_token',
          resource_group_name: 'resource_group_name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ProblemList'] = Stubs::ProblemList.stub(stub[:problem_list]) unless stub[:problem_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['ResourceGroupName'] = stub[:resource_group_name] unless stub[:resource_group_name].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ProblemList
    class ProblemList
      def self.default(visited=[])
        return nil if visited.include?('ProblemList')
        visited = visited + ['ProblemList']
        [
          Problem.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Problem.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: TagList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Tags'] = Stubs::TagList.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for TagList
    class TagList
      def self.default(visited=[])
        return nil if visited.include?('TagList')
        visited = visited + ['TagList']
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

    # Operation Stubber for UpdateApplication
    class UpdateApplication
      def self.default(visited=[])
        {
          application_info: ApplicationInfo.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ApplicationInfo'] = Stubs::ApplicationInfo.stub(stub[:application_info]) unless stub[:application_info].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateComponent
    class UpdateComponent
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

    # Operation Stubber for UpdateComponentConfiguration
    class UpdateComponentConfiguration
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

    # Operation Stubber for UpdateLogPattern
    class UpdateLogPattern
      def self.default(visited=[])
        {
          resource_group_name: 'resource_group_name',
          log_pattern: LogPattern.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ResourceGroupName'] = stub[:resource_group_name] unless stub[:resource_group_name].nil?
        data['LogPattern'] = Stubs::LogPattern.stub(stub[:log_pattern]) unless stub[:log_pattern].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
