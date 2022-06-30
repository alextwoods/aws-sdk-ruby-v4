# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::Inspector2
  module Builders

    # Operation Builder for AssociateMember
    class AssociateMember
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/members/associate')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['accountId'] = input[:account_id] unless input[:account_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for BatchGetAccountStatus
    class BatchGetAccountStatus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/status/batch/get')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['accountIds'] = Builders::AccountIdSet.build(input[:account_ids]).to_a unless input[:account_ids].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Set Builder for AccountIdSet
    class AccountIdSet
      def self.build(input)
        data = Set.new
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for BatchGetFreeTrialInfo
    class BatchGetFreeTrialInfo
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/freetrialinfo/batchget')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['accountIds'] = Builders::MeteringAccountIdList.build(input[:account_ids]) unless input[:account_ids].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for MeteringAccountIdList
    class MeteringAccountIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CancelFindingsReport
    class CancelFindingsReport
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/reporting/cancel')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['reportId'] = input[:report_id] unless input[:report_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateFilter
    class CreateFilter
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/filters/create')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['action'] = input[:action] unless input[:action].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['filterCriteria'] = Builders::FilterCriteria.build(input[:filter_criteria]) unless input[:filter_criteria].nil?
        data['name'] = input[:name] unless input[:name].nil?
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

    # Structure Builder for FilterCriteria
    class FilterCriteria
      def self.build(input)
        data = {}
        data['findingArn'] = Builders::StringFilterList.build(input[:finding_arn]) unless input[:finding_arn].nil?
        data['awsAccountId'] = Builders::StringFilterList.build(input[:aws_account_id]) unless input[:aws_account_id].nil?
        data['findingType'] = Builders::StringFilterList.build(input[:finding_type]) unless input[:finding_type].nil?
        data['severity'] = Builders::StringFilterList.build(input[:severity]) unless input[:severity].nil?
        data['firstObservedAt'] = Builders::DateFilterList.build(input[:first_observed_at]) unless input[:first_observed_at].nil?
        data['lastObservedAt'] = Builders::DateFilterList.build(input[:last_observed_at]) unless input[:last_observed_at].nil?
        data['updatedAt'] = Builders::DateFilterList.build(input[:updated_at]) unless input[:updated_at].nil?
        data['findingStatus'] = Builders::StringFilterList.build(input[:finding_status]) unless input[:finding_status].nil?
        data['title'] = Builders::StringFilterList.build(input[:title]) unless input[:title].nil?
        data['inspectorScore'] = Builders::NumberFilterList.build(input[:inspector_score]) unless input[:inspector_score].nil?
        data['resourceType'] = Builders::StringFilterList.build(input[:resource_type]) unless input[:resource_type].nil?
        data['resourceId'] = Builders::StringFilterList.build(input[:resource_id]) unless input[:resource_id].nil?
        data['resourceTags'] = Builders::MapFilterList.build(input[:resource_tags]) unless input[:resource_tags].nil?
        data['ec2InstanceImageId'] = Builders::StringFilterList.build(input[:ec2_instance_image_id]) unless input[:ec2_instance_image_id].nil?
        data['ec2InstanceVpcId'] = Builders::StringFilterList.build(input[:ec2_instance_vpc_id]) unless input[:ec2_instance_vpc_id].nil?
        data['ec2InstanceSubnetId'] = Builders::StringFilterList.build(input[:ec2_instance_subnet_id]) unless input[:ec2_instance_subnet_id].nil?
        data['ecrImagePushedAt'] = Builders::DateFilterList.build(input[:ecr_image_pushed_at]) unless input[:ecr_image_pushed_at].nil?
        data['ecrImageArchitecture'] = Builders::StringFilterList.build(input[:ecr_image_architecture]) unless input[:ecr_image_architecture].nil?
        data['ecrImageRegistry'] = Builders::StringFilterList.build(input[:ecr_image_registry]) unless input[:ecr_image_registry].nil?
        data['ecrImageRepositoryName'] = Builders::StringFilterList.build(input[:ecr_image_repository_name]) unless input[:ecr_image_repository_name].nil?
        data['ecrImageTags'] = Builders::StringFilterList.build(input[:ecr_image_tags]) unless input[:ecr_image_tags].nil?
        data['ecrImageHash'] = Builders::StringFilterList.build(input[:ecr_image_hash]) unless input[:ecr_image_hash].nil?
        data['portRange'] = Builders::PortRangeFilterList.build(input[:port_range]) unless input[:port_range].nil?
        data['networkProtocol'] = Builders::StringFilterList.build(input[:network_protocol]) unless input[:network_protocol].nil?
        data['componentId'] = Builders::StringFilterList.build(input[:component_id]) unless input[:component_id].nil?
        data['componentType'] = Builders::StringFilterList.build(input[:component_type]) unless input[:component_type].nil?
        data['vulnerabilityId'] = Builders::StringFilterList.build(input[:vulnerability_id]) unless input[:vulnerability_id].nil?
        data['vulnerabilitySource'] = Builders::StringFilterList.build(input[:vulnerability_source]) unless input[:vulnerability_source].nil?
        data['vendorSeverity'] = Builders::StringFilterList.build(input[:vendor_severity]) unless input[:vendor_severity].nil?
        data['vulnerablePackages'] = Builders::PackageFilterList.build(input[:vulnerable_packages]) unless input[:vulnerable_packages].nil?
        data['relatedVulnerabilities'] = Builders::StringFilterList.build(input[:related_vulnerabilities]) unless input[:related_vulnerabilities].nil?
        data
      end
    end

    # List Builder for StringFilterList
    class StringFilterList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::StringFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for StringFilter
    class StringFilter
      def self.build(input)
        data = {}
        data['comparison'] = input[:comparison] unless input[:comparison].nil?
        data['value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # List Builder for PackageFilterList
    class PackageFilterList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::PackageFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for PackageFilter
    class PackageFilter
      def self.build(input)
        data = {}
        data['name'] = Builders::StringFilter.build(input[:name]) unless input[:name].nil?
        data['version'] = Builders::StringFilter.build(input[:version]) unless input[:version].nil?
        data['epoch'] = Builders::NumberFilter.build(input[:epoch]) unless input[:epoch].nil?
        data['release'] = Builders::StringFilter.build(input[:release]) unless input[:release].nil?
        data['architecture'] = Builders::StringFilter.build(input[:architecture]) unless input[:architecture].nil?
        data['sourceLayerHash'] = Builders::StringFilter.build(input[:source_layer_hash]) unless input[:source_layer_hash].nil?
        data
      end
    end

    # Structure Builder for NumberFilter
    class NumberFilter
      def self.build(input)
        data = {}
        data['upperInclusive'] = Hearth::NumberHelper.serialize(input[:upper_inclusive]) unless input[:upper_inclusive].nil?
        data['lowerInclusive'] = Hearth::NumberHelper.serialize(input[:lower_inclusive]) unless input[:lower_inclusive].nil?
        data
      end
    end

    # List Builder for PortRangeFilterList
    class PortRangeFilterList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::PortRangeFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for PortRangeFilter
    class PortRangeFilter
      def self.build(input)
        data = {}
        data['beginInclusive'] = input[:begin_inclusive] unless input[:begin_inclusive].nil?
        data['endInclusive'] = input[:end_inclusive] unless input[:end_inclusive].nil?
        data
      end
    end

    # List Builder for DateFilterList
    class DateFilterList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::DateFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for DateFilter
    class DateFilter
      def self.build(input)
        data = {}
        data['startInclusive'] = Hearth::TimeHelper.to_epoch_seconds(input[:start_inclusive]).to_i unless input[:start_inclusive].nil?
        data['endInclusive'] = Hearth::TimeHelper.to_epoch_seconds(input[:end_inclusive]).to_i unless input[:end_inclusive].nil?
        data
      end
    end

    # List Builder for MapFilterList
    class MapFilterList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::MapFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for MapFilter
    class MapFilter
      def self.build(input)
        data = {}
        data['comparison'] = input[:comparison] unless input[:comparison].nil?
        data['key'] = input[:key] unless input[:key].nil?
        data['value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # List Builder for NumberFilterList
    class NumberFilterList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::NumberFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateFindingsReport
    class CreateFindingsReport
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/reporting/create')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['filterCriteria'] = Builders::FilterCriteria.build(input[:filter_criteria]) unless input[:filter_criteria].nil?
        data['reportFormat'] = input[:report_format] unless input[:report_format].nil?
        data['s3Destination'] = Builders::Destination.build(input[:s3_destination]) unless input[:s3_destination].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for Destination
    class Destination
      def self.build(input)
        data = {}
        data['bucketName'] = input[:bucket_name] unless input[:bucket_name].nil?
        data['keyPrefix'] = input[:key_prefix] unless input[:key_prefix].nil?
        data['kmsKeyArn'] = input[:kms_key_arn] unless input[:kms_key_arn].nil?
        data
      end
    end

    # Operation Builder for DeleteFilter
    class DeleteFilter
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/filters/delete')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['arn'] = input[:arn] unless input[:arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeOrganizationConfiguration
    class DescribeOrganizationConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/organizationconfiguration/describe')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for Disable
    class Disable
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/disable')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['accountIds'] = Builders::AccountIdSet.build(input[:account_ids]).to_a unless input[:account_ids].nil?
        data['resourceTypes'] = Builders::DisableResourceTypeList.build(input[:resource_types]) unless input[:resource_types].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for DisableResourceTypeList
    class DisableResourceTypeList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DisableDelegatedAdminAccount
    class DisableDelegatedAdminAccount
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/delegatedadminaccounts/disable')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['delegatedAdminAccountId'] = input[:delegated_admin_account_id] unless input[:delegated_admin_account_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DisassociateMember
    class DisassociateMember
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/members/disassociate')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['accountId'] = input[:account_id] unless input[:account_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for Enable
    class Enable
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/enable')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['accountIds'] = Builders::AccountIdSet.build(input[:account_ids]).to_a unless input[:account_ids].nil?
        data['resourceTypes'] = Builders::EnableResourceTypeList.build(input[:resource_types]) unless input[:resource_types].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for EnableResourceTypeList
    class EnableResourceTypeList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for EnableDelegatedAdminAccount
    class EnableDelegatedAdminAccount
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/delegatedadminaccounts/enable')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['delegatedAdminAccountId'] = input[:delegated_admin_account_id] unless input[:delegated_admin_account_id].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetDelegatedAdminAccount
    class GetDelegatedAdminAccount
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/delegatedadminaccounts/get')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetFindingsReportStatus
    class GetFindingsReportStatus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/reporting/status/get')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['reportId'] = input[:report_id] unless input[:report_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetMember
    class GetMember
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/members/get')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['accountId'] = input[:account_id] unless input[:account_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListAccountPermissions
    class ListAccountPermissions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/accountpermissions/list')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['service'] = input[:service] unless input[:service].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListCoverage
    class ListCoverage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/coverage/list')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['filterCriteria'] = Builders::CoverageFilterCriteria.build(input[:filter_criteria]) unless input[:filter_criteria].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for CoverageFilterCriteria
    class CoverageFilterCriteria
      def self.build(input)
        data = {}
        data['scanStatusCode'] = Builders::CoverageStringFilterList.build(input[:scan_status_code]) unless input[:scan_status_code].nil?
        data['scanStatusReason'] = Builders::CoverageStringFilterList.build(input[:scan_status_reason]) unless input[:scan_status_reason].nil?
        data['accountId'] = Builders::CoverageStringFilterList.build(input[:account_id]) unless input[:account_id].nil?
        data['resourceId'] = Builders::CoverageStringFilterList.build(input[:resource_id]) unless input[:resource_id].nil?
        data['resourceType'] = Builders::CoverageStringFilterList.build(input[:resource_type]) unless input[:resource_type].nil?
        data['scanType'] = Builders::CoverageStringFilterList.build(input[:scan_type]) unless input[:scan_type].nil?
        data['ecrRepositoryName'] = Builders::CoverageStringFilterList.build(input[:ecr_repository_name]) unless input[:ecr_repository_name].nil?
        data['ecrImageTags'] = Builders::CoverageStringFilterList.build(input[:ecr_image_tags]) unless input[:ecr_image_tags].nil?
        data['ec2InstanceTags'] = Builders::CoverageMapFilterList.build(input[:ec2_instance_tags]) unless input[:ec2_instance_tags].nil?
        data
      end
    end

    # List Builder for CoverageMapFilterList
    class CoverageMapFilterList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::CoverageMapFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for CoverageMapFilter
    class CoverageMapFilter
      def self.build(input)
        data = {}
        data['comparison'] = input[:comparison] unless input[:comparison].nil?
        data['key'] = input[:key] unless input[:key].nil?
        data['value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # List Builder for CoverageStringFilterList
    class CoverageStringFilterList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::CoverageStringFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for CoverageStringFilter
    class CoverageStringFilter
      def self.build(input)
        data = {}
        data['comparison'] = input[:comparison] unless input[:comparison].nil?
        data['value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for ListCoverageStatistics
    class ListCoverageStatistics
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/coverage/statistics/list')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['filterCriteria'] = Builders::CoverageFilterCriteria.build(input[:filter_criteria]) unless input[:filter_criteria].nil?
        data['groupBy'] = input[:group_by] unless input[:group_by].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListDelegatedAdminAccounts
    class ListDelegatedAdminAccounts
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/delegatedadminaccounts/list')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListFilters
    class ListFilters
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/filters/list')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['arns'] = Builders::FilterArnList.build(input[:arns]) unless input[:arns].nil?
        data['action'] = input[:action] unless input[:action].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for FilterArnList
    class FilterArnList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ListFindingAggregations
    class ListFindingAggregations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/findings/aggregation/list')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['aggregationType'] = input[:aggregation_type] unless input[:aggregation_type].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['accountIds'] = Builders::StringFilterList.build(input[:account_ids]) unless input[:account_ids].nil?
        data['aggregationRequest'] = Builders::AggregationRequest.build(input[:aggregation_request]) unless input[:aggregation_request].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for AggregationRequest
    class AggregationRequest
      def self.build(input)
        data = {}
        case input
        when Types::AggregationRequest::AccountAggregation
          data['accountAggregation'] = (Builders::AccountAggregation.build(input) unless input.nil?)
        when Types::AggregationRequest::AmiAggregation
          data['amiAggregation'] = (Builders::AmiAggregation.build(input) unless input.nil?)
        when Types::AggregationRequest::AwsEcrContainerAggregation
          data['awsEcrContainerAggregation'] = (Builders::AwsEcrContainerAggregation.build(input) unless input.nil?)
        when Types::AggregationRequest::Ec2InstanceAggregation
          data['ec2InstanceAggregation'] = (Builders::Ec2InstanceAggregation.build(input) unless input.nil?)
        when Types::AggregationRequest::FindingTypeAggregation
          data['findingTypeAggregation'] = (Builders::FindingTypeAggregation.build(input) unless input.nil?)
        when Types::AggregationRequest::ImageLayerAggregation
          data['imageLayerAggregation'] = (Builders::ImageLayerAggregation.build(input) unless input.nil?)
        when Types::AggregationRequest::PackageAggregation
          data['packageAggregation'] = (Builders::PackageAggregation.build(input) unless input.nil?)
        when Types::AggregationRequest::RepositoryAggregation
          data['repositoryAggregation'] = (Builders::RepositoryAggregation.build(input) unless input.nil?)
        when Types::AggregationRequest::TitleAggregation
          data['titleAggregation'] = (Builders::TitleAggregation.build(input) unless input.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::AggregationRequest"
        end

        data
      end
    end

    # Structure Builder for TitleAggregation
    class TitleAggregation
      def self.build(input)
        data = {}
        data['titles'] = Builders::StringFilterList.build(input[:titles]) unless input[:titles].nil?
        data['vulnerabilityIds'] = Builders::StringFilterList.build(input[:vulnerability_ids]) unless input[:vulnerability_ids].nil?
        data['resourceType'] = input[:resource_type] unless input[:resource_type].nil?
        data['sortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        data['sortBy'] = input[:sort_by] unless input[:sort_by].nil?
        data
      end
    end

    # Structure Builder for RepositoryAggregation
    class RepositoryAggregation
      def self.build(input)
        data = {}
        data['repositories'] = Builders::StringFilterList.build(input[:repositories]) unless input[:repositories].nil?
        data['sortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        data['sortBy'] = input[:sort_by] unless input[:sort_by].nil?
        data
      end
    end

    # Structure Builder for PackageAggregation
    class PackageAggregation
      def self.build(input)
        data = {}
        data['packageNames'] = Builders::StringFilterList.build(input[:package_names]) unless input[:package_names].nil?
        data['sortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        data['sortBy'] = input[:sort_by] unless input[:sort_by].nil?
        data
      end
    end

    # Structure Builder for ImageLayerAggregation
    class ImageLayerAggregation
      def self.build(input)
        data = {}
        data['repositories'] = Builders::StringFilterList.build(input[:repositories]) unless input[:repositories].nil?
        data['resourceIds'] = Builders::StringFilterList.build(input[:resource_ids]) unless input[:resource_ids].nil?
        data['layerHashes'] = Builders::StringFilterList.build(input[:layer_hashes]) unless input[:layer_hashes].nil?
        data['sortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        data['sortBy'] = input[:sort_by] unless input[:sort_by].nil?
        data
      end
    end

    # Structure Builder for FindingTypeAggregation
    class FindingTypeAggregation
      def self.build(input)
        data = {}
        data['findingType'] = input[:finding_type] unless input[:finding_type].nil?
        data['resourceType'] = input[:resource_type] unless input[:resource_type].nil?
        data['sortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        data['sortBy'] = input[:sort_by] unless input[:sort_by].nil?
        data
      end
    end

    # Structure Builder for Ec2InstanceAggregation
    class Ec2InstanceAggregation
      def self.build(input)
        data = {}
        data['amis'] = Builders::StringFilterList.build(input[:amis]) unless input[:amis].nil?
        data['operatingSystems'] = Builders::StringFilterList.build(input[:operating_systems]) unless input[:operating_systems].nil?
        data['instanceIds'] = Builders::StringFilterList.build(input[:instance_ids]) unless input[:instance_ids].nil?
        data['instanceTags'] = Builders::MapFilterList.build(input[:instance_tags]) unless input[:instance_tags].nil?
        data['sortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        data['sortBy'] = input[:sort_by] unless input[:sort_by].nil?
        data
      end
    end

    # Structure Builder for AwsEcrContainerAggregation
    class AwsEcrContainerAggregation
      def self.build(input)
        data = {}
        data['resourceIds'] = Builders::StringFilterList.build(input[:resource_ids]) unless input[:resource_ids].nil?
        data['imageShas'] = Builders::StringFilterList.build(input[:image_shas]) unless input[:image_shas].nil?
        data['repositories'] = Builders::StringFilterList.build(input[:repositories]) unless input[:repositories].nil?
        data['architectures'] = Builders::StringFilterList.build(input[:architectures]) unless input[:architectures].nil?
        data['imageTags'] = Builders::StringFilterList.build(input[:image_tags]) unless input[:image_tags].nil?
        data['sortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        data['sortBy'] = input[:sort_by] unless input[:sort_by].nil?
        data
      end
    end

    # Structure Builder for AmiAggregation
    class AmiAggregation
      def self.build(input)
        data = {}
        data['amis'] = Builders::StringFilterList.build(input[:amis]) unless input[:amis].nil?
        data['sortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        data['sortBy'] = input[:sort_by] unless input[:sort_by].nil?
        data
      end
    end

    # Structure Builder for AccountAggregation
    class AccountAggregation
      def self.build(input)
        data = {}
        data['findingType'] = input[:finding_type] unless input[:finding_type].nil?
        data['resourceType'] = input[:resource_type] unless input[:resource_type].nil?
        data['sortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        data['sortBy'] = input[:sort_by] unless input[:sort_by].nil?
        data
      end
    end

    # Operation Builder for ListFindings
    class ListFindings
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/findings/list')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['filterCriteria'] = Builders::FilterCriteria.build(input[:filter_criteria]) unless input[:filter_criteria].nil?
        data['sortCriteria'] = Builders::SortCriteria.build(input[:sort_criteria]) unless input[:sort_criteria].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for SortCriteria
    class SortCriteria
      def self.build(input)
        data = {}
        data['field'] = input[:field] unless input[:field].nil?
        data['sortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        data
      end
    end

    # Operation Builder for ListMembers
    class ListMembers
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/members/list')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['onlyAssociated'] = input[:only_associated] unless input[:only_associated].nil?
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

    # Operation Builder for ListUsageTotals
    class ListUsageTotals
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/usage/list')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['accountIds'] = Builders::UsageAccountIdList.build(input[:account_ids]) unless input[:account_ids].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for UsageAccountIdList
    class UsageAccountIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
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

    # Operation Builder for UpdateFilter
    class UpdateFilter
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/filters/update')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['action'] = input[:action] unless input[:action].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['filterCriteria'] = Builders::FilterCriteria.build(input[:filter_criteria]) unless input[:filter_criteria].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['filterArn'] = input[:filter_arn] unless input[:filter_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateOrganizationConfiguration
    class UpdateOrganizationConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/organizationconfiguration/update')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['autoEnable'] = Builders::AutoEnable.build(input[:auto_enable]) unless input[:auto_enable].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for AutoEnable
    class AutoEnable
      def self.build(input)
        data = {}
        data['ec2'] = input[:ec2] unless input[:ec2].nil?
        data['ecr'] = input[:ecr] unless input[:ecr].nil?
        data
      end
    end
  end
end
