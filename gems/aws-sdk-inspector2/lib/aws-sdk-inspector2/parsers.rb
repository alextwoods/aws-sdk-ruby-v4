# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Inspector2
  module Parsers

    # Operation Parser for AssociateMember
    class AssociateMember
      def self.parse(http_resp)
        data = Types::AssociateMemberOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.account_id = map['accountId']
        data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for InternalServerException
    class InternalServerException
      def self.parse(http_resp)
        data = Types::InternalServerException.new
        data.retry_after_seconds = http_resp.headers['Retry-After'].to_i unless http_resp.headers['Retry-After'].nil?
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.reason = map['reason']
        data.fields = (ValidationExceptionFields.parse(map['fields']) unless map['fields'].nil?)
        data
      end
    end

    class ValidationExceptionFields
      def self.parse(list)
        data = []
        list.map do |value|
          data << ValidationExceptionField.parse(value) unless value.nil?
        end
        data
      end
    end

    class ValidationExceptionField
      def self.parse(map)
        data = Types::ValidationExceptionField.new
        data.name = map['name']
        data.message = map['message'] || map['Message']
        return data
      end
    end

    # Error Parser for ThrottlingException
    class ThrottlingException
      def self.parse(http_resp)
        data = Types::ThrottlingException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for BatchGetAccountStatus
    class BatchGetAccountStatus
      def self.parse(http_resp)
        data = Types::BatchGetAccountStatusOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.accounts = (AccountStateList.parse(map['accounts']) unless map['accounts'].nil?)
        data.failed_accounts = (FailedAccountList.parse(map['failedAccounts']) unless map['failedAccounts'].nil?)
        data
      end
    end

    class FailedAccountList
      def self.parse(list)
        data = []
        list.map do |value|
          data << FailedAccount.parse(value) unless value.nil?
        end
        data
      end
    end

    class FailedAccount
      def self.parse(map)
        data = Types::FailedAccount.new
        data.account_id = map['accountId']
        data.status = map['status']
        data.resource_status = (ResourceStatus.parse(map['resourceStatus']) unless map['resourceStatus'].nil?)
        data.error_code = map['errorCode']
        data.error_message = map['errorMessage']
        return data
      end
    end

    class ResourceStatus
      def self.parse(map)
        data = Types::ResourceStatus.new
        data.ec2 = map['ec2']
        data.ecr = map['ecr']
        return data
      end
    end

    class AccountStateList
      def self.parse(list)
        data = []
        list.map do |value|
          data << AccountState.parse(value) unless value.nil?
        end
        data
      end
    end

    class AccountState
      def self.parse(map)
        data = Types::AccountState.new
        data.account_id = map['accountId']
        data.state = (State.parse(map['state']) unless map['state'].nil?)
        data.resource_state = (ResourceState.parse(map['resourceState']) unless map['resourceState'].nil?)
        return data
      end
    end

    class ResourceState
      def self.parse(map)
        data = Types::ResourceState.new
        data.ec2 = (State.parse(map['ec2']) unless map['ec2'].nil?)
        data.ecr = (State.parse(map['ecr']) unless map['ecr'].nil?)
        return data
      end
    end

    class State
      def self.parse(map)
        data = Types::State.new
        data.status = map['status']
        data.error_code = map['errorCode']
        data.error_message = map['errorMessage']
        return data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for BatchGetFreeTrialInfo
    class BatchGetFreeTrialInfo
      def self.parse(http_resp)
        data = Types::BatchGetFreeTrialInfoOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.accounts = (FreeTrialAccountInfoList.parse(map['accounts']) unless map['accounts'].nil?)
        data.failed_accounts = (FreeTrialInfoErrorList.parse(map['failedAccounts']) unless map['failedAccounts'].nil?)
        data
      end
    end

    class FreeTrialInfoErrorList
      def self.parse(list)
        data = []
        list.map do |value|
          data << FreeTrialInfoError.parse(value) unless value.nil?
        end
        data
      end
    end

    class FreeTrialInfoError
      def self.parse(map)
        data = Types::FreeTrialInfoError.new
        data.account_id = map['accountId']
        data.code = map['code']
        data.message = map['message'] || map['Message']
        return data
      end
    end

    class FreeTrialAccountInfoList
      def self.parse(list)
        data = []
        list.map do |value|
          data << FreeTrialAccountInfo.parse(value) unless value.nil?
        end
        data
      end
    end

    class FreeTrialAccountInfo
      def self.parse(map)
        data = Types::FreeTrialAccountInfo.new
        data.account_id = map['accountId']
        data.free_trial_info = (FreeTrialInfoList.parse(map['freeTrialInfo']) unless map['freeTrialInfo'].nil?)
        return data
      end
    end

    class FreeTrialInfoList
      def self.parse(list)
        data = []
        list.map do |value|
          data << FreeTrialInfo.parse(value) unless value.nil?
        end
        data
      end
    end

    class FreeTrialInfo
      def self.parse(map)
        data = Types::FreeTrialInfo.new
        data.type = map['type']
        data.start = Time.at(map['start'].to_i) if map['start']
        data.end = Time.at(map['end'].to_i) if map['end']
        data.status = map['status']
        return data
      end
    end

    # Operation Parser for CancelFindingsReport
    class CancelFindingsReport
      def self.parse(http_resp)
        data = Types::CancelFindingsReportOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.report_id = map['reportId']
        data
      end
    end

    # Operation Parser for CreateFilter
    class CreateFilter
      def self.parse(http_resp)
        data = Types::CreateFilterOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['arn']
        data
      end
    end

    # Error Parser for BadRequestException
    class BadRequestException
      def self.parse(http_resp)
        data = Types::BadRequestException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ServiceQuotaExceededException
    class ServiceQuotaExceededException
      def self.parse(http_resp)
        data = Types::ServiceQuotaExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.resource_id = map['resourceId']
        data
      end
    end

    # Operation Parser for CreateFindingsReport
    class CreateFindingsReport
      def self.parse(http_resp)
        data = Types::CreateFindingsReportOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.report_id = map['reportId']
        data
      end
    end

    # Operation Parser for DeleteFilter
    class DeleteFilter
      def self.parse(http_resp)
        data = Types::DeleteFilterOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['arn']
        data
      end
    end

    # Operation Parser for DescribeOrganizationConfiguration
    class DescribeOrganizationConfiguration
      def self.parse(http_resp)
        data = Types::DescribeOrganizationConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.auto_enable = (AutoEnable.parse(map['autoEnable']) unless map['autoEnable'].nil?)
        data.max_account_limit_reached = map['maxAccountLimitReached']
        data
      end
    end

    class AutoEnable
      def self.parse(map)
        data = Types::AutoEnable.new
        data.ec2 = map['ec2']
        data.ecr = map['ecr']
        return data
      end
    end

    # Operation Parser for Disable
    class Disable
      def self.parse(http_resp)
        data = Types::DisableOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.accounts = (AccountList.parse(map['accounts']) unless map['accounts'].nil?)
        data.failed_accounts = (FailedAccountList.parse(map['failedAccounts']) unless map['failedAccounts'].nil?)
        data
      end
    end

    class AccountList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Account.parse(value) unless value.nil?
        end
        data
      end
    end

    class Account
      def self.parse(map)
        data = Types::Account.new
        data.account_id = map['accountId']
        data.status = map['status']
        data.resource_status = (ResourceStatus.parse(map['resourceStatus']) unless map['resourceStatus'].nil?)
        return data
      end
    end

    # Operation Parser for DisableDelegatedAdminAccount
    class DisableDelegatedAdminAccount
      def self.parse(http_resp)
        data = Types::DisableDelegatedAdminAccountOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.delegated_admin_account_id = map['delegatedAdminAccountId']
        data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.resource_id = map['resourceId']
        data.resource_type = map['resourceType']
        data
      end
    end

    # Operation Parser for DisassociateMember
    class DisassociateMember
      def self.parse(http_resp)
        data = Types::DisassociateMemberOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.account_id = map['accountId']
        data
      end
    end

    # Operation Parser for Enable
    class Enable
      def self.parse(http_resp)
        data = Types::EnableOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.accounts = (AccountList.parse(map['accounts']) unless map['accounts'].nil?)
        data.failed_accounts = (FailedAccountList.parse(map['failedAccounts']) unless map['failedAccounts'].nil?)
        data
      end
    end

    # Operation Parser for EnableDelegatedAdminAccount
    class EnableDelegatedAdminAccount
      def self.parse(http_resp)
        data = Types::EnableDelegatedAdminAccountOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.delegated_admin_account_id = map['delegatedAdminAccountId']
        data
      end
    end

    # Operation Parser for GetDelegatedAdminAccount
    class GetDelegatedAdminAccount
      def self.parse(http_resp)
        data = Types::GetDelegatedAdminAccountOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.delegated_admin = (DelegatedAdmin.parse(map['delegatedAdmin']) unless map['delegatedAdmin'].nil?)
        data
      end
    end

    class DelegatedAdmin
      def self.parse(map)
        data = Types::DelegatedAdmin.new
        data.account_id = map['accountId']
        data.relationship_status = map['relationshipStatus']
        return data
      end
    end

    # Operation Parser for GetFindingsReportStatus
    class GetFindingsReportStatus
      def self.parse(http_resp)
        data = Types::GetFindingsReportStatusOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.report_id = map['reportId']
        data.status = map['status']
        data.error_code = map['errorCode']
        data.error_message = map['errorMessage']
        data.destination = (Destination.parse(map['destination']) unless map['destination'].nil?)
        data.filter_criteria = (FilterCriteria.parse(map['filterCriteria']) unless map['filterCriteria'].nil?)
        data
      end
    end

    class FilterCriteria
      def self.parse(map)
        data = Types::FilterCriteria.new
        data.finding_arn = (StringFilterList.parse(map['findingArn']) unless map['findingArn'].nil?)
        data.aws_account_id = (StringFilterList.parse(map['awsAccountId']) unless map['awsAccountId'].nil?)
        data.finding_type = (StringFilterList.parse(map['findingType']) unless map['findingType'].nil?)
        data.severity = (StringFilterList.parse(map['severity']) unless map['severity'].nil?)
        data.first_observed_at = (DateFilterList.parse(map['firstObservedAt']) unless map['firstObservedAt'].nil?)
        data.last_observed_at = (DateFilterList.parse(map['lastObservedAt']) unless map['lastObservedAt'].nil?)
        data.updated_at = (DateFilterList.parse(map['updatedAt']) unless map['updatedAt'].nil?)
        data.finding_status = (StringFilterList.parse(map['findingStatus']) unless map['findingStatus'].nil?)
        data.title = (StringFilterList.parse(map['title']) unless map['title'].nil?)
        data.inspector_score = (NumberFilterList.parse(map['inspectorScore']) unless map['inspectorScore'].nil?)
        data.resource_type = (StringFilterList.parse(map['resourceType']) unless map['resourceType'].nil?)
        data.resource_id = (StringFilterList.parse(map['resourceId']) unless map['resourceId'].nil?)
        data.resource_tags = (MapFilterList.parse(map['resourceTags']) unless map['resourceTags'].nil?)
        data.ec2_instance_image_id = (StringFilterList.parse(map['ec2InstanceImageId']) unless map['ec2InstanceImageId'].nil?)
        data.ec2_instance_vpc_id = (StringFilterList.parse(map['ec2InstanceVpcId']) unless map['ec2InstanceVpcId'].nil?)
        data.ec2_instance_subnet_id = (StringFilterList.parse(map['ec2InstanceSubnetId']) unless map['ec2InstanceSubnetId'].nil?)
        data.ecr_image_pushed_at = (DateFilterList.parse(map['ecrImagePushedAt']) unless map['ecrImagePushedAt'].nil?)
        data.ecr_image_architecture = (StringFilterList.parse(map['ecrImageArchitecture']) unless map['ecrImageArchitecture'].nil?)
        data.ecr_image_registry = (StringFilterList.parse(map['ecrImageRegistry']) unless map['ecrImageRegistry'].nil?)
        data.ecr_image_repository_name = (StringFilterList.parse(map['ecrImageRepositoryName']) unless map['ecrImageRepositoryName'].nil?)
        data.ecr_image_tags = (StringFilterList.parse(map['ecrImageTags']) unless map['ecrImageTags'].nil?)
        data.ecr_image_hash = (StringFilterList.parse(map['ecrImageHash']) unless map['ecrImageHash'].nil?)
        data.port_range = (PortRangeFilterList.parse(map['portRange']) unless map['portRange'].nil?)
        data.network_protocol = (StringFilterList.parse(map['networkProtocol']) unless map['networkProtocol'].nil?)
        data.component_id = (StringFilterList.parse(map['componentId']) unless map['componentId'].nil?)
        data.component_type = (StringFilterList.parse(map['componentType']) unless map['componentType'].nil?)
        data.vulnerability_id = (StringFilterList.parse(map['vulnerabilityId']) unless map['vulnerabilityId'].nil?)
        data.vulnerability_source = (StringFilterList.parse(map['vulnerabilitySource']) unless map['vulnerabilitySource'].nil?)
        data.vendor_severity = (StringFilterList.parse(map['vendorSeverity']) unless map['vendorSeverity'].nil?)
        data.vulnerable_packages = (PackageFilterList.parse(map['vulnerablePackages']) unless map['vulnerablePackages'].nil?)
        data.related_vulnerabilities = (StringFilterList.parse(map['relatedVulnerabilities']) unless map['relatedVulnerabilities'].nil?)
        return data
      end
    end

    class StringFilterList
      def self.parse(list)
        data = []
        list.map do |value|
          data << StringFilter.parse(value) unless value.nil?
        end
        data
      end
    end

    class StringFilter
      def self.parse(map)
        data = Types::StringFilter.new
        data.comparison = map['comparison']
        data.value = map['value']
        return data
      end
    end

    class PackageFilterList
      def self.parse(list)
        data = []
        list.map do |value|
          data << PackageFilter.parse(value) unless value.nil?
        end
        data
      end
    end

    class PackageFilter
      def self.parse(map)
        data = Types::PackageFilter.new
        data.name = (StringFilter.parse(map['name']) unless map['name'].nil?)
        data.version = (StringFilter.parse(map['version']) unless map['version'].nil?)
        data.epoch = (NumberFilter.parse(map['epoch']) unless map['epoch'].nil?)
        data.release = (StringFilter.parse(map['release']) unless map['release'].nil?)
        data.architecture = (StringFilter.parse(map['architecture']) unless map['architecture'].nil?)
        data.source_layer_hash = (StringFilter.parse(map['sourceLayerHash']) unless map['sourceLayerHash'].nil?)
        return data
      end
    end

    class NumberFilter
      def self.parse(map)
        data = Types::NumberFilter.new
        data.upper_inclusive = Hearth::NumberHelper.deserialize(map['upperInclusive'])
        data.lower_inclusive = Hearth::NumberHelper.deserialize(map['lowerInclusive'])
        return data
      end
    end

    class PortRangeFilterList
      def self.parse(list)
        data = []
        list.map do |value|
          data << PortRangeFilter.parse(value) unless value.nil?
        end
        data
      end
    end

    class PortRangeFilter
      def self.parse(map)
        data = Types::PortRangeFilter.new
        data.begin_inclusive = map['beginInclusive']
        data.end_inclusive = map['endInclusive']
        return data
      end
    end

    class DateFilterList
      def self.parse(list)
        data = []
        list.map do |value|
          data << DateFilter.parse(value) unless value.nil?
        end
        data
      end
    end

    class DateFilter
      def self.parse(map)
        data = Types::DateFilter.new
        data.start_inclusive = Time.at(map['startInclusive'].to_i) if map['startInclusive']
        data.end_inclusive = Time.at(map['endInclusive'].to_i) if map['endInclusive']
        return data
      end
    end

    class MapFilterList
      def self.parse(list)
        data = []
        list.map do |value|
          data << MapFilter.parse(value) unless value.nil?
        end
        data
      end
    end

    class MapFilter
      def self.parse(map)
        data = Types::MapFilter.new
        data.comparison = map['comparison']
        data.key = map['key']
        data.value = map['value']
        return data
      end
    end

    class NumberFilterList
      def self.parse(list)
        data = []
        list.map do |value|
          data << NumberFilter.parse(value) unless value.nil?
        end
        data
      end
    end

    class Destination
      def self.parse(map)
        data = Types::Destination.new
        data.bucket_name = map['bucketName']
        data.key_prefix = map['keyPrefix']
        data.kms_key_arn = map['kmsKeyArn']
        return data
      end
    end

    # Operation Parser for GetMember
    class GetMember
      def self.parse(http_resp)
        data = Types::GetMemberOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.member = (Member.parse(map['member']) unless map['member'].nil?)
        data
      end
    end

    class Member
      def self.parse(map)
        data = Types::Member.new
        data.account_id = map['accountId']
        data.relationship_status = map['relationshipStatus']
        data.delegated_admin_account_id = map['delegatedAdminAccountId']
        data.updated_at = Time.at(map['updatedAt'].to_i) if map['updatedAt']
        return data
      end
    end

    # Operation Parser for ListAccountPermissions
    class ListAccountPermissions
      def self.parse(http_resp)
        data = Types::ListAccountPermissionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.permissions = (Permissions.parse(map['permissions']) unless map['permissions'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class Permissions
      def self.parse(list)
        data = []
        list.map do |value|
          data << Permission.parse(value) unless value.nil?
        end
        data
      end
    end

    class Permission
      def self.parse(map)
        data = Types::Permission.new
        data.service = map['service']
        data.operation = map['operation']
        return data
      end
    end

    # Operation Parser for ListCoverage
    class ListCoverage
      def self.parse(http_resp)
        data = Types::ListCoverageOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['nextToken']
        data.covered_resources = (CoveredResources.parse(map['coveredResources']) unless map['coveredResources'].nil?)
        data
      end
    end

    class CoveredResources
      def self.parse(list)
        data = []
        list.map do |value|
          data << CoveredResource.parse(value) unless value.nil?
        end
        data
      end
    end

    class CoveredResource
      def self.parse(map)
        data = Types::CoveredResource.new
        data.resource_type = map['resourceType']
        data.resource_id = map['resourceId']
        data.account_id = map['accountId']
        data.scan_type = map['scanType']
        data.scan_status = (ScanStatus.parse(map['scanStatus']) unless map['scanStatus'].nil?)
        data.resource_metadata = (ResourceScanMetadata.parse(map['resourceMetadata']) unless map['resourceMetadata'].nil?)
        return data
      end
    end

    class ResourceScanMetadata
      def self.parse(map)
        data = Types::ResourceScanMetadata.new
        data.ecr_repository = (EcrRepositoryMetadata.parse(map['ecrRepository']) unless map['ecrRepository'].nil?)
        data.ecr_image = (EcrContainerImageMetadata.parse(map['ecrImage']) unless map['ecrImage'].nil?)
        data.ec2 = (Ec2Metadata.parse(map['ec2']) unless map['ec2'].nil?)
        return data
      end
    end

    class Ec2Metadata
      def self.parse(map)
        data = Types::Ec2Metadata.new
        data.tags = (TagMap.parse(map['tags']) unless map['tags'].nil?)
        data.ami_id = map['amiId']
        data.platform = map['platform']
        return data
      end
    end

    class TagMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class EcrContainerImageMetadata
      def self.parse(map)
        data = Types::EcrContainerImageMetadata.new
        data.tags = (TagList.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    class TagList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class EcrRepositoryMetadata
      def self.parse(map)
        data = Types::EcrRepositoryMetadata.new
        data.name = map['name']
        data.scan_frequency = map['scanFrequency']
        return data
      end
    end

    class ScanStatus
      def self.parse(map)
        data = Types::ScanStatus.new
        data.status_code = map['statusCode']
        data.reason = map['reason']
        return data
      end
    end

    # Operation Parser for ListCoverageStatistics
    class ListCoverageStatistics
      def self.parse(http_resp)
        data = Types::ListCoverageStatisticsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.counts_by_group = (CountsList.parse(map['countsByGroup']) unless map['countsByGroup'].nil?)
        data.total_counts = map['totalCounts']
        data.next_token = map['nextToken']
        data
      end
    end

    class CountsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Counts.parse(value) unless value.nil?
        end
        data
      end
    end

    class Counts
      def self.parse(map)
        data = Types::Counts.new
        data.count = map['count']
        data.group_key = map['groupKey']
        return data
      end
    end

    # Operation Parser for ListDelegatedAdminAccounts
    class ListDelegatedAdminAccounts
      def self.parse(http_resp)
        data = Types::ListDelegatedAdminAccountsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.delegated_admin_accounts = (DelegatedAdminAccountList.parse(map['delegatedAdminAccounts']) unless map['delegatedAdminAccounts'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class DelegatedAdminAccountList
      def self.parse(list)
        data = []
        list.map do |value|
          data << DelegatedAdminAccount.parse(value) unless value.nil?
        end
        data
      end
    end

    class DelegatedAdminAccount
      def self.parse(map)
        data = Types::DelegatedAdminAccount.new
        data.account_id = map['accountId']
        data.status = map['status']
        return data
      end
    end

    # Operation Parser for ListFilters
    class ListFilters
      def self.parse(http_resp)
        data = Types::ListFiltersOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.filters = (FilterList.parse(map['filters']) unless map['filters'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class FilterList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Filter.parse(value) unless value.nil?
        end
        data
      end
    end

    class Filter
      def self.parse(map)
        data = Types::Filter.new
        data.arn = map['arn']
        data.owner_id = map['ownerId']
        data.name = map['name']
        data.criteria = (FilterCriteria.parse(map['criteria']) unless map['criteria'].nil?)
        data.action = map['action']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.updated_at = Time.at(map['updatedAt'].to_i) if map['updatedAt']
        data.description = map['description']
        data.reason = map['reason']
        data.tags = (TagMap.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    # Operation Parser for ListFindingAggregations
    class ListFindingAggregations
      def self.parse(http_resp)
        data = Types::ListFindingAggregationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.aggregation_type = map['aggregationType']
        data.responses = (AggregationResponseList.parse(map['responses']) unless map['responses'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class AggregationResponseList
      def self.parse(list)
        data = []
        list.map do |value|
          data << AggregationResponse.parse(value) unless value.nil?
        end
        data
      end
    end

    class AggregationResponse
      def self.parse(map)
        key, value = map.flatten
        case key
        when 'accountAggregation'
          value = (AccountAggregationResponse.parse(value) unless value.nil?)
          Types::AggregationResponse::AccountAggregation.new(value) if value
        when 'amiAggregation'
          value = (AmiAggregationResponse.parse(value) unless value.nil?)
          Types::AggregationResponse::AmiAggregation.new(value) if value
        when 'awsEcrContainerAggregation'
          value = (AwsEcrContainerAggregationResponse.parse(value) unless value.nil?)
          Types::AggregationResponse::AwsEcrContainerAggregation.new(value) if value
        when 'ec2InstanceAggregation'
          value = (Ec2InstanceAggregationResponse.parse(value) unless value.nil?)
          Types::AggregationResponse::Ec2InstanceAggregation.new(value) if value
        when 'findingTypeAggregation'
          value = (FindingTypeAggregationResponse.parse(value) unless value.nil?)
          Types::AggregationResponse::FindingTypeAggregation.new(value) if value
        when 'imageLayerAggregation'
          value = (ImageLayerAggregationResponse.parse(value) unless value.nil?)
          Types::AggregationResponse::ImageLayerAggregation.new(value) if value
        when 'packageAggregation'
          value = (PackageAggregationResponse.parse(value) unless value.nil?)
          Types::AggregationResponse::PackageAggregation.new(value) if value
        when 'repositoryAggregation'
          value = (RepositoryAggregationResponse.parse(value) unless value.nil?)
          Types::AggregationResponse::RepositoryAggregation.new(value) if value
        when 'titleAggregation'
          value = (TitleAggregationResponse.parse(value) unless value.nil?)
          Types::AggregationResponse::TitleAggregation.new(value) if value
        else
          Types::AggregationResponse::Unknown.new({name: key, value: value})
        end
      end
    end

    class TitleAggregationResponse
      def self.parse(map)
        data = Types::TitleAggregationResponse.new
        data.title = map['title']
        data.vulnerability_id = map['vulnerabilityId']
        data.account_id = map['accountId']
        data.severity_counts = (SeverityCounts.parse(map['severityCounts']) unless map['severityCounts'].nil?)
        return data
      end
    end

    class SeverityCounts
      def self.parse(map)
        data = Types::SeverityCounts.new
        data.all = map['all']
        data.medium = map['medium']
        data.high = map['high']
        data.critical = map['critical']
        return data
      end
    end

    class RepositoryAggregationResponse
      def self.parse(map)
        data = Types::RepositoryAggregationResponse.new
        data.repository = map['repository']
        data.account_id = map['accountId']
        data.severity_counts = (SeverityCounts.parse(map['severityCounts']) unless map['severityCounts'].nil?)
        data.affected_images = map['affectedImages']
        return data
      end
    end

    class PackageAggregationResponse
      def self.parse(map)
        data = Types::PackageAggregationResponse.new
        data.package_name = map['packageName']
        data.account_id = map['accountId']
        data.severity_counts = (SeverityCounts.parse(map['severityCounts']) unless map['severityCounts'].nil?)
        return data
      end
    end

    class ImageLayerAggregationResponse
      def self.parse(map)
        data = Types::ImageLayerAggregationResponse.new
        data.repository = map['repository']
        data.resource_id = map['resourceId']
        data.layer_hash = map['layerHash']
        data.account_id = map['accountId']
        data.severity_counts = (SeverityCounts.parse(map['severityCounts']) unless map['severityCounts'].nil?)
        return data
      end
    end

    class FindingTypeAggregationResponse
      def self.parse(map)
        data = Types::FindingTypeAggregationResponse.new
        data.account_id = map['accountId']
        data.severity_counts = (SeverityCounts.parse(map['severityCounts']) unless map['severityCounts'].nil?)
        return data
      end
    end

    class Ec2InstanceAggregationResponse
      def self.parse(map)
        data = Types::Ec2InstanceAggregationResponse.new
        data.instance_id = map['instanceId']
        data.ami = map['ami']
        data.operating_system = map['operatingSystem']
        data.instance_tags = (TagMap.parse(map['instanceTags']) unless map['instanceTags'].nil?)
        data.account_id = map['accountId']
        data.severity_counts = (SeverityCounts.parse(map['severityCounts']) unless map['severityCounts'].nil?)
        data.network_findings = map['networkFindings']
        return data
      end
    end

    class AwsEcrContainerAggregationResponse
      def self.parse(map)
        data = Types::AwsEcrContainerAggregationResponse.new
        data.resource_id = map['resourceId']
        data.image_sha = map['imageSha']
        data.repository = map['repository']
        data.architecture = map['architecture']
        data.image_tags = (StringList.parse(map['imageTags']) unless map['imageTags'].nil?)
        data.account_id = map['accountId']
        data.severity_counts = (SeverityCounts.parse(map['severityCounts']) unless map['severityCounts'].nil?)
        return data
      end
    end

    class StringList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class AmiAggregationResponse
      def self.parse(map)
        data = Types::AmiAggregationResponse.new
        data.ami = map['ami']
        data.account_id = map['accountId']
        data.severity_counts = (SeverityCounts.parse(map['severityCounts']) unless map['severityCounts'].nil?)
        data.affected_instances = map['affectedInstances']
        return data
      end
    end

    class AccountAggregationResponse
      def self.parse(map)
        data = Types::AccountAggregationResponse.new
        data.account_id = map['accountId']
        data.severity_counts = (SeverityCounts.parse(map['severityCounts']) unless map['severityCounts'].nil?)
        return data
      end
    end

    # Operation Parser for ListFindings
    class ListFindings
      def self.parse(http_resp)
        data = Types::ListFindingsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['nextToken']
        data.findings = (FindingList.parse(map['findings']) unless map['findings'].nil?)
        data
      end
    end

    class FindingList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Finding.parse(value) unless value.nil?
        end
        data
      end
    end

    class Finding
      def self.parse(map)
        data = Types::Finding.new
        data.finding_arn = map['findingArn']
        data.aws_account_id = map['awsAccountId']
        data.type = map['type']
        data.description = map['description']
        data.title = map['title']
        data.remediation = (Remediation.parse(map['remediation']) unless map['remediation'].nil?)
        data.severity = map['severity']
        data.first_observed_at = Time.at(map['firstObservedAt'].to_i) if map['firstObservedAt']
        data.last_observed_at = Time.at(map['lastObservedAt'].to_i) if map['lastObservedAt']
        data.updated_at = Time.at(map['updatedAt'].to_i) if map['updatedAt']
        data.status = map['status']
        data.resources = (ResourceList.parse(map['resources']) unless map['resources'].nil?)
        data.inspector_score = Hearth::NumberHelper.deserialize(map['inspectorScore'])
        data.inspector_score_details = (InspectorScoreDetails.parse(map['inspectorScoreDetails']) unless map['inspectorScoreDetails'].nil?)
        data.network_reachability_details = (NetworkReachabilityDetails.parse(map['networkReachabilityDetails']) unless map['networkReachabilityDetails'].nil?)
        data.package_vulnerability_details = (PackageVulnerabilityDetails.parse(map['packageVulnerabilityDetails']) unless map['packageVulnerabilityDetails'].nil?)
        return data
      end
    end

    class PackageVulnerabilityDetails
      def self.parse(map)
        data = Types::PackageVulnerabilityDetails.new
        data.vulnerability_id = map['vulnerabilityId']
        data.vulnerable_packages = (VulnerablePackageList.parse(map['vulnerablePackages']) unless map['vulnerablePackages'].nil?)
        data.source = map['source']
        data.cvss = (CvssScoreList.parse(map['cvss']) unless map['cvss'].nil?)
        data.related_vulnerabilities = (VulnerabilityIdList.parse(map['relatedVulnerabilities']) unless map['relatedVulnerabilities'].nil?)
        data.source_url = map['sourceUrl']
        data.vendor_severity = map['vendorSeverity']
        data.vendor_created_at = Time.at(map['vendorCreatedAt'].to_i) if map['vendorCreatedAt']
        data.vendor_updated_at = Time.at(map['vendorUpdatedAt'].to_i) if map['vendorUpdatedAt']
        data.reference_urls = (NonEmptyStringList.parse(map['referenceUrls']) unless map['referenceUrls'].nil?)
        return data
      end
    end

    class NonEmptyStringList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class VulnerabilityIdList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class CvssScoreList
      def self.parse(list)
        data = []
        list.map do |value|
          data << CvssScore.parse(value) unless value.nil?
        end
        data
      end
    end

    class CvssScore
      def self.parse(map)
        data = Types::CvssScore.new
        data.base_score = Hearth::NumberHelper.deserialize(map['baseScore'])
        data.scoring_vector = map['scoringVector']
        data.version = map['version']
        data.source = map['source']
        return data
      end
    end

    class VulnerablePackageList
      def self.parse(list)
        data = []
        list.map do |value|
          data << VulnerablePackage.parse(value) unless value.nil?
        end
        data
      end
    end

    class VulnerablePackage
      def self.parse(map)
        data = Types::VulnerablePackage.new
        data.name = map['name']
        data.version = map['version']
        data.source_layer_hash = map['sourceLayerHash']
        data.epoch = map['epoch']
        data.release = map['release']
        data.arch = map['arch']
        data.package_manager = map['packageManager']
        data.file_path = map['filePath']
        data.fixed_in_version = map['fixedInVersion']
        return data
      end
    end

    class NetworkReachabilityDetails
      def self.parse(map)
        data = Types::NetworkReachabilityDetails.new
        data.open_port_range = (PortRange.parse(map['openPortRange']) unless map['openPortRange'].nil?)
        data.protocol = map['protocol']
        data.network_path = (NetworkPath.parse(map['networkPath']) unless map['networkPath'].nil?)
        return data
      end
    end

    class NetworkPath
      def self.parse(map)
        data = Types::NetworkPath.new
        data.steps = (StepList.parse(map['steps']) unless map['steps'].nil?)
        return data
      end
    end

    class StepList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Step.parse(value) unless value.nil?
        end
        data
      end
    end

    class Step
      def self.parse(map)
        data = Types::Step.new
        data.component_id = map['componentId']
        data.component_type = map['componentType']
        return data
      end
    end

    class PortRange
      def self.parse(map)
        data = Types::PortRange.new
        data.begin = map['begin']
        data.end = map['end']
        return data
      end
    end

    class InspectorScoreDetails
      def self.parse(map)
        data = Types::InspectorScoreDetails.new
        data.adjusted_cvss = (CvssScoreDetails.parse(map['adjustedCvss']) unless map['adjustedCvss'].nil?)
        return data
      end
    end

    class CvssScoreDetails
      def self.parse(map)
        data = Types::CvssScoreDetails.new
        data.score_source = map['scoreSource']
        data.cvss_source = map['cvssSource']
        data.version = map['version']
        data.score = Hearth::NumberHelper.deserialize(map['score'])
        data.scoring_vector = map['scoringVector']
        data.adjustments = (CvssScoreAdjustmentList.parse(map['adjustments']) unless map['adjustments'].nil?)
        return data
      end
    end

    class CvssScoreAdjustmentList
      def self.parse(list)
        data = []
        list.map do |value|
          data << CvssScoreAdjustment.parse(value) unless value.nil?
        end
        data
      end
    end

    class CvssScoreAdjustment
      def self.parse(map)
        data = Types::CvssScoreAdjustment.new
        data.metric = map['metric']
        data.reason = map['reason']
        return data
      end
    end

    class ResourceList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Resource.parse(value) unless value.nil?
        end
        data
      end
    end

    class Resource
      def self.parse(map)
        data = Types::Resource.new
        data.type = map['type']
        data.id = map['id']
        data.partition = map['partition']
        data.region = map['region']
        data.tags = (TagMap.parse(map['tags']) unless map['tags'].nil?)
        data.details = (ResourceDetails.parse(map['details']) unless map['details'].nil?)
        return data
      end
    end

    class ResourceDetails
      def self.parse(map)
        data = Types::ResourceDetails.new
        data.aws_ec2_instance = (AwsEc2InstanceDetails.parse(map['awsEc2Instance']) unless map['awsEc2Instance'].nil?)
        data.aws_ecr_container_image = (AwsEcrContainerImageDetails.parse(map['awsEcrContainerImage']) unless map['awsEcrContainerImage'].nil?)
        return data
      end
    end

    class AwsEcrContainerImageDetails
      def self.parse(map)
        data = Types::AwsEcrContainerImageDetails.new
        data.repository_name = map['repositoryName']
        data.image_tags = (ImageTagList.parse(map['imageTags']) unless map['imageTags'].nil?)
        data.pushed_at = Time.at(map['pushedAt'].to_i) if map['pushedAt']
        data.author = map['author']
        data.architecture = map['architecture']
        data.image_hash = map['imageHash']
        data.registry = map['registry']
        data.platform = map['platform']
        return data
      end
    end

    class ImageTagList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class AwsEc2InstanceDetails
      def self.parse(map)
        data = Types::AwsEc2InstanceDetails.new
        data.type = map['type']
        data.image_id = map['imageId']
        data.ip_v4_addresses = (IpV4AddressList.parse(map['ipV4Addresses']) unless map['ipV4Addresses'].nil?)
        data.ip_v6_addresses = (IpV6AddressList.parse(map['ipV6Addresses']) unless map['ipV6Addresses'].nil?)
        data.key_name = map['keyName']
        data.iam_instance_profile_arn = map['iamInstanceProfileArn']
        data.vpc_id = map['vpcId']
        data.subnet_id = map['subnetId']
        data.launched_at = Time.at(map['launchedAt'].to_i) if map['launchedAt']
        data.platform = map['platform']
        return data
      end
    end

    class IpV6AddressList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class IpV4AddressList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class Remediation
      def self.parse(map)
        data = Types::Remediation.new
        data.recommendation = (Recommendation.parse(map['recommendation']) unless map['recommendation'].nil?)
        return data
      end
    end

    class Recommendation
      def self.parse(map)
        data = Types::Recommendation.new
        data.text = map['text']
        data.url = map['Url']
        return data
      end
    end

    # Operation Parser for ListMembers
    class ListMembers
      def self.parse(http_resp)
        data = Types::ListMembersOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.members = (MemberList.parse(map['members']) unless map['members'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class MemberList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Member.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (TagMap.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for ListUsageTotals
    class ListUsageTotals
      def self.parse(http_resp)
        data = Types::ListUsageTotalsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['nextToken']
        data.totals = (UsageTotalList.parse(map['totals']) unless map['totals'].nil?)
        data
      end
    end

    class UsageTotalList
      def self.parse(list)
        data = []
        list.map do |value|
          data << UsageTotal.parse(value) unless value.nil?
        end
        data
      end
    end

    class UsageTotal
      def self.parse(map)
        data = Types::UsageTotal.new
        data.account_id = map['accountId']
        data.usage = (UsageList.parse(map['usage']) unless map['usage'].nil?)
        return data
      end
    end

    class UsageList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Usage.parse(value) unless value.nil?
        end
        data
      end
    end

    class Usage
      def self.parse(map)
        data = Types::Usage.new
        data.type = map['type']
        data.total = Hearth::NumberHelper.deserialize(map['total'])
        data.estimated_monthly_cost = Hearth::NumberHelper.deserialize(map['estimatedMonthlyCost'])
        data.currency = map['currency']
        return data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateFilter
    class UpdateFilter
      def self.parse(http_resp)
        data = Types::UpdateFilterOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['arn']
        data
      end
    end

    # Operation Parser for UpdateOrganizationConfiguration
    class UpdateOrganizationConfiguration
      def self.parse(http_resp)
        data = Types::UpdateOrganizationConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.auto_enable = (AutoEnable.parse(map['autoEnable']) unless map['autoEnable'].nil?)
        data
      end
    end
  end
end
