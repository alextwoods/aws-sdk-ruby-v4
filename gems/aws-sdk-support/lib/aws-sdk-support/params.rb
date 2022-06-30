# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::Support
  module Params

    module AddAttachmentsToSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddAttachmentsToSetInput, context: context)
        type = Types::AddAttachmentsToSetInput.new
        type.attachment_set_id = params[:attachment_set_id]
        type.attachments = Attachments.build(params[:attachments], context: "#{context}[:attachments]") unless params[:attachments].nil?
        type
      end
    end

    module AddAttachmentsToSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddAttachmentsToSetOutput, context: context)
        type = Types::AddAttachmentsToSetOutput.new
        type.attachment_set_id = params[:attachment_set_id]
        type.expiry_time = params[:expiry_time]
        type
      end
    end

    module AddCommunicationToCaseInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddCommunicationToCaseInput, context: context)
        type = Types::AddCommunicationToCaseInput.new
        type.case_id = params[:case_id]
        type.communication_body = params[:communication_body]
        type.cc_email_addresses = CcEmailAddressList.build(params[:cc_email_addresses], context: "#{context}[:cc_email_addresses]") unless params[:cc_email_addresses].nil?
        type.attachment_set_id = params[:attachment_set_id]
        type
      end
    end

    module AddCommunicationToCaseOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddCommunicationToCaseOutput, context: context)
        type = Types::AddCommunicationToCaseOutput.new
        type.result = params[:result]
        type
      end
    end

    module Attachment
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Attachment, context: context)
        type = Types::Attachment.new
        type.file_name = params[:file_name]
        type.data = params[:data]
        type
      end
    end

    module AttachmentDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttachmentDetails, context: context)
        type = Types::AttachmentDetails.new
        type.attachment_id = params[:attachment_id]
        type.file_name = params[:file_name]
        type
      end
    end

    module AttachmentIdNotFound
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttachmentIdNotFound, context: context)
        type = Types::AttachmentIdNotFound.new
        type.message = params[:message]
        type
      end
    end

    module AttachmentLimitExceeded
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttachmentLimitExceeded, context: context)
        type = Types::AttachmentLimitExceeded.new
        type.message = params[:message]
        type
      end
    end

    module AttachmentSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AttachmentDetails.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AttachmentSetExpired
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttachmentSetExpired, context: context)
        type = Types::AttachmentSetExpired.new
        type.message = params[:message]
        type
      end
    end

    module AttachmentSetIdNotFound
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttachmentSetIdNotFound, context: context)
        type = Types::AttachmentSetIdNotFound.new
        type.message = params[:message]
        type
      end
    end

    module AttachmentSetSizeLimitExceeded
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttachmentSetSizeLimitExceeded, context: context)
        type = Types::AttachmentSetSizeLimitExceeded.new
        type.message = params[:message]
        type
      end
    end

    module Attachments
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Attachment.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CaseCreationLimitExceeded
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CaseCreationLimitExceeded, context: context)
        type = Types::CaseCreationLimitExceeded.new
        type.message = params[:message]
        type
      end
    end

    module CaseDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CaseDetails, context: context)
        type = Types::CaseDetails.new
        type.case_id = params[:case_id]
        type.display_id = params[:display_id]
        type.subject = params[:subject]
        type.status = params[:status]
        type.service_code = params[:service_code]
        type.category_code = params[:category_code]
        type.severity_code = params[:severity_code]
        type.submitted_by = params[:submitted_by]
        type.time_created = params[:time_created]
        type.recent_communications = RecentCaseCommunications.build(params[:recent_communications], context: "#{context}[:recent_communications]") unless params[:recent_communications].nil?
        type.cc_email_addresses = CcEmailAddressList.build(params[:cc_email_addresses], context: "#{context}[:cc_email_addresses]") unless params[:cc_email_addresses].nil?
        type.language = params[:language]
        type
      end
    end

    module CaseIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module CaseIdNotFound
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CaseIdNotFound, context: context)
        type = Types::CaseIdNotFound.new
        type.message = params[:message]
        type
      end
    end

    module CaseList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CaseDetails.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Category
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Category, context: context)
        type = Types::Category.new
        type.code = params[:code]
        type.name = params[:name]
        type
      end
    end

    module CategoryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Category.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CcEmailAddressList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Communication
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Communication, context: context)
        type = Types::Communication.new
        type.case_id = params[:case_id]
        type.body = params[:body]
        type.submitted_by = params[:submitted_by]
        type.time_created = params[:time_created]
        type.attachment_set = AttachmentSet.build(params[:attachment_set], context: "#{context}[:attachment_set]") unless params[:attachment_set].nil?
        type
      end
    end

    module CommunicationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Communication.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CreateCaseInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCaseInput, context: context)
        type = Types::CreateCaseInput.new
        type.subject = params[:subject]
        type.service_code = params[:service_code]
        type.severity_code = params[:severity_code]
        type.category_code = params[:category_code]
        type.communication_body = params[:communication_body]
        type.cc_email_addresses = CcEmailAddressList.build(params[:cc_email_addresses], context: "#{context}[:cc_email_addresses]") unless params[:cc_email_addresses].nil?
        type.language = params[:language]
        type.issue_type = params[:issue_type]
        type.attachment_set_id = params[:attachment_set_id]
        type
      end
    end

    module CreateCaseOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCaseOutput, context: context)
        type = Types::CreateCaseOutput.new
        type.case_id = params[:case_id]
        type
      end
    end

    module DescribeAttachmentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAttachmentInput, context: context)
        type = Types::DescribeAttachmentInput.new
        type.attachment_id = params[:attachment_id]
        type
      end
    end

    module DescribeAttachmentLimitExceeded
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAttachmentLimitExceeded, context: context)
        type = Types::DescribeAttachmentLimitExceeded.new
        type.message = params[:message]
        type
      end
    end

    module DescribeAttachmentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAttachmentOutput, context: context)
        type = Types::DescribeAttachmentOutput.new
        type.attachment = Attachment.build(params[:attachment], context: "#{context}[:attachment]") unless params[:attachment].nil?
        type
      end
    end

    module DescribeCasesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCasesInput, context: context)
        type = Types::DescribeCasesInput.new
        type.case_id_list = CaseIdList.build(params[:case_id_list], context: "#{context}[:case_id_list]") unless params[:case_id_list].nil?
        type.display_id = params[:display_id]
        type.after_time = params[:after_time]
        type.before_time = params[:before_time]
        type.include_resolved_cases = params[:include_resolved_cases]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.language = params[:language]
        type.include_communications = params[:include_communications]
        type
      end
    end

    module DescribeCasesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCasesOutput, context: context)
        type = Types::DescribeCasesOutput.new
        type.cases = CaseList.build(params[:cases], context: "#{context}[:cases]") unless params[:cases].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeCommunicationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCommunicationsInput, context: context)
        type = Types::DescribeCommunicationsInput.new
        type.case_id = params[:case_id]
        type.before_time = params[:before_time]
        type.after_time = params[:after_time]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module DescribeCommunicationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCommunicationsOutput, context: context)
        type = Types::DescribeCommunicationsOutput.new
        type.communications = CommunicationList.build(params[:communications], context: "#{context}[:communications]") unless params[:communications].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeServicesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeServicesInput, context: context)
        type = Types::DescribeServicesInput.new
        type.service_code_list = ServiceCodeList.build(params[:service_code_list], context: "#{context}[:service_code_list]") unless params[:service_code_list].nil?
        type.language = params[:language]
        type
      end
    end

    module DescribeServicesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeServicesOutput, context: context)
        type = Types::DescribeServicesOutput.new
        type.services = ServiceList.build(params[:services], context: "#{context}[:services]") unless params[:services].nil?
        type
      end
    end

    module DescribeSeverityLevelsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSeverityLevelsInput, context: context)
        type = Types::DescribeSeverityLevelsInput.new
        type.language = params[:language]
        type
      end
    end

    module DescribeSeverityLevelsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSeverityLevelsOutput, context: context)
        type = Types::DescribeSeverityLevelsOutput.new
        type.severity_levels = SeverityLevelsList.build(params[:severity_levels], context: "#{context}[:severity_levels]") unless params[:severity_levels].nil?
        type
      end
    end

    module DescribeTrustedAdvisorCheckRefreshStatusesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTrustedAdvisorCheckRefreshStatusesInput, context: context)
        type = Types::DescribeTrustedAdvisorCheckRefreshStatusesInput.new
        type.check_ids = StringList.build(params[:check_ids], context: "#{context}[:check_ids]") unless params[:check_ids].nil?
        type
      end
    end

    module DescribeTrustedAdvisorCheckRefreshStatusesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTrustedAdvisorCheckRefreshStatusesOutput, context: context)
        type = Types::DescribeTrustedAdvisorCheckRefreshStatusesOutput.new
        type.statuses = TrustedAdvisorCheckRefreshStatusList.build(params[:statuses], context: "#{context}[:statuses]") unless params[:statuses].nil?
        type
      end
    end

    module DescribeTrustedAdvisorCheckResultInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTrustedAdvisorCheckResultInput, context: context)
        type = Types::DescribeTrustedAdvisorCheckResultInput.new
        type.check_id = params[:check_id]
        type.language = params[:language]
        type
      end
    end

    module DescribeTrustedAdvisorCheckResultOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTrustedAdvisorCheckResultOutput, context: context)
        type = Types::DescribeTrustedAdvisorCheckResultOutput.new
        type.result = TrustedAdvisorCheckResult.build(params[:result], context: "#{context}[:result]") unless params[:result].nil?
        type
      end
    end

    module DescribeTrustedAdvisorCheckSummariesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTrustedAdvisorCheckSummariesInput, context: context)
        type = Types::DescribeTrustedAdvisorCheckSummariesInput.new
        type.check_ids = StringList.build(params[:check_ids], context: "#{context}[:check_ids]") unless params[:check_ids].nil?
        type
      end
    end

    module DescribeTrustedAdvisorCheckSummariesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTrustedAdvisorCheckSummariesOutput, context: context)
        type = Types::DescribeTrustedAdvisorCheckSummariesOutput.new
        type.summaries = TrustedAdvisorCheckSummaryList.build(params[:summaries], context: "#{context}[:summaries]") unless params[:summaries].nil?
        type
      end
    end

    module DescribeTrustedAdvisorChecksInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTrustedAdvisorChecksInput, context: context)
        type = Types::DescribeTrustedAdvisorChecksInput.new
        type.language = params[:language]
        type
      end
    end

    module DescribeTrustedAdvisorChecksOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTrustedAdvisorChecksOutput, context: context)
        type = Types::DescribeTrustedAdvisorChecksOutput.new
        type.checks = TrustedAdvisorCheckList.build(params[:checks], context: "#{context}[:checks]") unless params[:checks].nil?
        type
      end
    end

    module InternalServerError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerError, context: context)
        type = Types::InternalServerError.new
        type.message = params[:message]
        type
      end
    end

    module RecentCaseCommunications
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RecentCaseCommunications, context: context)
        type = Types::RecentCaseCommunications.new
        type.communications = CommunicationList.build(params[:communications], context: "#{context}[:communications]") unless params[:communications].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module RefreshTrustedAdvisorCheckInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RefreshTrustedAdvisorCheckInput, context: context)
        type = Types::RefreshTrustedAdvisorCheckInput.new
        type.check_id = params[:check_id]
        type
      end
    end

    module RefreshTrustedAdvisorCheckOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RefreshTrustedAdvisorCheckOutput, context: context)
        type = Types::RefreshTrustedAdvisorCheckOutput.new
        type.status = TrustedAdvisorCheckRefreshStatus.build(params[:status], context: "#{context}[:status]") unless params[:status].nil?
        type
      end
    end

    module ResolveCaseInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResolveCaseInput, context: context)
        type = Types::ResolveCaseInput.new
        type.case_id = params[:case_id]
        type
      end
    end

    module ResolveCaseOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResolveCaseOutput, context: context)
        type = Types::ResolveCaseOutput.new
        type.initial_case_status = params[:initial_case_status]
        type.final_case_status = params[:final_case_status]
        type
      end
    end

    module Service
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Service, context: context)
        type = Types::Service.new
        type.code = params[:code]
        type.name = params[:name]
        type.categories = CategoryList.build(params[:categories], context: "#{context}[:categories]") unless params[:categories].nil?
        type
      end
    end

    module ServiceCodeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ServiceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Service.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SeverityLevel
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SeverityLevel, context: context)
        type = Types::SeverityLevel.new
        type.code = params[:code]
        type.name = params[:name]
        type
      end
    end

    module SeverityLevelsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SeverityLevel.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TrustedAdvisorCategorySpecificSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TrustedAdvisorCategorySpecificSummary, context: context)
        type = Types::TrustedAdvisorCategorySpecificSummary.new
        type.cost_optimizing = TrustedAdvisorCostOptimizingSummary.build(params[:cost_optimizing], context: "#{context}[:cost_optimizing]") unless params[:cost_optimizing].nil?
        type
      end
    end

    module TrustedAdvisorCheckDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TrustedAdvisorCheckDescription, context: context)
        type = Types::TrustedAdvisorCheckDescription.new
        type.id = params[:id]
        type.name = params[:name]
        type.description = params[:description]
        type.category = params[:category]
        type.metadata = StringList.build(params[:metadata], context: "#{context}[:metadata]") unless params[:metadata].nil?
        type
      end
    end

    module TrustedAdvisorCheckList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TrustedAdvisorCheckDescription.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TrustedAdvisorCheckRefreshStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TrustedAdvisorCheckRefreshStatus, context: context)
        type = Types::TrustedAdvisorCheckRefreshStatus.new
        type.check_id = params[:check_id]
        type.status = params[:status]
        type.millis_until_next_refreshable = params[:millis_until_next_refreshable]
        type
      end
    end

    module TrustedAdvisorCheckRefreshStatusList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TrustedAdvisorCheckRefreshStatus.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TrustedAdvisorCheckResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TrustedAdvisorCheckResult, context: context)
        type = Types::TrustedAdvisorCheckResult.new
        type.check_id = params[:check_id]
        type.timestamp = params[:timestamp]
        type.status = params[:status]
        type.resources_summary = TrustedAdvisorResourcesSummary.build(params[:resources_summary], context: "#{context}[:resources_summary]") unless params[:resources_summary].nil?
        type.category_specific_summary = TrustedAdvisorCategorySpecificSummary.build(params[:category_specific_summary], context: "#{context}[:category_specific_summary]") unless params[:category_specific_summary].nil?
        type.flagged_resources = TrustedAdvisorResourceDetailList.build(params[:flagged_resources], context: "#{context}[:flagged_resources]") unless params[:flagged_resources].nil?
        type
      end
    end

    module TrustedAdvisorCheckSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TrustedAdvisorCheckSummary, context: context)
        type = Types::TrustedAdvisorCheckSummary.new
        type.check_id = params[:check_id]
        type.timestamp = params[:timestamp]
        type.status = params[:status]
        type.has_flagged_resources = params[:has_flagged_resources]
        type.resources_summary = TrustedAdvisorResourcesSummary.build(params[:resources_summary], context: "#{context}[:resources_summary]") unless params[:resources_summary].nil?
        type.category_specific_summary = TrustedAdvisorCategorySpecificSummary.build(params[:category_specific_summary], context: "#{context}[:category_specific_summary]") unless params[:category_specific_summary].nil?
        type
      end
    end

    module TrustedAdvisorCheckSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TrustedAdvisorCheckSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TrustedAdvisorCostOptimizingSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TrustedAdvisorCostOptimizingSummary, context: context)
        type = Types::TrustedAdvisorCostOptimizingSummary.new
        type.estimated_monthly_savings = params[:estimated_monthly_savings]
        type.estimated_percent_monthly_savings = params[:estimated_percent_monthly_savings]
        type
      end
    end

    module TrustedAdvisorResourceDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TrustedAdvisorResourceDetail, context: context)
        type = Types::TrustedAdvisorResourceDetail.new
        type.status = params[:status]
        type.region = params[:region]
        type.resource_id = params[:resource_id]
        type.is_suppressed = params[:is_suppressed]
        type.metadata = StringList.build(params[:metadata], context: "#{context}[:metadata]") unless params[:metadata].nil?
        type
      end
    end

    module TrustedAdvisorResourceDetailList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TrustedAdvisorResourceDetail.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TrustedAdvisorResourcesSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TrustedAdvisorResourcesSummary, context: context)
        type = Types::TrustedAdvisorResourcesSummary.new
        type.resources_processed = params[:resources_processed]
        type.resources_flagged = params[:resources_flagged]
        type.resources_ignored = params[:resources_ignored]
        type.resources_suppressed = params[:resources_suppressed]
        type
      end
    end

  end
end
