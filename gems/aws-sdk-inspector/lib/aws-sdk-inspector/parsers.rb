# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::Inspector
  module Parsers

    # Operation Parser for AddAttributesToFindings
    class AddAttributesToFindings
      def self.parse(http_resp)
        data = Types::AddAttributesToFindingsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.failed_items = (Parsers::FailedItems.parse(map['failedItems']) unless map['failedItems'].nil?)
        data
      end
    end

    class FailedItems
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Parsers::FailedItemDetails.parse(value) unless value.nil?
        end
        data
      end
    end

    class FailedItemDetails
      def self.parse(map)
        data = Types::FailedItemDetails.new
        data.failure_code = map['failureCode']
        data.retryable = map['retryable']
        return data
      end
    end

    # Error Parser for InternalException
    class InternalException
      def self.parse(http_resp)
        data = Types::InternalException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data.can_retry = map['canRetry']
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
        data.message = map['message']
        data.error_code = map['errorCode']
        data.can_retry = map['canRetry']
        data
      end
    end

    # Error Parser for InvalidInputException
    class InvalidInputException
      def self.parse(http_resp)
        data = Types::InvalidInputException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data.error_code = map['errorCode']
        data.can_retry = map['canRetry']
        data
      end
    end

    # Error Parser for NoSuchEntityException
    class NoSuchEntityException
      def self.parse(http_resp)
        data = Types::NoSuchEntityException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data.error_code = map['errorCode']
        data.can_retry = map['canRetry']
        data
      end
    end

    # Error Parser for ServiceTemporarilyUnavailableException
    class ServiceTemporarilyUnavailableException
      def self.parse(http_resp)
        data = Types::ServiceTemporarilyUnavailableException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data.can_retry = map['canRetry']
        data
      end
    end

    # Operation Parser for CreateAssessmentTarget
    class CreateAssessmentTarget
      def self.parse(http_resp)
        data = Types::CreateAssessmentTargetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.assessment_target_arn = map['assessmentTargetArn']
        data
      end
    end

    # Error Parser for InvalidCrossAccountRoleException
    class InvalidCrossAccountRoleException
      def self.parse(http_resp)
        data = Types::InvalidCrossAccountRoleException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data.error_code = map['errorCode']
        data.can_retry = map['canRetry']
        data
      end
    end

    # Error Parser for LimitExceededException
    class LimitExceededException
      def self.parse(http_resp)
        data = Types::LimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data.error_code = map['errorCode']
        data.can_retry = map['canRetry']
        data
      end
    end

    # Operation Parser for CreateAssessmentTemplate
    class CreateAssessmentTemplate
      def self.parse(http_resp)
        data = Types::CreateAssessmentTemplateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.assessment_template_arn = map['assessmentTemplateArn']
        data
      end
    end

    # Operation Parser for CreateExclusionsPreview
    class CreateExclusionsPreview
      def self.parse(http_resp)
        data = Types::CreateExclusionsPreviewOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.preview_token = map['previewToken']
        data
      end
    end

    # Error Parser for PreviewGenerationInProgressException
    class PreviewGenerationInProgressException
      def self.parse(http_resp)
        data = Types::PreviewGenerationInProgressException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for CreateResourceGroup
    class CreateResourceGroup
      def self.parse(http_resp)
        data = Types::CreateResourceGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.resource_group_arn = map['resourceGroupArn']
        data
      end
    end

    # Operation Parser for DeleteAssessmentRun
    class DeleteAssessmentRun
      def self.parse(http_resp)
        data = Types::DeleteAssessmentRunOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for AssessmentRunInProgressException
    class AssessmentRunInProgressException
      def self.parse(http_resp)
        data = Types::AssessmentRunInProgressException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data.assessment_run_arns = (Parsers::AssessmentRunInProgressArnList.parse(map['assessmentRunArns']) unless map['assessmentRunArns'].nil?)
        data.assessment_run_arns_truncated = map['assessmentRunArnsTruncated']
        data.can_retry = map['canRetry']
        data
      end
    end

    class AssessmentRunInProgressArnList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for DeleteAssessmentTarget
    class DeleteAssessmentTarget
      def self.parse(http_resp)
        data = Types::DeleteAssessmentTargetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteAssessmentTemplate
    class DeleteAssessmentTemplate
      def self.parse(http_resp)
        data = Types::DeleteAssessmentTemplateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DescribeAssessmentRuns
    class DescribeAssessmentRuns
      def self.parse(http_resp)
        data = Types::DescribeAssessmentRunsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.assessment_runs = (Parsers::AssessmentRunList.parse(map['assessmentRuns']) unless map['assessmentRuns'].nil?)
        data.failed_items = (Parsers::FailedItems.parse(map['failedItems']) unless map['failedItems'].nil?)
        data
      end
    end

    class AssessmentRunList
      def self.parse(list)
        list.map do |value|
          Parsers::AssessmentRun.parse(value) unless value.nil?
        end
      end
    end

    class AssessmentRun
      def self.parse(map)
        data = Types::AssessmentRun.new
        data.arn = map['arn']
        data.name = map['name']
        data.assessment_template_arn = map['assessmentTemplateArn']
        data.state = map['state']
        data.duration_in_seconds = map['durationInSeconds']
        data.rules_package_arns = (Parsers::AssessmentRulesPackageArnList.parse(map['rulesPackageArns']) unless map['rulesPackageArns'].nil?)
        data.user_attributes_for_findings = (Parsers::UserAttributeList.parse(map['userAttributesForFindings']) unless map['userAttributesForFindings'].nil?)
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.started_at = Time.at(map['startedAt'].to_i) if map['startedAt']
        data.completed_at = Time.at(map['completedAt'].to_i) if map['completedAt']
        data.state_changed_at = Time.at(map['stateChangedAt'].to_i) if map['stateChangedAt']
        data.data_collected = map['dataCollected']
        data.state_changes = (Parsers::AssessmentRunStateChangeList.parse(map['stateChanges']) unless map['stateChanges'].nil?)
        data.notifications = (Parsers::AssessmentRunNotificationList.parse(map['notifications']) unless map['notifications'].nil?)
        data.finding_counts = (Parsers::AssessmentRunFindingCounts.parse(map['findingCounts']) unless map['findingCounts'].nil?)
        return data
      end
    end

    class AssessmentRunFindingCounts
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class AssessmentRunNotificationList
      def self.parse(list)
        list.map do |value|
          Parsers::AssessmentRunNotification.parse(value) unless value.nil?
        end
      end
    end

    class AssessmentRunNotification
      def self.parse(map)
        data = Types::AssessmentRunNotification.new
        data.date = Time.at(map['date'].to_i) if map['date']
        data.event = map['event']
        data.message = map['message']
        data.error = map['error']
        data.sns_topic_arn = map['snsTopicArn']
        data.sns_publish_status_code = map['snsPublishStatusCode']
        return data
      end
    end

    class AssessmentRunStateChangeList
      def self.parse(list)
        list.map do |value|
          Parsers::AssessmentRunStateChange.parse(value) unless value.nil?
        end
      end
    end

    class AssessmentRunStateChange
      def self.parse(map)
        data = Types::AssessmentRunStateChange.new
        data.state_changed_at = Time.at(map['stateChangedAt'].to_i) if map['stateChangedAt']
        data.state = map['state']
        return data
      end
    end

    class UserAttributeList
      def self.parse(list)
        list.map do |value|
          Parsers::Attribute.parse(value) unless value.nil?
        end
      end
    end

    class Attribute
      def self.parse(map)
        data = Types::Attribute.new
        data.key = map['key']
        data.value = map['value']
        return data
      end
    end

    class AssessmentRulesPackageArnList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for DescribeAssessmentTargets
    class DescribeAssessmentTargets
      def self.parse(http_resp)
        data = Types::DescribeAssessmentTargetsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.assessment_targets = (Parsers::AssessmentTargetList.parse(map['assessmentTargets']) unless map['assessmentTargets'].nil?)
        data.failed_items = (Parsers::FailedItems.parse(map['failedItems']) unless map['failedItems'].nil?)
        data
      end
    end

    class AssessmentTargetList
      def self.parse(list)
        list.map do |value|
          Parsers::AssessmentTarget.parse(value) unless value.nil?
        end
      end
    end

    class AssessmentTarget
      def self.parse(map)
        data = Types::AssessmentTarget.new
        data.arn = map['arn']
        data.name = map['name']
        data.resource_group_arn = map['resourceGroupArn']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.updated_at = Time.at(map['updatedAt'].to_i) if map['updatedAt']
        return data
      end
    end

    # Operation Parser for DescribeAssessmentTemplates
    class DescribeAssessmentTemplates
      def self.parse(http_resp)
        data = Types::DescribeAssessmentTemplatesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.assessment_templates = (Parsers::AssessmentTemplateList.parse(map['assessmentTemplates']) unless map['assessmentTemplates'].nil?)
        data.failed_items = (Parsers::FailedItems.parse(map['failedItems']) unless map['failedItems'].nil?)
        data
      end
    end

    class AssessmentTemplateList
      def self.parse(list)
        list.map do |value|
          Parsers::AssessmentTemplate.parse(value) unless value.nil?
        end
      end
    end

    class AssessmentTemplate
      def self.parse(map)
        data = Types::AssessmentTemplate.new
        data.arn = map['arn']
        data.name = map['name']
        data.assessment_target_arn = map['assessmentTargetArn']
        data.duration_in_seconds = map['durationInSeconds']
        data.rules_package_arns = (Parsers::AssessmentTemplateRulesPackageArnList.parse(map['rulesPackageArns']) unless map['rulesPackageArns'].nil?)
        data.user_attributes_for_findings = (Parsers::UserAttributeList.parse(map['userAttributesForFindings']) unless map['userAttributesForFindings'].nil?)
        data.last_assessment_run_arn = map['lastAssessmentRunArn']
        data.assessment_run_count = map['assessmentRunCount']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        return data
      end
    end

    class AssessmentTemplateRulesPackageArnList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for DescribeCrossAccountAccessRole
    class DescribeCrossAccountAccessRole
      def self.parse(http_resp)
        data = Types::DescribeCrossAccountAccessRoleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.role_arn = map['roleArn']
        data.valid = map['valid']
        data.registered_at = Time.at(map['registeredAt'].to_i) if map['registeredAt']
        data
      end
    end

    # Operation Parser for DescribeExclusions
    class DescribeExclusions
      def self.parse(http_resp)
        data = Types::DescribeExclusionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.exclusions = (Parsers::ExclusionMap.parse(map['exclusions']) unless map['exclusions'].nil?)
        data.failed_items = (Parsers::FailedItems.parse(map['failedItems']) unless map['failedItems'].nil?)
        data
      end
    end

    class ExclusionMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Parsers::Exclusion.parse(value) unless value.nil?
        end
        data
      end
    end

    class Exclusion
      def self.parse(map)
        data = Types::Exclusion.new
        data.arn = map['arn']
        data.title = map['title']
        data.description = map['description']
        data.recommendation = map['recommendation']
        data.scopes = (Parsers::ScopeList.parse(map['scopes']) unless map['scopes'].nil?)
        data.attributes = (Parsers::AttributeList.parse(map['attributes']) unless map['attributes'].nil?)
        return data
      end
    end

    class AttributeList
      def self.parse(list)
        list.map do |value|
          Parsers::Attribute.parse(value) unless value.nil?
        end
      end
    end

    class ScopeList
      def self.parse(list)
        list.map do |value|
          Parsers::Scope.parse(value) unless value.nil?
        end
      end
    end

    class Scope
      def self.parse(map)
        data = Types::Scope.new
        data.key = map['key']
        data.value = map['value']
        return data
      end
    end

    # Operation Parser for DescribeFindings
    class DescribeFindings
      def self.parse(http_resp)
        data = Types::DescribeFindingsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.findings = (Parsers::FindingList.parse(map['findings']) unless map['findings'].nil?)
        data.failed_items = (Parsers::FailedItems.parse(map['failedItems']) unless map['failedItems'].nil?)
        data
      end
    end

    class FindingList
      def self.parse(list)
        list.map do |value|
          Parsers::Finding.parse(value) unless value.nil?
        end
      end
    end

    class Finding
      def self.parse(map)
        data = Types::Finding.new
        data.arn = map['arn']
        data.schema_version = map['schemaVersion']
        data.service = map['service']
        data.service_attributes = (Parsers::InspectorServiceAttributes.parse(map['serviceAttributes']) unless map['serviceAttributes'].nil?)
        data.asset_type = map['assetType']
        data.asset_attributes = (Parsers::AssetAttributes.parse(map['assetAttributes']) unless map['assetAttributes'].nil?)
        data.id = map['id']
        data.title = map['title']
        data.description = map['description']
        data.recommendation = map['recommendation']
        data.severity = map['severity']
        data.numeric_severity = Hearth::NumberHelper.deserialize(map['numericSeverity'])
        data.confidence = map['confidence']
        data.indicator_of_compromise = map['indicatorOfCompromise']
        data.attributes = (Parsers::AttributeList.parse(map['attributes']) unless map['attributes'].nil?)
        data.user_attributes = (Parsers::UserAttributeList.parse(map['userAttributes']) unless map['userAttributes'].nil?)
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.updated_at = Time.at(map['updatedAt'].to_i) if map['updatedAt']
        return data
      end
    end

    class AssetAttributes
      def self.parse(map)
        data = Types::AssetAttributes.new
        data.schema_version = map['schemaVersion']
        data.agent_id = map['agentId']
        data.auto_scaling_group = map['autoScalingGroup']
        data.ami_id = map['amiId']
        data.hostname = map['hostname']
        data.ipv4_addresses = (Parsers::Ipv4AddressList.parse(map['ipv4Addresses']) unless map['ipv4Addresses'].nil?)
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data.network_interfaces = (Parsers::NetworkInterfaces.parse(map['networkInterfaces']) unless map['networkInterfaces'].nil?)
        return data
      end
    end

    class NetworkInterfaces
      def self.parse(list)
        list.map do |value|
          Parsers::NetworkInterface.parse(value) unless value.nil?
        end
      end
    end

    class NetworkInterface
      def self.parse(map)
        data = Types::NetworkInterface.new
        data.network_interface_id = map['networkInterfaceId']
        data.subnet_id = map['subnetId']
        data.vpc_id = map['vpcId']
        data.private_dns_name = map['privateDnsName']
        data.private_ip_address = map['privateIpAddress']
        data.private_ip_addresses = (Parsers::PrivateIpAddresses.parse(map['privateIpAddresses']) unless map['privateIpAddresses'].nil?)
        data.public_dns_name = map['publicDnsName']
        data.public_ip = map['publicIp']
        data.ipv6_addresses = (Parsers::Ipv6Addresses.parse(map['ipv6Addresses']) unless map['ipv6Addresses'].nil?)
        data.security_groups = (Parsers::SecurityGroups.parse(map['securityGroups']) unless map['securityGroups'].nil?)
        return data
      end
    end

    class SecurityGroups
      def self.parse(list)
        list.map do |value|
          Parsers::SecurityGroup.parse(value) unless value.nil?
        end
      end
    end

    class SecurityGroup
      def self.parse(map)
        data = Types::SecurityGroup.new
        data.group_name = map['groupName']
        data.group_id = map['groupId']
        return data
      end
    end

    class Ipv6Addresses
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class PrivateIpAddresses
      def self.parse(list)
        list.map do |value|
          Parsers::PrivateIp.parse(value) unless value.nil?
        end
      end
    end

    class PrivateIp
      def self.parse(map)
        data = Types::PrivateIp.new
        data.private_dns_name = map['privateDnsName']
        data.private_ip_address = map['privateIpAddress']
        return data
      end
    end

    class Tags
      def self.parse(list)
        list.map do |value|
          Parsers::Tag.parse(value) unless value.nil?
        end
      end
    end

    class Tag
      def self.parse(map)
        data = Types::Tag.new
        data.key = map['key']
        data.value = map['value']
        return data
      end
    end

    class Ipv4AddressList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class InspectorServiceAttributes
      def self.parse(map)
        data = Types::InspectorServiceAttributes.new
        data.schema_version = map['schemaVersion']
        data.assessment_run_arn = map['assessmentRunArn']
        data.rules_package_arn = map['rulesPackageArn']
        return data
      end
    end

    # Operation Parser for DescribeResourceGroups
    class DescribeResourceGroups
      def self.parse(http_resp)
        data = Types::DescribeResourceGroupsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.resource_groups = (Parsers::ResourceGroupList.parse(map['resourceGroups']) unless map['resourceGroups'].nil?)
        data.failed_items = (Parsers::FailedItems.parse(map['failedItems']) unless map['failedItems'].nil?)
        data
      end
    end

    class ResourceGroupList
      def self.parse(list)
        list.map do |value|
          Parsers::ResourceGroup.parse(value) unless value.nil?
        end
      end
    end

    class ResourceGroup
      def self.parse(map)
        data = Types::ResourceGroup.new
        data.arn = map['arn']
        data.tags = (Parsers::ResourceGroupTags.parse(map['tags']) unless map['tags'].nil?)
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        return data
      end
    end

    class ResourceGroupTags
      def self.parse(list)
        list.map do |value|
          Parsers::ResourceGroupTag.parse(value) unless value.nil?
        end
      end
    end

    class ResourceGroupTag
      def self.parse(map)
        data = Types::ResourceGroupTag.new
        data.key = map['key']
        data.value = map['value']
        return data
      end
    end

    # Operation Parser for DescribeRulesPackages
    class DescribeRulesPackages
      def self.parse(http_resp)
        data = Types::DescribeRulesPackagesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.rules_packages = (Parsers::RulesPackageList.parse(map['rulesPackages']) unless map['rulesPackages'].nil?)
        data.failed_items = (Parsers::FailedItems.parse(map['failedItems']) unless map['failedItems'].nil?)
        data
      end
    end

    class RulesPackageList
      def self.parse(list)
        list.map do |value|
          Parsers::RulesPackage.parse(value) unless value.nil?
        end
      end
    end

    class RulesPackage
      def self.parse(map)
        data = Types::RulesPackage.new
        data.arn = map['arn']
        data.name = map['name']
        data.version = map['version']
        data.provider = map['provider']
        data.description = map['description']
        return data
      end
    end

    # Operation Parser for GetAssessmentReport
    class GetAssessmentReport
      def self.parse(http_resp)
        data = Types::GetAssessmentReportOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.status = map['status']
        data.url = map['url']
        data
      end
    end

    # Error Parser for UnsupportedFeatureException
    class UnsupportedFeatureException
      def self.parse(http_resp)
        data = Types::UnsupportedFeatureException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data.can_retry = map['canRetry']
        data
      end
    end

    # Operation Parser for GetExclusionsPreview
    class GetExclusionsPreview
      def self.parse(http_resp)
        data = Types::GetExclusionsPreviewOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.preview_status = map['previewStatus']
        data.exclusion_previews = (Parsers::ExclusionPreviewList.parse(map['exclusionPreviews']) unless map['exclusionPreviews'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ExclusionPreviewList
      def self.parse(list)
        list.map do |value|
          Parsers::ExclusionPreview.parse(value) unless value.nil?
        end
      end
    end

    class ExclusionPreview
      def self.parse(map)
        data = Types::ExclusionPreview.new
        data.title = map['title']
        data.description = map['description']
        data.recommendation = map['recommendation']
        data.scopes = (Parsers::ScopeList.parse(map['scopes']) unless map['scopes'].nil?)
        data.attributes = (Parsers::AttributeList.parse(map['attributes']) unless map['attributes'].nil?)
        return data
      end
    end

    # Operation Parser for GetTelemetryMetadata
    class GetTelemetryMetadata
      def self.parse(http_resp)
        data = Types::GetTelemetryMetadataOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.telemetry_metadata = (Parsers::TelemetryMetadataList.parse(map['telemetryMetadata']) unless map['telemetryMetadata'].nil?)
        data
      end
    end

    class TelemetryMetadataList
      def self.parse(list)
        list.map do |value|
          Parsers::TelemetryMetadata.parse(value) unless value.nil?
        end
      end
    end

    class TelemetryMetadata
      def self.parse(map)
        data = Types::TelemetryMetadata.new
        data.message_type = map['messageType']
        data.count = map['count']
        data.data_size = map['dataSize']
        return data
      end
    end

    # Operation Parser for ListAssessmentRunAgents
    class ListAssessmentRunAgents
      def self.parse(http_resp)
        data = Types::ListAssessmentRunAgentsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.assessment_run_agents = (Parsers::AssessmentRunAgentList.parse(map['assessmentRunAgents']) unless map['assessmentRunAgents'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class AssessmentRunAgentList
      def self.parse(list)
        list.map do |value|
          Parsers::AssessmentRunAgent.parse(value) unless value.nil?
        end
      end
    end

    class AssessmentRunAgent
      def self.parse(map)
        data = Types::AssessmentRunAgent.new
        data.agent_id = map['agentId']
        data.assessment_run_arn = map['assessmentRunArn']
        data.agent_health = map['agentHealth']
        data.agent_health_code = map['agentHealthCode']
        data.agent_health_details = map['agentHealthDetails']
        data.auto_scaling_group = map['autoScalingGroup']
        data.telemetry_metadata = (Parsers::TelemetryMetadataList.parse(map['telemetryMetadata']) unless map['telemetryMetadata'].nil?)
        return data
      end
    end

    # Operation Parser for ListAssessmentRuns
    class ListAssessmentRuns
      def self.parse(http_resp)
        data = Types::ListAssessmentRunsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.assessment_run_arns = (Parsers::ListReturnedArnList.parse(map['assessmentRunArns']) unless map['assessmentRunArns'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ListReturnedArnList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for ListAssessmentTargets
    class ListAssessmentTargets
      def self.parse(http_resp)
        data = Types::ListAssessmentTargetsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.assessment_target_arns = (Parsers::ListReturnedArnList.parse(map['assessmentTargetArns']) unless map['assessmentTargetArns'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    # Operation Parser for ListAssessmentTemplates
    class ListAssessmentTemplates
      def self.parse(http_resp)
        data = Types::ListAssessmentTemplatesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.assessment_template_arns = (Parsers::ListReturnedArnList.parse(map['assessmentTemplateArns']) unless map['assessmentTemplateArns'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    # Operation Parser for ListEventSubscriptions
    class ListEventSubscriptions
      def self.parse(http_resp)
        data = Types::ListEventSubscriptionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.subscriptions = (Parsers::SubscriptionList.parse(map['subscriptions']) unless map['subscriptions'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class SubscriptionList
      def self.parse(list)
        list.map do |value|
          Parsers::Subscription.parse(value) unless value.nil?
        end
      end
    end

    class Subscription
      def self.parse(map)
        data = Types::Subscription.new
        data.resource_arn = map['resourceArn']
        data.topic_arn = map['topicArn']
        data.event_subscriptions = (Parsers::EventSubscriptionList.parse(map['eventSubscriptions']) unless map['eventSubscriptions'].nil?)
        return data
      end
    end

    class EventSubscriptionList
      def self.parse(list)
        list.map do |value|
          Parsers::EventSubscription.parse(value) unless value.nil?
        end
      end
    end

    class EventSubscription
      def self.parse(map)
        data = Types::EventSubscription.new
        data.event = map['event']
        data.subscribed_at = Time.at(map['subscribedAt'].to_i) if map['subscribedAt']
        return data
      end
    end

    # Operation Parser for ListExclusions
    class ListExclusions
      def self.parse(http_resp)
        data = Types::ListExclusionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.exclusion_arns = (Parsers::ListReturnedArnList.parse(map['exclusionArns']) unless map['exclusionArns'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    # Operation Parser for ListFindings
    class ListFindings
      def self.parse(http_resp)
        data = Types::ListFindingsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.finding_arns = (Parsers::ListReturnedArnList.parse(map['findingArns']) unless map['findingArns'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    # Operation Parser for ListRulesPackages
    class ListRulesPackages
      def self.parse(http_resp)
        data = Types::ListRulesPackagesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.rules_package_arns = (Parsers::ListReturnedArnList.parse(map['rulesPackageArns']) unless map['rulesPackageArns'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tags = (Parsers::TagList.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    class TagList
      def self.parse(list)
        list.map do |value|
          Parsers::Tag.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for PreviewAgents
    class PreviewAgents
      def self.parse(http_resp)
        data = Types::PreviewAgentsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.agent_previews = (Parsers::AgentPreviewList.parse(map['agentPreviews']) unless map['agentPreviews'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class AgentPreviewList
      def self.parse(list)
        list.map do |value|
          Parsers::AgentPreview.parse(value) unless value.nil?
        end
      end
    end

    class AgentPreview
      def self.parse(map)
        data = Types::AgentPreview.new
        data.hostname = map['hostname']
        data.agent_id = map['agentId']
        data.auto_scaling_group = map['autoScalingGroup']
        data.agent_health = map['agentHealth']
        data.agent_version = map['agentVersion']
        data.operating_system = map['operatingSystem']
        data.kernel_version = map['kernelVersion']
        data.ipv4_address = map['ipv4Address']
        return data
      end
    end

    # Operation Parser for RegisterCrossAccountAccessRole
    class RegisterCrossAccountAccessRole
      def self.parse(http_resp)
        data = Types::RegisterCrossAccountAccessRoleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for RemoveAttributesFromFindings
    class RemoveAttributesFromFindings
      def self.parse(http_resp)
        data = Types::RemoveAttributesFromFindingsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.failed_items = (Parsers::FailedItems.parse(map['failedItems']) unless map['failedItems'].nil?)
        data
      end
    end

    # Operation Parser for SetTagsForResource
    class SetTagsForResource
      def self.parse(http_resp)
        data = Types::SetTagsForResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for StartAssessmentRun
    class StartAssessmentRun
      def self.parse(http_resp)
        data = Types::StartAssessmentRunOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.assessment_run_arn = map['assessmentRunArn']
        data
      end
    end

    # Error Parser for AgentsAlreadyRunningAssessmentException
    class AgentsAlreadyRunningAssessmentException
      def self.parse(http_resp)
        data = Types::AgentsAlreadyRunningAssessmentException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data.agents = (Parsers::AgentAlreadyRunningAssessmentList.parse(map['agents']) unless map['agents'].nil?)
        data.agents_truncated = map['agentsTruncated']
        data.can_retry = map['canRetry']
        data
      end
    end

    class AgentAlreadyRunningAssessmentList
      def self.parse(list)
        list.map do |value|
          Parsers::AgentAlreadyRunningAssessment.parse(value) unless value.nil?
        end
      end
    end

    class AgentAlreadyRunningAssessment
      def self.parse(map)
        data = Types::AgentAlreadyRunningAssessment.new
        data.agent_id = map['agentId']
        data.assessment_run_arn = map['assessmentRunArn']
        return data
      end
    end

    # Operation Parser for StopAssessmentRun
    class StopAssessmentRun
      def self.parse(http_resp)
        data = Types::StopAssessmentRunOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for SubscribeToEvent
    class SubscribeToEvent
      def self.parse(http_resp)
        data = Types::SubscribeToEventOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UnsubscribeFromEvent
    class UnsubscribeFromEvent
      def self.parse(http_resp)
        data = Types::UnsubscribeFromEventOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateAssessmentTarget
    class UpdateAssessmentTarget
      def self.parse(http_resp)
        data = Types::UpdateAssessmentTargetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end
  end
end
