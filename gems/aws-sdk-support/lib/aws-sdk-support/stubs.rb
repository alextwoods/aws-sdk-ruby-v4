# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Support
  module Stubs

    # Operation Stubber for AddAttachmentsToSet
    class AddAttachmentsToSet
      def self.default(visited=[])
        {
          attachment_set_id: 'attachment_set_id',
          expiry_time: 'expiry_time',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['attachmentSetId'] = stub[:attachment_set_id] unless stub[:attachment_set_id].nil?
        data['expiryTime'] = stub[:expiry_time] unless stub[:expiry_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for AddCommunicationToCase
    class AddCommunicationToCase
      def self.default(visited=[])
        {
          result: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['result'] = stub[:result] unless stub[:result].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateCase
    class CreateCase
      def self.default(visited=[])
        {
          case_id: 'case_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['caseId'] = stub[:case_id] unless stub[:case_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeAttachment
    class DescribeAttachment
      def self.default(visited=[])
        {
          attachment: Stubs::Attachment.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['attachment'] = Stubs::Attachment.stub(stub[:attachment]) unless stub[:attachment].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Attachment
    class Attachment
      def self.default(visited=[])
        return nil if visited.include?('Attachment')
        visited = visited + ['Attachment']
        {
          file_name: 'file_name',
          data: 'data',
        }
      end

      def self.stub(stub)
        stub ||= Types::Attachment.new
        data = {}
        data['fileName'] = stub[:file_name] unless stub[:file_name].nil?
        data['data'] = Base64::encode64(stub[:data]) unless stub[:data].nil?
        data
      end
    end

    # Operation Stubber for DescribeCases
    class DescribeCases
      def self.default(visited=[])
        {
          cases: Stubs::CaseList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['cases'] = Stubs::CaseList.stub(stub[:cases]) unless stub[:cases].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for CaseList
    class CaseList
      def self.default(visited=[])
        return nil if visited.include?('CaseList')
        visited = visited + ['CaseList']
        [
          Stubs::CaseDetails.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::CaseDetails.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CaseDetails
    class CaseDetails
      def self.default(visited=[])
        return nil if visited.include?('CaseDetails')
        visited = visited + ['CaseDetails']
        {
          case_id: 'case_id',
          display_id: 'display_id',
          subject: 'subject',
          status: 'status',
          service_code: 'service_code',
          category_code: 'category_code',
          severity_code: 'severity_code',
          submitted_by: 'submitted_by',
          time_created: 'time_created',
          recent_communications: Stubs::RecentCaseCommunications.default(visited),
          cc_email_addresses: Stubs::CcEmailAddressList.default(visited),
          language: 'language',
        }
      end

      def self.stub(stub)
        stub ||= Types::CaseDetails.new
        data = {}
        data['caseId'] = stub[:case_id] unless stub[:case_id].nil?
        data['displayId'] = stub[:display_id] unless stub[:display_id].nil?
        data['subject'] = stub[:subject] unless stub[:subject].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['serviceCode'] = stub[:service_code] unless stub[:service_code].nil?
        data['categoryCode'] = stub[:category_code] unless stub[:category_code].nil?
        data['severityCode'] = stub[:severity_code] unless stub[:severity_code].nil?
        data['submittedBy'] = stub[:submitted_by] unless stub[:submitted_by].nil?
        data['timeCreated'] = stub[:time_created] unless stub[:time_created].nil?
        data['recentCommunications'] = Stubs::RecentCaseCommunications.stub(stub[:recent_communications]) unless stub[:recent_communications].nil?
        data['ccEmailAddresses'] = Stubs::CcEmailAddressList.stub(stub[:cc_email_addresses]) unless stub[:cc_email_addresses].nil?
        data['language'] = stub[:language] unless stub[:language].nil?
        data
      end
    end

    # List Stubber for CcEmailAddressList
    class CcEmailAddressList
      def self.default(visited=[])
        return nil if visited.include?('CcEmailAddressList')
        visited = visited + ['CcEmailAddressList']
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

    # Structure Stubber for RecentCaseCommunications
    class RecentCaseCommunications
      def self.default(visited=[])
        return nil if visited.include?('RecentCaseCommunications')
        visited = visited + ['RecentCaseCommunications']
        {
          communications: Stubs::CommunicationList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(stub)
        stub ||= Types::RecentCaseCommunications.new
        data = {}
        data['communications'] = Stubs::CommunicationList.stub(stub[:communications]) unless stub[:communications].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data
      end
    end

    # List Stubber for CommunicationList
    class CommunicationList
      def self.default(visited=[])
        return nil if visited.include?('CommunicationList')
        visited = visited + ['CommunicationList']
        [
          Stubs::Communication.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Communication.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Communication
    class Communication
      def self.default(visited=[])
        return nil if visited.include?('Communication')
        visited = visited + ['Communication']
        {
          case_id: 'case_id',
          body: 'body',
          submitted_by: 'submitted_by',
          time_created: 'time_created',
          attachment_set: Stubs::AttachmentSet.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Communication.new
        data = {}
        data['caseId'] = stub[:case_id] unless stub[:case_id].nil?
        data['body'] = stub[:body] unless stub[:body].nil?
        data['submittedBy'] = stub[:submitted_by] unless stub[:submitted_by].nil?
        data['timeCreated'] = stub[:time_created] unless stub[:time_created].nil?
        data['attachmentSet'] = Stubs::AttachmentSet.stub(stub[:attachment_set]) unless stub[:attachment_set].nil?
        data
      end
    end

    # List Stubber for AttachmentSet
    class AttachmentSet
      def self.default(visited=[])
        return nil if visited.include?('AttachmentSet')
        visited = visited + ['AttachmentSet']
        [
          Stubs::AttachmentDetails.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AttachmentDetails.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AttachmentDetails
    class AttachmentDetails
      def self.default(visited=[])
        return nil if visited.include?('AttachmentDetails')
        visited = visited + ['AttachmentDetails']
        {
          attachment_id: 'attachment_id',
          file_name: 'file_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::AttachmentDetails.new
        data = {}
        data['attachmentId'] = stub[:attachment_id] unless stub[:attachment_id].nil?
        data['fileName'] = stub[:file_name] unless stub[:file_name].nil?
        data
      end
    end

    # Operation Stubber for DescribeCommunications
    class DescribeCommunications
      def self.default(visited=[])
        {
          communications: Stubs::CommunicationList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['communications'] = Stubs::CommunicationList.stub(stub[:communications]) unless stub[:communications].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeServices
    class DescribeServices
      def self.default(visited=[])
        {
          services: Stubs::ServiceList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['services'] = Stubs::ServiceList.stub(stub[:services]) unless stub[:services].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ServiceList
    class ServiceList
      def self.default(visited=[])
        return nil if visited.include?('ServiceList')
        visited = visited + ['ServiceList']
        [
          Stubs::Service.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Service.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Service
    class Service
      def self.default(visited=[])
        return nil if visited.include?('Service')
        visited = visited + ['Service']
        {
          code: 'code',
          name: 'name',
          categories: Stubs::CategoryList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Service.new
        data = {}
        data['code'] = stub[:code] unless stub[:code].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['categories'] = Stubs::CategoryList.stub(stub[:categories]) unless stub[:categories].nil?
        data
      end
    end

    # List Stubber for CategoryList
    class CategoryList
      def self.default(visited=[])
        return nil if visited.include?('CategoryList')
        visited = visited + ['CategoryList']
        [
          Stubs::Category.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Category.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Category
    class Category
      def self.default(visited=[])
        return nil if visited.include?('Category')
        visited = visited + ['Category']
        {
          code: 'code',
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::Category.new
        data = {}
        data['code'] = stub[:code] unless stub[:code].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # Operation Stubber for DescribeSeverityLevels
    class DescribeSeverityLevels
      def self.default(visited=[])
        {
          severity_levels: Stubs::SeverityLevelsList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['severityLevels'] = Stubs::SeverityLevelsList.stub(stub[:severity_levels]) unless stub[:severity_levels].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for SeverityLevelsList
    class SeverityLevelsList
      def self.default(visited=[])
        return nil if visited.include?('SeverityLevelsList')
        visited = visited + ['SeverityLevelsList']
        [
          Stubs::SeverityLevel.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SeverityLevel.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SeverityLevel
    class SeverityLevel
      def self.default(visited=[])
        return nil if visited.include?('SeverityLevel')
        visited = visited + ['SeverityLevel']
        {
          code: 'code',
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::SeverityLevel.new
        data = {}
        data['code'] = stub[:code] unless stub[:code].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # Operation Stubber for DescribeTrustedAdvisorCheckRefreshStatuses
    class DescribeTrustedAdvisorCheckRefreshStatuses
      def self.default(visited=[])
        {
          statuses: Stubs::TrustedAdvisorCheckRefreshStatusList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['statuses'] = Stubs::TrustedAdvisorCheckRefreshStatusList.stub(stub[:statuses]) unless stub[:statuses].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for TrustedAdvisorCheckRefreshStatusList
    class TrustedAdvisorCheckRefreshStatusList
      def self.default(visited=[])
        return nil if visited.include?('TrustedAdvisorCheckRefreshStatusList')
        visited = visited + ['TrustedAdvisorCheckRefreshStatusList']
        [
          Stubs::TrustedAdvisorCheckRefreshStatus.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::TrustedAdvisorCheckRefreshStatus.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TrustedAdvisorCheckRefreshStatus
    class TrustedAdvisorCheckRefreshStatus
      def self.default(visited=[])
        return nil if visited.include?('TrustedAdvisorCheckRefreshStatus')
        visited = visited + ['TrustedAdvisorCheckRefreshStatus']
        {
          check_id: 'check_id',
          status: 'status',
          millis_until_next_refreshable: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::TrustedAdvisorCheckRefreshStatus.new
        data = {}
        data['checkId'] = stub[:check_id] unless stub[:check_id].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['millisUntilNextRefreshable'] = stub[:millis_until_next_refreshable] unless stub[:millis_until_next_refreshable].nil?
        data
      end
    end

    # Operation Stubber for DescribeTrustedAdvisorCheckResult
    class DescribeTrustedAdvisorCheckResult
      def self.default(visited=[])
        {
          result: Stubs::TrustedAdvisorCheckResult.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['result'] = Stubs::TrustedAdvisorCheckResult.stub(stub[:result]) unless stub[:result].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for TrustedAdvisorCheckResult
    class TrustedAdvisorCheckResult
      def self.default(visited=[])
        return nil if visited.include?('TrustedAdvisorCheckResult')
        visited = visited + ['TrustedAdvisorCheckResult']
        {
          check_id: 'check_id',
          timestamp: 'timestamp',
          status: 'status',
          resources_summary: Stubs::TrustedAdvisorResourcesSummary.default(visited),
          category_specific_summary: Stubs::TrustedAdvisorCategorySpecificSummary.default(visited),
          flagged_resources: Stubs::TrustedAdvisorResourceDetailList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TrustedAdvisorCheckResult.new
        data = {}
        data['checkId'] = stub[:check_id] unless stub[:check_id].nil?
        data['timestamp'] = stub[:timestamp] unless stub[:timestamp].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['resourcesSummary'] = Stubs::TrustedAdvisorResourcesSummary.stub(stub[:resources_summary]) unless stub[:resources_summary].nil?
        data['categorySpecificSummary'] = Stubs::TrustedAdvisorCategorySpecificSummary.stub(stub[:category_specific_summary]) unless stub[:category_specific_summary].nil?
        data['flaggedResources'] = Stubs::TrustedAdvisorResourceDetailList.stub(stub[:flagged_resources]) unless stub[:flagged_resources].nil?
        data
      end
    end

    # List Stubber for TrustedAdvisorResourceDetailList
    class TrustedAdvisorResourceDetailList
      def self.default(visited=[])
        return nil if visited.include?('TrustedAdvisorResourceDetailList')
        visited = visited + ['TrustedAdvisorResourceDetailList']
        [
          Stubs::TrustedAdvisorResourceDetail.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::TrustedAdvisorResourceDetail.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TrustedAdvisorResourceDetail
    class TrustedAdvisorResourceDetail
      def self.default(visited=[])
        return nil if visited.include?('TrustedAdvisorResourceDetail')
        visited = visited + ['TrustedAdvisorResourceDetail']
        {
          status: 'status',
          region: 'region',
          resource_id: 'resource_id',
          is_suppressed: false,
          metadata: Stubs::StringList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TrustedAdvisorResourceDetail.new
        data = {}
        data['status'] = stub[:status] unless stub[:status].nil?
        data['region'] = stub[:region] unless stub[:region].nil?
        data['resourceId'] = stub[:resource_id] unless stub[:resource_id].nil?
        data['isSuppressed'] = stub[:is_suppressed] unless stub[:is_suppressed].nil?
        data['metadata'] = Stubs::StringList.stub(stub[:metadata]) unless stub[:metadata].nil?
        data
      end
    end

    # List Stubber for StringList
    class StringList
      def self.default(visited=[])
        return nil if visited.include?('StringList')
        visited = visited + ['StringList']
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

    # Structure Stubber for TrustedAdvisorCategorySpecificSummary
    class TrustedAdvisorCategorySpecificSummary
      def self.default(visited=[])
        return nil if visited.include?('TrustedAdvisorCategorySpecificSummary')
        visited = visited + ['TrustedAdvisorCategorySpecificSummary']
        {
          cost_optimizing: Stubs::TrustedAdvisorCostOptimizingSummary.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TrustedAdvisorCategorySpecificSummary.new
        data = {}
        data['costOptimizing'] = Stubs::TrustedAdvisorCostOptimizingSummary.stub(stub[:cost_optimizing]) unless stub[:cost_optimizing].nil?
        data
      end
    end

    # Structure Stubber for TrustedAdvisorCostOptimizingSummary
    class TrustedAdvisorCostOptimizingSummary
      def self.default(visited=[])
        return nil if visited.include?('TrustedAdvisorCostOptimizingSummary')
        visited = visited + ['TrustedAdvisorCostOptimizingSummary']
        {
          estimated_monthly_savings: 1.0,
          estimated_percent_monthly_savings: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::TrustedAdvisorCostOptimizingSummary.new
        data = {}
        data['estimatedMonthlySavings'] = Hearth::NumberHelper.serialize(stub[:estimated_monthly_savings])
        data['estimatedPercentMonthlySavings'] = Hearth::NumberHelper.serialize(stub[:estimated_percent_monthly_savings])
        data
      end
    end

    # Structure Stubber for TrustedAdvisorResourcesSummary
    class TrustedAdvisorResourcesSummary
      def self.default(visited=[])
        return nil if visited.include?('TrustedAdvisorResourcesSummary')
        visited = visited + ['TrustedAdvisorResourcesSummary']
        {
          resources_processed: 1,
          resources_flagged: 1,
          resources_ignored: 1,
          resources_suppressed: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::TrustedAdvisorResourcesSummary.new
        data = {}
        data['resourcesProcessed'] = stub[:resources_processed] unless stub[:resources_processed].nil?
        data['resourcesFlagged'] = stub[:resources_flagged] unless stub[:resources_flagged].nil?
        data['resourcesIgnored'] = stub[:resources_ignored] unless stub[:resources_ignored].nil?
        data['resourcesSuppressed'] = stub[:resources_suppressed] unless stub[:resources_suppressed].nil?
        data
      end
    end

    # Operation Stubber for DescribeTrustedAdvisorCheckSummaries
    class DescribeTrustedAdvisorCheckSummaries
      def self.default(visited=[])
        {
          summaries: Stubs::TrustedAdvisorCheckSummaryList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['summaries'] = Stubs::TrustedAdvisorCheckSummaryList.stub(stub[:summaries]) unless stub[:summaries].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for TrustedAdvisorCheckSummaryList
    class TrustedAdvisorCheckSummaryList
      def self.default(visited=[])
        return nil if visited.include?('TrustedAdvisorCheckSummaryList')
        visited = visited + ['TrustedAdvisorCheckSummaryList']
        [
          Stubs::TrustedAdvisorCheckSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::TrustedAdvisorCheckSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TrustedAdvisorCheckSummary
    class TrustedAdvisorCheckSummary
      def self.default(visited=[])
        return nil if visited.include?('TrustedAdvisorCheckSummary')
        visited = visited + ['TrustedAdvisorCheckSummary']
        {
          check_id: 'check_id',
          timestamp: 'timestamp',
          status: 'status',
          has_flagged_resources: false,
          resources_summary: Stubs::TrustedAdvisorResourcesSummary.default(visited),
          category_specific_summary: Stubs::TrustedAdvisorCategorySpecificSummary.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TrustedAdvisorCheckSummary.new
        data = {}
        data['checkId'] = stub[:check_id] unless stub[:check_id].nil?
        data['timestamp'] = stub[:timestamp] unless stub[:timestamp].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['hasFlaggedResources'] = stub[:has_flagged_resources] unless stub[:has_flagged_resources].nil?
        data['resourcesSummary'] = Stubs::TrustedAdvisorResourcesSummary.stub(stub[:resources_summary]) unless stub[:resources_summary].nil?
        data['categorySpecificSummary'] = Stubs::TrustedAdvisorCategorySpecificSummary.stub(stub[:category_specific_summary]) unless stub[:category_specific_summary].nil?
        data
      end
    end

    # Operation Stubber for DescribeTrustedAdvisorChecks
    class DescribeTrustedAdvisorChecks
      def self.default(visited=[])
        {
          checks: Stubs::TrustedAdvisorCheckList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['checks'] = Stubs::TrustedAdvisorCheckList.stub(stub[:checks]) unless stub[:checks].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for TrustedAdvisorCheckList
    class TrustedAdvisorCheckList
      def self.default(visited=[])
        return nil if visited.include?('TrustedAdvisorCheckList')
        visited = visited + ['TrustedAdvisorCheckList']
        [
          Stubs::TrustedAdvisorCheckDescription.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::TrustedAdvisorCheckDescription.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TrustedAdvisorCheckDescription
    class TrustedAdvisorCheckDescription
      def self.default(visited=[])
        return nil if visited.include?('TrustedAdvisorCheckDescription')
        visited = visited + ['TrustedAdvisorCheckDescription']
        {
          id: 'id',
          name: 'name',
          description: 'description',
          category: 'category',
          metadata: Stubs::StringList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TrustedAdvisorCheckDescription.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['category'] = stub[:category] unless stub[:category].nil?
        data['metadata'] = Stubs::StringList.stub(stub[:metadata]) unless stub[:metadata].nil?
        data
      end
    end

    # Operation Stubber for RefreshTrustedAdvisorCheck
    class RefreshTrustedAdvisorCheck
      def self.default(visited=[])
        {
          status: Stubs::TrustedAdvisorCheckRefreshStatus.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['status'] = Stubs::TrustedAdvisorCheckRefreshStatus.stub(stub[:status]) unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ResolveCase
    class ResolveCase
      def self.default(visited=[])
        {
          initial_case_status: 'initial_case_status',
          final_case_status: 'final_case_status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['initialCaseStatus'] = stub[:initial_case_status] unless stub[:initial_case_status].nil?
        data['finalCaseStatus'] = stub[:final_case_status] unless stub[:final_case_status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
