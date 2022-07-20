# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Inspector
  module Builders

    # Operation Builder for AddAttributesToFindings
    class AddAttributesToFindings
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'InspectorService.AddAttributesToFindings'
        data = {}
        data['findingArns'] = Builders::AddRemoveAttributesFindingArnList.build(input[:finding_arns]) unless input[:finding_arns].nil?
        data['attributes'] = Builders::UserAttributeList.build(input[:attributes]) unless input[:attributes].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for UserAttributeList
    class UserAttributeList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Attribute.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Attribute
    class Attribute
      def self.build(input)
        data = {}
        data['key'] = input[:key] unless input[:key].nil?
        data['value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # List Builder for AddRemoveAttributesFindingArnList
    class AddRemoveAttributesFindingArnList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateAssessmentTarget
    class CreateAssessmentTarget
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'InspectorService.CreateAssessmentTarget'
        data = {}
        data['assessmentTargetName'] = input[:assessment_target_name] unless input[:assessment_target_name].nil?
        data['resourceGroupArn'] = input[:resource_group_arn] unless input[:resource_group_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateAssessmentTemplate
    class CreateAssessmentTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'InspectorService.CreateAssessmentTemplate'
        data = {}
        data['assessmentTargetArn'] = input[:assessment_target_arn] unless input[:assessment_target_arn].nil?
        data['assessmentTemplateName'] = input[:assessment_template_name] unless input[:assessment_template_name].nil?
        data['durationInSeconds'] = input[:duration_in_seconds] unless input[:duration_in_seconds].nil?
        data['rulesPackageArns'] = Builders::AssessmentTemplateRulesPackageArnList.build(input[:rules_package_arns]) unless input[:rules_package_arns].nil?
        data['userAttributesForFindings'] = Builders::UserAttributeList.build(input[:user_attributes_for_findings]) unless input[:user_attributes_for_findings].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for AssessmentTemplateRulesPackageArnList
    class AssessmentTemplateRulesPackageArnList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateExclusionsPreview
    class CreateExclusionsPreview
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'InspectorService.CreateExclusionsPreview'
        data = {}
        data['assessmentTemplateArn'] = input[:assessment_template_arn] unless input[:assessment_template_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateResourceGroup
    class CreateResourceGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'InspectorService.CreateResourceGroup'
        data = {}
        data['resourceGroupTags'] = Builders::ResourceGroupTags.build(input[:resource_group_tags]) unless input[:resource_group_tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ResourceGroupTags
    class ResourceGroupTags
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ResourceGroupTag.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ResourceGroupTag
    class ResourceGroupTag
      def self.build(input)
        data = {}
        data['key'] = input[:key] unless input[:key].nil?
        data['value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for DeleteAssessmentRun
    class DeleteAssessmentRun
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'InspectorService.DeleteAssessmentRun'
        data = {}
        data['assessmentRunArn'] = input[:assessment_run_arn] unless input[:assessment_run_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteAssessmentTarget
    class DeleteAssessmentTarget
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'InspectorService.DeleteAssessmentTarget'
        data = {}
        data['assessmentTargetArn'] = input[:assessment_target_arn] unless input[:assessment_target_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteAssessmentTemplate
    class DeleteAssessmentTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'InspectorService.DeleteAssessmentTemplate'
        data = {}
        data['assessmentTemplateArn'] = input[:assessment_template_arn] unless input[:assessment_template_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeAssessmentRuns
    class DescribeAssessmentRuns
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'InspectorService.DescribeAssessmentRuns'
        data = {}
        data['assessmentRunArns'] = Builders::BatchDescribeArnList.build(input[:assessment_run_arns]) unless input[:assessment_run_arns].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for BatchDescribeArnList
    class BatchDescribeArnList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeAssessmentTargets
    class DescribeAssessmentTargets
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'InspectorService.DescribeAssessmentTargets'
        data = {}
        data['assessmentTargetArns'] = Builders::BatchDescribeArnList.build(input[:assessment_target_arns]) unless input[:assessment_target_arns].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeAssessmentTemplates
    class DescribeAssessmentTemplates
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'InspectorService.DescribeAssessmentTemplates'
        data = {}
        data['assessmentTemplateArns'] = Builders::BatchDescribeArnList.build(input[:assessment_template_arns]) unless input[:assessment_template_arns].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeCrossAccountAccessRole
    class DescribeCrossAccountAccessRole
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'InspectorService.DescribeCrossAccountAccessRole'
        data = {}
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeExclusions
    class DescribeExclusions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'InspectorService.DescribeExclusions'
        data = {}
        data['exclusionArns'] = Builders::BatchDescribeExclusionsArnList.build(input[:exclusion_arns]) unless input[:exclusion_arns].nil?
        data['locale'] = input[:locale] unless input[:locale].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for BatchDescribeExclusionsArnList
    class BatchDescribeExclusionsArnList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeFindings
    class DescribeFindings
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'InspectorService.DescribeFindings'
        data = {}
        data['findingArns'] = Builders::BatchDescribeArnList.build(input[:finding_arns]) unless input[:finding_arns].nil?
        data['locale'] = input[:locale] unless input[:locale].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeResourceGroups
    class DescribeResourceGroups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'InspectorService.DescribeResourceGroups'
        data = {}
        data['resourceGroupArns'] = Builders::BatchDescribeArnList.build(input[:resource_group_arns]) unless input[:resource_group_arns].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeRulesPackages
    class DescribeRulesPackages
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'InspectorService.DescribeRulesPackages'
        data = {}
        data['rulesPackageArns'] = Builders::BatchDescribeArnList.build(input[:rules_package_arns]) unless input[:rules_package_arns].nil?
        data['locale'] = input[:locale] unless input[:locale].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetAssessmentReport
    class GetAssessmentReport
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'InspectorService.GetAssessmentReport'
        data = {}
        data['assessmentRunArn'] = input[:assessment_run_arn] unless input[:assessment_run_arn].nil?
        data['reportFileFormat'] = input[:report_file_format] unless input[:report_file_format].nil?
        data['reportType'] = input[:report_type] unless input[:report_type].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetExclusionsPreview
    class GetExclusionsPreview
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'InspectorService.GetExclusionsPreview'
        data = {}
        data['assessmentTemplateArn'] = input[:assessment_template_arn] unless input[:assessment_template_arn].nil?
        data['previewToken'] = input[:preview_token] unless input[:preview_token].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['locale'] = input[:locale] unless input[:locale].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetTelemetryMetadata
    class GetTelemetryMetadata
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'InspectorService.GetTelemetryMetadata'
        data = {}
        data['assessmentRunArn'] = input[:assessment_run_arn] unless input[:assessment_run_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListAssessmentRunAgents
    class ListAssessmentRunAgents
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'InspectorService.ListAssessmentRunAgents'
        data = {}
        data['assessmentRunArn'] = input[:assessment_run_arn] unless input[:assessment_run_arn].nil?
        data['filter'] = Builders::AgentFilter.build(input[:filter]) unless input[:filter].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for AgentFilter
    class AgentFilter
      def self.build(input)
        data = {}
        data['agentHealths'] = Builders::AgentHealthList.build(input[:agent_healths]) unless input[:agent_healths].nil?
        data['agentHealthCodes'] = Builders::AgentHealthCodeList.build(input[:agent_health_codes]) unless input[:agent_health_codes].nil?
        data
      end
    end

    # List Builder for AgentHealthCodeList
    class AgentHealthCodeList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for AgentHealthList
    class AgentHealthList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ListAssessmentRuns
    class ListAssessmentRuns
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'InspectorService.ListAssessmentRuns'
        data = {}
        data['assessmentTemplateArns'] = Builders::ListParentArnList.build(input[:assessment_template_arns]) unless input[:assessment_template_arns].nil?
        data['filter'] = Builders::AssessmentRunFilter.build(input[:filter]) unless input[:filter].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for AssessmentRunFilter
    class AssessmentRunFilter
      def self.build(input)
        data = {}
        data['namePattern'] = input[:name_pattern] unless input[:name_pattern].nil?
        data['states'] = Builders::AssessmentRunStateList.build(input[:states]) unless input[:states].nil?
        data['durationRange'] = Builders::DurationRange.build(input[:duration_range]) unless input[:duration_range].nil?
        data['rulesPackageArns'] = Builders::FilterRulesPackageArnList.build(input[:rules_package_arns]) unless input[:rules_package_arns].nil?
        data['startTimeRange'] = Builders::TimestampRange.build(input[:start_time_range]) unless input[:start_time_range].nil?
        data['completionTimeRange'] = Builders::TimestampRange.build(input[:completion_time_range]) unless input[:completion_time_range].nil?
        data['stateChangeTimeRange'] = Builders::TimestampRange.build(input[:state_change_time_range]) unless input[:state_change_time_range].nil?
        data
      end
    end

    # Structure Builder for TimestampRange
    class TimestampRange
      def self.build(input)
        data = {}
        data['beginDate'] = Hearth::TimeHelper.to_epoch_seconds(input[:begin_date]).to_i unless input[:begin_date].nil?
        data['endDate'] = Hearth::TimeHelper.to_epoch_seconds(input[:end_date]).to_i unless input[:end_date].nil?
        data
      end
    end

    # List Builder for FilterRulesPackageArnList
    class FilterRulesPackageArnList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for DurationRange
    class DurationRange
      def self.build(input)
        data = {}
        data['minSeconds'] = input[:min_seconds] unless input[:min_seconds].nil?
        data['maxSeconds'] = input[:max_seconds] unless input[:max_seconds].nil?
        data
      end
    end

    # List Builder for AssessmentRunStateList
    class AssessmentRunStateList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for ListParentArnList
    class ListParentArnList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ListAssessmentTargets
    class ListAssessmentTargets
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'InspectorService.ListAssessmentTargets'
        data = {}
        data['filter'] = Builders::AssessmentTargetFilter.build(input[:filter]) unless input[:filter].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for AssessmentTargetFilter
    class AssessmentTargetFilter
      def self.build(input)
        data = {}
        data['assessmentTargetNamePattern'] = input[:assessment_target_name_pattern] unless input[:assessment_target_name_pattern].nil?
        data
      end
    end

    # Operation Builder for ListAssessmentTemplates
    class ListAssessmentTemplates
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'InspectorService.ListAssessmentTemplates'
        data = {}
        data['assessmentTargetArns'] = Builders::ListParentArnList.build(input[:assessment_target_arns]) unless input[:assessment_target_arns].nil?
        data['filter'] = Builders::AssessmentTemplateFilter.build(input[:filter]) unless input[:filter].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for AssessmentTemplateFilter
    class AssessmentTemplateFilter
      def self.build(input)
        data = {}
        data['namePattern'] = input[:name_pattern] unless input[:name_pattern].nil?
        data['durationRange'] = Builders::DurationRange.build(input[:duration_range]) unless input[:duration_range].nil?
        data['rulesPackageArns'] = Builders::FilterRulesPackageArnList.build(input[:rules_package_arns]) unless input[:rules_package_arns].nil?
        data
      end
    end

    # Operation Builder for ListEventSubscriptions
    class ListEventSubscriptions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'InspectorService.ListEventSubscriptions'
        data = {}
        data['resourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListExclusions
    class ListExclusions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'InspectorService.ListExclusions'
        data = {}
        data['assessmentRunArn'] = input[:assessment_run_arn] unless input[:assessment_run_arn].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListFindings
    class ListFindings
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'InspectorService.ListFindings'
        data = {}
        data['assessmentRunArns'] = Builders::ListParentArnList.build(input[:assessment_run_arns]) unless input[:assessment_run_arns].nil?
        data['filter'] = Builders::FindingFilter.build(input[:filter]) unless input[:filter].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for FindingFilter
    class FindingFilter
      def self.build(input)
        data = {}
        data['agentIds'] = Builders::AgentIdList.build(input[:agent_ids]) unless input[:agent_ids].nil?
        data['autoScalingGroups'] = Builders::AutoScalingGroupList.build(input[:auto_scaling_groups]) unless input[:auto_scaling_groups].nil?
        data['ruleNames'] = Builders::RuleNameList.build(input[:rule_names]) unless input[:rule_names].nil?
        data['severities'] = Builders::SeverityList.build(input[:severities]) unless input[:severities].nil?
        data['rulesPackageArns'] = Builders::FilterRulesPackageArnList.build(input[:rules_package_arns]) unless input[:rules_package_arns].nil?
        data['attributes'] = Builders::AttributeList.build(input[:attributes]) unless input[:attributes].nil?
        data['userAttributes'] = Builders::AttributeList.build(input[:user_attributes]) unless input[:user_attributes].nil?
        data['creationTimeRange'] = Builders::TimestampRange.build(input[:creation_time_range]) unless input[:creation_time_range].nil?
        data
      end
    end

    # List Builder for AttributeList
    class AttributeList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Attribute.build(element) unless element.nil?
        end
        data
      end
    end

    # List Builder for SeverityList
    class SeverityList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for RuleNameList
    class RuleNameList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for AutoScalingGroupList
    class AutoScalingGroupList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for AgentIdList
    class AgentIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ListRulesPackages
    class ListRulesPackages
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'InspectorService.ListRulesPackages'
        data = {}
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'InspectorService.ListTagsForResource'
        data = {}
        data['resourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PreviewAgents
    class PreviewAgents
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'InspectorService.PreviewAgents'
        data = {}
        data['previewAgentsArn'] = input[:preview_agents_arn] unless input[:preview_agents_arn].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RegisterCrossAccountAccessRole
    class RegisterCrossAccountAccessRole
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'InspectorService.RegisterCrossAccountAccessRole'
        data = {}
        data['roleArn'] = input[:role_arn] unless input[:role_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RemoveAttributesFromFindings
    class RemoveAttributesFromFindings
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'InspectorService.RemoveAttributesFromFindings'
        data = {}
        data['findingArns'] = Builders::AddRemoveAttributesFindingArnList.build(input[:finding_arns]) unless input[:finding_arns].nil?
        data['attributeKeys'] = Builders::UserAttributeKeyList.build(input[:attribute_keys]) unless input[:attribute_keys].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for UserAttributeKeyList
    class UserAttributeKeyList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for SetTagsForResource
    class SetTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'InspectorService.SetTagsForResource'
        data = {}
        data['resourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
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
        data['key'] = input[:key] unless input[:key].nil?
        data['value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for StartAssessmentRun
    class StartAssessmentRun
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'InspectorService.StartAssessmentRun'
        data = {}
        data['assessmentTemplateArn'] = input[:assessment_template_arn] unless input[:assessment_template_arn].nil?
        data['assessmentRunName'] = input[:assessment_run_name] unless input[:assessment_run_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StopAssessmentRun
    class StopAssessmentRun
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'InspectorService.StopAssessmentRun'
        data = {}
        data['assessmentRunArn'] = input[:assessment_run_arn] unless input[:assessment_run_arn].nil?
        data['stopAction'] = input[:stop_action] unless input[:stop_action].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for SubscribeToEvent
    class SubscribeToEvent
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'InspectorService.SubscribeToEvent'
        data = {}
        data['resourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['event'] = input[:event] unless input[:event].nil?
        data['topicArn'] = input[:topic_arn] unless input[:topic_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UnsubscribeFromEvent
    class UnsubscribeFromEvent
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'InspectorService.UnsubscribeFromEvent'
        data = {}
        data['resourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['event'] = input[:event] unless input[:event].nil?
        data['topicArn'] = input[:topic_arn] unless input[:topic_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateAssessmentTarget
    class UpdateAssessmentTarget
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'InspectorService.UpdateAssessmentTarget'
        data = {}
        data['assessmentTargetArn'] = input[:assessment_target_arn] unless input[:assessment_target_arn].nil?
        data['assessmentTargetName'] = input[:assessment_target_name] unless input[:assessment_target_name].nil?
        data['resourceGroupArn'] = input[:resource_group_arn] unless input[:resource_group_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
