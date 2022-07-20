# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::Inspector
  module Stubs

    # Operation Stubber for AddAttributesToFindings
    class AddAttributesToFindings
      def self.default(visited=[])
        {
          failed_items: FailedItems.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['failedItems'] = FailedItems.stub(stub[:failed_items]) unless stub[:failed_items].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Map Stubber for FailedItems
    class FailedItems
      def self.default(visited=[])
        return nil if visited.include?('FailedItems')
        visited = visited + ['FailedItems']
        {
          test_key: FailedItemDetails.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = FailedItemDetails.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for FailedItemDetails
    class FailedItemDetails
      def self.default(visited=[])
        return nil if visited.include?('FailedItemDetails')
        visited = visited + ['FailedItemDetails']
        {
          failure_code: 'failure_code',
          retryable: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::FailedItemDetails.new
        data = {}
        data['failureCode'] = stub[:failure_code] unless stub[:failure_code].nil?
        data['retryable'] = stub[:retryable] unless stub[:retryable].nil?
        data
      end
    end

    # Operation Stubber for CreateAssessmentTarget
    class CreateAssessmentTarget
      def self.default(visited=[])
        {
          assessment_target_arn: 'assessment_target_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['assessmentTargetArn'] = stub[:assessment_target_arn] unless stub[:assessment_target_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateAssessmentTemplate
    class CreateAssessmentTemplate
      def self.default(visited=[])
        {
          assessment_template_arn: 'assessment_template_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['assessmentTemplateArn'] = stub[:assessment_template_arn] unless stub[:assessment_template_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateExclusionsPreview
    class CreateExclusionsPreview
      def self.default(visited=[])
        {
          preview_token: 'preview_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['previewToken'] = stub[:preview_token] unless stub[:preview_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateResourceGroup
    class CreateResourceGroup
      def self.default(visited=[])
        {
          resource_group_arn: 'resource_group_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['resourceGroupArn'] = stub[:resource_group_arn] unless stub[:resource_group_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteAssessmentRun
    class DeleteAssessmentRun
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteAssessmentTarget
    class DeleteAssessmentTarget
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteAssessmentTemplate
    class DeleteAssessmentTemplate
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeAssessmentRuns
    class DescribeAssessmentRuns
      def self.default(visited=[])
        {
          assessment_runs: AssessmentRunList.default(visited),
          failed_items: FailedItems.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['assessmentRuns'] = AssessmentRunList.stub(stub[:assessment_runs]) unless stub[:assessment_runs].nil?
        data['failedItems'] = FailedItems.stub(stub[:failed_items]) unless stub[:failed_items].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for AssessmentRunList
    class AssessmentRunList
      def self.default(visited=[])
        return nil if visited.include?('AssessmentRunList')
        visited = visited + ['AssessmentRunList']
        [
          AssessmentRun.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AssessmentRun.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AssessmentRun
    class AssessmentRun
      def self.default(visited=[])
        return nil if visited.include?('AssessmentRun')
        visited = visited + ['AssessmentRun']
        {
          arn: 'arn',
          name: 'name',
          assessment_template_arn: 'assessment_template_arn',
          state: 'state',
          duration_in_seconds: 1,
          rules_package_arns: AssessmentRulesPackageArnList.default(visited),
          user_attributes_for_findings: UserAttributeList.default(visited),
          created_at: Time.now,
          started_at: Time.now,
          completed_at: Time.now,
          state_changed_at: Time.now,
          data_collected: false,
          state_changes: AssessmentRunStateChangeList.default(visited),
          notifications: AssessmentRunNotificationList.default(visited),
          finding_counts: AssessmentRunFindingCounts.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AssessmentRun.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['assessmentTemplateArn'] = stub[:assessment_template_arn] unless stub[:assessment_template_arn].nil?
        data['state'] = stub[:state] unless stub[:state].nil?
        data['durationInSeconds'] = stub[:duration_in_seconds] unless stub[:duration_in_seconds].nil?
        data['rulesPackageArns'] = AssessmentRulesPackageArnList.stub(stub[:rules_package_arns]) unless stub[:rules_package_arns].nil?
        data['userAttributesForFindings'] = UserAttributeList.stub(stub[:user_attributes_for_findings]) unless stub[:user_attributes_for_findings].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['startedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:started_at]).to_i unless stub[:started_at].nil?
        data['completedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:completed_at]).to_i unless stub[:completed_at].nil?
        data['stateChangedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:state_changed_at]).to_i unless stub[:state_changed_at].nil?
        data['dataCollected'] = stub[:data_collected] unless stub[:data_collected].nil?
        data['stateChanges'] = AssessmentRunStateChangeList.stub(stub[:state_changes]) unless stub[:state_changes].nil?
        data['notifications'] = AssessmentRunNotificationList.stub(stub[:notifications]) unless stub[:notifications].nil?
        data['findingCounts'] = AssessmentRunFindingCounts.stub(stub[:finding_counts]) unless stub[:finding_counts].nil?
        data
      end
    end

    # Map Stubber for AssessmentRunFindingCounts
    class AssessmentRunFindingCounts
      def self.default(visited=[])
        return nil if visited.include?('AssessmentRunFindingCounts')
        visited = visited + ['AssessmentRunFindingCounts']
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

    # List Stubber for AssessmentRunNotificationList
    class AssessmentRunNotificationList
      def self.default(visited=[])
        return nil if visited.include?('AssessmentRunNotificationList')
        visited = visited + ['AssessmentRunNotificationList']
        [
          AssessmentRunNotification.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AssessmentRunNotification.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AssessmentRunNotification
    class AssessmentRunNotification
      def self.default(visited=[])
        return nil if visited.include?('AssessmentRunNotification')
        visited = visited + ['AssessmentRunNotification']
        {
          date: Time.now,
          event: 'event',
          message: 'message',
          error: false,
          sns_topic_arn: 'sns_topic_arn',
          sns_publish_status_code: 'sns_publish_status_code',
        }
      end

      def self.stub(stub)
        stub ||= Types::AssessmentRunNotification.new
        data = {}
        data['date'] = Hearth::TimeHelper.to_epoch_seconds(stub[:date]).to_i unless stub[:date].nil?
        data['event'] = stub[:event] unless stub[:event].nil?
        data['message'] = stub[:message] unless stub[:message].nil?
        data['error'] = stub[:error] unless stub[:error].nil?
        data['snsTopicArn'] = stub[:sns_topic_arn] unless stub[:sns_topic_arn].nil?
        data['snsPublishStatusCode'] = stub[:sns_publish_status_code] unless stub[:sns_publish_status_code].nil?
        data
      end
    end

    # List Stubber for AssessmentRunStateChangeList
    class AssessmentRunStateChangeList
      def self.default(visited=[])
        return nil if visited.include?('AssessmentRunStateChangeList')
        visited = visited + ['AssessmentRunStateChangeList']
        [
          AssessmentRunStateChange.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AssessmentRunStateChange.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AssessmentRunStateChange
    class AssessmentRunStateChange
      def self.default(visited=[])
        return nil if visited.include?('AssessmentRunStateChange')
        visited = visited + ['AssessmentRunStateChange']
        {
          state_changed_at: Time.now,
          state: 'state',
        }
      end

      def self.stub(stub)
        stub ||= Types::AssessmentRunStateChange.new
        data = {}
        data['stateChangedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:state_changed_at]).to_i unless stub[:state_changed_at].nil?
        data['state'] = stub[:state] unless stub[:state].nil?
        data
      end
    end

    # List Stubber for UserAttributeList
    class UserAttributeList
      def self.default(visited=[])
        return nil if visited.include?('UserAttributeList')
        visited = visited + ['UserAttributeList']
        [
          Attribute.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Attribute.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Attribute
    class Attribute
      def self.default(visited=[])
        return nil if visited.include?('Attribute')
        visited = visited + ['Attribute']
        {
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::Attribute.new
        data = {}
        data['key'] = stub[:key] unless stub[:key].nil?
        data['value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # List Stubber for AssessmentRulesPackageArnList
    class AssessmentRulesPackageArnList
      def self.default(visited=[])
        return nil if visited.include?('AssessmentRulesPackageArnList')
        visited = visited + ['AssessmentRulesPackageArnList']
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

    # Operation Stubber for DescribeAssessmentTargets
    class DescribeAssessmentTargets
      def self.default(visited=[])
        {
          assessment_targets: AssessmentTargetList.default(visited),
          failed_items: FailedItems.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['assessmentTargets'] = AssessmentTargetList.stub(stub[:assessment_targets]) unless stub[:assessment_targets].nil?
        data['failedItems'] = FailedItems.stub(stub[:failed_items]) unless stub[:failed_items].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for AssessmentTargetList
    class AssessmentTargetList
      def self.default(visited=[])
        return nil if visited.include?('AssessmentTargetList')
        visited = visited + ['AssessmentTargetList']
        [
          AssessmentTarget.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AssessmentTarget.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AssessmentTarget
    class AssessmentTarget
      def self.default(visited=[])
        return nil if visited.include?('AssessmentTarget')
        visited = visited + ['AssessmentTarget']
        {
          arn: 'arn',
          name: 'name',
          resource_group_arn: 'resource_group_arn',
          created_at: Time.now,
          updated_at: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::AssessmentTarget.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['resourceGroupArn'] = stub[:resource_group_arn] unless stub[:resource_group_arn].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['updatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:updated_at]).to_i unless stub[:updated_at].nil?
        data
      end
    end

    # Operation Stubber for DescribeAssessmentTemplates
    class DescribeAssessmentTemplates
      def self.default(visited=[])
        {
          assessment_templates: AssessmentTemplateList.default(visited),
          failed_items: FailedItems.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['assessmentTemplates'] = AssessmentTemplateList.stub(stub[:assessment_templates]) unless stub[:assessment_templates].nil?
        data['failedItems'] = FailedItems.stub(stub[:failed_items]) unless stub[:failed_items].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for AssessmentTemplateList
    class AssessmentTemplateList
      def self.default(visited=[])
        return nil if visited.include?('AssessmentTemplateList')
        visited = visited + ['AssessmentTemplateList']
        [
          AssessmentTemplate.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AssessmentTemplate.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AssessmentTemplate
    class AssessmentTemplate
      def self.default(visited=[])
        return nil if visited.include?('AssessmentTemplate')
        visited = visited + ['AssessmentTemplate']
        {
          arn: 'arn',
          name: 'name',
          assessment_target_arn: 'assessment_target_arn',
          duration_in_seconds: 1,
          rules_package_arns: AssessmentTemplateRulesPackageArnList.default(visited),
          user_attributes_for_findings: UserAttributeList.default(visited),
          last_assessment_run_arn: 'last_assessment_run_arn',
          assessment_run_count: 1,
          created_at: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::AssessmentTemplate.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['assessmentTargetArn'] = stub[:assessment_target_arn] unless stub[:assessment_target_arn].nil?
        data['durationInSeconds'] = stub[:duration_in_seconds] unless stub[:duration_in_seconds].nil?
        data['rulesPackageArns'] = AssessmentTemplateRulesPackageArnList.stub(stub[:rules_package_arns]) unless stub[:rules_package_arns].nil?
        data['userAttributesForFindings'] = UserAttributeList.stub(stub[:user_attributes_for_findings]) unless stub[:user_attributes_for_findings].nil?
        data['lastAssessmentRunArn'] = stub[:last_assessment_run_arn] unless stub[:last_assessment_run_arn].nil?
        data['assessmentRunCount'] = stub[:assessment_run_count] unless stub[:assessment_run_count].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data
      end
    end

    # List Stubber for AssessmentTemplateRulesPackageArnList
    class AssessmentTemplateRulesPackageArnList
      def self.default(visited=[])
        return nil if visited.include?('AssessmentTemplateRulesPackageArnList')
        visited = visited + ['AssessmentTemplateRulesPackageArnList']
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

    # Operation Stubber for DescribeCrossAccountAccessRole
    class DescribeCrossAccountAccessRole
      def self.default(visited=[])
        {
          role_arn: 'role_arn',
          valid: false,
          registered_at: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['valid'] = stub[:valid] unless stub[:valid].nil?
        data['registeredAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:registered_at]).to_i unless stub[:registered_at].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeExclusions
    class DescribeExclusions
      def self.default(visited=[])
        {
          exclusions: ExclusionMap.default(visited),
          failed_items: FailedItems.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['exclusions'] = ExclusionMap.stub(stub[:exclusions]) unless stub[:exclusions].nil?
        data['failedItems'] = FailedItems.stub(stub[:failed_items]) unless stub[:failed_items].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Map Stubber for ExclusionMap
    class ExclusionMap
      def self.default(visited=[])
        return nil if visited.include?('ExclusionMap')
        visited = visited + ['ExclusionMap']
        {
          test_key: Exclusion.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Exclusion.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for Exclusion
    class Exclusion
      def self.default(visited=[])
        return nil if visited.include?('Exclusion')
        visited = visited + ['Exclusion']
        {
          arn: 'arn',
          title: 'title',
          description: 'description',
          recommendation: 'recommendation',
          scopes: ScopeList.default(visited),
          attributes: AttributeList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Exclusion.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['title'] = stub[:title] unless stub[:title].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['recommendation'] = stub[:recommendation] unless stub[:recommendation].nil?
        data['scopes'] = ScopeList.stub(stub[:scopes]) unless stub[:scopes].nil?
        data['attributes'] = AttributeList.stub(stub[:attributes]) unless stub[:attributes].nil?
        data
      end
    end

    # List Stubber for AttributeList
    class AttributeList
      def self.default(visited=[])
        return nil if visited.include?('AttributeList')
        visited = visited + ['AttributeList']
        [
          Attribute.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Attribute.stub(element) unless element.nil?
        end
        data
      end
    end

    # List Stubber for ScopeList
    class ScopeList
      def self.default(visited=[])
        return nil if visited.include?('ScopeList')
        visited = visited + ['ScopeList']
        [
          Scope.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Scope.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Scope
    class Scope
      def self.default(visited=[])
        return nil if visited.include?('Scope')
        visited = visited + ['Scope']
        {
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::Scope.new
        data = {}
        data['key'] = stub[:key] unless stub[:key].nil?
        data['value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for DescribeFindings
    class DescribeFindings
      def self.default(visited=[])
        {
          findings: FindingList.default(visited),
          failed_items: FailedItems.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['findings'] = FindingList.stub(stub[:findings]) unless stub[:findings].nil?
        data['failedItems'] = FailedItems.stub(stub[:failed_items]) unless stub[:failed_items].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for FindingList
    class FindingList
      def self.default(visited=[])
        return nil if visited.include?('FindingList')
        visited = visited + ['FindingList']
        [
          Finding.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Finding.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Finding
    class Finding
      def self.default(visited=[])
        return nil if visited.include?('Finding')
        visited = visited + ['Finding']
        {
          arn: 'arn',
          schema_version: 1,
          service: 'service',
          service_attributes: InspectorServiceAttributes.default(visited),
          asset_type: 'asset_type',
          asset_attributes: AssetAttributes.default(visited),
          id: 'id',
          title: 'title',
          description: 'description',
          recommendation: 'recommendation',
          severity: 'severity',
          numeric_severity: 1.0,
          confidence: 1,
          indicator_of_compromise: false,
          attributes: AttributeList.default(visited),
          user_attributes: UserAttributeList.default(visited),
          created_at: Time.now,
          updated_at: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::Finding.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['schemaVersion'] = stub[:schema_version] unless stub[:schema_version].nil?
        data['service'] = stub[:service] unless stub[:service].nil?
        data['serviceAttributes'] = InspectorServiceAttributes.stub(stub[:service_attributes]) unless stub[:service_attributes].nil?
        data['assetType'] = stub[:asset_type] unless stub[:asset_type].nil?
        data['assetAttributes'] = AssetAttributes.stub(stub[:asset_attributes]) unless stub[:asset_attributes].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data['title'] = stub[:title] unless stub[:title].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['recommendation'] = stub[:recommendation] unless stub[:recommendation].nil?
        data['severity'] = stub[:severity] unless stub[:severity].nil?
        data['numericSeverity'] = Hearth::NumberHelper.serialize(stub[:numeric_severity])
        data['confidence'] = stub[:confidence] unless stub[:confidence].nil?
        data['indicatorOfCompromise'] = stub[:indicator_of_compromise] unless stub[:indicator_of_compromise].nil?
        data['attributes'] = AttributeList.stub(stub[:attributes]) unless stub[:attributes].nil?
        data['userAttributes'] = UserAttributeList.stub(stub[:user_attributes]) unless stub[:user_attributes].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['updatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:updated_at]).to_i unless stub[:updated_at].nil?
        data
      end
    end

    # Structure Stubber for AssetAttributes
    class AssetAttributes
      def self.default(visited=[])
        return nil if visited.include?('AssetAttributes')
        visited = visited + ['AssetAttributes']
        {
          schema_version: 1,
          agent_id: 'agent_id',
          auto_scaling_group: 'auto_scaling_group',
          ami_id: 'ami_id',
          hostname: 'hostname',
          ipv4_addresses: Ipv4AddressList.default(visited),
          tags: Tags.default(visited),
          network_interfaces: NetworkInterfaces.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AssetAttributes.new
        data = {}
        data['schemaVersion'] = stub[:schema_version] unless stub[:schema_version].nil?
        data['agentId'] = stub[:agent_id] unless stub[:agent_id].nil?
        data['autoScalingGroup'] = stub[:auto_scaling_group] unless stub[:auto_scaling_group].nil?
        data['amiId'] = stub[:ami_id] unless stub[:ami_id].nil?
        data['hostname'] = stub[:hostname] unless stub[:hostname].nil?
        data['ipv4Addresses'] = Ipv4AddressList.stub(stub[:ipv4_addresses]) unless stub[:ipv4_addresses].nil?
        data['tags'] = Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data['networkInterfaces'] = NetworkInterfaces.stub(stub[:network_interfaces]) unless stub[:network_interfaces].nil?
        data
      end
    end

    # List Stubber for NetworkInterfaces
    class NetworkInterfaces
      def self.default(visited=[])
        return nil if visited.include?('NetworkInterfaces')
        visited = visited + ['NetworkInterfaces']
        [
          NetworkInterface.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << NetworkInterface.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for NetworkInterface
    class NetworkInterface
      def self.default(visited=[])
        return nil if visited.include?('NetworkInterface')
        visited = visited + ['NetworkInterface']
        {
          network_interface_id: 'network_interface_id',
          subnet_id: 'subnet_id',
          vpc_id: 'vpc_id',
          private_dns_name: 'private_dns_name',
          private_ip_address: 'private_ip_address',
          private_ip_addresses: PrivateIpAddresses.default(visited),
          public_dns_name: 'public_dns_name',
          public_ip: 'public_ip',
          ipv6_addresses: Ipv6Addresses.default(visited),
          security_groups: SecurityGroups.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::NetworkInterface.new
        data = {}
        data['networkInterfaceId'] = stub[:network_interface_id] unless stub[:network_interface_id].nil?
        data['subnetId'] = stub[:subnet_id] unless stub[:subnet_id].nil?
        data['vpcId'] = stub[:vpc_id] unless stub[:vpc_id].nil?
        data['privateDnsName'] = stub[:private_dns_name] unless stub[:private_dns_name].nil?
        data['privateIpAddress'] = stub[:private_ip_address] unless stub[:private_ip_address].nil?
        data['privateIpAddresses'] = PrivateIpAddresses.stub(stub[:private_ip_addresses]) unless stub[:private_ip_addresses].nil?
        data['publicDnsName'] = stub[:public_dns_name] unless stub[:public_dns_name].nil?
        data['publicIp'] = stub[:public_ip] unless stub[:public_ip].nil?
        data['ipv6Addresses'] = Ipv6Addresses.stub(stub[:ipv6_addresses]) unless stub[:ipv6_addresses].nil?
        data['securityGroups'] = SecurityGroups.stub(stub[:security_groups]) unless stub[:security_groups].nil?
        data
      end
    end

    # List Stubber for SecurityGroups
    class SecurityGroups
      def self.default(visited=[])
        return nil if visited.include?('SecurityGroups')
        visited = visited + ['SecurityGroups']
        [
          SecurityGroup.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << SecurityGroup.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SecurityGroup
    class SecurityGroup
      def self.default(visited=[])
        return nil if visited.include?('SecurityGroup')
        visited = visited + ['SecurityGroup']
        {
          group_name: 'group_name',
          group_id: 'group_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::SecurityGroup.new
        data = {}
        data['groupName'] = stub[:group_name] unless stub[:group_name].nil?
        data['groupId'] = stub[:group_id] unless stub[:group_id].nil?
        data
      end
    end

    # List Stubber for Ipv6Addresses
    class Ipv6Addresses
      def self.default(visited=[])
        return nil if visited.include?('Ipv6Addresses')
        visited = visited + ['Ipv6Addresses']
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

    # List Stubber for PrivateIpAddresses
    class PrivateIpAddresses
      def self.default(visited=[])
        return nil if visited.include?('PrivateIpAddresses')
        visited = visited + ['PrivateIpAddresses']
        [
          PrivateIp.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << PrivateIp.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PrivateIp
    class PrivateIp
      def self.default(visited=[])
        return nil if visited.include?('PrivateIp')
        visited = visited + ['PrivateIp']
        {
          private_dns_name: 'private_dns_name',
          private_ip_address: 'private_ip_address',
        }
      end

      def self.stub(stub)
        stub ||= Types::PrivateIp.new
        data = {}
        data['privateDnsName'] = stub[:private_dns_name] unless stub[:private_dns_name].nil?
        data['privateIpAddress'] = stub[:private_ip_address] unless stub[:private_ip_address].nil?
        data
      end
    end

    # List Stubber for Tags
    class Tags
      def self.default(visited=[])
        return nil if visited.include?('Tags')
        visited = visited + ['Tags']
        [
          Tag.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Tag.stub(element) unless element.nil?
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
        data['key'] = stub[:key] unless stub[:key].nil?
        data['value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # List Stubber for Ipv4AddressList
    class Ipv4AddressList
      def self.default(visited=[])
        return nil if visited.include?('Ipv4AddressList')
        visited = visited + ['Ipv4AddressList']
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

    # Structure Stubber for InspectorServiceAttributes
    class InspectorServiceAttributes
      def self.default(visited=[])
        return nil if visited.include?('InspectorServiceAttributes')
        visited = visited + ['InspectorServiceAttributes']
        {
          schema_version: 1,
          assessment_run_arn: 'assessment_run_arn',
          rules_package_arn: 'rules_package_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::InspectorServiceAttributes.new
        data = {}
        data['schemaVersion'] = stub[:schema_version] unless stub[:schema_version].nil?
        data['assessmentRunArn'] = stub[:assessment_run_arn] unless stub[:assessment_run_arn].nil?
        data['rulesPackageArn'] = stub[:rules_package_arn] unless stub[:rules_package_arn].nil?
        data
      end
    end

    # Operation Stubber for DescribeResourceGroups
    class DescribeResourceGroups
      def self.default(visited=[])
        {
          resource_groups: ResourceGroupList.default(visited),
          failed_items: FailedItems.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['resourceGroups'] = ResourceGroupList.stub(stub[:resource_groups]) unless stub[:resource_groups].nil?
        data['failedItems'] = FailedItems.stub(stub[:failed_items]) unless stub[:failed_items].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ResourceGroupList
    class ResourceGroupList
      def self.default(visited=[])
        return nil if visited.include?('ResourceGroupList')
        visited = visited + ['ResourceGroupList']
        [
          ResourceGroup.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ResourceGroup.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ResourceGroup
    class ResourceGroup
      def self.default(visited=[])
        return nil if visited.include?('ResourceGroup')
        visited = visited + ['ResourceGroup']
        {
          arn: 'arn',
          tags: ResourceGroupTags.default(visited),
          created_at: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourceGroup.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['tags'] = ResourceGroupTags.stub(stub[:tags]) unless stub[:tags].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data
      end
    end

    # List Stubber for ResourceGroupTags
    class ResourceGroupTags
      def self.default(visited=[])
        return nil if visited.include?('ResourceGroupTags')
        visited = visited + ['ResourceGroupTags']
        [
          ResourceGroupTag.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ResourceGroupTag.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ResourceGroupTag
    class ResourceGroupTag
      def self.default(visited=[])
        return nil if visited.include?('ResourceGroupTag')
        visited = visited + ['ResourceGroupTag']
        {
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourceGroupTag.new
        data = {}
        data['key'] = stub[:key] unless stub[:key].nil?
        data['value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for DescribeRulesPackages
    class DescribeRulesPackages
      def self.default(visited=[])
        {
          rules_packages: RulesPackageList.default(visited),
          failed_items: FailedItems.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['rulesPackages'] = RulesPackageList.stub(stub[:rules_packages]) unless stub[:rules_packages].nil?
        data['failedItems'] = FailedItems.stub(stub[:failed_items]) unless stub[:failed_items].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for RulesPackageList
    class RulesPackageList
      def self.default(visited=[])
        return nil if visited.include?('RulesPackageList')
        visited = visited + ['RulesPackageList']
        [
          RulesPackage.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << RulesPackage.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RulesPackage
    class RulesPackage
      def self.default(visited=[])
        return nil if visited.include?('RulesPackage')
        visited = visited + ['RulesPackage']
        {
          arn: 'arn',
          name: 'name',
          version: 'version',
          provider: 'provider',
          description: 'description',
        }
      end

      def self.stub(stub)
        stub ||= Types::RulesPackage.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data['provider'] = stub[:provider] unless stub[:provider].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data
      end
    end

    # Operation Stubber for GetAssessmentReport
    class GetAssessmentReport
      def self.default(visited=[])
        {
          status: 'status',
          url: 'url',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['status'] = stub[:status] unless stub[:status].nil?
        data['url'] = stub[:url] unless stub[:url].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetExclusionsPreview
    class GetExclusionsPreview
      def self.default(visited=[])
        {
          preview_status: 'preview_status',
          exclusion_previews: ExclusionPreviewList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['previewStatus'] = stub[:preview_status] unless stub[:preview_status].nil?
        data['exclusionPreviews'] = ExclusionPreviewList.stub(stub[:exclusion_previews]) unless stub[:exclusion_previews].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ExclusionPreviewList
    class ExclusionPreviewList
      def self.default(visited=[])
        return nil if visited.include?('ExclusionPreviewList')
        visited = visited + ['ExclusionPreviewList']
        [
          ExclusionPreview.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ExclusionPreview.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ExclusionPreview
    class ExclusionPreview
      def self.default(visited=[])
        return nil if visited.include?('ExclusionPreview')
        visited = visited + ['ExclusionPreview']
        {
          title: 'title',
          description: 'description',
          recommendation: 'recommendation',
          scopes: ScopeList.default(visited),
          attributes: AttributeList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ExclusionPreview.new
        data = {}
        data['title'] = stub[:title] unless stub[:title].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['recommendation'] = stub[:recommendation] unless stub[:recommendation].nil?
        data['scopes'] = ScopeList.stub(stub[:scopes]) unless stub[:scopes].nil?
        data['attributes'] = AttributeList.stub(stub[:attributes]) unless stub[:attributes].nil?
        data
      end
    end

    # Operation Stubber for GetTelemetryMetadata
    class GetTelemetryMetadata
      def self.default(visited=[])
        {
          telemetry_metadata: TelemetryMetadataList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['telemetryMetadata'] = TelemetryMetadataList.stub(stub[:telemetry_metadata]) unless stub[:telemetry_metadata].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for TelemetryMetadataList
    class TelemetryMetadataList
      def self.default(visited=[])
        return nil if visited.include?('TelemetryMetadataList')
        visited = visited + ['TelemetryMetadataList']
        [
          TelemetryMetadata.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << TelemetryMetadata.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TelemetryMetadata
    class TelemetryMetadata
      def self.default(visited=[])
        return nil if visited.include?('TelemetryMetadata')
        visited = visited + ['TelemetryMetadata']
        {
          message_type: 'message_type',
          count: 1,
          data_size: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::TelemetryMetadata.new
        data = {}
        data['messageType'] = stub[:message_type] unless stub[:message_type].nil?
        data['count'] = stub[:count] unless stub[:count].nil?
        data['dataSize'] = stub[:data_size] unless stub[:data_size].nil?
        data
      end
    end

    # Operation Stubber for ListAssessmentRunAgents
    class ListAssessmentRunAgents
      def self.default(visited=[])
        {
          assessment_run_agents: AssessmentRunAgentList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['assessmentRunAgents'] = AssessmentRunAgentList.stub(stub[:assessment_run_agents]) unless stub[:assessment_run_agents].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for AssessmentRunAgentList
    class AssessmentRunAgentList
      def self.default(visited=[])
        return nil if visited.include?('AssessmentRunAgentList')
        visited = visited + ['AssessmentRunAgentList']
        [
          AssessmentRunAgent.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AssessmentRunAgent.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AssessmentRunAgent
    class AssessmentRunAgent
      def self.default(visited=[])
        return nil if visited.include?('AssessmentRunAgent')
        visited = visited + ['AssessmentRunAgent']
        {
          agent_id: 'agent_id',
          assessment_run_arn: 'assessment_run_arn',
          agent_health: 'agent_health',
          agent_health_code: 'agent_health_code',
          agent_health_details: 'agent_health_details',
          auto_scaling_group: 'auto_scaling_group',
          telemetry_metadata: TelemetryMetadataList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AssessmentRunAgent.new
        data = {}
        data['agentId'] = stub[:agent_id] unless stub[:agent_id].nil?
        data['assessmentRunArn'] = stub[:assessment_run_arn] unless stub[:assessment_run_arn].nil?
        data['agentHealth'] = stub[:agent_health] unless stub[:agent_health].nil?
        data['agentHealthCode'] = stub[:agent_health_code] unless stub[:agent_health_code].nil?
        data['agentHealthDetails'] = stub[:agent_health_details] unless stub[:agent_health_details].nil?
        data['autoScalingGroup'] = stub[:auto_scaling_group] unless stub[:auto_scaling_group].nil?
        data['telemetryMetadata'] = TelemetryMetadataList.stub(stub[:telemetry_metadata]) unless stub[:telemetry_metadata].nil?
        data
      end
    end

    # Operation Stubber for ListAssessmentRuns
    class ListAssessmentRuns
      def self.default(visited=[])
        {
          assessment_run_arns: ListReturnedArnList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['assessmentRunArns'] = ListReturnedArnList.stub(stub[:assessment_run_arns]) unless stub[:assessment_run_arns].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ListReturnedArnList
    class ListReturnedArnList
      def self.default(visited=[])
        return nil if visited.include?('ListReturnedArnList')
        visited = visited + ['ListReturnedArnList']
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

    # Operation Stubber for ListAssessmentTargets
    class ListAssessmentTargets
      def self.default(visited=[])
        {
          assessment_target_arns: ListReturnedArnList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['assessmentTargetArns'] = ListReturnedArnList.stub(stub[:assessment_target_arns]) unless stub[:assessment_target_arns].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListAssessmentTemplates
    class ListAssessmentTemplates
      def self.default(visited=[])
        {
          assessment_template_arns: ListReturnedArnList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['assessmentTemplateArns'] = ListReturnedArnList.stub(stub[:assessment_template_arns]) unless stub[:assessment_template_arns].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListEventSubscriptions
    class ListEventSubscriptions
      def self.default(visited=[])
        {
          subscriptions: SubscriptionList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['subscriptions'] = SubscriptionList.stub(stub[:subscriptions]) unless stub[:subscriptions].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for SubscriptionList
    class SubscriptionList
      def self.default(visited=[])
        return nil if visited.include?('SubscriptionList')
        visited = visited + ['SubscriptionList']
        [
          Subscription.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Subscription.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Subscription
    class Subscription
      def self.default(visited=[])
        return nil if visited.include?('Subscription')
        visited = visited + ['Subscription']
        {
          resource_arn: 'resource_arn',
          topic_arn: 'topic_arn',
          event_subscriptions: EventSubscriptionList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Subscription.new
        data = {}
        data['resourceArn'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data['topicArn'] = stub[:topic_arn] unless stub[:topic_arn].nil?
        data['eventSubscriptions'] = EventSubscriptionList.stub(stub[:event_subscriptions]) unless stub[:event_subscriptions].nil?
        data
      end
    end

    # List Stubber for EventSubscriptionList
    class EventSubscriptionList
      def self.default(visited=[])
        return nil if visited.include?('EventSubscriptionList')
        visited = visited + ['EventSubscriptionList']
        [
          EventSubscription.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << EventSubscription.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EventSubscription
    class EventSubscription
      def self.default(visited=[])
        return nil if visited.include?('EventSubscription')
        visited = visited + ['EventSubscription']
        {
          event: 'event',
          subscribed_at: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::EventSubscription.new
        data = {}
        data['event'] = stub[:event] unless stub[:event].nil?
        data['subscribedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:subscribed_at]).to_i unless stub[:subscribed_at].nil?
        data
      end
    end

    # Operation Stubber for ListExclusions
    class ListExclusions
      def self.default(visited=[])
        {
          exclusion_arns: ListReturnedArnList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['exclusionArns'] = ListReturnedArnList.stub(stub[:exclusion_arns]) unless stub[:exclusion_arns].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListFindings
    class ListFindings
      def self.default(visited=[])
        {
          finding_arns: ListReturnedArnList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['findingArns'] = ListReturnedArnList.stub(stub[:finding_arns]) unless stub[:finding_arns].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListRulesPackages
    class ListRulesPackages
      def self.default(visited=[])
        {
          rules_package_arns: ListReturnedArnList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['rulesPackageArns'] = ListReturnedArnList.stub(stub[:rules_package_arns]) unless stub[:rules_package_arns].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
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
        data['tags'] = TagList.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
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
          data << Tag.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for PreviewAgents
    class PreviewAgents
      def self.default(visited=[])
        {
          agent_previews: AgentPreviewList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['agentPreviews'] = AgentPreviewList.stub(stub[:agent_previews]) unless stub[:agent_previews].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for AgentPreviewList
    class AgentPreviewList
      def self.default(visited=[])
        return nil if visited.include?('AgentPreviewList')
        visited = visited + ['AgentPreviewList']
        [
          AgentPreview.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AgentPreview.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AgentPreview
    class AgentPreview
      def self.default(visited=[])
        return nil if visited.include?('AgentPreview')
        visited = visited + ['AgentPreview']
        {
          hostname: 'hostname',
          agent_id: 'agent_id',
          auto_scaling_group: 'auto_scaling_group',
          agent_health: 'agent_health',
          agent_version: 'agent_version',
          operating_system: 'operating_system',
          kernel_version: 'kernel_version',
          ipv4_address: 'ipv4_address',
        }
      end

      def self.stub(stub)
        stub ||= Types::AgentPreview.new
        data = {}
        data['hostname'] = stub[:hostname] unless stub[:hostname].nil?
        data['agentId'] = stub[:agent_id] unless stub[:agent_id].nil?
        data['autoScalingGroup'] = stub[:auto_scaling_group] unless stub[:auto_scaling_group].nil?
        data['agentHealth'] = stub[:agent_health] unless stub[:agent_health].nil?
        data['agentVersion'] = stub[:agent_version] unless stub[:agent_version].nil?
        data['operatingSystem'] = stub[:operating_system] unless stub[:operating_system].nil?
        data['kernelVersion'] = stub[:kernel_version] unless stub[:kernel_version].nil?
        data['ipv4Address'] = stub[:ipv4_address] unless stub[:ipv4_address].nil?
        data
      end
    end

    # Operation Stubber for RegisterCrossAccountAccessRole
    class RegisterCrossAccountAccessRole
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for RemoveAttributesFromFindings
    class RemoveAttributesFromFindings
      def self.default(visited=[])
        {
          failed_items: FailedItems.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['failedItems'] = FailedItems.stub(stub[:failed_items]) unless stub[:failed_items].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for SetTagsForResource
    class SetTagsForResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartAssessmentRun
    class StartAssessmentRun
      def self.default(visited=[])
        {
          assessment_run_arn: 'assessment_run_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['assessmentRunArn'] = stub[:assessment_run_arn] unless stub[:assessment_run_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StopAssessmentRun
    class StopAssessmentRun
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for SubscribeToEvent
    class SubscribeToEvent
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UnsubscribeFromEvent
    class UnsubscribeFromEvent
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateAssessmentTarget
    class UpdateAssessmentTarget
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
