# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Support
  module Validators

    class AddAttachmentsToSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddAttachmentsToSetInput, context: context)
        Hearth::Validator.validate!(input[:attachment_set_id], ::String, context: "#{context}[:attachment_set_id]")
        Attachments.validate!(input[:attachments], context: "#{context}[:attachments]") unless input[:attachments].nil?
      end
    end

    class AddAttachmentsToSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddAttachmentsToSetOutput, context: context)
        Hearth::Validator.validate!(input[:attachment_set_id], ::String, context: "#{context}[:attachment_set_id]")
        Hearth::Validator.validate!(input[:expiry_time], ::String, context: "#{context}[:expiry_time]")
      end
    end

    class AddCommunicationToCaseInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddCommunicationToCaseInput, context: context)
        Hearth::Validator.validate!(input[:case_id], ::String, context: "#{context}[:case_id]")
        Hearth::Validator.validate!(input[:communication_body], ::String, context: "#{context}[:communication_body]")
        CcEmailAddressList.validate!(input[:cc_email_addresses], context: "#{context}[:cc_email_addresses]") unless input[:cc_email_addresses].nil?
        Hearth::Validator.validate!(input[:attachment_set_id], ::String, context: "#{context}[:attachment_set_id]")
      end
    end

    class AddCommunicationToCaseOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddCommunicationToCaseOutput, context: context)
        Hearth::Validator.validate!(input[:result], ::TrueClass, ::FalseClass, context: "#{context}[:result]")
      end
    end

    class Attachment
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Attachment, context: context)
        Hearth::Validator.validate!(input[:file_name], ::String, context: "#{context}[:file_name]")
        Hearth::Validator.validate!(input[:data], ::String, context: "#{context}[:data]")
      end
    end

    class AttachmentDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttachmentDetails, context: context)
        Hearth::Validator.validate!(input[:attachment_id], ::String, context: "#{context}[:attachment_id]")
        Hearth::Validator.validate!(input[:file_name], ::String, context: "#{context}[:file_name]")
      end
    end

    class AttachmentIdNotFound
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttachmentIdNotFound, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AttachmentLimitExceeded
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttachmentLimitExceeded, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AttachmentSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AttachmentDetails.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AttachmentSetExpired
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttachmentSetExpired, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AttachmentSetIdNotFound
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttachmentSetIdNotFound, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AttachmentSetSizeLimitExceeded
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttachmentSetSizeLimitExceeded, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Attachments
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Attachment.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CaseCreationLimitExceeded
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CaseCreationLimitExceeded, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CaseDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CaseDetails, context: context)
        Hearth::Validator.validate!(input[:case_id], ::String, context: "#{context}[:case_id]")
        Hearth::Validator.validate!(input[:display_id], ::String, context: "#{context}[:display_id]")
        Hearth::Validator.validate!(input[:subject], ::String, context: "#{context}[:subject]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:service_code], ::String, context: "#{context}[:service_code]")
        Hearth::Validator.validate!(input[:category_code], ::String, context: "#{context}[:category_code]")
        Hearth::Validator.validate!(input[:severity_code], ::String, context: "#{context}[:severity_code]")
        Hearth::Validator.validate!(input[:submitted_by], ::String, context: "#{context}[:submitted_by]")
        Hearth::Validator.validate!(input[:time_created], ::String, context: "#{context}[:time_created]")
        RecentCaseCommunications.validate!(input[:recent_communications], context: "#{context}[:recent_communications]") unless input[:recent_communications].nil?
        CcEmailAddressList.validate!(input[:cc_email_addresses], context: "#{context}[:cc_email_addresses]") unless input[:cc_email_addresses].nil?
        Hearth::Validator.validate!(input[:language], ::String, context: "#{context}[:language]")
      end
    end

    class CaseIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CaseIdNotFound
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CaseIdNotFound, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CaseList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CaseDetails.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Category
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Category, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class CategoryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Category.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CcEmailAddressList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Communication
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Communication, context: context)
        Hearth::Validator.validate!(input[:case_id], ::String, context: "#{context}[:case_id]")
        Hearth::Validator.validate!(input[:body], ::String, context: "#{context}[:body]")
        Hearth::Validator.validate!(input[:submitted_by], ::String, context: "#{context}[:submitted_by]")
        Hearth::Validator.validate!(input[:time_created], ::String, context: "#{context}[:time_created]")
        AttachmentSet.validate!(input[:attachment_set], context: "#{context}[:attachment_set]") unless input[:attachment_set].nil?
      end
    end

    class CommunicationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Communication.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CreateCaseInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCaseInput, context: context)
        Hearth::Validator.validate!(input[:subject], ::String, context: "#{context}[:subject]")
        Hearth::Validator.validate!(input[:service_code], ::String, context: "#{context}[:service_code]")
        Hearth::Validator.validate!(input[:severity_code], ::String, context: "#{context}[:severity_code]")
        Hearth::Validator.validate!(input[:category_code], ::String, context: "#{context}[:category_code]")
        Hearth::Validator.validate!(input[:communication_body], ::String, context: "#{context}[:communication_body]")
        CcEmailAddressList.validate!(input[:cc_email_addresses], context: "#{context}[:cc_email_addresses]") unless input[:cc_email_addresses].nil?
        Hearth::Validator.validate!(input[:language], ::String, context: "#{context}[:language]")
        Hearth::Validator.validate!(input[:issue_type], ::String, context: "#{context}[:issue_type]")
        Hearth::Validator.validate!(input[:attachment_set_id], ::String, context: "#{context}[:attachment_set_id]")
      end
    end

    class CreateCaseOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCaseOutput, context: context)
        Hearth::Validator.validate!(input[:case_id], ::String, context: "#{context}[:case_id]")
      end
    end

    class DescribeAttachmentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAttachmentInput, context: context)
        Hearth::Validator.validate!(input[:attachment_id], ::String, context: "#{context}[:attachment_id]")
      end
    end

    class DescribeAttachmentLimitExceeded
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAttachmentLimitExceeded, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DescribeAttachmentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAttachmentOutput, context: context)
        Attachment.validate!(input[:attachment], context: "#{context}[:attachment]") unless input[:attachment].nil?
      end
    end

    class DescribeCasesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCasesInput, context: context)
        CaseIdList.validate!(input[:case_id_list], context: "#{context}[:case_id_list]") unless input[:case_id_list].nil?
        Hearth::Validator.validate!(input[:display_id], ::String, context: "#{context}[:display_id]")
        Hearth::Validator.validate!(input[:after_time], ::String, context: "#{context}[:after_time]")
        Hearth::Validator.validate!(input[:before_time], ::String, context: "#{context}[:before_time]")
        Hearth::Validator.validate!(input[:include_resolved_cases], ::TrueClass, ::FalseClass, context: "#{context}[:include_resolved_cases]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:language], ::String, context: "#{context}[:language]")
        Hearth::Validator.validate!(input[:include_communications], ::TrueClass, ::FalseClass, context: "#{context}[:include_communications]")
      end
    end

    class DescribeCasesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCasesOutput, context: context)
        CaseList.validate!(input[:cases], context: "#{context}[:cases]") unless input[:cases].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeCommunicationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCommunicationsInput, context: context)
        Hearth::Validator.validate!(input[:case_id], ::String, context: "#{context}[:case_id]")
        Hearth::Validator.validate!(input[:before_time], ::String, context: "#{context}[:before_time]")
        Hearth::Validator.validate!(input[:after_time], ::String, context: "#{context}[:after_time]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class DescribeCommunicationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCommunicationsOutput, context: context)
        CommunicationList.validate!(input[:communications], context: "#{context}[:communications]") unless input[:communications].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeServicesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeServicesInput, context: context)
        ServiceCodeList.validate!(input[:service_code_list], context: "#{context}[:service_code_list]") unless input[:service_code_list].nil?
        Hearth::Validator.validate!(input[:language], ::String, context: "#{context}[:language]")
      end
    end

    class DescribeServicesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeServicesOutput, context: context)
        ServiceList.validate!(input[:services], context: "#{context}[:services]") unless input[:services].nil?
      end
    end

    class DescribeSeverityLevelsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSeverityLevelsInput, context: context)
        Hearth::Validator.validate!(input[:language], ::String, context: "#{context}[:language]")
      end
    end

    class DescribeSeverityLevelsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSeverityLevelsOutput, context: context)
        SeverityLevelsList.validate!(input[:severity_levels], context: "#{context}[:severity_levels]") unless input[:severity_levels].nil?
      end
    end

    class DescribeTrustedAdvisorCheckRefreshStatusesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTrustedAdvisorCheckRefreshStatusesInput, context: context)
        StringList.validate!(input[:check_ids], context: "#{context}[:check_ids]") unless input[:check_ids].nil?
      end
    end

    class DescribeTrustedAdvisorCheckRefreshStatusesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTrustedAdvisorCheckRefreshStatusesOutput, context: context)
        TrustedAdvisorCheckRefreshStatusList.validate!(input[:statuses], context: "#{context}[:statuses]") unless input[:statuses].nil?
      end
    end

    class DescribeTrustedAdvisorCheckResultInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTrustedAdvisorCheckResultInput, context: context)
        Hearth::Validator.validate!(input[:check_id], ::String, context: "#{context}[:check_id]")
        Hearth::Validator.validate!(input[:language], ::String, context: "#{context}[:language]")
      end
    end

    class DescribeTrustedAdvisorCheckResultOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTrustedAdvisorCheckResultOutput, context: context)
        TrustedAdvisorCheckResult.validate!(input[:result], context: "#{context}[:result]") unless input[:result].nil?
      end
    end

    class DescribeTrustedAdvisorCheckSummariesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTrustedAdvisorCheckSummariesInput, context: context)
        StringList.validate!(input[:check_ids], context: "#{context}[:check_ids]") unless input[:check_ids].nil?
      end
    end

    class DescribeTrustedAdvisorCheckSummariesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTrustedAdvisorCheckSummariesOutput, context: context)
        TrustedAdvisorCheckSummaryList.validate!(input[:summaries], context: "#{context}[:summaries]") unless input[:summaries].nil?
      end
    end

    class DescribeTrustedAdvisorChecksInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTrustedAdvisorChecksInput, context: context)
        Hearth::Validator.validate!(input[:language], ::String, context: "#{context}[:language]")
      end
    end

    class DescribeTrustedAdvisorChecksOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTrustedAdvisorChecksOutput, context: context)
        TrustedAdvisorCheckList.validate!(input[:checks], context: "#{context}[:checks]") unless input[:checks].nil?
      end
    end

    class InternalServerError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerError, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class RecentCaseCommunications
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RecentCaseCommunications, context: context)
        CommunicationList.validate!(input[:communications], context: "#{context}[:communications]") unless input[:communications].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class RefreshTrustedAdvisorCheckInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RefreshTrustedAdvisorCheckInput, context: context)
        Hearth::Validator.validate!(input[:check_id], ::String, context: "#{context}[:check_id]")
      end
    end

    class RefreshTrustedAdvisorCheckOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RefreshTrustedAdvisorCheckOutput, context: context)
        TrustedAdvisorCheckRefreshStatus.validate!(input[:status], context: "#{context}[:status]") unless input[:status].nil?
      end
    end

    class ResolveCaseInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResolveCaseInput, context: context)
        Hearth::Validator.validate!(input[:case_id], ::String, context: "#{context}[:case_id]")
      end
    end

    class ResolveCaseOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResolveCaseOutput, context: context)
        Hearth::Validator.validate!(input[:initial_case_status], ::String, context: "#{context}[:initial_case_status]")
        Hearth::Validator.validate!(input[:final_case_status], ::String, context: "#{context}[:final_case_status]")
      end
    end

    class Service
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Service, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        CategoryList.validate!(input[:categories], context: "#{context}[:categories]") unless input[:categories].nil?
      end
    end

    class ServiceCodeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ServiceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Service.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SeverityLevel
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SeverityLevel, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class SeverityLevelsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SeverityLevel.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TrustedAdvisorCategorySpecificSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TrustedAdvisorCategorySpecificSummary, context: context)
        TrustedAdvisorCostOptimizingSummary.validate!(input[:cost_optimizing], context: "#{context}[:cost_optimizing]") unless input[:cost_optimizing].nil?
      end
    end

    class TrustedAdvisorCheckDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TrustedAdvisorCheckDescription, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:category], ::String, context: "#{context}[:category]")
        StringList.validate!(input[:metadata], context: "#{context}[:metadata]") unless input[:metadata].nil?
      end
    end

    class TrustedAdvisorCheckList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TrustedAdvisorCheckDescription.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TrustedAdvisorCheckRefreshStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TrustedAdvisorCheckRefreshStatus, context: context)
        Hearth::Validator.validate!(input[:check_id], ::String, context: "#{context}[:check_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:millis_until_next_refreshable], ::Integer, context: "#{context}[:millis_until_next_refreshable]")
      end
    end

    class TrustedAdvisorCheckRefreshStatusList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TrustedAdvisorCheckRefreshStatus.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TrustedAdvisorCheckResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TrustedAdvisorCheckResult, context: context)
        Hearth::Validator.validate!(input[:check_id], ::String, context: "#{context}[:check_id]")
        Hearth::Validator.validate!(input[:timestamp], ::String, context: "#{context}[:timestamp]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        TrustedAdvisorResourcesSummary.validate!(input[:resources_summary], context: "#{context}[:resources_summary]") unless input[:resources_summary].nil?
        TrustedAdvisorCategorySpecificSummary.validate!(input[:category_specific_summary], context: "#{context}[:category_specific_summary]") unless input[:category_specific_summary].nil?
        TrustedAdvisorResourceDetailList.validate!(input[:flagged_resources], context: "#{context}[:flagged_resources]") unless input[:flagged_resources].nil?
      end
    end

    class TrustedAdvisorCheckSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TrustedAdvisorCheckSummary, context: context)
        Hearth::Validator.validate!(input[:check_id], ::String, context: "#{context}[:check_id]")
        Hearth::Validator.validate!(input[:timestamp], ::String, context: "#{context}[:timestamp]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:has_flagged_resources], ::TrueClass, ::FalseClass, context: "#{context}[:has_flagged_resources]")
        TrustedAdvisorResourcesSummary.validate!(input[:resources_summary], context: "#{context}[:resources_summary]") unless input[:resources_summary].nil?
        TrustedAdvisorCategorySpecificSummary.validate!(input[:category_specific_summary], context: "#{context}[:category_specific_summary]") unless input[:category_specific_summary].nil?
      end
    end

    class TrustedAdvisorCheckSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TrustedAdvisorCheckSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TrustedAdvisorCostOptimizingSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TrustedAdvisorCostOptimizingSummary, context: context)
        Hearth::Validator.validate!(input[:estimated_monthly_savings], ::Float, context: "#{context}[:estimated_monthly_savings]")
        Hearth::Validator.validate!(input[:estimated_percent_monthly_savings], ::Float, context: "#{context}[:estimated_percent_monthly_savings]")
      end
    end

    class TrustedAdvisorResourceDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TrustedAdvisorResourceDetail, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:is_suppressed], ::TrueClass, ::FalseClass, context: "#{context}[:is_suppressed]")
        StringList.validate!(input[:metadata], context: "#{context}[:metadata]") unless input[:metadata].nil?
      end
    end

    class TrustedAdvisorResourceDetailList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TrustedAdvisorResourceDetail.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TrustedAdvisorResourcesSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TrustedAdvisorResourcesSummary, context: context)
        Hearth::Validator.validate!(input[:resources_processed], ::Integer, context: "#{context}[:resources_processed]")
        Hearth::Validator.validate!(input[:resources_flagged], ::Integer, context: "#{context}[:resources_flagged]")
        Hearth::Validator.validate!(input[:resources_ignored], ::Integer, context: "#{context}[:resources_ignored]")
        Hearth::Validator.validate!(input[:resources_suppressed], ::Integer, context: "#{context}[:resources_suppressed]")
      end
    end

  end
end
