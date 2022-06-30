# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::AccessAnalyzer
  module Builders

    # Operation Builder for ApplyArchiveRule
    class ApplyArchiveRule
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/archive-rule')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['analyzerArn'] = input[:analyzer_arn] unless input[:analyzer_arn].nil?
        data['ruleName'] = input[:rule_name] unless input[:rule_name].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CancelPolicyGeneration
    class CancelPolicyGeneration
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:job_id].to_s.empty?
          raise ArgumentError, "HTTP label :job_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/policy/generation/%<jobId>s',
            jobId: Hearth::HTTP.uri_escape(input[:job_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for CreateAccessPreview
    class CreateAccessPreview
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/access-preview')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['analyzerArn'] = input[:analyzer_arn] unless input[:analyzer_arn].nil?
        data['configurations'] = Builders::ConfigurationsMap.build(input[:configurations]) unless input[:configurations].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for ConfigurationsMap
    class ConfigurationsMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::Configuration.build(value) unless value.nil?
        end
        data
      end
    end

    # Structure Builder for Configuration
    class Configuration
      def self.build(input)
        data = {}
        case input
        when Types::Configuration::IamRole
          data['iamRole'] = (Builders::IamRoleConfiguration.build(input) unless input.nil?)
        when Types::Configuration::KmsKey
          data['kmsKey'] = (Builders::KmsKeyConfiguration.build(input) unless input.nil?)
        when Types::Configuration::SecretsManagerSecret
          data['secretsManagerSecret'] = (Builders::SecretsManagerSecretConfiguration.build(input) unless input.nil?)
        when Types::Configuration::S3Bucket
          data['s3Bucket'] = (Builders::S3BucketConfiguration.build(input) unless input.nil?)
        when Types::Configuration::SqsQueue
          data['sqsQueue'] = (Builders::SqsQueueConfiguration.build(input) unless input.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::Configuration"
        end

        data
      end
    end

    # Structure Builder for SqsQueueConfiguration
    class SqsQueueConfiguration
      def self.build(input)
        data = {}
        data['queuePolicy'] = input[:queue_policy] unless input[:queue_policy].nil?
        data
      end
    end

    # Structure Builder for S3BucketConfiguration
    class S3BucketConfiguration
      def self.build(input)
        data = {}
        data['bucketPolicy'] = input[:bucket_policy] unless input[:bucket_policy].nil?
        data['bucketAclGrants'] = Builders::S3BucketAclGrantConfigurationsList.build(input[:bucket_acl_grants]) unless input[:bucket_acl_grants].nil?
        data['bucketPublicAccessBlock'] = Builders::S3PublicAccessBlockConfiguration.build(input[:bucket_public_access_block]) unless input[:bucket_public_access_block].nil?
        data['accessPoints'] = Builders::S3AccessPointConfigurationsMap.build(input[:access_points]) unless input[:access_points].nil?
        data
      end
    end

    # Map Builder for S3AccessPointConfigurationsMap
    class S3AccessPointConfigurationsMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::S3AccessPointConfiguration.build(value) unless value.nil?
        end
        data
      end
    end

    # Structure Builder for S3AccessPointConfiguration
    class S3AccessPointConfiguration
      def self.build(input)
        data = {}
        data['accessPointPolicy'] = input[:access_point_policy] unless input[:access_point_policy].nil?
        data['publicAccessBlock'] = Builders::S3PublicAccessBlockConfiguration.build(input[:public_access_block]) unless input[:public_access_block].nil?
        data['networkOrigin'] = Builders::NetworkOriginConfiguration.build(input[:network_origin]) unless input[:network_origin].nil?
        data
      end
    end

    # Structure Builder for NetworkOriginConfiguration
    class NetworkOriginConfiguration
      def self.build(input)
        data = {}
        case input
        when Types::NetworkOriginConfiguration::VpcConfiguration
          data['vpcConfiguration'] = (Builders::VpcConfiguration.build(input) unless input.nil?)
        when Types::NetworkOriginConfiguration::InternetConfiguration
          data['internetConfiguration'] = (Builders::InternetConfiguration.build(input) unless input.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::NetworkOriginConfiguration"
        end

        data
      end
    end

    # Structure Builder for InternetConfiguration
    class InternetConfiguration
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for VpcConfiguration
    class VpcConfiguration
      def self.build(input)
        data = {}
        data['vpcId'] = input[:vpc_id] unless input[:vpc_id].nil?
        data
      end
    end

    # Structure Builder for S3PublicAccessBlockConfiguration
    class S3PublicAccessBlockConfiguration
      def self.build(input)
        data = {}
        data['ignorePublicAcls'] = input[:ignore_public_acls] unless input[:ignore_public_acls].nil?
        data['restrictPublicBuckets'] = input[:restrict_public_buckets] unless input[:restrict_public_buckets].nil?
        data
      end
    end

    # List Builder for S3BucketAclGrantConfigurationsList
    class S3BucketAclGrantConfigurationsList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::S3BucketAclGrantConfiguration.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for S3BucketAclGrantConfiguration
    class S3BucketAclGrantConfiguration
      def self.build(input)
        data = {}
        data['permission'] = input[:permission] unless input[:permission].nil?
        data['grantee'] = Builders::AclGrantee.build(input[:grantee]) unless input[:grantee].nil?
        data
      end
    end

    # Structure Builder for AclGrantee
    class AclGrantee
      def self.build(input)
        data = {}
        case input
        when Types::AclGrantee::Id
          data['id'] = input
        when Types::AclGrantee::Uri
          data['uri'] = input
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::AclGrantee"
        end

        data
      end
    end

    # Structure Builder for SecretsManagerSecretConfiguration
    class SecretsManagerSecretConfiguration
      def self.build(input)
        data = {}
        data['kmsKeyId'] = input[:kms_key_id] unless input[:kms_key_id].nil?
        data['secretPolicy'] = input[:secret_policy] unless input[:secret_policy].nil?
        data
      end
    end

    # Structure Builder for KmsKeyConfiguration
    class KmsKeyConfiguration
      def self.build(input)
        data = {}
        data['keyPolicies'] = Builders::KmsKeyPoliciesMap.build(input[:key_policies]) unless input[:key_policies].nil?
        data['grants'] = Builders::KmsGrantConfigurationsList.build(input[:grants]) unless input[:grants].nil?
        data
      end
    end

    # List Builder for KmsGrantConfigurationsList
    class KmsGrantConfigurationsList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::KmsGrantConfiguration.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for KmsGrantConfiguration
    class KmsGrantConfiguration
      def self.build(input)
        data = {}
        data['operations'] = Builders::KmsGrantOperationsList.build(input[:operations]) unless input[:operations].nil?
        data['granteePrincipal'] = input[:grantee_principal] unless input[:grantee_principal].nil?
        data['retiringPrincipal'] = input[:retiring_principal] unless input[:retiring_principal].nil?
        data['constraints'] = Builders::KmsGrantConstraints.build(input[:constraints]) unless input[:constraints].nil?
        data['issuingAccount'] = input[:issuing_account] unless input[:issuing_account].nil?
        data
      end
    end

    # Structure Builder for KmsGrantConstraints
    class KmsGrantConstraints
      def self.build(input)
        data = {}
        data['encryptionContextEquals'] = Builders::KmsConstraintsMap.build(input[:encryption_context_equals]) unless input[:encryption_context_equals].nil?
        data['encryptionContextSubset'] = Builders::KmsConstraintsMap.build(input[:encryption_context_subset]) unless input[:encryption_context_subset].nil?
        data
      end
    end

    # Map Builder for KmsConstraintsMap
    class KmsConstraintsMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # List Builder for KmsGrantOperationsList
    class KmsGrantOperationsList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Map Builder for KmsKeyPoliciesMap
    class KmsKeyPoliciesMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for IamRoleConfiguration
    class IamRoleConfiguration
      def self.build(input)
        data = {}
        data['trustPolicy'] = input[:trust_policy] unless input[:trust_policy].nil?
        data
      end
    end

    # Operation Builder for CreateAnalyzer
    class CreateAnalyzer
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/analyzer')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['analyzerName'] = input[:analyzer_name] unless input[:analyzer_name].nil?
        data['type'] = input[:type] unless input[:type].nil?
        data['archiveRules'] = Builders::InlineArchiveRulesList.build(input[:archive_rules]) unless input[:archive_rules].nil?
        data['tags'] = Builders::TagsMap.build(input[:tags]) unless input[:tags].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for TagsMap
    class TagsMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # List Builder for InlineArchiveRulesList
    class InlineArchiveRulesList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::InlineArchiveRule.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for InlineArchiveRule
    class InlineArchiveRule
      def self.build(input)
        data = {}
        data['ruleName'] = input[:rule_name] unless input[:rule_name].nil?
        data['filter'] = Builders::FilterCriteriaMap.build(input[:filter]) unless input[:filter].nil?
        data
      end
    end

    # Map Builder for FilterCriteriaMap
    class FilterCriteriaMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::Criterion.build(value) unless value.nil?
        end
        data
      end
    end

    # Structure Builder for Criterion
    class Criterion
      def self.build(input)
        data = {}
        data['eq'] = Builders::ValueList.build(input[:eq]) unless input[:eq].nil?
        data['neq'] = Builders::ValueList.build(input[:neq]) unless input[:neq].nil?
        data['contains'] = Builders::ValueList.build(input[:contains]) unless input[:contains].nil?
        data['exists'] = input[:exists] unless input[:exists].nil?
        data
      end
    end

    # List Builder for ValueList
    class ValueList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateArchiveRule
    class CreateArchiveRule
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:analyzer_name].to_s.empty?
          raise ArgumentError, "HTTP label :analyzer_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/analyzer/%<analyzerName>s/archive-rule',
            analyzerName: Hearth::HTTP.uri_escape(input[:analyzer_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ruleName'] = input[:rule_name] unless input[:rule_name].nil?
        data['filter'] = Builders::FilterCriteriaMap.build(input[:filter]) unless input[:filter].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteAnalyzer
    class DeleteAnalyzer
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:analyzer_name].to_s.empty?
          raise ArgumentError, "HTTP label :analyzer_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/analyzer/%<analyzerName>s',
            analyzerName: Hearth::HTTP.uri_escape(input[:analyzer_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['clientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteArchiveRule
    class DeleteArchiveRule
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:analyzer_name].to_s.empty?
          raise ArgumentError, "HTTP label :analyzer_name cannot be nil or empty."
        end
        if input[:rule_name].to_s.empty?
          raise ArgumentError, "HTTP label :rule_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/analyzer/%<analyzerName>s/archive-rule/%<ruleName>s',
            analyzerName: Hearth::HTTP.uri_escape(input[:analyzer_name].to_s),
            ruleName: Hearth::HTTP.uri_escape(input[:rule_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['clientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetAccessPreview
    class GetAccessPreview
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:access_preview_id].to_s.empty?
          raise ArgumentError, "HTTP label :access_preview_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/access-preview/%<accessPreviewId>s',
            accessPreviewId: Hearth::HTTP.uri_escape(input[:access_preview_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['analyzerArn'] = input[:analyzer_arn].to_s unless input[:analyzer_arn].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetAnalyzedResource
    class GetAnalyzedResource
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/analyzed-resource')
        params = Hearth::Query::ParamList.new
        params['analyzerArn'] = input[:analyzer_arn].to_s unless input[:analyzer_arn].nil?
        params['resourceArn'] = input[:resource_arn].to_s unless input[:resource_arn].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetAnalyzer
    class GetAnalyzer
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:analyzer_name].to_s.empty?
          raise ArgumentError, "HTTP label :analyzer_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/analyzer/%<analyzerName>s',
            analyzerName: Hearth::HTTP.uri_escape(input[:analyzer_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetArchiveRule
    class GetArchiveRule
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:analyzer_name].to_s.empty?
          raise ArgumentError, "HTTP label :analyzer_name cannot be nil or empty."
        end
        if input[:rule_name].to_s.empty?
          raise ArgumentError, "HTTP label :rule_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/analyzer/%<analyzerName>s/archive-rule/%<ruleName>s',
            analyzerName: Hearth::HTTP.uri_escape(input[:analyzer_name].to_s),
            ruleName: Hearth::HTTP.uri_escape(input[:rule_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetFinding
    class GetFinding
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/finding/%<id>s',
            id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['analyzerArn'] = input[:analyzer_arn].to_s unless input[:analyzer_arn].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetGeneratedPolicy
    class GetGeneratedPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:job_id].to_s.empty?
          raise ArgumentError, "HTTP label :job_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/policy/generation/%<jobId>s',
            jobId: Hearth::HTTP.uri_escape(input[:job_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['includeResourcePlaceholders'] = input[:include_resource_placeholders].to_s unless input[:include_resource_placeholders].nil?
        params['includeServiceLevelTemplate'] = input[:include_service_level_template].to_s unless input[:include_service_level_template].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListAccessPreviewFindings
    class ListAccessPreviewFindings
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:access_preview_id].to_s.empty?
          raise ArgumentError, "HTTP label :access_preview_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/access-preview/%<accessPreviewId>s',
            accessPreviewId: Hearth::HTTP.uri_escape(input[:access_preview_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['analyzerArn'] = input[:analyzer_arn] unless input[:analyzer_arn].nil?
        data['filter'] = Builders::FilterCriteriaMap.build(input[:filter]) unless input[:filter].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListAccessPreviews
    class ListAccessPreviews
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/access-preview')
        params = Hearth::Query::ParamList.new
        params['analyzerArn'] = input[:analyzer_arn].to_s unless input[:analyzer_arn].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListAnalyzedResources
    class ListAnalyzedResources
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/analyzed-resource')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['analyzerArn'] = input[:analyzer_arn] unless input[:analyzer_arn].nil?
        data['resourceType'] = input[:resource_type] unless input[:resource_type].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListAnalyzers
    class ListAnalyzers
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/analyzer')
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['type'] = input[:type].to_s unless input[:type].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListArchiveRules
    class ListArchiveRules
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:analyzer_name].to_s.empty?
          raise ArgumentError, "HTTP label :analyzer_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/analyzer/%<analyzerName>s/archive-rule',
            analyzerName: Hearth::HTTP.uri_escape(input[:analyzer_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListFindings
    class ListFindings
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/finding')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['analyzerArn'] = input[:analyzer_arn] unless input[:analyzer_arn].nil?
        data['filter'] = Builders::FilterCriteriaMap.build(input[:filter]) unless input[:filter].nil?
        data['sort'] = Builders::SortCriteria.build(input[:sort]) unless input[:sort].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
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

    # Operation Builder for ListPolicyGenerations
    class ListPolicyGenerations
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/policy/generation')
        params = Hearth::Query::ParamList.new
        params['principalArn'] = input[:principal_arn].to_s unless input[:principal_arn].nil?
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

    # Operation Builder for StartPolicyGeneration
    class StartPolicyGeneration
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/policy/generation')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['policyGenerationDetails'] = Builders::PolicyGenerationDetails.build(input[:policy_generation_details]) unless input[:policy_generation_details].nil?
        data['cloudTrailDetails'] = Builders::CloudTrailDetails.build(input[:cloud_trail_details]) unless input[:cloud_trail_details].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for CloudTrailDetails
    class CloudTrailDetails
      def self.build(input)
        data = {}
        data['trails'] = Builders::TrailList.build(input[:trails]) unless input[:trails].nil?
        data['accessRole'] = input[:access_role] unless input[:access_role].nil?
        data['startTime'] = Hearth::TimeHelper.to_date_time(input[:start_time]) unless input[:start_time].nil?
        data['endTime'] = Hearth::TimeHelper.to_date_time(input[:end_time]) unless input[:end_time].nil?
        data
      end
    end

    # List Builder for TrailList
    class TrailList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Trail.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Trail
    class Trail
      def self.build(input)
        data = {}
        data['cloudTrailArn'] = input[:cloud_trail_arn] unless input[:cloud_trail_arn].nil?
        data['regions'] = Builders::RegionList.build(input[:regions]) unless input[:regions].nil?
        data['allRegions'] = input[:all_regions] unless input[:all_regions].nil?
        data
      end
    end

    # List Builder for RegionList
    class RegionList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for PolicyGenerationDetails
    class PolicyGenerationDetails
      def self.build(input)
        data = {}
        data['principalArn'] = input[:principal_arn] unless input[:principal_arn].nil?
        data
      end
    end

    # Operation Builder for StartResourceScan
    class StartResourceScan
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/resource/scan')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['analyzerArn'] = input[:analyzer_arn] unless input[:analyzer_arn].nil?
        data['resourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
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
            '/tags/%<resourceArn>s',
            resourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['tags'] = Builders::TagsMap.build(input[:tags]) unless input[:tags].nil?
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

    # List Builder for TagKeys
    class TagKeys
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateArchiveRule
    class UpdateArchiveRule
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:analyzer_name].to_s.empty?
          raise ArgumentError, "HTTP label :analyzer_name cannot be nil or empty."
        end
        if input[:rule_name].to_s.empty?
          raise ArgumentError, "HTTP label :rule_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/analyzer/%<analyzerName>s/archive-rule/%<ruleName>s',
            analyzerName: Hearth::HTTP.uri_escape(input[:analyzer_name].to_s),
            ruleName: Hearth::HTTP.uri_escape(input[:rule_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['filter'] = Builders::FilterCriteriaMap.build(input[:filter]) unless input[:filter].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateFindings
    class UpdateFindings
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/finding')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['analyzerArn'] = input[:analyzer_arn] unless input[:analyzer_arn].nil?
        data['status'] = input[:status] unless input[:status].nil?
        data['ids'] = Builders::FindingIdList.build(input[:ids]) unless input[:ids].nil?
        data['resourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for FindingIdList
    class FindingIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ValidatePolicy
    class ValidatePolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/policy/validation')
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['locale'] = input[:locale] unless input[:locale].nil?
        data['policyDocument'] = input[:policy_document] unless input[:policy_document].nil?
        data['policyType'] = input[:policy_type] unless input[:policy_type].nil?
        data['validatePolicyResourceType'] = input[:validate_policy_resource_type] unless input[:validate_policy_resource_type].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
