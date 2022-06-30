# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::Macie2
  module Builders

    # Operation Builder for AcceptInvitation
    class AcceptInvitation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/invitations/accept')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['administratorAccountId'] = input[:administrator_account_id] unless input[:administrator_account_id].nil?
        data['invitationId'] = input[:invitation_id] unless input[:invitation_id].nil?
        data['masterAccount'] = input[:master_account] unless input[:master_account].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for BatchGetCustomDataIdentifiers
    class BatchGetCustomDataIdentifiers
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/custom-data-identifiers/get')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ids'] = Builders::List____listOf__string.build(input[:ids]) unless input[:ids].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for __listOf__string
    class List____listOf__string
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateClassificationJob
    class CreateClassificationJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/jobs')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        data['customDataIdentifierIds'] = Builders::List____listOf__string.build(input[:custom_data_identifier_ids]) unless input[:custom_data_identifier_ids].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['initialRun'] = input[:initial_run] unless input[:initial_run].nil?
        data['jobType'] = input[:job_type] unless input[:job_type].nil?
        data['managedDataIdentifierIds'] = Builders::List____listOf__string.build(input[:managed_data_identifier_ids]) unless input[:managed_data_identifier_ids].nil?
        data['managedDataIdentifierSelector'] = input[:managed_data_identifier_selector] unless input[:managed_data_identifier_selector].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['s3JobDefinition'] = Builders::S3JobDefinition.build(input[:s3_job_definition]) unless input[:s3_job_definition].nil?
        data['samplingPercentage'] = input[:sampling_percentage] unless input[:sampling_percentage].nil?
        data['scheduleFrequency'] = Builders::JobScheduleFrequency.build(input[:schedule_frequency]) unless input[:schedule_frequency].nil?
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

    # Structure Builder for JobScheduleFrequency
    class JobScheduleFrequency
      def self.build(input)
        data = {}
        data['dailySchedule'] = Builders::DailySchedule.build(input[:daily_schedule]) unless input[:daily_schedule].nil?
        data['monthlySchedule'] = Builders::MonthlySchedule.build(input[:monthly_schedule]) unless input[:monthly_schedule].nil?
        data['weeklySchedule'] = Builders::WeeklySchedule.build(input[:weekly_schedule]) unless input[:weekly_schedule].nil?
        data
      end
    end

    # Structure Builder for WeeklySchedule
    class WeeklySchedule
      def self.build(input)
        data = {}
        data['dayOfWeek'] = input[:day_of_week] unless input[:day_of_week].nil?
        data
      end
    end

    # Structure Builder for MonthlySchedule
    class MonthlySchedule
      def self.build(input)
        data = {}
        data['dayOfMonth'] = input[:day_of_month] unless input[:day_of_month].nil?
        data
      end
    end

    # Structure Builder for DailySchedule
    class DailySchedule
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for S3JobDefinition
    class S3JobDefinition
      def self.build(input)
        data = {}
        data['bucketDefinitions'] = Builders::List____listOfS3BucketDefinitionForJob.build(input[:bucket_definitions]) unless input[:bucket_definitions].nil?
        data['scoping'] = Builders::Scoping.build(input[:scoping]) unless input[:scoping].nil?
        data['bucketCriteria'] = Builders::S3BucketCriteriaForJob.build(input[:bucket_criteria]) unless input[:bucket_criteria].nil?
        data
      end
    end

    # Structure Builder for S3BucketCriteriaForJob
    class S3BucketCriteriaForJob
      def self.build(input)
        data = {}
        data['excludes'] = Builders::CriteriaBlockForJob.build(input[:excludes]) unless input[:excludes].nil?
        data['includes'] = Builders::CriteriaBlockForJob.build(input[:includes]) unless input[:includes].nil?
        data
      end
    end

    # Structure Builder for CriteriaBlockForJob
    class CriteriaBlockForJob
      def self.build(input)
        data = {}
        data['and'] = Builders::List____listOfCriteriaForJob.build(input[:and]) unless input[:and].nil?
        data
      end
    end

    # List Builder for __listOfCriteriaForJob
    class List____listOfCriteriaForJob
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::CriteriaForJob.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for CriteriaForJob
    class CriteriaForJob
      def self.build(input)
        data = {}
        data['simpleCriterion'] = Builders::SimpleCriterionForJob.build(input[:simple_criterion]) unless input[:simple_criterion].nil?
        data['tagCriterion'] = Builders::TagCriterionForJob.build(input[:tag_criterion]) unless input[:tag_criterion].nil?
        data
      end
    end

    # Structure Builder for TagCriterionForJob
    class TagCriterionForJob
      def self.build(input)
        data = {}
        data['comparator'] = input[:comparator] unless input[:comparator].nil?
        data['tagValues'] = Builders::List____listOfTagCriterionPairForJob.build(input[:tag_values]) unless input[:tag_values].nil?
        data
      end
    end

    # List Builder for __listOfTagCriterionPairForJob
    class List____listOfTagCriterionPairForJob
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::TagCriterionPairForJob.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for TagCriterionPairForJob
    class TagCriterionPairForJob
      def self.build(input)
        data = {}
        data['key'] = input[:key] unless input[:key].nil?
        data['value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Structure Builder for SimpleCriterionForJob
    class SimpleCriterionForJob
      def self.build(input)
        data = {}
        data['comparator'] = input[:comparator] unless input[:comparator].nil?
        data['key'] = input[:key] unless input[:key].nil?
        data['values'] = Builders::List____listOf__string.build(input[:values]) unless input[:values].nil?
        data
      end
    end

    # Structure Builder for Scoping
    class Scoping
      def self.build(input)
        data = {}
        data['excludes'] = Builders::JobScopingBlock.build(input[:excludes]) unless input[:excludes].nil?
        data['includes'] = Builders::JobScopingBlock.build(input[:includes]) unless input[:includes].nil?
        data
      end
    end

    # Structure Builder for JobScopingBlock
    class JobScopingBlock
      def self.build(input)
        data = {}
        data['and'] = Builders::List____listOfJobScopeTerm.build(input[:and]) unless input[:and].nil?
        data
      end
    end

    # List Builder for __listOfJobScopeTerm
    class List____listOfJobScopeTerm
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::JobScopeTerm.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for JobScopeTerm
    class JobScopeTerm
      def self.build(input)
        data = {}
        data['simpleScopeTerm'] = Builders::SimpleScopeTerm.build(input[:simple_scope_term]) unless input[:simple_scope_term].nil?
        data['tagScopeTerm'] = Builders::TagScopeTerm.build(input[:tag_scope_term]) unless input[:tag_scope_term].nil?
        data
      end
    end

    # Structure Builder for TagScopeTerm
    class TagScopeTerm
      def self.build(input)
        data = {}
        data['comparator'] = input[:comparator] unless input[:comparator].nil?
        data['key'] = input[:key] unless input[:key].nil?
        data['tagValues'] = Builders::List____listOfTagValuePair.build(input[:tag_values]) unless input[:tag_values].nil?
        data['target'] = input[:target] unless input[:target].nil?
        data
      end
    end

    # List Builder for __listOfTagValuePair
    class List____listOfTagValuePair
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::TagValuePair.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for TagValuePair
    class TagValuePair
      def self.build(input)
        data = {}
        data['key'] = input[:key] unless input[:key].nil?
        data['value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Structure Builder for SimpleScopeTerm
    class SimpleScopeTerm
      def self.build(input)
        data = {}
        data['comparator'] = input[:comparator] unless input[:comparator].nil?
        data['key'] = input[:key] unless input[:key].nil?
        data['values'] = Builders::List____listOf__string.build(input[:values]) unless input[:values].nil?
        data
      end
    end

    # List Builder for __listOfS3BucketDefinitionForJob
    class List____listOfS3BucketDefinitionForJob
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::S3BucketDefinitionForJob.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for S3BucketDefinitionForJob
    class S3BucketDefinitionForJob
      def self.build(input)
        data = {}
        data['accountId'] = input[:account_id] unless input[:account_id].nil?
        data['buckets'] = Builders::List____listOf__string.build(input[:buckets]) unless input[:buckets].nil?
        data
      end
    end

    # Operation Builder for CreateCustomDataIdentifier
    class CreateCustomDataIdentifier
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/custom-data-identifiers')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['ignoreWords'] = Builders::List____listOf__string.build(input[:ignore_words]) unless input[:ignore_words].nil?
        data['keywords'] = Builders::List____listOf__string.build(input[:keywords]) unless input[:keywords].nil?
        data['maximumMatchDistance'] = input[:maximum_match_distance] unless input[:maximum_match_distance].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['regex'] = input[:regex] unless input[:regex].nil?
        data['severityLevels'] = Builders::SeverityLevelList.build(input[:severity_levels]) unless input[:severity_levels].nil?
        data['tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for SeverityLevelList
    class SeverityLevelList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::SeverityLevel.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for SeverityLevel
    class SeverityLevel
      def self.build(input)
        data = {}
        data['occurrencesThreshold'] = input[:occurrences_threshold] unless input[:occurrences_threshold].nil?
        data['severity'] = input[:severity] unless input[:severity].nil?
        data
      end
    end

    # Operation Builder for CreateFindingsFilter
    class CreateFindingsFilter
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/findingsfilters')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['action'] = input[:action] unless input[:action].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['findingCriteria'] = Builders::FindingCriteria.build(input[:finding_criteria]) unless input[:finding_criteria].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['position'] = input[:position] unless input[:position].nil?
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
          data[key] = Builders::CriterionAdditionalProperties.build(value) unless value.nil?
        end
        data
      end
    end

    # Structure Builder for CriterionAdditionalProperties
    class CriterionAdditionalProperties
      def self.build(input)
        data = {}
        data['eq'] = Builders::List____listOf__string.build(input[:eq]) unless input[:eq].nil?
        data['eqExactMatch'] = Builders::List____listOf__string.build(input[:eq_exact_match]) unless input[:eq_exact_match].nil?
        data['gt'] = input[:gt] unless input[:gt].nil?
        data['gte'] = input[:gte] unless input[:gte].nil?
        data['lt'] = input[:lt] unless input[:lt].nil?
        data['lte'] = input[:lte] unless input[:lte].nil?
        data['neq'] = Builders::List____listOf__string.build(input[:neq]) unless input[:neq].nil?
        data
      end
    end

    # Operation Builder for CreateInvitations
    class CreateInvitations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/invitations')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['accountIds'] = Builders::List____listOf__string.build(input[:account_ids]) unless input[:account_ids].nil?
        data['disableEmailNotification'] = input[:disable_email_notification] unless input[:disable_email_notification].nil?
        data['message'] = input[:message] unless input[:message].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateMember
    class CreateMember
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/members')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['account'] = Builders::AccountDetail.build(input[:account]) unless input[:account].nil?
        data['tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
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

    # Operation Builder for CreateSampleFindings
    class CreateSampleFindings
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/findings/sample')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['findingTypes'] = Builders::List____listOfFindingType.build(input[:finding_types]) unless input[:finding_types].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for __listOfFindingType
    class List____listOfFindingType
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DeclineInvitations
    class DeclineInvitations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/invitations/decline')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['accountIds'] = Builders::List____listOf__string.build(input[:account_ids]) unless input[:account_ids].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteCustomDataIdentifier
    class DeleteCustomDataIdentifier
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/custom-data-identifiers/%<id>s',
            id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteFindingsFilter
    class DeleteFindingsFilter
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/findingsfilters/%<id>s',
            id: Hearth::HTTP.uri_escape(input[:id].to_s)
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
        http_req.append_path('/invitations/delete')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['accountIds'] = Builders::List____listOf__string.build(input[:account_ids]) unless input[:account_ids].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteMember
    class DeleteMember
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/members/%<id>s',
            id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeBuckets
    class DescribeBuckets
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/datasources/s3')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['criteria'] = Builders::BucketCriteria.build(input[:criteria]) unless input[:criteria].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['sortCriteria'] = Builders::BucketSortCriteria.build(input[:sort_criteria]) unless input[:sort_criteria].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for BucketSortCriteria
    class BucketSortCriteria
      def self.build(input)
        data = {}
        data['attributeName'] = input[:attribute_name] unless input[:attribute_name].nil?
        data['orderBy'] = input[:order_by] unless input[:order_by].nil?
        data
      end
    end

    # Map Builder for BucketCriteria
    class BucketCriteria
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::BucketCriteriaAdditionalProperties.build(value) unless value.nil?
        end
        data
      end
    end

    # Structure Builder for BucketCriteriaAdditionalProperties
    class BucketCriteriaAdditionalProperties
      def self.build(input)
        data = {}
        data['eq'] = Builders::List____listOf__string.build(input[:eq]) unless input[:eq].nil?
        data['gt'] = input[:gt] unless input[:gt].nil?
        data['gte'] = input[:gte] unless input[:gte].nil?
        data['lt'] = input[:lt] unless input[:lt].nil?
        data['lte'] = input[:lte] unless input[:lte].nil?
        data['neq'] = Builders::List____listOf__string.build(input[:neq]) unless input[:neq].nil?
        data['prefix'] = input[:prefix] unless input[:prefix].nil?
        data
      end
    end

    # Operation Builder for DescribeClassificationJob
    class DescribeClassificationJob
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:job_id].to_s.empty?
          raise ArgumentError, "HTTP label :job_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/jobs/%<jobId>s',
            jobId: Hearth::HTTP.uri_escape(input[:job_id].to_s)
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
        http_req.append_path('/admin/configuration')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DisableMacie
    class DisableMacie
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        http_req.append_path('/macie')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DisableOrganizationAdminAccount
    class DisableOrganizationAdminAccount
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        http_req.append_path('/admin')
        params = Hearth::Query::ParamList.new
        params['adminAccountId'] = input[:admin_account_id].to_s unless input[:admin_account_id].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DisassociateFromAdministratorAccount
    class DisassociateFromAdministratorAccount
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/administrator/disassociate')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DisassociateFromMasterAccount
    class DisassociateFromMasterAccount
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/master/disassociate')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DisassociateMember
    class DisassociateMember
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/members/disassociate/%<id>s',
            id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for EnableMacie
    class EnableMacie
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/macie')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        data['findingPublishingFrequency'] = input[:finding_publishing_frequency] unless input[:finding_publishing_frequency].nil?
        data['status'] = input[:status] unless input[:status].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for EnableOrganizationAdminAccount
    class EnableOrganizationAdminAccount
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/admin')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['adminAccountId'] = input[:admin_account_id] unless input[:admin_account_id].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetAdministratorAccount
    class GetAdministratorAccount
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/administrator')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetBucketStatistics
    class GetBucketStatistics
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/datasources/s3/statistics')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['accountId'] = input[:account_id] unless input[:account_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetClassificationExportConfiguration
    class GetClassificationExportConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/classification-export-configuration')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetCustomDataIdentifier
    class GetCustomDataIdentifier
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/custom-data-identifiers/%<id>s',
            id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetFindingStatistics
    class GetFindingStatistics
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/findings/statistics')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['findingCriteria'] = Builders::FindingCriteria.build(input[:finding_criteria]) unless input[:finding_criteria].nil?
        data['groupBy'] = input[:group_by] unless input[:group_by].nil?
        data['size'] = input[:size] unless input[:size].nil?
        data['sortCriteria'] = Builders::FindingStatisticsSortCriteria.build(input[:sort_criteria]) unless input[:sort_criteria].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for FindingStatisticsSortCriteria
    class FindingStatisticsSortCriteria
      def self.build(input)
        data = {}
        data['attributeName'] = input[:attribute_name] unless input[:attribute_name].nil?
        data['orderBy'] = input[:order_by] unless input[:order_by].nil?
        data
      end
    end

    # Operation Builder for GetFindings
    class GetFindings
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/findings/describe')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['findingIds'] = Builders::List____listOf__string.build(input[:finding_ids]) unless input[:finding_ids].nil?
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

    # Operation Builder for GetFindingsFilter
    class GetFindingsFilter
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/findingsfilters/%<id>s',
            id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetFindingsPublicationConfiguration
    class GetFindingsPublicationConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/findings-publication-configuration')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetInvitationsCount
    class GetInvitationsCount
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/invitations/count')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetMacieSession
    class GetMacieSession
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/macie')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetMasterAccount
    class GetMasterAccount
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/master')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetMember
    class GetMember
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/members/%<id>s',
            id: Hearth::HTTP.uri_escape(input[:id].to_s)
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
        http_req.append_path('/usage/statistics')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['filterBy'] = Builders::List____listOfUsageStatisticsFilter.build(input[:filter_by]) unless input[:filter_by].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['sortBy'] = Builders::UsageStatisticsSortBy.build(input[:sort_by]) unless input[:sort_by].nil?
        data['timeRange'] = input[:time_range] unless input[:time_range].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for UsageStatisticsSortBy
    class UsageStatisticsSortBy
      def self.build(input)
        data = {}
        data['key'] = input[:key] unless input[:key].nil?
        data['orderBy'] = input[:order_by] unless input[:order_by].nil?
        data
      end
    end

    # List Builder for __listOfUsageStatisticsFilter
    class List____listOfUsageStatisticsFilter
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::UsageStatisticsFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for UsageStatisticsFilter
    class UsageStatisticsFilter
      def self.build(input)
        data = {}
        data['comparator'] = input[:comparator] unless input[:comparator].nil?
        data['key'] = input[:key] unless input[:key].nil?
        data['values'] = Builders::List____listOf__string.build(input[:values]) unless input[:values].nil?
        data
      end
    end

    # Operation Builder for GetUsageTotals
    class GetUsageTotals
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/usage')
        params = Hearth::Query::ParamList.new
        params['timeRange'] = input[:time_range].to_s unless input[:time_range].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListClassificationJobs
    class ListClassificationJobs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/jobs/list')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['filterCriteria'] = Builders::ListJobsFilterCriteria.build(input[:filter_criteria]) unless input[:filter_criteria].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['sortCriteria'] = Builders::ListJobsSortCriteria.build(input[:sort_criteria]) unless input[:sort_criteria].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ListJobsSortCriteria
    class ListJobsSortCriteria
      def self.build(input)
        data = {}
        data['attributeName'] = input[:attribute_name] unless input[:attribute_name].nil?
        data['orderBy'] = input[:order_by] unless input[:order_by].nil?
        data
      end
    end

    # Structure Builder for ListJobsFilterCriteria
    class ListJobsFilterCriteria
      def self.build(input)
        data = {}
        data['excludes'] = Builders::List____listOfListJobsFilterTerm.build(input[:excludes]) unless input[:excludes].nil?
        data['includes'] = Builders::List____listOfListJobsFilterTerm.build(input[:includes]) unless input[:includes].nil?
        data
      end
    end

    # List Builder for __listOfListJobsFilterTerm
    class List____listOfListJobsFilterTerm
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ListJobsFilterTerm.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ListJobsFilterTerm
    class ListJobsFilterTerm
      def self.build(input)
        data = {}
        data['comparator'] = input[:comparator] unless input[:comparator].nil?
        data['key'] = input[:key] unless input[:key].nil?
        data['values'] = Builders::List____listOf__string.build(input[:values]) unless input[:values].nil?
        data
      end
    end

    # Operation Builder for ListCustomDataIdentifiers
    class ListCustomDataIdentifiers
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/custom-data-identifiers/list')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListFindings
    class ListFindings
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/findings')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['findingCriteria'] = Builders::FindingCriteria.build(input[:finding_criteria]) unless input[:finding_criteria].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['sortCriteria'] = Builders::SortCriteria.build(input[:sort_criteria]) unless input[:sort_criteria].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListFindingsFilters
    class ListFindingsFilters
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/findingsfilters')
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
        http_req.append_path('/invitations')
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListManagedDataIdentifiers
    class ListManagedDataIdentifiers
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/managed-data-identifiers/list')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListMembers
    class ListMembers
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/members')
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

    # Operation Builder for PutClassificationExportConfiguration
    class PutClassificationExportConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/classification-export-configuration')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['configuration'] = Builders::ClassificationExportConfiguration.build(input[:configuration]) unless input[:configuration].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ClassificationExportConfiguration
    class ClassificationExportConfiguration
      def self.build(input)
        data = {}
        data['s3Destination'] = Builders::S3Destination.build(input[:s3_destination]) unless input[:s3_destination].nil?
        data
      end
    end

    # Structure Builder for S3Destination
    class S3Destination
      def self.build(input)
        data = {}
        data['bucketName'] = input[:bucket_name] unless input[:bucket_name].nil?
        data['keyPrefix'] = input[:key_prefix] unless input[:key_prefix].nil?
        data['kmsKeyArn'] = input[:kms_key_arn] unless input[:kms_key_arn].nil?
        data
      end
    end

    # Operation Builder for PutFindingsPublicationConfiguration
    class PutFindingsPublicationConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/findings-publication-configuration')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        data['securityHubConfiguration'] = Builders::SecurityHubConfiguration.build(input[:security_hub_configuration]) unless input[:security_hub_configuration].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for SecurityHubConfiguration
    class SecurityHubConfiguration
      def self.build(input)
        data = {}
        data['publishClassificationFindings'] = input[:publish_classification_findings] unless input[:publish_classification_findings].nil?
        data['publishPolicyFindings'] = input[:publish_policy_findings] unless input[:publish_policy_findings].nil?
        data
      end
    end

    # Operation Builder for SearchResources
    class SearchResources
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/datasources/search-resources')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['bucketCriteria'] = Builders::SearchResourcesBucketCriteria.build(input[:bucket_criteria]) unless input[:bucket_criteria].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['sortCriteria'] = Builders::SearchResourcesSortCriteria.build(input[:sort_criteria]) unless input[:sort_criteria].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for SearchResourcesSortCriteria
    class SearchResourcesSortCriteria
      def self.build(input)
        data = {}
        data['attributeName'] = input[:attribute_name] unless input[:attribute_name].nil?
        data['orderBy'] = input[:order_by] unless input[:order_by].nil?
        data
      end
    end

    # Structure Builder for SearchResourcesBucketCriteria
    class SearchResourcesBucketCriteria
      def self.build(input)
        data = {}
        data['excludes'] = Builders::SearchResourcesCriteriaBlock.build(input[:excludes]) unless input[:excludes].nil?
        data['includes'] = Builders::SearchResourcesCriteriaBlock.build(input[:includes]) unless input[:includes].nil?
        data
      end
    end

    # Structure Builder for SearchResourcesCriteriaBlock
    class SearchResourcesCriteriaBlock
      def self.build(input)
        data = {}
        data['and'] = Builders::List____listOfSearchResourcesCriteria.build(input[:and]) unless input[:and].nil?
        data
      end
    end

    # List Builder for __listOfSearchResourcesCriteria
    class List____listOfSearchResourcesCriteria
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::SearchResourcesCriteria.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for SearchResourcesCriteria
    class SearchResourcesCriteria
      def self.build(input)
        data = {}
        data['simpleCriterion'] = Builders::SearchResourcesSimpleCriterion.build(input[:simple_criterion]) unless input[:simple_criterion].nil?
        data['tagCriterion'] = Builders::SearchResourcesTagCriterion.build(input[:tag_criterion]) unless input[:tag_criterion].nil?
        data
      end
    end

    # Structure Builder for SearchResourcesTagCriterion
    class SearchResourcesTagCriterion
      def self.build(input)
        data = {}
        data['comparator'] = input[:comparator] unless input[:comparator].nil?
        data['tagValues'] = Builders::List____listOfSearchResourcesTagCriterionPair.build(input[:tag_values]) unless input[:tag_values].nil?
        data
      end
    end

    # List Builder for __listOfSearchResourcesTagCriterionPair
    class List____listOfSearchResourcesTagCriterionPair
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::SearchResourcesTagCriterionPair.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for SearchResourcesTagCriterionPair
    class SearchResourcesTagCriterionPair
      def self.build(input)
        data = {}
        data['key'] = input[:key] unless input[:key].nil?
        data['value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Structure Builder for SearchResourcesSimpleCriterion
    class SearchResourcesSimpleCriterion
      def self.build(input)
        data = {}
        data['comparator'] = input[:comparator] unless input[:comparator].nil?
        data['key'] = input[:key] unless input[:key].nil?
        data['values'] = Builders::List____listOf__string.build(input[:values]) unless input[:values].nil?
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

    # Operation Builder for TestCustomDataIdentifier
    class TestCustomDataIdentifier
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/custom-data-identifiers/test')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ignoreWords'] = Builders::List____listOf__string.build(input[:ignore_words]) unless input[:ignore_words].nil?
        data['keywords'] = Builders::List____listOf__string.build(input[:keywords]) unless input[:keywords].nil?
        data['maximumMatchDistance'] = input[:maximum_match_distance] unless input[:maximum_match_distance].nil?
        data['regex'] = input[:regex] unless input[:regex].nil?
        data['sampleText'] = input[:sample_text] unless input[:sample_text].nil?
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

    # Operation Builder for UpdateClassificationJob
    class UpdateClassificationJob
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:job_id].to_s.empty?
          raise ArgumentError, "HTTP label :job_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/jobs/%<jobId>s',
            jobId: Hearth::HTTP.uri_escape(input[:job_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['jobStatus'] = input[:job_status] unless input[:job_status].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateFindingsFilter
    class UpdateFindingsFilter
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/findingsfilters/%<id>s',
            id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['action'] = input[:action] unless input[:action].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['findingCriteria'] = Builders::FindingCriteria.build(input[:finding_criteria]) unless input[:finding_criteria].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['position'] = input[:position] unless input[:position].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateMacieSession
    class UpdateMacieSession
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        http_req.append_path('/macie')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['findingPublishingFrequency'] = input[:finding_publishing_frequency] unless input[:finding_publishing_frequency].nil?
        data['status'] = input[:status] unless input[:status].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateMemberSession
    class UpdateMemberSession
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/macie/members/%<id>s',
            id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['status'] = input[:status] unless input[:status].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateOrganizationConfiguration
    class UpdateOrganizationConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        http_req.append_path('/admin/configuration')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['autoEnable'] = input[:auto_enable] unless input[:auto_enable].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
