# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Support
  module Parsers

    # Operation Parser for AddAttachmentsToSet
    class AddAttachmentsToSet
      def self.parse(http_resp)
        data = Types::AddAttachmentsToSetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.attachment_set_id = map['attachmentSetId']
        data.expiry_time = map['expiryTime']
        data
      end
    end

    # Error Parser for AttachmentSetIdNotFound
    class AttachmentSetIdNotFound
      def self.parse(http_resp)
        data = Types::AttachmentSetIdNotFound.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for AttachmentLimitExceeded
    class AttachmentLimitExceeded
      def self.parse(http_resp)
        data = Types::AttachmentLimitExceeded.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for AttachmentSetExpired
    class AttachmentSetExpired
      def self.parse(http_resp)
        data = Types::AttachmentSetExpired.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for AttachmentSetSizeLimitExceeded
    class AttachmentSetSizeLimitExceeded
      def self.parse(http_resp)
        data = Types::AttachmentSetSizeLimitExceeded.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InternalServerError
    class InternalServerError
      def self.parse(http_resp)
        data = Types::InternalServerError.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for AddCommunicationToCase
    class AddCommunicationToCase
      def self.parse(http_resp)
        data = Types::AddCommunicationToCaseOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.result = map['result']
        data
      end
    end

    # Error Parser for CaseIdNotFound
    class CaseIdNotFound
      def self.parse(http_resp)
        data = Types::CaseIdNotFound.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for CreateCase
    class CreateCase
      def self.parse(http_resp)
        data = Types::CreateCaseOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.case_id = map['caseId']
        data
      end
    end

    # Error Parser for CaseCreationLimitExceeded
    class CaseCreationLimitExceeded
      def self.parse(http_resp)
        data = Types::CaseCreationLimitExceeded.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for DescribeAttachment
    class DescribeAttachment
      def self.parse(http_resp)
        data = Types::DescribeAttachmentOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.attachment = (Parsers::Attachment.parse(map['attachment']) unless map['attachment'].nil?)
        data
      end
    end

    class Attachment
      def self.parse(map)
        data = Types::Attachment.new
        data.file_name = map['fileName']
        data.data = Base64::decode64(map['data']) unless map['data'].nil?
        return data
      end
    end

    # Error Parser for AttachmentIdNotFound
    class AttachmentIdNotFound
      def self.parse(http_resp)
        data = Types::AttachmentIdNotFound.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for DescribeAttachmentLimitExceeded
    class DescribeAttachmentLimitExceeded
      def self.parse(http_resp)
        data = Types::DescribeAttachmentLimitExceeded.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for DescribeCases
    class DescribeCases
      def self.parse(http_resp)
        data = Types::DescribeCasesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.cases = (Parsers::CaseList.parse(map['cases']) unless map['cases'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class CaseList
      def self.parse(list)
        list.map do |value|
          Parsers::CaseDetails.parse(value) unless value.nil?
        end
      end
    end

    class CaseDetails
      def self.parse(map)
        data = Types::CaseDetails.new
        data.case_id = map['caseId']
        data.display_id = map['displayId']
        data.subject = map['subject']
        data.status = map['status']
        data.service_code = map['serviceCode']
        data.category_code = map['categoryCode']
        data.severity_code = map['severityCode']
        data.submitted_by = map['submittedBy']
        data.time_created = map['timeCreated']
        data.recent_communications = (Parsers::RecentCaseCommunications.parse(map['recentCommunications']) unless map['recentCommunications'].nil?)
        data.cc_email_addresses = (Parsers::CcEmailAddressList.parse(map['ccEmailAddresses']) unless map['ccEmailAddresses'].nil?)
        data.language = map['language']
        return data
      end
    end

    class CcEmailAddressList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class RecentCaseCommunications
      def self.parse(map)
        data = Types::RecentCaseCommunications.new
        data.communications = (Parsers::CommunicationList.parse(map['communications']) unless map['communications'].nil?)
        data.next_token = map['nextToken']
        return data
      end
    end

    class CommunicationList
      def self.parse(list)
        list.map do |value|
          Parsers::Communication.parse(value) unless value.nil?
        end
      end
    end

    class Communication
      def self.parse(map)
        data = Types::Communication.new
        data.case_id = map['caseId']
        data.body = map['body']
        data.submitted_by = map['submittedBy']
        data.time_created = map['timeCreated']
        data.attachment_set = (Parsers::AttachmentSet.parse(map['attachmentSet']) unless map['attachmentSet'].nil?)
        return data
      end
    end

    class AttachmentSet
      def self.parse(list)
        list.map do |value|
          Parsers::AttachmentDetails.parse(value) unless value.nil?
        end
      end
    end

    class AttachmentDetails
      def self.parse(map)
        data = Types::AttachmentDetails.new
        data.attachment_id = map['attachmentId']
        data.file_name = map['fileName']
        return data
      end
    end

    # Operation Parser for DescribeCommunications
    class DescribeCommunications
      def self.parse(http_resp)
        data = Types::DescribeCommunicationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.communications = (Parsers::CommunicationList.parse(map['communications']) unless map['communications'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    # Operation Parser for DescribeServices
    class DescribeServices
      def self.parse(http_resp)
        data = Types::DescribeServicesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.services = (Parsers::ServiceList.parse(map['services']) unless map['services'].nil?)
        data
      end
    end

    class ServiceList
      def self.parse(list)
        list.map do |value|
          Parsers::Service.parse(value) unless value.nil?
        end
      end
    end

    class Service
      def self.parse(map)
        data = Types::Service.new
        data.code = map['code']
        data.name = map['name']
        data.categories = (Parsers::CategoryList.parse(map['categories']) unless map['categories'].nil?)
        return data
      end
    end

    class CategoryList
      def self.parse(list)
        list.map do |value|
          Parsers::Category.parse(value) unless value.nil?
        end
      end
    end

    class Category
      def self.parse(map)
        data = Types::Category.new
        data.code = map['code']
        data.name = map['name']
        return data
      end
    end

    # Operation Parser for DescribeSeverityLevels
    class DescribeSeverityLevels
      def self.parse(http_resp)
        data = Types::DescribeSeverityLevelsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.severity_levels = (Parsers::SeverityLevelsList.parse(map['severityLevels']) unless map['severityLevels'].nil?)
        data
      end
    end

    class SeverityLevelsList
      def self.parse(list)
        list.map do |value|
          Parsers::SeverityLevel.parse(value) unless value.nil?
        end
      end
    end

    class SeverityLevel
      def self.parse(map)
        data = Types::SeverityLevel.new
        data.code = map['code']
        data.name = map['name']
        return data
      end
    end

    # Operation Parser for DescribeTrustedAdvisorCheckRefreshStatuses
    class DescribeTrustedAdvisorCheckRefreshStatuses
      def self.parse(http_resp)
        data = Types::DescribeTrustedAdvisorCheckRefreshStatusesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.statuses = (Parsers::TrustedAdvisorCheckRefreshStatusList.parse(map['statuses']) unless map['statuses'].nil?)
        data
      end
    end

    class TrustedAdvisorCheckRefreshStatusList
      def self.parse(list)
        list.map do |value|
          Parsers::TrustedAdvisorCheckRefreshStatus.parse(value) unless value.nil?
        end
      end
    end

    class TrustedAdvisorCheckRefreshStatus
      def self.parse(map)
        data = Types::TrustedAdvisorCheckRefreshStatus.new
        data.check_id = map['checkId']
        data.status = map['status']
        data.millis_until_next_refreshable = map['millisUntilNextRefreshable']
        return data
      end
    end

    # Operation Parser for DescribeTrustedAdvisorCheckResult
    class DescribeTrustedAdvisorCheckResult
      def self.parse(http_resp)
        data = Types::DescribeTrustedAdvisorCheckResultOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.result = (Parsers::TrustedAdvisorCheckResult.parse(map['result']) unless map['result'].nil?)
        data
      end
    end

    class TrustedAdvisorCheckResult
      def self.parse(map)
        data = Types::TrustedAdvisorCheckResult.new
        data.check_id = map['checkId']
        data.timestamp = map['timestamp']
        data.status = map['status']
        data.resources_summary = (Parsers::TrustedAdvisorResourcesSummary.parse(map['resourcesSummary']) unless map['resourcesSummary'].nil?)
        data.category_specific_summary = (Parsers::TrustedAdvisorCategorySpecificSummary.parse(map['categorySpecificSummary']) unless map['categorySpecificSummary'].nil?)
        data.flagged_resources = (Parsers::TrustedAdvisorResourceDetailList.parse(map['flaggedResources']) unless map['flaggedResources'].nil?)
        return data
      end
    end

    class TrustedAdvisorResourceDetailList
      def self.parse(list)
        list.map do |value|
          Parsers::TrustedAdvisorResourceDetail.parse(value) unless value.nil?
        end
      end
    end

    class TrustedAdvisorResourceDetail
      def self.parse(map)
        data = Types::TrustedAdvisorResourceDetail.new
        data.status = map['status']
        data.region = map['region']
        data.resource_id = map['resourceId']
        data.is_suppressed = map['isSuppressed']
        data.metadata = (Parsers::StringList.parse(map['metadata']) unless map['metadata'].nil?)
        return data
      end
    end

    class StringList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class TrustedAdvisorCategorySpecificSummary
      def self.parse(map)
        data = Types::TrustedAdvisorCategorySpecificSummary.new
        data.cost_optimizing = (Parsers::TrustedAdvisorCostOptimizingSummary.parse(map['costOptimizing']) unless map['costOptimizing'].nil?)
        return data
      end
    end

    class TrustedAdvisorCostOptimizingSummary
      def self.parse(map)
        data = Types::TrustedAdvisorCostOptimizingSummary.new
        data.estimated_monthly_savings = Hearth::NumberHelper.deserialize(map['estimatedMonthlySavings'])
        data.estimated_percent_monthly_savings = Hearth::NumberHelper.deserialize(map['estimatedPercentMonthlySavings'])
        return data
      end
    end

    class TrustedAdvisorResourcesSummary
      def self.parse(map)
        data = Types::TrustedAdvisorResourcesSummary.new
        data.resources_processed = map['resourcesProcessed']
        data.resources_flagged = map['resourcesFlagged']
        data.resources_ignored = map['resourcesIgnored']
        data.resources_suppressed = map['resourcesSuppressed']
        return data
      end
    end

    # Operation Parser for DescribeTrustedAdvisorCheckSummaries
    class DescribeTrustedAdvisorCheckSummaries
      def self.parse(http_resp)
        data = Types::DescribeTrustedAdvisorCheckSummariesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.summaries = (Parsers::TrustedAdvisorCheckSummaryList.parse(map['summaries']) unless map['summaries'].nil?)
        data
      end
    end

    class TrustedAdvisorCheckSummaryList
      def self.parse(list)
        list.map do |value|
          Parsers::TrustedAdvisorCheckSummary.parse(value) unless value.nil?
        end
      end
    end

    class TrustedAdvisorCheckSummary
      def self.parse(map)
        data = Types::TrustedAdvisorCheckSummary.new
        data.check_id = map['checkId']
        data.timestamp = map['timestamp']
        data.status = map['status']
        data.has_flagged_resources = map['hasFlaggedResources']
        data.resources_summary = (Parsers::TrustedAdvisorResourcesSummary.parse(map['resourcesSummary']) unless map['resourcesSummary'].nil?)
        data.category_specific_summary = (Parsers::TrustedAdvisorCategorySpecificSummary.parse(map['categorySpecificSummary']) unless map['categorySpecificSummary'].nil?)
        return data
      end
    end

    # Operation Parser for DescribeTrustedAdvisorChecks
    class DescribeTrustedAdvisorChecks
      def self.parse(http_resp)
        data = Types::DescribeTrustedAdvisorChecksOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.checks = (Parsers::TrustedAdvisorCheckList.parse(map['checks']) unless map['checks'].nil?)
        data
      end
    end

    class TrustedAdvisorCheckList
      def self.parse(list)
        list.map do |value|
          Parsers::TrustedAdvisorCheckDescription.parse(value) unless value.nil?
        end
      end
    end

    class TrustedAdvisorCheckDescription
      def self.parse(map)
        data = Types::TrustedAdvisorCheckDescription.new
        data.id = map['id']
        data.name = map['name']
        data.description = map['description']
        data.category = map['category']
        data.metadata = (Parsers::StringList.parse(map['metadata']) unless map['metadata'].nil?)
        return data
      end
    end

    # Operation Parser for RefreshTrustedAdvisorCheck
    class RefreshTrustedAdvisorCheck
      def self.parse(http_resp)
        data = Types::RefreshTrustedAdvisorCheckOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.status = (Parsers::TrustedAdvisorCheckRefreshStatus.parse(map['status']) unless map['status'].nil?)
        data
      end
    end

    # Operation Parser for ResolveCase
    class ResolveCase
      def self.parse(http_resp)
        data = Types::ResolveCaseOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.initial_case_status = map['initialCaseStatus']
        data.final_case_status = map['finalCaseStatus']
        data
      end
    end
  end
end
