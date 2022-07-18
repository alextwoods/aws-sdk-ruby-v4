# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::GuardDuty
  module Builders

    # Operation Builder for AcceptInvitation
    class AcceptInvitation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:detector_id].to_s.empty?
          raise ArgumentError, "HTTP label :detector_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/detector/%<DetectorId>s/master',
            DetectorId: Hearth::HTTP.uri_escape(input[:detector_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['masterId'] = input[:master_id] unless input[:master_id].nil?
        data['invitationId'] = input[:invitation_id] unless input[:invitation_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ArchiveFindings
    class ArchiveFindings
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:detector_id].to_s.empty?
          raise ArgumentError, "HTTP label :detector_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/detector/%<DetectorId>s/findings/archive',
            DetectorId: Hearth::HTTP.uri_escape(input[:detector_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['findingIds'] = Builders::FindingIds.build(input[:finding_ids]) unless input[:finding_ids].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for FindingIds
    class FindingIds
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateDetector
    class CreateDetector
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/detector')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['enable'] = input[:enable] unless input[:enable].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        data['findingPublishingFrequency'] = input[:finding_publishing_frequency] unless input[:finding_publishing_frequency].nil?
        data['dataSources'] = Builders::DataSourceConfigurations.build(input[:data_sources]) unless input[:data_sources].nil?
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

    # Structure Builder for DataSourceConfigurations
    class DataSourceConfigurations
      def self.build(input)
        data = {}
        data['s3Logs'] = Builders::S3LogsConfiguration.build(input[:s3_logs]) unless input[:s3_logs].nil?
        data['kubernetes'] = Builders::KubernetesConfiguration.build(input[:kubernetes]) unless input[:kubernetes].nil?
        data
      end
    end

    # Structure Builder for KubernetesConfiguration
    class KubernetesConfiguration
      def self.build(input)
        data = {}
        data['auditLogs'] = Builders::KubernetesAuditLogsConfiguration.build(input[:audit_logs]) unless input[:audit_logs].nil?
        data
      end
    end

    # Structure Builder for KubernetesAuditLogsConfiguration
    class KubernetesAuditLogsConfiguration
      def self.build(input)
        data = {}
        data['enable'] = input[:enable] unless input[:enable].nil?
        data
      end
    end

    # Structure Builder for S3LogsConfiguration
    class S3LogsConfiguration
      def self.build(input)
        data = {}
        data['enable'] = input[:enable] unless input[:enable].nil?
        data
      end
    end

    # Operation Builder for CreateFilter
    class CreateFilter
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:detector_id].to_s.empty?
          raise ArgumentError, "HTTP label :detector_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/detector/%<DetectorId>s/filter',
            DetectorId: Hearth::HTTP.uri_escape(input[:detector_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['action'] = input[:action] unless input[:action].nil?
        data['rank'] = input[:rank] unless input[:rank].nil?
        data['findingCriteria'] = Builders::FindingCriteria.build(input[:finding_criteria]) unless input[:finding_criteria].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        data['tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for FindingCriteria
    class FindingCriteria
      def self.build(input)
        data = {}
        data['criterion'] = Builders::Criterion.build(input[:criterion]) unless input[:criterion].nil?
        data
      end
    end

    # Map Builder for Criterion
    class Criterion
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::Condition.build(value) unless value.nil?
        end
        data
      end
    end

    # Structure Builder for Condition
    class Condition
      def self.build(input)
        data = {}
        data['eq'] = Builders::Eq.build(input[:eq]) unless input[:eq].nil?
        data['neq'] = Builders::Neq.build(input[:neq]) unless input[:neq].nil?
        data['gt'] = input[:gt] unless input[:gt].nil?
        data['gte'] = input[:gte] unless input[:gte].nil?
        data['lt'] = input[:lt] unless input[:lt].nil?
        data['lte'] = input[:lte] unless input[:lte].nil?
        data['equals'] = Builders::Equals.build(input[:equals]) unless input[:equals].nil?
        data['notEquals'] = Builders::NotEquals.build(input[:not_equals]) unless input[:not_equals].nil?
        data['greaterThan'] = input[:greater_than] unless input[:greater_than].nil?
        data['greaterThanOrEqual'] = input[:greater_than_or_equal] unless input[:greater_than_or_equal].nil?
        data['lessThan'] = input[:less_than] unless input[:less_than].nil?
        data['lessThanOrEqual'] = input[:less_than_or_equal] unless input[:less_than_or_equal].nil?
        data
      end
    end

    # List Builder for NotEquals
    class NotEquals
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for Equals
    class Equals
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for Neq
    class Neq
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for Eq
    class Eq
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateIPSet
    class CreateIPSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:detector_id].to_s.empty?
          raise ArgumentError, "HTTP label :detector_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/detector/%<DetectorId>s/ipset',
            DetectorId: Hearth::HTTP.uri_escape(input[:detector_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['format'] = input[:format] unless input[:format].nil?
        data['location'] = input[:location] unless input[:location].nil?
        data['activate'] = input[:activate] unless input[:activate].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        data['tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateMembers
    class CreateMembers
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:detector_id].to_s.empty?
          raise ArgumentError, "HTTP label :detector_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/detector/%<DetectorId>s/member',
            DetectorId: Hearth::HTTP.uri_escape(input[:detector_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['accountDetails'] = Builders::AccountDetails.build(input[:account_details]) unless input[:account_details].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for AccountDetails
    class AccountDetails
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AccountDetail.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AccountDetail
    class AccountDetail
      def self.build(input)
        data = {}
        data['accountId'] = input[:account_id] unless input[:account_id].nil?
        data['email'] = input[:email] unless input[:email].nil?
        data
      end
    end

    # Operation Builder for CreatePublishingDestination
    class CreatePublishingDestination
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:detector_id].to_s.empty?
          raise ArgumentError, "HTTP label :detector_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/detector/%<DetectorId>s/publishingDestination',
            DetectorId: Hearth::HTTP.uri_escape(input[:detector_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['destinationType'] = input[:destination_type] unless input[:destination_type].nil?
        data['destinationProperties'] = Builders::DestinationProperties.build(input[:destination_properties]) unless input[:destination_properties].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for DestinationProperties
    class DestinationProperties
      def self.build(input)
        data = {}
        data['destinationArn'] = input[:destination_arn] unless input[:destination_arn].nil?
        data['kmsKeyArn'] = input[:kms_key_arn] unless input[:kms_key_arn].nil?
        data
      end
    end

    # Operation Builder for CreateSampleFindings
    class CreateSampleFindings
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:detector_id].to_s.empty?
          raise ArgumentError, "HTTP label :detector_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/detector/%<DetectorId>s/findings/create',
            DetectorId: Hearth::HTTP.uri_escape(input[:detector_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['findingTypes'] = Builders::FindingTypes.build(input[:finding_types]) unless input[:finding_types].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for FindingTypes
    class FindingTypes
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateThreatIntelSet
    class CreateThreatIntelSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:detector_id].to_s.empty?
          raise ArgumentError, "HTTP label :detector_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/detector/%<DetectorId>s/threatintelset',
            DetectorId: Hearth::HTTP.uri_escape(input[:detector_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['format'] = input[:format] unless input[:format].nil?
        data['location'] = input[:location] unless input[:location].nil?
        data['activate'] = input[:activate] unless input[:activate].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        data['tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeclineInvitations
    class DeclineInvitations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/invitation/decline')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['accountIds'] = Builders::AccountIds.build(input[:account_ids]) unless input[:account_ids].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for AccountIds
    class AccountIds
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DeleteDetector
    class DeleteDetector
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:detector_id].to_s.empty?
          raise ArgumentError, "HTTP label :detector_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/detector/%<DetectorId>s',
            DetectorId: Hearth::HTTP.uri_escape(input[:detector_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteFilter
    class DeleteFilter
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:detector_id].to_s.empty?
          raise ArgumentError, "HTTP label :detector_id cannot be nil or empty."
        end
        if input[:filter_name].to_s.empty?
          raise ArgumentError, "HTTP label :filter_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/detector/%<DetectorId>s/filter/%<FilterName>s',
            DetectorId: Hearth::HTTP.uri_escape(input[:detector_id].to_s),
            FilterName: Hearth::HTTP.uri_escape(input[:filter_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteIPSet
    class DeleteIPSet
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:detector_id].to_s.empty?
          raise ArgumentError, "HTTP label :detector_id cannot be nil or empty."
        end
        if input[:ip_set_id].to_s.empty?
          raise ArgumentError, "HTTP label :ip_set_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/detector/%<DetectorId>s/ipset/%<IpSetId>s',
            DetectorId: Hearth::HTTP.uri_escape(input[:detector_id].to_s),
            IpSetId: Hearth::HTTP.uri_escape(input[:ip_set_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteInvitations
    class DeleteInvitations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/invitation/delete')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['accountIds'] = Builders::AccountIds.build(input[:account_ids]) unless input[:account_ids].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteMembers
    class DeleteMembers
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:detector_id].to_s.empty?
          raise ArgumentError, "HTTP label :detector_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/detector/%<DetectorId>s/member/delete',
            DetectorId: Hearth::HTTP.uri_escape(input[:detector_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['accountIds'] = Builders::AccountIds.build(input[:account_ids]) unless input[:account_ids].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeletePublishingDestination
    class DeletePublishingDestination
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:detector_id].to_s.empty?
          raise ArgumentError, "HTTP label :detector_id cannot be nil or empty."
        end
        if input[:destination_id].to_s.empty?
          raise ArgumentError, "HTTP label :destination_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/detector/%<DetectorId>s/publishingDestination/%<DestinationId>s',
            DetectorId: Hearth::HTTP.uri_escape(input[:detector_id].to_s),
            DestinationId: Hearth::HTTP.uri_escape(input[:destination_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteThreatIntelSet
    class DeleteThreatIntelSet
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:detector_id].to_s.empty?
          raise ArgumentError, "HTTP label :detector_id cannot be nil or empty."
        end
        if input[:threat_intel_set_id].to_s.empty?
          raise ArgumentError, "HTTP label :threat_intel_set_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/detector/%<DetectorId>s/threatintelset/%<ThreatIntelSetId>s',
            DetectorId: Hearth::HTTP.uri_escape(input[:detector_id].to_s),
            ThreatIntelSetId: Hearth::HTTP.uri_escape(input[:threat_intel_set_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeOrganizationConfiguration
    class DescribeOrganizationConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:detector_id].to_s.empty?
          raise ArgumentError, "HTTP label :detector_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/detector/%<DetectorId>s/admin',
            DetectorId: Hearth::HTTP.uri_escape(input[:detector_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribePublishingDestination
    class DescribePublishingDestination
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:detector_id].to_s.empty?
          raise ArgumentError, "HTTP label :detector_id cannot be nil or empty."
        end
        if input[:destination_id].to_s.empty?
          raise ArgumentError, "HTTP label :destination_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/detector/%<DetectorId>s/publishingDestination/%<DestinationId>s',
            DetectorId: Hearth::HTTP.uri_escape(input[:detector_id].to_s),
            DestinationId: Hearth::HTTP.uri_escape(input[:destination_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DisableOrganizationAdminAccount
    class DisableOrganizationAdminAccount
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/admin/disable')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['adminAccountId'] = input[:admin_account_id] unless input[:admin_account_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DisassociateFromMasterAccount
    class DisassociateFromMasterAccount
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:detector_id].to_s.empty?
          raise ArgumentError, "HTTP label :detector_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/detector/%<DetectorId>s/master/disassociate',
            DetectorId: Hearth::HTTP.uri_escape(input[:detector_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DisassociateMembers
    class DisassociateMembers
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:detector_id].to_s.empty?
          raise ArgumentError, "HTTP label :detector_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/detector/%<DetectorId>s/member/disassociate',
            DetectorId: Hearth::HTTP.uri_escape(input[:detector_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['accountIds'] = Builders::AccountIds.build(input[:account_ids]) unless input[:account_ids].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for EnableOrganizationAdminAccount
    class EnableOrganizationAdminAccount
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/admin/enable')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['adminAccountId'] = input[:admin_account_id] unless input[:admin_account_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetDetector
    class GetDetector
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:detector_id].to_s.empty?
          raise ArgumentError, "HTTP label :detector_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/detector/%<DetectorId>s',
            DetectorId: Hearth::HTTP.uri_escape(input[:detector_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetFilter
    class GetFilter
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:detector_id].to_s.empty?
          raise ArgumentError, "HTTP label :detector_id cannot be nil or empty."
        end
        if input[:filter_name].to_s.empty?
          raise ArgumentError, "HTTP label :filter_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/detector/%<DetectorId>s/filter/%<FilterName>s',
            DetectorId: Hearth::HTTP.uri_escape(input[:detector_id].to_s),
            FilterName: Hearth::HTTP.uri_escape(input[:filter_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetFindings
    class GetFindings
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:detector_id].to_s.empty?
          raise ArgumentError, "HTTP label :detector_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/detector/%<DetectorId>s/findings/get',
            DetectorId: Hearth::HTTP.uri_escape(input[:detector_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['findingIds'] = Builders::FindingIds.build(input[:finding_ids]) unless input[:finding_ids].nil?
        data['sortCriteria'] = Builders::SortCriteria.build(input[:sort_criteria]) unless input[:sort_criteria].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for SortCriteria
    class SortCriteria
      def self.build(input)
        data = {}
        data['attributeName'] = input[:attribute_name] unless input[:attribute_name].nil?
        data['orderBy'] = input[:order_by] unless input[:order_by].nil?
        data
      end
    end

    # Operation Builder for GetFindingsStatistics
    class GetFindingsStatistics
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:detector_id].to_s.empty?
          raise ArgumentError, "HTTP label :detector_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/detector/%<DetectorId>s/findings/statistics',
            DetectorId: Hearth::HTTP.uri_escape(input[:detector_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['findingStatisticTypes'] = Builders::FindingStatisticTypes.build(input[:finding_statistic_types]) unless input[:finding_statistic_types].nil?
        data['findingCriteria'] = Builders::FindingCriteria.build(input[:finding_criteria]) unless input[:finding_criteria].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for FindingStatisticTypes
    class FindingStatisticTypes
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for GetIPSet
    class GetIPSet
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:detector_id].to_s.empty?
          raise ArgumentError, "HTTP label :detector_id cannot be nil or empty."
        end
        if input[:ip_set_id].to_s.empty?
          raise ArgumentError, "HTTP label :ip_set_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/detector/%<DetectorId>s/ipset/%<IpSetId>s',
            DetectorId: Hearth::HTTP.uri_escape(input[:detector_id].to_s),
            IpSetId: Hearth::HTTP.uri_escape(input[:ip_set_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetInvitationsCount
    class GetInvitationsCount
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/invitation/count')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetMasterAccount
    class GetMasterAccount
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:detector_id].to_s.empty?
          raise ArgumentError, "HTTP label :detector_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/detector/%<DetectorId>s/master',
            DetectorId: Hearth::HTTP.uri_escape(input[:detector_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetMemberDetectors
    class GetMemberDetectors
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:detector_id].to_s.empty?
          raise ArgumentError, "HTTP label :detector_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/detector/%<DetectorId>s/member/detector/get',
            DetectorId: Hearth::HTTP.uri_escape(input[:detector_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['accountIds'] = Builders::AccountIds.build(input[:account_ids]) unless input[:account_ids].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetMembers
    class GetMembers
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:detector_id].to_s.empty?
          raise ArgumentError, "HTTP label :detector_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/detector/%<DetectorId>s/member/get',
            DetectorId: Hearth::HTTP.uri_escape(input[:detector_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['accountIds'] = Builders::AccountIds.build(input[:account_ids]) unless input[:account_ids].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetThreatIntelSet
    class GetThreatIntelSet
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:detector_id].to_s.empty?
          raise ArgumentError, "HTTP label :detector_id cannot be nil or empty."
        end
        if input[:threat_intel_set_id].to_s.empty?
          raise ArgumentError, "HTTP label :threat_intel_set_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/detector/%<DetectorId>s/threatintelset/%<ThreatIntelSetId>s',
            DetectorId: Hearth::HTTP.uri_escape(input[:detector_id].to_s),
            ThreatIntelSetId: Hearth::HTTP.uri_escape(input[:threat_intel_set_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetUsageStatistics
    class GetUsageStatistics
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:detector_id].to_s.empty?
          raise ArgumentError, "HTTP label :detector_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/detector/%<DetectorId>s/usage/statistics',
            DetectorId: Hearth::HTTP.uri_escape(input[:detector_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['usageStatisticsType'] = input[:usage_statistic_type] unless input[:usage_statistic_type].nil?
        data['usageCriteria'] = Builders::UsageCriteria.build(input[:usage_criteria]) unless input[:usage_criteria].nil?
        data['unit'] = input[:unit] unless input[:unit].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for UsageCriteria
    class UsageCriteria
      def self.build(input)
        data = {}
        data['accountIds'] = Builders::AccountIds.build(input[:account_ids]) unless input[:account_ids].nil?
        data['dataSources'] = Builders::DataSourceList.build(input[:data_sources]) unless input[:data_sources].nil?
        data['resources'] = Builders::ResourceList.build(input[:resources]) unless input[:resources].nil?
        data
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

    # List Builder for DataSourceList
    class DataSourceList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for InviteMembers
    class InviteMembers
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:detector_id].to_s.empty?
          raise ArgumentError, "HTTP label :detector_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/detector/%<DetectorId>s/member/invite',
            DetectorId: Hearth::HTTP.uri_escape(input[:detector_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['accountIds'] = Builders::AccountIds.build(input[:account_ids]) unless input[:account_ids].nil?
        data['disableEmailNotification'] = input[:disable_email_notification] unless input[:disable_email_notification].nil?
        data['message'] = input[:message] unless input[:message].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListDetectors
    class ListDetectors
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/detector')
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListFilters
    class ListFilters
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:detector_id].to_s.empty?
          raise ArgumentError, "HTTP label :detector_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/detector/%<DetectorId>s/filter',
            DetectorId: Hearth::HTTP.uri_escape(input[:detector_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListFindings
    class ListFindings
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:detector_id].to_s.empty?
          raise ArgumentError, "HTTP label :detector_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/detector/%<DetectorId>s/findings',
            DetectorId: Hearth::HTTP.uri_escape(input[:detector_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['findingCriteria'] = Builders::FindingCriteria.build(input[:finding_criteria]) unless input[:finding_criteria].nil?
        data['sortCriteria'] = Builders::SortCriteria.build(input[:sort_criteria]) unless input[:sort_criteria].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListIPSets
    class ListIPSets
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:detector_id].to_s.empty?
          raise ArgumentError, "HTTP label :detector_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/detector/%<DetectorId>s/ipset',
            DetectorId: Hearth::HTTP.uri_escape(input[:detector_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListInvitations
    class ListInvitations
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/invitation')
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListMembers
    class ListMembers
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:detector_id].to_s.empty?
          raise ArgumentError, "HTTP label :detector_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/detector/%<DetectorId>s/member',
            DetectorId: Hearth::HTTP.uri_escape(input[:detector_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['onlyAssociated'] = input[:only_associated].to_s unless input[:only_associated].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListOrganizationAdminAccounts
    class ListOrganizationAdminAccounts
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/admin')
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListPublishingDestinations
    class ListPublishingDestinations
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:detector_id].to_s.empty?
          raise ArgumentError, "HTTP label :detector_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/detector/%<DetectorId>s/publishingDestination',
            DetectorId: Hearth::HTTP.uri_escape(input[:detector_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
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
            '/tags/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListThreatIntelSets
    class ListThreatIntelSets
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:detector_id].to_s.empty?
          raise ArgumentError, "HTTP label :detector_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/detector/%<DetectorId>s/threatintelset',
            DetectorId: Hearth::HTTP.uri_escape(input[:detector_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for StartMonitoringMembers
    class StartMonitoringMembers
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:detector_id].to_s.empty?
          raise ArgumentError, "HTTP label :detector_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/detector/%<DetectorId>s/member/start',
            DetectorId: Hearth::HTTP.uri_escape(input[:detector_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['accountIds'] = Builders::AccountIds.build(input[:account_ids]) unless input[:account_ids].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StopMonitoringMembers
    class StopMonitoringMembers
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:detector_id].to_s.empty?
          raise ArgumentError, "HTTP label :detector_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/detector/%<DetectorId>s/member/stop',
            DetectorId: Hearth::HTTP.uri_escape(input[:detector_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['accountIds'] = Builders::AccountIds.build(input[:account_ids]) unless input[:account_ids].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
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
            '/tags/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
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

    # Operation Builder for UnarchiveFindings
    class UnarchiveFindings
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:detector_id].to_s.empty?
          raise ArgumentError, "HTTP label :detector_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/detector/%<DetectorId>s/findings/unarchive',
            DetectorId: Hearth::HTTP.uri_escape(input[:detector_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['findingIds'] = Builders::FindingIds.build(input[:finding_ids]) unless input[:finding_ids].nil?
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
            '/tags/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
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

    # Operation Builder for UpdateDetector
    class UpdateDetector
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:detector_id].to_s.empty?
          raise ArgumentError, "HTTP label :detector_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/detector/%<DetectorId>s',
            DetectorId: Hearth::HTTP.uri_escape(input[:detector_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['enable'] = input[:enable] unless input[:enable].nil?
        data['findingPublishingFrequency'] = input[:finding_publishing_frequency] unless input[:finding_publishing_frequency].nil?
        data['dataSources'] = Builders::DataSourceConfigurations.build(input[:data_sources]) unless input[:data_sources].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateFilter
    class UpdateFilter
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:detector_id].to_s.empty?
          raise ArgumentError, "HTTP label :detector_id cannot be nil or empty."
        end
        if input[:filter_name].to_s.empty?
          raise ArgumentError, "HTTP label :filter_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/detector/%<DetectorId>s/filter/%<FilterName>s',
            DetectorId: Hearth::HTTP.uri_escape(input[:detector_id].to_s),
            FilterName: Hearth::HTTP.uri_escape(input[:filter_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['description'] = input[:description] unless input[:description].nil?
        data['action'] = input[:action] unless input[:action].nil?
        data['rank'] = input[:rank] unless input[:rank].nil?
        data['findingCriteria'] = Builders::FindingCriteria.build(input[:finding_criteria]) unless input[:finding_criteria].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateFindingsFeedback
    class UpdateFindingsFeedback
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:detector_id].to_s.empty?
          raise ArgumentError, "HTTP label :detector_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/detector/%<DetectorId>s/findings/feedback',
            DetectorId: Hearth::HTTP.uri_escape(input[:detector_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['findingIds'] = Builders::FindingIds.build(input[:finding_ids]) unless input[:finding_ids].nil?
        data['feedback'] = input[:feedback] unless input[:feedback].nil?
        data['comments'] = input[:comments] unless input[:comments].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateIPSet
    class UpdateIPSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:detector_id].to_s.empty?
          raise ArgumentError, "HTTP label :detector_id cannot be nil or empty."
        end
        if input[:ip_set_id].to_s.empty?
          raise ArgumentError, "HTTP label :ip_set_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/detector/%<DetectorId>s/ipset/%<IpSetId>s',
            DetectorId: Hearth::HTTP.uri_escape(input[:detector_id].to_s),
            IpSetId: Hearth::HTTP.uri_escape(input[:ip_set_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['location'] = input[:location] unless input[:location].nil?
        data['activate'] = input[:activate] unless input[:activate].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateMemberDetectors
    class UpdateMemberDetectors
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:detector_id].to_s.empty?
          raise ArgumentError, "HTTP label :detector_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/detector/%<DetectorId>s/member/detector/update',
            DetectorId: Hearth::HTTP.uri_escape(input[:detector_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['accountIds'] = Builders::AccountIds.build(input[:account_ids]) unless input[:account_ids].nil?
        data['dataSources'] = Builders::DataSourceConfigurations.build(input[:data_sources]) unless input[:data_sources].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateOrganizationConfiguration
    class UpdateOrganizationConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:detector_id].to_s.empty?
          raise ArgumentError, "HTTP label :detector_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/detector/%<DetectorId>s/admin',
            DetectorId: Hearth::HTTP.uri_escape(input[:detector_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['autoEnable'] = input[:auto_enable] unless input[:auto_enable].nil?
        data['dataSources'] = Builders::OrganizationDataSourceConfigurations.build(input[:data_sources]) unless input[:data_sources].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for OrganizationDataSourceConfigurations
    class OrganizationDataSourceConfigurations
      def self.build(input)
        data = {}
        data['s3Logs'] = Builders::OrganizationS3LogsConfiguration.build(input[:s3_logs]) unless input[:s3_logs].nil?
        data['kubernetes'] = Builders::OrganizationKubernetesConfiguration.build(input[:kubernetes]) unless input[:kubernetes].nil?
        data
      end
    end

    # Structure Builder for OrganizationKubernetesConfiguration
    class OrganizationKubernetesConfiguration
      def self.build(input)
        data = {}
        data['auditLogs'] = Builders::OrganizationKubernetesAuditLogsConfiguration.build(input[:audit_logs]) unless input[:audit_logs].nil?
        data
      end
    end

    # Structure Builder for OrganizationKubernetesAuditLogsConfiguration
    class OrganizationKubernetesAuditLogsConfiguration
      def self.build(input)
        data = {}
        data['autoEnable'] = input[:auto_enable] unless input[:auto_enable].nil?
        data
      end
    end

    # Structure Builder for OrganizationS3LogsConfiguration
    class OrganizationS3LogsConfiguration
      def self.build(input)
        data = {}
        data['autoEnable'] = input[:auto_enable] unless input[:auto_enable].nil?
        data
      end
    end

    # Operation Builder for UpdatePublishingDestination
    class UpdatePublishingDestination
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:detector_id].to_s.empty?
          raise ArgumentError, "HTTP label :detector_id cannot be nil or empty."
        end
        if input[:destination_id].to_s.empty?
          raise ArgumentError, "HTTP label :destination_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/detector/%<DetectorId>s/publishingDestination/%<DestinationId>s',
            DetectorId: Hearth::HTTP.uri_escape(input[:detector_id].to_s),
            DestinationId: Hearth::HTTP.uri_escape(input[:destination_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['destinationProperties'] = Builders::DestinationProperties.build(input[:destination_properties]) unless input[:destination_properties].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateThreatIntelSet
    class UpdateThreatIntelSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:detector_id].to_s.empty?
          raise ArgumentError, "HTTP label :detector_id cannot be nil or empty."
        end
        if input[:threat_intel_set_id].to_s.empty?
          raise ArgumentError, "HTTP label :threat_intel_set_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/detector/%<DetectorId>s/threatintelset/%<ThreatIntelSetId>s',
            DetectorId: Hearth::HTTP.uri_escape(input[:detector_id].to_s),
            ThreatIntelSetId: Hearth::HTTP.uri_escape(input[:threat_intel_set_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['location'] = input[:location] unless input[:location].nil?
        data['activate'] = input[:activate] unless input[:activate].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
