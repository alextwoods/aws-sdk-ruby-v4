# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Support
  module Builders

    # Operation Builder for AddAttachmentsToSet
    class AddAttachmentsToSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSSupport_20130415.AddAttachmentsToSet'
        data = {}
        data['attachmentSetId'] = input[:attachment_set_id] unless input[:attachment_set_id].nil?
        data['attachments'] = Builders::Attachments.build(input[:attachments]) unless input[:attachments].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for Attachments
    class Attachments
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Attachment.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Attachment
    class Attachment
      def self.build(input)
        data = {}
        data['fileName'] = input[:file_name] unless input[:file_name].nil?
        data['data'] = Base64::encode64(input[:data]).strip unless input[:data].nil?
        data
      end
    end

    # Operation Builder for AddCommunicationToCase
    class AddCommunicationToCase
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSSupport_20130415.AddCommunicationToCase'
        data = {}
        data['caseId'] = input[:case_id] unless input[:case_id].nil?
        data['communicationBody'] = input[:communication_body] unless input[:communication_body].nil?
        data['ccEmailAddresses'] = Builders::CcEmailAddressList.build(input[:cc_email_addresses]) unless input[:cc_email_addresses].nil?
        data['attachmentSetId'] = input[:attachment_set_id] unless input[:attachment_set_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for CcEmailAddressList
    class CcEmailAddressList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateCase
    class CreateCase
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSSupport_20130415.CreateCase'
        data = {}
        data['subject'] = input[:subject] unless input[:subject].nil?
        data['serviceCode'] = input[:service_code] unless input[:service_code].nil?
        data['severityCode'] = input[:severity_code] unless input[:severity_code].nil?
        data['categoryCode'] = input[:category_code] unless input[:category_code].nil?
        data['communicationBody'] = input[:communication_body] unless input[:communication_body].nil?
        data['ccEmailAddresses'] = Builders::CcEmailAddressList.build(input[:cc_email_addresses]) unless input[:cc_email_addresses].nil?
        data['language'] = input[:language] unless input[:language].nil?
        data['issueType'] = input[:issue_type] unless input[:issue_type].nil?
        data['attachmentSetId'] = input[:attachment_set_id] unless input[:attachment_set_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeAttachment
    class DescribeAttachment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSSupport_20130415.DescribeAttachment'
        data = {}
        data['attachmentId'] = input[:attachment_id] unless input[:attachment_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeCases
    class DescribeCases
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSSupport_20130415.DescribeCases'
        data = {}
        data['caseIdList'] = Builders::CaseIdList.build(input[:case_id_list]) unless input[:case_id_list].nil?
        data['displayId'] = input[:display_id] unless input[:display_id].nil?
        data['afterTime'] = input[:after_time] unless input[:after_time].nil?
        data['beforeTime'] = input[:before_time] unless input[:before_time].nil?
        data['includeResolvedCases'] = input[:include_resolved_cases] unless input[:include_resolved_cases].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['language'] = input[:language] unless input[:language].nil?
        data['includeCommunications'] = input[:include_communications] unless input[:include_communications].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for CaseIdList
    class CaseIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeCommunications
    class DescribeCommunications
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSSupport_20130415.DescribeCommunications'
        data = {}
        data['caseId'] = input[:case_id] unless input[:case_id].nil?
        data['beforeTime'] = input[:before_time] unless input[:before_time].nil?
        data['afterTime'] = input[:after_time] unless input[:after_time].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeServices
    class DescribeServices
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSSupport_20130415.DescribeServices'
        data = {}
        data['serviceCodeList'] = Builders::ServiceCodeList.build(input[:service_code_list]) unless input[:service_code_list].nil?
        data['language'] = input[:language] unless input[:language].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ServiceCodeList
    class ServiceCodeList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeSeverityLevels
    class DescribeSeverityLevels
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSSupport_20130415.DescribeSeverityLevels'
        data = {}
        data['language'] = input[:language] unless input[:language].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeTrustedAdvisorCheckRefreshStatuses
    class DescribeTrustedAdvisorCheckRefreshStatuses
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSSupport_20130415.DescribeTrustedAdvisorCheckRefreshStatuses'
        data = {}
        data['checkIds'] = Builders::StringList.build(input[:check_ids]) unless input[:check_ids].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for StringList
    class StringList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeTrustedAdvisorCheckResult
    class DescribeTrustedAdvisorCheckResult
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSSupport_20130415.DescribeTrustedAdvisorCheckResult'
        data = {}
        data['checkId'] = input[:check_id] unless input[:check_id].nil?
        data['language'] = input[:language] unless input[:language].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeTrustedAdvisorCheckSummaries
    class DescribeTrustedAdvisorCheckSummaries
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSSupport_20130415.DescribeTrustedAdvisorCheckSummaries'
        data = {}
        data['checkIds'] = Builders::StringList.build(input[:check_ids]) unless input[:check_ids].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeTrustedAdvisorChecks
    class DescribeTrustedAdvisorChecks
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSSupport_20130415.DescribeTrustedAdvisorChecks'
        data = {}
        data['language'] = input[:language] unless input[:language].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RefreshTrustedAdvisorCheck
    class RefreshTrustedAdvisorCheck
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSSupport_20130415.RefreshTrustedAdvisorCheck'
        data = {}
        data['checkId'] = input[:check_id] unless input[:check_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ResolveCase
    class ResolveCase
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSSupport_20130415.ResolveCase'
        data = {}
        data['caseId'] = input[:case_id] unless input[:case_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
