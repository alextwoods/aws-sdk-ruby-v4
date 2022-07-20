# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::WAFV2
  module Parsers

    # Operation Parser for AssociateWebACL
    class AssociateWebACL
      def self.parse(http_resp)
        data = Types::AssociateWebACLOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for WAFInvalidParameterException
    class WAFInvalidParameterException
      def self.parse(http_resp)
        data = Types::WAFInvalidParameterException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data.field = map['Field']
        data.parameter = map['Parameter']
        data.reason = map['Reason']
        data
      end
    end

    # Error Parser for WAFNonexistentItemException
    class WAFNonexistentItemException
      def self.parse(http_resp)
        data = Types::WAFNonexistentItemException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for WAFInternalErrorException
    class WAFInternalErrorException
      def self.parse(http_resp)
        data = Types::WAFInternalErrorException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for WAFUnavailableEntityException
    class WAFUnavailableEntityException
      def self.parse(http_resp)
        data = Types::WAFUnavailableEntityException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for WAFInvalidOperationException
    class WAFInvalidOperationException
      def self.parse(http_resp)
        data = Types::WAFInvalidOperationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CheckCapacity
    class CheckCapacity
      def self.parse(http_resp)
        data = Types::CheckCapacityOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.capacity = map['Capacity']
        data
      end
    end

    # Error Parser for WAFExpiredManagedRuleGroupVersionException
    class WAFExpiredManagedRuleGroupVersionException
      def self.parse(http_resp)
        data = Types::WAFExpiredManagedRuleGroupVersionException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for WAFInvalidResourceException
    class WAFInvalidResourceException
      def self.parse(http_resp)
        data = Types::WAFInvalidResourceException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for WAFSubscriptionNotFoundException
    class WAFSubscriptionNotFoundException
      def self.parse(http_resp)
        data = Types::WAFSubscriptionNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for WAFLimitsExceededException
    class WAFLimitsExceededException
      def self.parse(http_resp)
        data = Types::WAFLimitsExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateIPSet
    class CreateIPSet
      def self.parse(http_resp)
        data = Types::CreateIPSetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.summary = (Parsers::IPSetSummary.parse(map['Summary']) unless map['Summary'].nil?)
        data
      end
    end

    class IPSetSummary
      def self.parse(map)
        data = Types::IPSetSummary.new
        data.name = map['Name']
        data.id = map['Id']
        data.description = map['Description']
        data.lock_token = map['LockToken']
        data.arn = map['ARN']
        return data
      end
    end

    # Error Parser for WAFOptimisticLockException
    class WAFOptimisticLockException
      def self.parse(http_resp)
        data = Types::WAFOptimisticLockException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for WAFDuplicateItemException
    class WAFDuplicateItemException
      def self.parse(http_resp)
        data = Types::WAFDuplicateItemException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for WAFTagOperationException
    class WAFTagOperationException
      def self.parse(http_resp)
        data = Types::WAFTagOperationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for WAFTagOperationInternalErrorException
    class WAFTagOperationInternalErrorException
      def self.parse(http_resp)
        data = Types::WAFTagOperationInternalErrorException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateRegexPatternSet
    class CreateRegexPatternSet
      def self.parse(http_resp)
        data = Types::CreateRegexPatternSetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.summary = (Parsers::RegexPatternSetSummary.parse(map['Summary']) unless map['Summary'].nil?)
        data
      end
    end

    class RegexPatternSetSummary
      def self.parse(map)
        data = Types::RegexPatternSetSummary.new
        data.name = map['Name']
        data.id = map['Id']
        data.description = map['Description']
        data.lock_token = map['LockToken']
        data.arn = map['ARN']
        return data
      end
    end

    # Operation Parser for CreateRuleGroup
    class CreateRuleGroup
      def self.parse(http_resp)
        data = Types::CreateRuleGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.summary = (Parsers::RuleGroupSummary.parse(map['Summary']) unless map['Summary'].nil?)
        data
      end
    end

    class RuleGroupSummary
      def self.parse(map)
        data = Types::RuleGroupSummary.new
        data.name = map['Name']
        data.id = map['Id']
        data.description = map['Description']
        data.lock_token = map['LockToken']
        data.arn = map['ARN']
        return data
      end
    end

    # Operation Parser for CreateWebACL
    class CreateWebACL
      def self.parse(http_resp)
        data = Types::CreateWebACLOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.summary = (Parsers::WebACLSummary.parse(map['Summary']) unless map['Summary'].nil?)
        data
      end
    end

    class WebACLSummary
      def self.parse(map)
        data = Types::WebACLSummary.new
        data.name = map['Name']
        data.id = map['Id']
        data.description = map['Description']
        data.lock_token = map['LockToken']
        data.arn = map['ARN']
        return data
      end
    end

    # Error Parser for WAFConfigurationWarningException
    class WAFConfigurationWarningException
      def self.parse(http_resp)
        data = Types::WAFConfigurationWarningException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DeleteFirewallManagerRuleGroups
    class DeleteFirewallManagerRuleGroups
      def self.parse(http_resp)
        data = Types::DeleteFirewallManagerRuleGroupsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_web_acl_lock_token = map['NextWebACLLockToken']
        data
      end
    end

    # Operation Parser for DeleteIPSet
    class DeleteIPSet
      def self.parse(http_resp)
        data = Types::DeleteIPSetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for WAFAssociatedItemException
    class WAFAssociatedItemException
      def self.parse(http_resp)
        data = Types::WAFAssociatedItemException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DeleteLoggingConfiguration
    class DeleteLoggingConfiguration
      def self.parse(http_resp)
        data = Types::DeleteLoggingConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeletePermissionPolicy
    class DeletePermissionPolicy
      def self.parse(http_resp)
        data = Types::DeletePermissionPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteRegexPatternSet
    class DeleteRegexPatternSet
      def self.parse(http_resp)
        data = Types::DeleteRegexPatternSetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteRuleGroup
    class DeleteRuleGroup
      def self.parse(http_resp)
        data = Types::DeleteRuleGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteWebACL
    class DeleteWebACL
      def self.parse(http_resp)
        data = Types::DeleteWebACLOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DescribeManagedRuleGroup
    class DescribeManagedRuleGroup
      def self.parse(http_resp)
        data = Types::DescribeManagedRuleGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.version_name = map['VersionName']
        data.sns_topic_arn = map['SnsTopicArn']
        data.capacity = map['Capacity']
        data.rules = (Parsers::RuleSummaries.parse(map['Rules']) unless map['Rules'].nil?)
        data.label_namespace = map['LabelNamespace']
        data.available_labels = (Parsers::LabelSummaries.parse(map['AvailableLabels']) unless map['AvailableLabels'].nil?)
        data.consumed_labels = (Parsers::LabelSummaries.parse(map['ConsumedLabels']) unless map['ConsumedLabels'].nil?)
        data
      end
    end

    class LabelSummaries
      def self.parse(list)
        list.map do |value|
          Parsers::LabelSummary.parse(value) unless value.nil?
        end
      end
    end

    class LabelSummary
      def self.parse(map)
        data = Types::LabelSummary.new
        data.name = map['Name']
        return data
      end
    end

    class RuleSummaries
      def self.parse(list)
        list.map do |value|
          Parsers::RuleSummary.parse(value) unless value.nil?
        end
      end
    end

    class RuleSummary
      def self.parse(map)
        data = Types::RuleSummary.new
        data.name = map['Name']
        data.action = (Parsers::RuleAction.parse(map['Action']) unless map['Action'].nil?)
        return data
      end
    end

    class RuleAction
      def self.parse(map)
        data = Types::RuleAction.new
        data.block = (Parsers::BlockAction.parse(map['Block']) unless map['Block'].nil?)
        data.allow = (Parsers::AllowAction.parse(map['Allow']) unless map['Allow'].nil?)
        data.count = (Parsers::CountAction.parse(map['Count']) unless map['Count'].nil?)
        data.captcha = (Parsers::CaptchaAction.parse(map['Captcha']) unless map['Captcha'].nil?)
        return data
      end
    end

    class CaptchaAction
      def self.parse(map)
        data = Types::CaptchaAction.new
        data.custom_request_handling = (Parsers::CustomRequestHandling.parse(map['CustomRequestHandling']) unless map['CustomRequestHandling'].nil?)
        return data
      end
    end

    class CustomRequestHandling
      def self.parse(map)
        data = Types::CustomRequestHandling.new
        data.insert_headers = (Parsers::CustomHTTPHeaders.parse(map['InsertHeaders']) unless map['InsertHeaders'].nil?)
        return data
      end
    end

    class CustomHTTPHeaders
      def self.parse(list)
        list.map do |value|
          Parsers::CustomHTTPHeader.parse(value) unless value.nil?
        end
      end
    end

    class CustomHTTPHeader
      def self.parse(map)
        data = Types::CustomHTTPHeader.new
        data.name = map['Name']
        data.value = map['Value']
        return data
      end
    end

    class CountAction
      def self.parse(map)
        data = Types::CountAction.new
        data.custom_request_handling = (Parsers::CustomRequestHandling.parse(map['CustomRequestHandling']) unless map['CustomRequestHandling'].nil?)
        return data
      end
    end

    class AllowAction
      def self.parse(map)
        data = Types::AllowAction.new
        data.custom_request_handling = (Parsers::CustomRequestHandling.parse(map['CustomRequestHandling']) unless map['CustomRequestHandling'].nil?)
        return data
      end
    end

    class BlockAction
      def self.parse(map)
        data = Types::BlockAction.new
        data.custom_response = (Parsers::CustomResponse.parse(map['CustomResponse']) unless map['CustomResponse'].nil?)
        return data
      end
    end

    class CustomResponse
      def self.parse(map)
        data = Types::CustomResponse.new
        data.response_code = map['ResponseCode']
        data.custom_response_body_key = map['CustomResponseBodyKey']
        data.response_headers = (Parsers::CustomHTTPHeaders.parse(map['ResponseHeaders']) unless map['ResponseHeaders'].nil?)
        return data
      end
    end

    # Operation Parser for DisassociateWebACL
    class DisassociateWebACL
      def self.parse(http_resp)
        data = Types::DisassociateWebACLOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for GenerateMobileSdkReleaseUrl
    class GenerateMobileSdkReleaseUrl
      def self.parse(http_resp)
        data = Types::GenerateMobileSdkReleaseUrlOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.url = map['Url']
        data
      end
    end

    # Operation Parser for GetIPSet
    class GetIPSet
      def self.parse(http_resp)
        data = Types::GetIPSetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.ip_set = (Parsers::IPSet.parse(map['IPSet']) unless map['IPSet'].nil?)
        data.lock_token = map['LockToken']
        data
      end
    end

    class IPSet
      def self.parse(map)
        data = Types::IPSet.new
        data.name = map['Name']
        data.id = map['Id']
        data.arn = map['ARN']
        data.description = map['Description']
        data.ip_address_version = map['IPAddressVersion']
        data.addresses = (Parsers::IPAddresses.parse(map['Addresses']) unless map['Addresses'].nil?)
        return data
      end
    end

    class IPAddresses
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for GetLoggingConfiguration
    class GetLoggingConfiguration
      def self.parse(http_resp)
        data = Types::GetLoggingConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.logging_configuration = (Parsers::LoggingConfiguration.parse(map['LoggingConfiguration']) unless map['LoggingConfiguration'].nil?)
        data
      end
    end

    class LoggingConfiguration
      def self.parse(map)
        data = Types::LoggingConfiguration.new
        data.resource_arn = map['ResourceArn']
        data.log_destination_configs = (Parsers::LogDestinationConfigs.parse(map['LogDestinationConfigs']) unless map['LogDestinationConfigs'].nil?)
        data.redacted_fields = (Parsers::RedactedFields.parse(map['RedactedFields']) unless map['RedactedFields'].nil?)
        data.managed_by_firewall_manager = map['ManagedByFirewallManager']
        data.logging_filter = (Parsers::LoggingFilter.parse(map['LoggingFilter']) unless map['LoggingFilter'].nil?)
        return data
      end
    end

    class LoggingFilter
      def self.parse(map)
        data = Types::LoggingFilter.new
        data.filters = (Parsers::Filters.parse(map['Filters']) unless map['Filters'].nil?)
        data.default_behavior = map['DefaultBehavior']
        return data
      end
    end

    class Filters
      def self.parse(list)
        list.map do |value|
          Parsers::Filter.parse(value) unless value.nil?
        end
      end
    end

    class Filter
      def self.parse(map)
        data = Types::Filter.new
        data.behavior = map['Behavior']
        data.requirement = map['Requirement']
        data.conditions = (Parsers::Conditions.parse(map['Conditions']) unless map['Conditions'].nil?)
        return data
      end
    end

    class Conditions
      def self.parse(list)
        list.map do |value|
          Parsers::Condition.parse(value) unless value.nil?
        end
      end
    end

    class Condition
      def self.parse(map)
        data = Types::Condition.new
        data.action_condition = (Parsers::ActionCondition.parse(map['ActionCondition']) unless map['ActionCondition'].nil?)
        data.label_name_condition = (Parsers::LabelNameCondition.parse(map['LabelNameCondition']) unless map['LabelNameCondition'].nil?)
        return data
      end
    end

    class LabelNameCondition
      def self.parse(map)
        data = Types::LabelNameCondition.new
        data.label_name = map['LabelName']
        return data
      end
    end

    class ActionCondition
      def self.parse(map)
        data = Types::ActionCondition.new
        data.action = map['Action']
        return data
      end
    end

    class RedactedFields
      def self.parse(list)
        list.map do |value|
          Parsers::FieldToMatch.parse(value) unless value.nil?
        end
      end
    end

    class FieldToMatch
      def self.parse(map)
        data = Types::FieldToMatch.new
        data.single_header = (Parsers::SingleHeader.parse(map['SingleHeader']) unless map['SingleHeader'].nil?)
        data.single_query_argument = (Parsers::SingleQueryArgument.parse(map['SingleQueryArgument']) unless map['SingleQueryArgument'].nil?)
        data.all_query_arguments = (Parsers::AllQueryArguments.parse(map['AllQueryArguments']) unless map['AllQueryArguments'].nil?)
        data.uri_path = (Parsers::UriPath.parse(map['UriPath']) unless map['UriPath'].nil?)
        data.query_string = (Parsers::QueryString.parse(map['QueryString']) unless map['QueryString'].nil?)
        data.body = (Parsers::Body.parse(map['Body']) unless map['Body'].nil?)
        data.member_method = (Parsers::Method.parse(map['Method']) unless map['Method'].nil?)
        data.json_body = (Parsers::JsonBody.parse(map['JsonBody']) unless map['JsonBody'].nil?)
        data.headers = (Parsers::Headers.parse(map['Headers']) unless map['Headers'].nil?)
        data.cookies = (Parsers::Cookies.parse(map['Cookies']) unless map['Cookies'].nil?)
        return data
      end
    end

    class Cookies
      def self.parse(map)
        data = Types::Cookies.new
        data.match_pattern = (Parsers::CookieMatchPattern.parse(map['MatchPattern']) unless map['MatchPattern'].nil?)
        data.match_scope = map['MatchScope']
        data.oversize_handling = map['OversizeHandling']
        return data
      end
    end

    class CookieMatchPattern
      def self.parse(map)
        data = Types::CookieMatchPattern.new
        data.all = (Parsers::All.parse(map['All']) unless map['All'].nil?)
        data.included_cookies = (Parsers::CookieNames.parse(map['IncludedCookies']) unless map['IncludedCookies'].nil?)
        data.excluded_cookies = (Parsers::CookieNames.parse(map['ExcludedCookies']) unless map['ExcludedCookies'].nil?)
        return data
      end
    end

    class CookieNames
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class All
      def self.parse(map)
        data = Types::All.new
        return data
      end
    end

    class Headers
      def self.parse(map)
        data = Types::Headers.new
        data.match_pattern = (Parsers::HeaderMatchPattern.parse(map['MatchPattern']) unless map['MatchPattern'].nil?)
        data.match_scope = map['MatchScope']
        data.oversize_handling = map['OversizeHandling']
        return data
      end
    end

    class HeaderMatchPattern
      def self.parse(map)
        data = Types::HeaderMatchPattern.new
        data.all = (Parsers::All.parse(map['All']) unless map['All'].nil?)
        data.included_headers = (Parsers::HeaderNames.parse(map['IncludedHeaders']) unless map['IncludedHeaders'].nil?)
        data.excluded_headers = (Parsers::HeaderNames.parse(map['ExcludedHeaders']) unless map['ExcludedHeaders'].nil?)
        return data
      end
    end

    class HeaderNames
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class JsonBody
      def self.parse(map)
        data = Types::JsonBody.new
        data.match_pattern = (Parsers::JsonMatchPattern.parse(map['MatchPattern']) unless map['MatchPattern'].nil?)
        data.match_scope = map['MatchScope']
        data.invalid_fallback_behavior = map['InvalidFallbackBehavior']
        data.oversize_handling = map['OversizeHandling']
        return data
      end
    end

    class JsonMatchPattern
      def self.parse(map)
        data = Types::JsonMatchPattern.new
        data.all = (Parsers::All.parse(map['All']) unless map['All'].nil?)
        data.included_paths = (Parsers::JsonPointerPaths.parse(map['IncludedPaths']) unless map['IncludedPaths'].nil?)
        return data
      end
    end

    class JsonPointerPaths
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class Method
      def self.parse(map)
        data = Types::Method.new
        return data
      end
    end

    class Body
      def self.parse(map)
        data = Types::Body.new
        data.oversize_handling = map['OversizeHandling']
        return data
      end
    end

    class QueryString
      def self.parse(map)
        data = Types::QueryString.new
        return data
      end
    end

    class UriPath
      def self.parse(map)
        data = Types::UriPath.new
        return data
      end
    end

    class AllQueryArguments
      def self.parse(map)
        data = Types::AllQueryArguments.new
        return data
      end
    end

    class SingleQueryArgument
      def self.parse(map)
        data = Types::SingleQueryArgument.new
        data.name = map['Name']
        return data
      end
    end

    class SingleHeader
      def self.parse(map)
        data = Types::SingleHeader.new
        data.name = map['Name']
        return data
      end
    end

    class LogDestinationConfigs
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for GetManagedRuleSet
    class GetManagedRuleSet
      def self.parse(http_resp)
        data = Types::GetManagedRuleSetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.managed_rule_set = (Parsers::ManagedRuleSet.parse(map['ManagedRuleSet']) unless map['ManagedRuleSet'].nil?)
        data.lock_token = map['LockToken']
        data
      end
    end

    class ManagedRuleSet
      def self.parse(map)
        data = Types::ManagedRuleSet.new
        data.name = map['Name']
        data.id = map['Id']
        data.arn = map['ARN']
        data.description = map['Description']
        data.published_versions = (Parsers::PublishedVersions.parse(map['PublishedVersions']) unless map['PublishedVersions'].nil?)
        data.recommended_version = map['RecommendedVersion']
        data.label_namespace = map['LabelNamespace']
        return data
      end
    end

    class PublishedVersions
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Parsers::ManagedRuleSetVersion.parse(value) unless value.nil?
        end
        data
      end
    end

    class ManagedRuleSetVersion
      def self.parse(map)
        data = Types::ManagedRuleSetVersion.new
        data.associated_rule_group_arn = map['AssociatedRuleGroupArn']
        data.capacity = map['Capacity']
        data.forecasted_lifetime = map['ForecastedLifetime']
        data.publish_timestamp = Time.at(map['PublishTimestamp'].to_i) if map['PublishTimestamp']
        data.last_update_timestamp = Time.at(map['LastUpdateTimestamp'].to_i) if map['LastUpdateTimestamp']
        data.expiry_timestamp = Time.at(map['ExpiryTimestamp'].to_i) if map['ExpiryTimestamp']
        return data
      end
    end

    # Operation Parser for GetMobileSdkRelease
    class GetMobileSdkRelease
      def self.parse(http_resp)
        data = Types::GetMobileSdkReleaseOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.mobile_sdk_release = (Parsers::MobileSdkRelease.parse(map['MobileSdkRelease']) unless map['MobileSdkRelease'].nil?)
        data
      end
    end

    class MobileSdkRelease
      def self.parse(map)
        data = Types::MobileSdkRelease.new
        data.release_version = map['ReleaseVersion']
        data.timestamp = Time.at(map['Timestamp'].to_i) if map['Timestamp']
        data.release_notes = map['ReleaseNotes']
        data.tags = (Parsers::TagList.parse(map['Tags']) unless map['Tags'].nil?)
        return data
      end
    end

    class TagList
      def self.parse(list)
        list.map do |value|
          Parsers::Tag.parse(value) unless value.nil?
        end
      end
    end

    class Tag
      def self.parse(map)
        data = Types::Tag.new
        data.key = map['Key']
        data.value = map['Value']
        return data
      end
    end

    # Operation Parser for GetPermissionPolicy
    class GetPermissionPolicy
      def self.parse(http_resp)
        data = Types::GetPermissionPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.policy = map['Policy']
        data
      end
    end

    # Operation Parser for GetRateBasedStatementManagedKeys
    class GetRateBasedStatementManagedKeys
      def self.parse(http_resp)
        data = Types::GetRateBasedStatementManagedKeysOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.managed_keys_ipv4 = (Parsers::RateBasedStatementManagedKeysIPSet.parse(map['ManagedKeysIPV4']) unless map['ManagedKeysIPV4'].nil?)
        data.managed_keys_ipv6 = (Parsers::RateBasedStatementManagedKeysIPSet.parse(map['ManagedKeysIPV6']) unless map['ManagedKeysIPV6'].nil?)
        data
      end
    end

    class RateBasedStatementManagedKeysIPSet
      def self.parse(map)
        data = Types::RateBasedStatementManagedKeysIPSet.new
        data.ip_address_version = map['IPAddressVersion']
        data.addresses = (Parsers::IPAddresses.parse(map['Addresses']) unless map['Addresses'].nil?)
        return data
      end
    end

    # Operation Parser for GetRegexPatternSet
    class GetRegexPatternSet
      def self.parse(http_resp)
        data = Types::GetRegexPatternSetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.regex_pattern_set = (Parsers::RegexPatternSet.parse(map['RegexPatternSet']) unless map['RegexPatternSet'].nil?)
        data.lock_token = map['LockToken']
        data
      end
    end

    class RegexPatternSet
      def self.parse(map)
        data = Types::RegexPatternSet.new
        data.name = map['Name']
        data.id = map['Id']
        data.arn = map['ARN']
        data.description = map['Description']
        data.regular_expression_list = (Parsers::RegularExpressionList.parse(map['RegularExpressionList']) unless map['RegularExpressionList'].nil?)
        return data
      end
    end

    class RegularExpressionList
      def self.parse(list)
        list.map do |value|
          Parsers::Regex.parse(value) unless value.nil?
        end
      end
    end

    class Regex
      def self.parse(map)
        data = Types::Regex.new
        data.regex_string = map['RegexString']
        return data
      end
    end

    # Operation Parser for GetRuleGroup
    class GetRuleGroup
      def self.parse(http_resp)
        data = Types::GetRuleGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.rule_group = (Parsers::RuleGroup.parse(map['RuleGroup']) unless map['RuleGroup'].nil?)
        data.lock_token = map['LockToken']
        data
      end
    end

    class RuleGroup
      def self.parse(map)
        data = Types::RuleGroup.new
        data.name = map['Name']
        data.id = map['Id']
        data.capacity = map['Capacity']
        data.arn = map['ARN']
        data.description = map['Description']
        data.rules = (Parsers::Rules.parse(map['Rules']) unless map['Rules'].nil?)
        data.visibility_config = (Parsers::VisibilityConfig.parse(map['VisibilityConfig']) unless map['VisibilityConfig'].nil?)
        data.label_namespace = map['LabelNamespace']
        data.custom_response_bodies = (Parsers::CustomResponseBodies.parse(map['CustomResponseBodies']) unless map['CustomResponseBodies'].nil?)
        data.available_labels = (Parsers::LabelSummaries.parse(map['AvailableLabels']) unless map['AvailableLabels'].nil?)
        data.consumed_labels = (Parsers::LabelSummaries.parse(map['ConsumedLabels']) unless map['ConsumedLabels'].nil?)
        return data
      end
    end

    class CustomResponseBodies
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Parsers::CustomResponseBody.parse(value) unless value.nil?
        end
        data
      end
    end

    class CustomResponseBody
      def self.parse(map)
        data = Types::CustomResponseBody.new
        data.content_type = map['ContentType']
        data.content = map['Content']
        return data
      end
    end

    class VisibilityConfig
      def self.parse(map)
        data = Types::VisibilityConfig.new
        data.sampled_requests_enabled = map['SampledRequestsEnabled']
        data.cloud_watch_metrics_enabled = map['CloudWatchMetricsEnabled']
        data.metric_name = map['MetricName']
        return data
      end
    end

    class Rules
      def self.parse(list)
        list.map do |value|
          Parsers::Rule.parse(value) unless value.nil?
        end
      end
    end

    class Rule
      def self.parse(map)
        data = Types::Rule.new
        data.name = map['Name']
        data.priority = map['Priority']
        data.statement = (Parsers::Statement.parse(map['Statement']) unless map['Statement'].nil?)
        data.action = (Parsers::RuleAction.parse(map['Action']) unless map['Action'].nil?)
        data.override_action = (Parsers::OverrideAction.parse(map['OverrideAction']) unless map['OverrideAction'].nil?)
        data.rule_labels = (Parsers::Labels.parse(map['RuleLabels']) unless map['RuleLabels'].nil?)
        data.visibility_config = (Parsers::VisibilityConfig.parse(map['VisibilityConfig']) unless map['VisibilityConfig'].nil?)
        data.captcha_config = (Parsers::CaptchaConfig.parse(map['CaptchaConfig']) unless map['CaptchaConfig'].nil?)
        return data
      end
    end

    class CaptchaConfig
      def self.parse(map)
        data = Types::CaptchaConfig.new
        data.immunity_time_property = (Parsers::ImmunityTimeProperty.parse(map['ImmunityTimeProperty']) unless map['ImmunityTimeProperty'].nil?)
        return data
      end
    end

    class ImmunityTimeProperty
      def self.parse(map)
        data = Types::ImmunityTimeProperty.new
        data.immunity_time = map['ImmunityTime']
        return data
      end
    end

    class Labels
      def self.parse(list)
        list.map do |value|
          Parsers::Label.parse(value) unless value.nil?
        end
      end
    end

    class Label
      def self.parse(map)
        data = Types::Label.new
        data.name = map['Name']
        return data
      end
    end

    class OverrideAction
      def self.parse(map)
        data = Types::OverrideAction.new
        data.count = (Parsers::CountAction.parse(map['Count']) unless map['Count'].nil?)
        data.none = (Parsers::NoneAction.parse(map['None']) unless map['None'].nil?)
        return data
      end
    end

    class NoneAction
      def self.parse(map)
        data = Types::NoneAction.new
        return data
      end
    end

    class Statement
      def self.parse(map)
        data = Types::Statement.new
        data.byte_match_statement = (Parsers::ByteMatchStatement.parse(map['ByteMatchStatement']) unless map['ByteMatchStatement'].nil?)
        data.sqli_match_statement = (Parsers::SqliMatchStatement.parse(map['SqliMatchStatement']) unless map['SqliMatchStatement'].nil?)
        data.xss_match_statement = (Parsers::XssMatchStatement.parse(map['XssMatchStatement']) unless map['XssMatchStatement'].nil?)
        data.size_constraint_statement = (Parsers::SizeConstraintStatement.parse(map['SizeConstraintStatement']) unless map['SizeConstraintStatement'].nil?)
        data.geo_match_statement = (Parsers::GeoMatchStatement.parse(map['GeoMatchStatement']) unless map['GeoMatchStatement'].nil?)
        data.rule_group_reference_statement = (Parsers::RuleGroupReferenceStatement.parse(map['RuleGroupReferenceStatement']) unless map['RuleGroupReferenceStatement'].nil?)
        data.ip_set_reference_statement = (Parsers::IPSetReferenceStatement.parse(map['IPSetReferenceStatement']) unless map['IPSetReferenceStatement'].nil?)
        data.regex_pattern_set_reference_statement = (Parsers::RegexPatternSetReferenceStatement.parse(map['RegexPatternSetReferenceStatement']) unless map['RegexPatternSetReferenceStatement'].nil?)
        data.rate_based_statement = (Parsers::RateBasedStatement.parse(map['RateBasedStatement']) unless map['RateBasedStatement'].nil?)
        data.and_statement = (Parsers::AndStatement.parse(map['AndStatement']) unless map['AndStatement'].nil?)
        data.or_statement = (Parsers::OrStatement.parse(map['OrStatement']) unless map['OrStatement'].nil?)
        data.not_statement = (Parsers::NotStatement.parse(map['NotStatement']) unless map['NotStatement'].nil?)
        data.managed_rule_group_statement = (Parsers::ManagedRuleGroupStatement.parse(map['ManagedRuleGroupStatement']) unless map['ManagedRuleGroupStatement'].nil?)
        data.label_match_statement = (Parsers::LabelMatchStatement.parse(map['LabelMatchStatement']) unless map['LabelMatchStatement'].nil?)
        data.regex_match_statement = (Parsers::RegexMatchStatement.parse(map['RegexMatchStatement']) unless map['RegexMatchStatement'].nil?)
        return data
      end
    end

    class RegexMatchStatement
      def self.parse(map)
        data = Types::RegexMatchStatement.new
        data.regex_string = map['RegexString']
        data.field_to_match = (Parsers::FieldToMatch.parse(map['FieldToMatch']) unless map['FieldToMatch'].nil?)
        data.text_transformations = (Parsers::TextTransformations.parse(map['TextTransformations']) unless map['TextTransformations'].nil?)
        return data
      end
    end

    class TextTransformations
      def self.parse(list)
        list.map do |value|
          Parsers::TextTransformation.parse(value) unless value.nil?
        end
      end
    end

    class TextTransformation
      def self.parse(map)
        data = Types::TextTransformation.new
        data.priority = map['Priority']
        data.type = map['Type']
        return data
      end
    end

    class LabelMatchStatement
      def self.parse(map)
        data = Types::LabelMatchStatement.new
        data.scope = map['Scope']
        data.key = map['Key']
        return data
      end
    end

    class ManagedRuleGroupStatement
      def self.parse(map)
        data = Types::ManagedRuleGroupStatement.new
        data.vendor_name = map['VendorName']
        data.name = map['Name']
        data.version = map['Version']
        data.excluded_rules = (Parsers::ExcludedRules.parse(map['ExcludedRules']) unless map['ExcludedRules'].nil?)
        data.scope_down_statement = (Parsers::Statement.parse(map['ScopeDownStatement']) unless map['ScopeDownStatement'].nil?)
        data.managed_rule_group_configs = (Parsers::ManagedRuleGroupConfigs.parse(map['ManagedRuleGroupConfigs']) unless map['ManagedRuleGroupConfigs'].nil?)
        return data
      end
    end

    class ManagedRuleGroupConfigs
      def self.parse(list)
        list.map do |value|
          Parsers::ManagedRuleGroupConfig.parse(value) unless value.nil?
        end
      end
    end

    class ManagedRuleGroupConfig
      def self.parse(map)
        data = Types::ManagedRuleGroupConfig.new
        data.login_path = map['LoginPath']
        data.payload_type = map['PayloadType']
        data.username_field = (Parsers::UsernameField.parse(map['UsernameField']) unless map['UsernameField'].nil?)
        data.password_field = (Parsers::PasswordField.parse(map['PasswordField']) unless map['PasswordField'].nil?)
        return data
      end
    end

    class PasswordField
      def self.parse(map)
        data = Types::PasswordField.new
        data.identifier = map['Identifier']
        return data
      end
    end

    class UsernameField
      def self.parse(map)
        data = Types::UsernameField.new
        data.identifier = map['Identifier']
        return data
      end
    end

    class ExcludedRules
      def self.parse(list)
        list.map do |value|
          Parsers::ExcludedRule.parse(value) unless value.nil?
        end
      end
    end

    class ExcludedRule
      def self.parse(map)
        data = Types::ExcludedRule.new
        data.name = map['Name']
        return data
      end
    end

    class NotStatement
      def self.parse(map)
        data = Types::NotStatement.new
        data.statement = (Parsers::Statement.parse(map['Statement']) unless map['Statement'].nil?)
        return data
      end
    end

    class OrStatement
      def self.parse(map)
        data = Types::OrStatement.new
        data.statements = (Parsers::Statements.parse(map['Statements']) unless map['Statements'].nil?)
        return data
      end
    end

    class Statements
      def self.parse(list)
        list.map do |value|
          Parsers::Statement.parse(value) unless value.nil?
        end
      end
    end

    class AndStatement
      def self.parse(map)
        data = Types::AndStatement.new
        data.statements = (Parsers::Statements.parse(map['Statements']) unless map['Statements'].nil?)
        return data
      end
    end

    class RateBasedStatement
      def self.parse(map)
        data = Types::RateBasedStatement.new
        data.limit = map['Limit']
        data.aggregate_key_type = map['AggregateKeyType']
        data.scope_down_statement = (Parsers::Statement.parse(map['ScopeDownStatement']) unless map['ScopeDownStatement'].nil?)
        data.forwarded_ip_config = (Parsers::ForwardedIPConfig.parse(map['ForwardedIPConfig']) unless map['ForwardedIPConfig'].nil?)
        return data
      end
    end

    class ForwardedIPConfig
      def self.parse(map)
        data = Types::ForwardedIPConfig.new
        data.header_name = map['HeaderName']
        data.fallback_behavior = map['FallbackBehavior']
        return data
      end
    end

    class RegexPatternSetReferenceStatement
      def self.parse(map)
        data = Types::RegexPatternSetReferenceStatement.new
        data.arn = map['ARN']
        data.field_to_match = (Parsers::FieldToMatch.parse(map['FieldToMatch']) unless map['FieldToMatch'].nil?)
        data.text_transformations = (Parsers::TextTransformations.parse(map['TextTransformations']) unless map['TextTransformations'].nil?)
        return data
      end
    end

    class IPSetReferenceStatement
      def self.parse(map)
        data = Types::IPSetReferenceStatement.new
        data.arn = map['ARN']
        data.ip_set_forwarded_ip_config = (Parsers::IPSetForwardedIPConfig.parse(map['IPSetForwardedIPConfig']) unless map['IPSetForwardedIPConfig'].nil?)
        return data
      end
    end

    class IPSetForwardedIPConfig
      def self.parse(map)
        data = Types::IPSetForwardedIPConfig.new
        data.header_name = map['HeaderName']
        data.fallback_behavior = map['FallbackBehavior']
        data.position = map['Position']
        return data
      end
    end

    class RuleGroupReferenceStatement
      def self.parse(map)
        data = Types::RuleGroupReferenceStatement.new
        data.arn = map['ARN']
        data.excluded_rules = (Parsers::ExcludedRules.parse(map['ExcludedRules']) unless map['ExcludedRules'].nil?)
        return data
      end
    end

    class GeoMatchStatement
      def self.parse(map)
        data = Types::GeoMatchStatement.new
        data.country_codes = (Parsers::CountryCodes.parse(map['CountryCodes']) unless map['CountryCodes'].nil?)
        data.forwarded_ip_config = (Parsers::ForwardedIPConfig.parse(map['ForwardedIPConfig']) unless map['ForwardedIPConfig'].nil?)
        return data
      end
    end

    class CountryCodes
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class SizeConstraintStatement
      def self.parse(map)
        data = Types::SizeConstraintStatement.new
        data.field_to_match = (Parsers::FieldToMatch.parse(map['FieldToMatch']) unless map['FieldToMatch'].nil?)
        data.comparison_operator = map['ComparisonOperator']
        data.size = map['Size']
        data.text_transformations = (Parsers::TextTransformations.parse(map['TextTransformations']) unless map['TextTransformations'].nil?)
        return data
      end
    end

    class XssMatchStatement
      def self.parse(map)
        data = Types::XssMatchStatement.new
        data.field_to_match = (Parsers::FieldToMatch.parse(map['FieldToMatch']) unless map['FieldToMatch'].nil?)
        data.text_transformations = (Parsers::TextTransformations.parse(map['TextTransformations']) unless map['TextTransformations'].nil?)
        return data
      end
    end

    class SqliMatchStatement
      def self.parse(map)
        data = Types::SqliMatchStatement.new
        data.field_to_match = (Parsers::FieldToMatch.parse(map['FieldToMatch']) unless map['FieldToMatch'].nil?)
        data.text_transformations = (Parsers::TextTransformations.parse(map['TextTransformations']) unless map['TextTransformations'].nil?)
        return data
      end
    end

    class ByteMatchStatement
      def self.parse(map)
        data = Types::ByteMatchStatement.new
        data.search_string = Base64::decode64(map['SearchString']) unless map['SearchString'].nil?
        data.field_to_match = (Parsers::FieldToMatch.parse(map['FieldToMatch']) unless map['FieldToMatch'].nil?)
        data.text_transformations = (Parsers::TextTransformations.parse(map['TextTransformations']) unless map['TextTransformations'].nil?)
        data.positional_constraint = map['PositionalConstraint']
        return data
      end
    end

    # Operation Parser for GetSampledRequests
    class GetSampledRequests
      def self.parse(http_resp)
        data = Types::GetSampledRequestsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.sampled_requests = (Parsers::SampledHTTPRequests.parse(map['SampledRequests']) unless map['SampledRequests'].nil?)
        data.population_size = map['PopulationSize']
        data.time_window = (Parsers::TimeWindow.parse(map['TimeWindow']) unless map['TimeWindow'].nil?)
        data
      end
    end

    class TimeWindow
      def self.parse(map)
        data = Types::TimeWindow.new
        data.start_time = Time.at(map['StartTime'].to_i) if map['StartTime']
        data.end_time = Time.at(map['EndTime'].to_i) if map['EndTime']
        return data
      end
    end

    class SampledHTTPRequests
      def self.parse(list)
        list.map do |value|
          Parsers::SampledHTTPRequest.parse(value) unless value.nil?
        end
      end
    end

    class SampledHTTPRequest
      def self.parse(map)
        data = Types::SampledHTTPRequest.new
        data.request = (Parsers::HTTPRequest.parse(map['Request']) unless map['Request'].nil?)
        data.weight = map['Weight']
        data.timestamp = Time.at(map['Timestamp'].to_i) if map['Timestamp']
        data.action = map['Action']
        data.rule_name_within_rule_group = map['RuleNameWithinRuleGroup']
        data.request_headers_inserted = (Parsers::HTTPHeaders.parse(map['RequestHeadersInserted']) unless map['RequestHeadersInserted'].nil?)
        data.response_code_sent = map['ResponseCodeSent']
        data.labels = (Parsers::Labels.parse(map['Labels']) unless map['Labels'].nil?)
        data.captcha_response = (Parsers::CaptchaResponse.parse(map['CaptchaResponse']) unless map['CaptchaResponse'].nil?)
        return data
      end
    end

    class CaptchaResponse
      def self.parse(map)
        data = Types::CaptchaResponse.new
        data.response_code = map['ResponseCode']
        data.solve_timestamp = map['SolveTimestamp']
        data.failure_reason = map['FailureReason']
        return data
      end
    end

    class HTTPHeaders
      def self.parse(list)
        list.map do |value|
          Parsers::HTTPHeader.parse(value) unless value.nil?
        end
      end
    end

    class HTTPHeader
      def self.parse(map)
        data = Types::HTTPHeader.new
        data.name = map['Name']
        data.value = map['Value']
        return data
      end
    end

    class HTTPRequest
      def self.parse(map)
        data = Types::HTTPRequest.new
        data.client_ip = map['ClientIP']
        data.country = map['Country']
        data.uri = map['URI']
        data.member_method = map['Method']
        data.http_version = map['HTTPVersion']
        data.headers = (Parsers::HTTPHeaders.parse(map['Headers']) unless map['Headers'].nil?)
        return data
      end
    end

    # Operation Parser for GetWebACL
    class GetWebACL
      def self.parse(http_resp)
        data = Types::GetWebACLOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.web_acl = (Parsers::WebACL.parse(map['WebACL']) unless map['WebACL'].nil?)
        data.lock_token = map['LockToken']
        data.application_integration_url = map['ApplicationIntegrationURL']
        data
      end
    end

    class WebACL
      def self.parse(map)
        data = Types::WebACL.new
        data.name = map['Name']
        data.id = map['Id']
        data.arn = map['ARN']
        data.default_action = (Parsers::DefaultAction.parse(map['DefaultAction']) unless map['DefaultAction'].nil?)
        data.description = map['Description']
        data.rules = (Parsers::Rules.parse(map['Rules']) unless map['Rules'].nil?)
        data.visibility_config = (Parsers::VisibilityConfig.parse(map['VisibilityConfig']) unless map['VisibilityConfig'].nil?)
        data.capacity = map['Capacity']
        data.pre_process_firewall_manager_rule_groups = (Parsers::FirewallManagerRuleGroups.parse(map['PreProcessFirewallManagerRuleGroups']) unless map['PreProcessFirewallManagerRuleGroups'].nil?)
        data.post_process_firewall_manager_rule_groups = (Parsers::FirewallManagerRuleGroups.parse(map['PostProcessFirewallManagerRuleGroups']) unless map['PostProcessFirewallManagerRuleGroups'].nil?)
        data.managed_by_firewall_manager = map['ManagedByFirewallManager']
        data.label_namespace = map['LabelNamespace']
        data.custom_response_bodies = (Parsers::CustomResponseBodies.parse(map['CustomResponseBodies']) unless map['CustomResponseBodies'].nil?)
        data.captcha_config = (Parsers::CaptchaConfig.parse(map['CaptchaConfig']) unless map['CaptchaConfig'].nil?)
        return data
      end
    end

    class FirewallManagerRuleGroups
      def self.parse(list)
        list.map do |value|
          Parsers::FirewallManagerRuleGroup.parse(value) unless value.nil?
        end
      end
    end

    class FirewallManagerRuleGroup
      def self.parse(map)
        data = Types::FirewallManagerRuleGroup.new
        data.name = map['Name']
        data.priority = map['Priority']
        data.firewall_manager_statement = (Parsers::FirewallManagerStatement.parse(map['FirewallManagerStatement']) unless map['FirewallManagerStatement'].nil?)
        data.override_action = (Parsers::OverrideAction.parse(map['OverrideAction']) unless map['OverrideAction'].nil?)
        data.visibility_config = (Parsers::VisibilityConfig.parse(map['VisibilityConfig']) unless map['VisibilityConfig'].nil?)
        return data
      end
    end

    class FirewallManagerStatement
      def self.parse(map)
        data = Types::FirewallManagerStatement.new
        data.managed_rule_group_statement = (Parsers::ManagedRuleGroupStatement.parse(map['ManagedRuleGroupStatement']) unless map['ManagedRuleGroupStatement'].nil?)
        data.rule_group_reference_statement = (Parsers::RuleGroupReferenceStatement.parse(map['RuleGroupReferenceStatement']) unless map['RuleGroupReferenceStatement'].nil?)
        return data
      end
    end

    class DefaultAction
      def self.parse(map)
        data = Types::DefaultAction.new
        data.block = (Parsers::BlockAction.parse(map['Block']) unless map['Block'].nil?)
        data.allow = (Parsers::AllowAction.parse(map['Allow']) unless map['Allow'].nil?)
        return data
      end
    end

    # Operation Parser for GetWebACLForResource
    class GetWebACLForResource
      def self.parse(http_resp)
        data = Types::GetWebACLForResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.web_acl = (Parsers::WebACL.parse(map['WebACL']) unless map['WebACL'].nil?)
        data
      end
    end

    # Operation Parser for ListAvailableManagedRuleGroupVersions
    class ListAvailableManagedRuleGroupVersions
      def self.parse(http_resp)
        data = Types::ListAvailableManagedRuleGroupVersionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_marker = map['NextMarker']
        data.versions = (Parsers::ManagedRuleGroupVersions.parse(map['Versions']) unless map['Versions'].nil?)
        data.current_default_version = map['CurrentDefaultVersion']
        data
      end
    end

    class ManagedRuleGroupVersions
      def self.parse(list)
        list.map do |value|
          Parsers::ManagedRuleGroupVersion.parse(value) unless value.nil?
        end
      end
    end

    class ManagedRuleGroupVersion
      def self.parse(map)
        data = Types::ManagedRuleGroupVersion.new
        data.name = map['Name']
        data.last_update_timestamp = Time.at(map['LastUpdateTimestamp'].to_i) if map['LastUpdateTimestamp']
        return data
      end
    end

    # Operation Parser for ListAvailableManagedRuleGroups
    class ListAvailableManagedRuleGroups
      def self.parse(http_resp)
        data = Types::ListAvailableManagedRuleGroupsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_marker = map['NextMarker']
        data.managed_rule_groups = (Parsers::ManagedRuleGroupSummaries.parse(map['ManagedRuleGroups']) unless map['ManagedRuleGroups'].nil?)
        data
      end
    end

    class ManagedRuleGroupSummaries
      def self.parse(list)
        list.map do |value|
          Parsers::ManagedRuleGroupSummary.parse(value) unless value.nil?
        end
      end
    end

    class ManagedRuleGroupSummary
      def self.parse(map)
        data = Types::ManagedRuleGroupSummary.new
        data.vendor_name = map['VendorName']
        data.name = map['Name']
        data.versioning_supported = map['VersioningSupported']
        data.description = map['Description']
        return data
      end
    end

    # Operation Parser for ListIPSets
    class ListIPSets
      def self.parse(http_resp)
        data = Types::ListIPSetsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_marker = map['NextMarker']
        data.ip_sets = (Parsers::IPSetSummaries.parse(map['IPSets']) unless map['IPSets'].nil?)
        data
      end
    end

    class IPSetSummaries
      def self.parse(list)
        list.map do |value|
          Parsers::IPSetSummary.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListLoggingConfigurations
    class ListLoggingConfigurations
      def self.parse(http_resp)
        data = Types::ListLoggingConfigurationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.logging_configurations = (Parsers::LoggingConfigurations.parse(map['LoggingConfigurations']) unless map['LoggingConfigurations'].nil?)
        data.next_marker = map['NextMarker']
        data
      end
    end

    class LoggingConfigurations
      def self.parse(list)
        list.map do |value|
          Parsers::LoggingConfiguration.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListManagedRuleSets
    class ListManagedRuleSets
      def self.parse(http_resp)
        data = Types::ListManagedRuleSetsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_marker = map['NextMarker']
        data.managed_rule_sets = (Parsers::ManagedRuleSetSummaries.parse(map['ManagedRuleSets']) unless map['ManagedRuleSets'].nil?)
        data
      end
    end

    class ManagedRuleSetSummaries
      def self.parse(list)
        list.map do |value|
          Parsers::ManagedRuleSetSummary.parse(value) unless value.nil?
        end
      end
    end

    class ManagedRuleSetSummary
      def self.parse(map)
        data = Types::ManagedRuleSetSummary.new
        data.name = map['Name']
        data.id = map['Id']
        data.description = map['Description']
        data.lock_token = map['LockToken']
        data.arn = map['ARN']
        data.label_namespace = map['LabelNamespace']
        return data
      end
    end

    # Operation Parser for ListMobileSdkReleases
    class ListMobileSdkReleases
      def self.parse(http_resp)
        data = Types::ListMobileSdkReleasesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.release_summaries = (Parsers::ReleaseSummaries.parse(map['ReleaseSummaries']) unless map['ReleaseSummaries'].nil?)
        data.next_marker = map['NextMarker']
        data
      end
    end

    class ReleaseSummaries
      def self.parse(list)
        list.map do |value|
          Parsers::ReleaseSummary.parse(value) unless value.nil?
        end
      end
    end

    class ReleaseSummary
      def self.parse(map)
        data = Types::ReleaseSummary.new
        data.release_version = map['ReleaseVersion']
        data.timestamp = Time.at(map['Timestamp'].to_i) if map['Timestamp']
        return data
      end
    end

    # Operation Parser for ListRegexPatternSets
    class ListRegexPatternSets
      def self.parse(http_resp)
        data = Types::ListRegexPatternSetsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_marker = map['NextMarker']
        data.regex_pattern_sets = (Parsers::RegexPatternSetSummaries.parse(map['RegexPatternSets']) unless map['RegexPatternSets'].nil?)
        data
      end
    end

    class RegexPatternSetSummaries
      def self.parse(list)
        list.map do |value|
          Parsers::RegexPatternSetSummary.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListResourcesForWebACL
    class ListResourcesForWebACL
      def self.parse(http_resp)
        data = Types::ListResourcesForWebACLOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.resource_arns = (Parsers::ResourceArns.parse(map['ResourceArns']) unless map['ResourceArns'].nil?)
        data
      end
    end

    class ResourceArns
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for ListRuleGroups
    class ListRuleGroups
      def self.parse(http_resp)
        data = Types::ListRuleGroupsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_marker = map['NextMarker']
        data.rule_groups = (Parsers::RuleGroupSummaries.parse(map['RuleGroups']) unless map['RuleGroups'].nil?)
        data
      end
    end

    class RuleGroupSummaries
      def self.parse(list)
        list.map do |value|
          Parsers::RuleGroupSummary.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_marker = map['NextMarker']
        data.tag_info_for_resource = (Parsers::TagInfoForResource.parse(map['TagInfoForResource']) unless map['TagInfoForResource'].nil?)
        data
      end
    end

    class TagInfoForResource
      def self.parse(map)
        data = Types::TagInfoForResource.new
        data.resource_arn = map['ResourceARN']
        data.tag_list = (Parsers::TagList.parse(map['TagList']) unless map['TagList'].nil?)
        return data
      end
    end

    # Operation Parser for ListWebACLs
    class ListWebACLs
      def self.parse(http_resp)
        data = Types::ListWebACLsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_marker = map['NextMarker']
        data.web_ac_ls = (Parsers::WebACLSummaries.parse(map['WebACLs']) unless map['WebACLs'].nil?)
        data
      end
    end

    class WebACLSummaries
      def self.parse(list)
        list.map do |value|
          Parsers::WebACLSummary.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for PutLoggingConfiguration
    class PutLoggingConfiguration
      def self.parse(http_resp)
        data = Types::PutLoggingConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.logging_configuration = (Parsers::LoggingConfiguration.parse(map['LoggingConfiguration']) unless map['LoggingConfiguration'].nil?)
        data
      end
    end

    # Error Parser for WAFLogDestinationPermissionIssueException
    class WAFLogDestinationPermissionIssueException
      def self.parse(http_resp)
        data = Types::WAFLogDestinationPermissionIssueException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for WAFServiceLinkedRoleErrorException
    class WAFServiceLinkedRoleErrorException
      def self.parse(http_resp)
        data = Types::WAFServiceLinkedRoleErrorException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for PutManagedRuleSetVersions
    class PutManagedRuleSetVersions
      def self.parse(http_resp)
        data = Types::PutManagedRuleSetVersionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_lock_token = map['NextLockToken']
        data
      end
    end

    # Operation Parser for PutPermissionPolicy
    class PutPermissionPolicy
      def self.parse(http_resp)
        data = Types::PutPermissionPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for WAFInvalidPermissionPolicyException
    class WAFInvalidPermissionPolicyException
      def self.parse(http_resp)
        data = Types::WAFInvalidPermissionPolicyException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateIPSet
    class UpdateIPSet
      def self.parse(http_resp)
        data = Types::UpdateIPSetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_lock_token = map['NextLockToken']
        data
      end
    end

    # Operation Parser for UpdateManagedRuleSetVersionExpiryDate
    class UpdateManagedRuleSetVersionExpiryDate
      def self.parse(http_resp)
        data = Types::UpdateManagedRuleSetVersionExpiryDateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.expiring_version = map['ExpiringVersion']
        data.expiry_timestamp = Time.at(map['ExpiryTimestamp'].to_i) if map['ExpiryTimestamp']
        data.next_lock_token = map['NextLockToken']
        data
      end
    end

    # Operation Parser for UpdateRegexPatternSet
    class UpdateRegexPatternSet
      def self.parse(http_resp)
        data = Types::UpdateRegexPatternSetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_lock_token = map['NextLockToken']
        data
      end
    end

    # Operation Parser for UpdateRuleGroup
    class UpdateRuleGroup
      def self.parse(http_resp)
        data = Types::UpdateRuleGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_lock_token = map['NextLockToken']
        data
      end
    end

    # Operation Parser for UpdateWebACL
    class UpdateWebACL
      def self.parse(http_resp)
        data = Types::UpdateWebACLOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_lock_token = map['NextLockToken']
        data
      end
    end
  end
end
