# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::WAFV2
  module Validators

    class ActionCondition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActionCondition, context: context)
        Hearth::Validator.validate!(input[:action], ::String, context: "#{context}[:action]")
      end
    end

    class All
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::All, context: context)
      end
    end

    class AllQueryArguments
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AllQueryArguments, context: context)
      end
    end

    class AllowAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AllowAction, context: context)
        Validators::CustomRequestHandling.validate!(input[:custom_request_handling], context: "#{context}[:custom_request_handling]") unless input[:custom_request_handling].nil?
      end
    end

    class AndStatement
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AndStatement, context: context)
        Validators::Statements.validate!(input[:statements], context: "#{context}[:statements]") unless input[:statements].nil?
      end
    end

    class AssociateWebACLInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateWebACLInput, context: context)
        Hearth::Validator.validate!(input[:web_acl_arn], ::String, context: "#{context}[:web_acl_arn]")
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class AssociateWebACLOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateWebACLOutput, context: context)
      end
    end

    class BlockAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BlockAction, context: context)
        Validators::CustomResponse.validate!(input[:custom_response], context: "#{context}[:custom_response]") unless input[:custom_response].nil?
      end
    end

    class Body
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Body, context: context)
        Hearth::Validator.validate!(input[:oversize_handling], ::String, context: "#{context}[:oversize_handling]")
      end
    end

    class ByteMatchStatement
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ByteMatchStatement, context: context)
        Hearth::Validator.validate!(input[:search_string], ::String, context: "#{context}[:search_string]")
        Validators::FieldToMatch.validate!(input[:field_to_match], context: "#{context}[:field_to_match]") unless input[:field_to_match].nil?
        Validators::TextTransformations.validate!(input[:text_transformations], context: "#{context}[:text_transformations]") unless input[:text_transformations].nil?
        Hearth::Validator.validate!(input[:positional_constraint], ::String, context: "#{context}[:positional_constraint]")
      end
    end

    class CaptchaAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CaptchaAction, context: context)
        Validators::CustomRequestHandling.validate!(input[:custom_request_handling], context: "#{context}[:custom_request_handling]") unless input[:custom_request_handling].nil?
      end
    end

    class CaptchaConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CaptchaConfig, context: context)
        Validators::ImmunityTimeProperty.validate!(input[:immunity_time_property], context: "#{context}[:immunity_time_property]") unless input[:immunity_time_property].nil?
      end
    end

    class CaptchaResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CaptchaResponse, context: context)
        Hearth::Validator.validate!(input[:response_code], ::Integer, context: "#{context}[:response_code]")
        Hearth::Validator.validate!(input[:solve_timestamp], ::Integer, context: "#{context}[:solve_timestamp]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
      end
    end

    class CheckCapacityInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CheckCapacityInput, context: context)
        Hearth::Validator.validate!(input[:scope], ::String, context: "#{context}[:scope]")
        Validators::Rules.validate!(input[:rules], context: "#{context}[:rules]") unless input[:rules].nil?
      end
    end

    class CheckCapacityOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CheckCapacityOutput, context: context)
        Hearth::Validator.validate!(input[:capacity], ::Integer, context: "#{context}[:capacity]")
      end
    end

    class Condition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Condition, context: context)
        Validators::ActionCondition.validate!(input[:action_condition], context: "#{context}[:action_condition]") unless input[:action_condition].nil?
        Validators::LabelNameCondition.validate!(input[:label_name_condition], context: "#{context}[:label_name_condition]") unless input[:label_name_condition].nil?
      end
    end

    class Conditions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Condition.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CookieMatchPattern
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CookieMatchPattern, context: context)
        Validators::All.validate!(input[:all], context: "#{context}[:all]") unless input[:all].nil?
        Validators::CookieNames.validate!(input[:included_cookies], context: "#{context}[:included_cookies]") unless input[:included_cookies].nil?
        Validators::CookieNames.validate!(input[:excluded_cookies], context: "#{context}[:excluded_cookies]") unless input[:excluded_cookies].nil?
      end
    end

    class CookieNames
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Cookies
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Cookies, context: context)
        Validators::CookieMatchPattern.validate!(input[:match_pattern], context: "#{context}[:match_pattern]") unless input[:match_pattern].nil?
        Hearth::Validator.validate!(input[:match_scope], ::String, context: "#{context}[:match_scope]")
        Hearth::Validator.validate!(input[:oversize_handling], ::String, context: "#{context}[:oversize_handling]")
      end
    end

    class CountAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CountAction, context: context)
        Validators::CustomRequestHandling.validate!(input[:custom_request_handling], context: "#{context}[:custom_request_handling]") unless input[:custom_request_handling].nil?
      end
    end

    class CountryCodes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CreateIPSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateIPSetInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:scope], ::String, context: "#{context}[:scope]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:ip_address_version], ::String, context: "#{context}[:ip_address_version]")
        Validators::IPAddresses.validate!(input[:addresses], context: "#{context}[:addresses]") unless input[:addresses].nil?
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateIPSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateIPSetOutput, context: context)
        Validators::IPSetSummary.validate!(input[:summary], context: "#{context}[:summary]") unless input[:summary].nil?
      end
    end

    class CreateRegexPatternSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRegexPatternSetInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:scope], ::String, context: "#{context}[:scope]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::RegularExpressionList.validate!(input[:regular_expression_list], context: "#{context}[:regular_expression_list]") unless input[:regular_expression_list].nil?
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateRegexPatternSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRegexPatternSetOutput, context: context)
        Validators::RegexPatternSetSummary.validate!(input[:summary], context: "#{context}[:summary]") unless input[:summary].nil?
      end
    end

    class CreateRuleGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRuleGroupInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:scope], ::String, context: "#{context}[:scope]")
        Hearth::Validator.validate!(input[:capacity], ::Integer, context: "#{context}[:capacity]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::Rules.validate!(input[:rules], context: "#{context}[:rules]") unless input[:rules].nil?
        Validators::VisibilityConfig.validate!(input[:visibility_config], context: "#{context}[:visibility_config]") unless input[:visibility_config].nil?
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Validators::CustomResponseBodies.validate!(input[:custom_response_bodies], context: "#{context}[:custom_response_bodies]") unless input[:custom_response_bodies].nil?
      end
    end

    class CreateRuleGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRuleGroupOutput, context: context)
        Validators::RuleGroupSummary.validate!(input[:summary], context: "#{context}[:summary]") unless input[:summary].nil?
      end
    end

    class CreateWebACLInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateWebACLInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:scope], ::String, context: "#{context}[:scope]")
        Validators::DefaultAction.validate!(input[:default_action], context: "#{context}[:default_action]") unless input[:default_action].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::Rules.validate!(input[:rules], context: "#{context}[:rules]") unless input[:rules].nil?
        Validators::VisibilityConfig.validate!(input[:visibility_config], context: "#{context}[:visibility_config]") unless input[:visibility_config].nil?
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Validators::CustomResponseBodies.validate!(input[:custom_response_bodies], context: "#{context}[:custom_response_bodies]") unless input[:custom_response_bodies].nil?
        Validators::CaptchaConfig.validate!(input[:captcha_config], context: "#{context}[:captcha_config]") unless input[:captcha_config].nil?
      end
    end

    class CreateWebACLOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateWebACLOutput, context: context)
        Validators::WebACLSummary.validate!(input[:summary], context: "#{context}[:summary]") unless input[:summary].nil?
      end
    end

    class CustomHTTPHeader
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomHTTPHeader, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class CustomHTTPHeaders
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::CustomHTTPHeader.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CustomRequestHandling
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomRequestHandling, context: context)
        Validators::CustomHTTPHeaders.validate!(input[:insert_headers], context: "#{context}[:insert_headers]") unless input[:insert_headers].nil?
      end
    end

    class CustomResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomResponse, context: context)
        Hearth::Validator.validate!(input[:response_code], ::Integer, context: "#{context}[:response_code]")
        Hearth::Validator.validate!(input[:custom_response_body_key], ::String, context: "#{context}[:custom_response_body_key]")
        Validators::CustomHTTPHeaders.validate!(input[:response_headers], context: "#{context}[:response_headers]") unless input[:response_headers].nil?
      end
    end

    class CustomResponseBodies
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Validators::CustomResponseBody.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class CustomResponseBody
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomResponseBody, context: context)
        Hearth::Validator.validate!(input[:content_type], ::String, context: "#{context}[:content_type]")
        Hearth::Validator.validate!(input[:content], ::String, context: "#{context}[:content]")
      end
    end

    class DefaultAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DefaultAction, context: context)
        Validators::BlockAction.validate!(input[:block], context: "#{context}[:block]") unless input[:block].nil?
        Validators::AllowAction.validate!(input[:allow], context: "#{context}[:allow]") unless input[:allow].nil?
      end
    end

    class DeleteFirewallManagerRuleGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFirewallManagerRuleGroupsInput, context: context)
        Hearth::Validator.validate!(input[:web_acl_arn], ::String, context: "#{context}[:web_acl_arn]")
        Hearth::Validator.validate!(input[:web_acl_lock_token], ::String, context: "#{context}[:web_acl_lock_token]")
      end
    end

    class DeleteFirewallManagerRuleGroupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFirewallManagerRuleGroupsOutput, context: context)
        Hearth::Validator.validate!(input[:next_web_acl_lock_token], ::String, context: "#{context}[:next_web_acl_lock_token]")
      end
    end

    class DeleteIPSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteIPSetInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:scope], ::String, context: "#{context}[:scope]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:lock_token], ::String, context: "#{context}[:lock_token]")
      end
    end

    class DeleteIPSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteIPSetOutput, context: context)
      end
    end

    class DeleteLoggingConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteLoggingConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class DeleteLoggingConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteLoggingConfigurationOutput, context: context)
      end
    end

    class DeletePermissionPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePermissionPolicyInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class DeletePermissionPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePermissionPolicyOutput, context: context)
      end
    end

    class DeleteRegexPatternSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRegexPatternSetInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:scope], ::String, context: "#{context}[:scope]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:lock_token], ::String, context: "#{context}[:lock_token]")
      end
    end

    class DeleteRegexPatternSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRegexPatternSetOutput, context: context)
      end
    end

    class DeleteRuleGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRuleGroupInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:scope], ::String, context: "#{context}[:scope]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:lock_token], ::String, context: "#{context}[:lock_token]")
      end
    end

    class DeleteRuleGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRuleGroupOutput, context: context)
      end
    end

    class DeleteWebACLInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteWebACLInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:scope], ::String, context: "#{context}[:scope]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:lock_token], ::String, context: "#{context}[:lock_token]")
      end
    end

    class DeleteWebACLOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteWebACLOutput, context: context)
      end
    end

    class DescribeManagedRuleGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeManagedRuleGroupInput, context: context)
        Hearth::Validator.validate!(input[:vendor_name], ::String, context: "#{context}[:vendor_name]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:scope], ::String, context: "#{context}[:scope]")
        Hearth::Validator.validate!(input[:version_name], ::String, context: "#{context}[:version_name]")
      end
    end

    class DescribeManagedRuleGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeManagedRuleGroupOutput, context: context)
        Hearth::Validator.validate!(input[:version_name], ::String, context: "#{context}[:version_name]")
        Hearth::Validator.validate!(input[:sns_topic_arn], ::String, context: "#{context}[:sns_topic_arn]")
        Hearth::Validator.validate!(input[:capacity], ::Integer, context: "#{context}[:capacity]")
        Validators::RuleSummaries.validate!(input[:rules], context: "#{context}[:rules]") unless input[:rules].nil?
        Hearth::Validator.validate!(input[:label_namespace], ::String, context: "#{context}[:label_namespace]")
        Validators::LabelSummaries.validate!(input[:available_labels], context: "#{context}[:available_labels]") unless input[:available_labels].nil?
        Validators::LabelSummaries.validate!(input[:consumed_labels], context: "#{context}[:consumed_labels]") unless input[:consumed_labels].nil?
      end
    end

    class DisassociateWebACLInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateWebACLInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class DisassociateWebACLOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateWebACLOutput, context: context)
      end
    end

    class ExcludedRule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExcludedRule, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class ExcludedRules
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ExcludedRule.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FieldToMatch
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FieldToMatch, context: context)
        Validators::SingleHeader.validate!(input[:single_header], context: "#{context}[:single_header]") unless input[:single_header].nil?
        Validators::SingleQueryArgument.validate!(input[:single_query_argument], context: "#{context}[:single_query_argument]") unless input[:single_query_argument].nil?
        Validators::AllQueryArguments.validate!(input[:all_query_arguments], context: "#{context}[:all_query_arguments]") unless input[:all_query_arguments].nil?
        Validators::UriPath.validate!(input[:uri_path], context: "#{context}[:uri_path]") unless input[:uri_path].nil?
        Validators::QueryString.validate!(input[:query_string], context: "#{context}[:query_string]") unless input[:query_string].nil?
        Validators::Body.validate!(input[:body], context: "#{context}[:body]") unless input[:body].nil?
        Validators::Method.validate!(input[:member_method], context: "#{context}[:member_method]") unless input[:member_method].nil?
        Validators::JsonBody.validate!(input[:json_body], context: "#{context}[:json_body]") unless input[:json_body].nil?
        Validators::Headers.validate!(input[:headers], context: "#{context}[:headers]") unless input[:headers].nil?
        Validators::Cookies.validate!(input[:cookies], context: "#{context}[:cookies]") unless input[:cookies].nil?
      end
    end

    class Filter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Filter, context: context)
        Hearth::Validator.validate!(input[:behavior], ::String, context: "#{context}[:behavior]")
        Hearth::Validator.validate!(input[:requirement], ::String, context: "#{context}[:requirement]")
        Validators::Conditions.validate!(input[:conditions], context: "#{context}[:conditions]") unless input[:conditions].nil?
      end
    end

    class Filters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Filter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FirewallManagerRuleGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FirewallManagerRuleGroup, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:priority], ::Integer, context: "#{context}[:priority]")
        Validators::FirewallManagerStatement.validate!(input[:firewall_manager_statement], context: "#{context}[:firewall_manager_statement]") unless input[:firewall_manager_statement].nil?
        Validators::OverrideAction.validate!(input[:override_action], context: "#{context}[:override_action]") unless input[:override_action].nil?
        Validators::VisibilityConfig.validate!(input[:visibility_config], context: "#{context}[:visibility_config]") unless input[:visibility_config].nil?
      end
    end

    class FirewallManagerRuleGroups
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::FirewallManagerRuleGroup.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FirewallManagerStatement
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FirewallManagerStatement, context: context)
        Validators::ManagedRuleGroupStatement.validate!(input[:managed_rule_group_statement], context: "#{context}[:managed_rule_group_statement]") unless input[:managed_rule_group_statement].nil?
        Validators::RuleGroupReferenceStatement.validate!(input[:rule_group_reference_statement], context: "#{context}[:rule_group_reference_statement]") unless input[:rule_group_reference_statement].nil?
      end
    end

    class ForwardedIPConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ForwardedIPConfig, context: context)
        Hearth::Validator.validate!(input[:header_name], ::String, context: "#{context}[:header_name]")
        Hearth::Validator.validate!(input[:fallback_behavior], ::String, context: "#{context}[:fallback_behavior]")
      end
    end

    class GenerateMobileSdkReleaseUrlInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GenerateMobileSdkReleaseUrlInput, context: context)
        Hearth::Validator.validate!(input[:platform], ::String, context: "#{context}[:platform]")
        Hearth::Validator.validate!(input[:release_version], ::String, context: "#{context}[:release_version]")
      end
    end

    class GenerateMobileSdkReleaseUrlOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GenerateMobileSdkReleaseUrlOutput, context: context)
        Hearth::Validator.validate!(input[:url], ::String, context: "#{context}[:url]")
      end
    end

    class GeoMatchStatement
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GeoMatchStatement, context: context)
        Validators::CountryCodes.validate!(input[:country_codes], context: "#{context}[:country_codes]") unless input[:country_codes].nil?
        Validators::ForwardedIPConfig.validate!(input[:forwarded_ip_config], context: "#{context}[:forwarded_ip_config]") unless input[:forwarded_ip_config].nil?
      end
    end

    class GetIPSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetIPSetInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:scope], ::String, context: "#{context}[:scope]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class GetIPSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetIPSetOutput, context: context)
        Validators::IPSet.validate!(input[:ip_set], context: "#{context}[:ip_set]") unless input[:ip_set].nil?
        Hearth::Validator.validate!(input[:lock_token], ::String, context: "#{context}[:lock_token]")
      end
    end

    class GetLoggingConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLoggingConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class GetLoggingConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLoggingConfigurationOutput, context: context)
        Validators::LoggingConfiguration.validate!(input[:logging_configuration], context: "#{context}[:logging_configuration]") unless input[:logging_configuration].nil?
      end
    end

    class GetManagedRuleSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetManagedRuleSetInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:scope], ::String, context: "#{context}[:scope]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class GetManagedRuleSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetManagedRuleSetOutput, context: context)
        Validators::ManagedRuleSet.validate!(input[:managed_rule_set], context: "#{context}[:managed_rule_set]") unless input[:managed_rule_set].nil?
        Hearth::Validator.validate!(input[:lock_token], ::String, context: "#{context}[:lock_token]")
      end
    end

    class GetMobileSdkReleaseInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMobileSdkReleaseInput, context: context)
        Hearth::Validator.validate!(input[:platform], ::String, context: "#{context}[:platform]")
        Hearth::Validator.validate!(input[:release_version], ::String, context: "#{context}[:release_version]")
      end
    end

    class GetMobileSdkReleaseOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMobileSdkReleaseOutput, context: context)
        Validators::MobileSdkRelease.validate!(input[:mobile_sdk_release], context: "#{context}[:mobile_sdk_release]") unless input[:mobile_sdk_release].nil?
      end
    end

    class GetPermissionPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPermissionPolicyInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class GetPermissionPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPermissionPolicyOutput, context: context)
        Hearth::Validator.validate!(input[:policy], ::String, context: "#{context}[:policy]")
      end
    end

    class GetRateBasedStatementManagedKeysInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRateBasedStatementManagedKeysInput, context: context)
        Hearth::Validator.validate!(input[:scope], ::String, context: "#{context}[:scope]")
        Hearth::Validator.validate!(input[:web_acl_name], ::String, context: "#{context}[:web_acl_name]")
        Hearth::Validator.validate!(input[:web_acl_id], ::String, context: "#{context}[:web_acl_id]")
        Hearth::Validator.validate!(input[:rule_group_rule_name], ::String, context: "#{context}[:rule_group_rule_name]")
        Hearth::Validator.validate!(input[:rule_name], ::String, context: "#{context}[:rule_name]")
      end
    end

    class GetRateBasedStatementManagedKeysOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRateBasedStatementManagedKeysOutput, context: context)
        Validators::RateBasedStatementManagedKeysIPSet.validate!(input[:managed_keys_ipv4], context: "#{context}[:managed_keys_ipv4]") unless input[:managed_keys_ipv4].nil?
        Validators::RateBasedStatementManagedKeysIPSet.validate!(input[:managed_keys_ipv6], context: "#{context}[:managed_keys_ipv6]") unless input[:managed_keys_ipv6].nil?
      end
    end

    class GetRegexPatternSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRegexPatternSetInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:scope], ::String, context: "#{context}[:scope]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class GetRegexPatternSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRegexPatternSetOutput, context: context)
        Validators::RegexPatternSet.validate!(input[:regex_pattern_set], context: "#{context}[:regex_pattern_set]") unless input[:regex_pattern_set].nil?
        Hearth::Validator.validate!(input[:lock_token], ::String, context: "#{context}[:lock_token]")
      end
    end

    class GetRuleGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRuleGroupInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:scope], ::String, context: "#{context}[:scope]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class GetRuleGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRuleGroupOutput, context: context)
        Validators::RuleGroup.validate!(input[:rule_group], context: "#{context}[:rule_group]") unless input[:rule_group].nil?
        Hearth::Validator.validate!(input[:lock_token], ::String, context: "#{context}[:lock_token]")
      end
    end

    class GetSampledRequestsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSampledRequestsInput, context: context)
        Hearth::Validator.validate!(input[:web_acl_arn], ::String, context: "#{context}[:web_acl_arn]")
        Hearth::Validator.validate!(input[:rule_metric_name], ::String, context: "#{context}[:rule_metric_name]")
        Hearth::Validator.validate!(input[:scope], ::String, context: "#{context}[:scope]")
        Validators::TimeWindow.validate!(input[:time_window], context: "#{context}[:time_window]") unless input[:time_window].nil?
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class GetSampledRequestsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSampledRequestsOutput, context: context)
        Validators::SampledHTTPRequests.validate!(input[:sampled_requests], context: "#{context}[:sampled_requests]") unless input[:sampled_requests].nil?
        Hearth::Validator.validate!(input[:population_size], ::Integer, context: "#{context}[:population_size]")
        Validators::TimeWindow.validate!(input[:time_window], context: "#{context}[:time_window]") unless input[:time_window].nil?
      end
    end

    class GetWebACLForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetWebACLForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class GetWebACLForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetWebACLForResourceOutput, context: context)
        Validators::WebACL.validate!(input[:web_acl], context: "#{context}[:web_acl]") unless input[:web_acl].nil?
      end
    end

    class GetWebACLInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetWebACLInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:scope], ::String, context: "#{context}[:scope]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class GetWebACLOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetWebACLOutput, context: context)
        Validators::WebACL.validate!(input[:web_acl], context: "#{context}[:web_acl]") unless input[:web_acl].nil?
        Hearth::Validator.validate!(input[:lock_token], ::String, context: "#{context}[:lock_token]")
        Hearth::Validator.validate!(input[:application_integration_url], ::String, context: "#{context}[:application_integration_url]")
      end
    end

    class HTTPHeader
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HTTPHeader, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class HTTPHeaders
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::HTTPHeader.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class HTTPRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HTTPRequest, context: context)
        Hearth::Validator.validate!(input[:client_ip], ::String, context: "#{context}[:client_ip]")
        Hearth::Validator.validate!(input[:country], ::String, context: "#{context}[:country]")
        Hearth::Validator.validate!(input[:uri], ::String, context: "#{context}[:uri]")
        Hearth::Validator.validate!(input[:member_method], ::String, context: "#{context}[:member_method]")
        Hearth::Validator.validate!(input[:http_version], ::String, context: "#{context}[:http_version]")
        Validators::HTTPHeaders.validate!(input[:headers], context: "#{context}[:headers]") unless input[:headers].nil?
      end
    end

    class HeaderMatchPattern
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HeaderMatchPattern, context: context)
        Validators::All.validate!(input[:all], context: "#{context}[:all]") unless input[:all].nil?
        Validators::HeaderNames.validate!(input[:included_headers], context: "#{context}[:included_headers]") unless input[:included_headers].nil?
        Validators::HeaderNames.validate!(input[:excluded_headers], context: "#{context}[:excluded_headers]") unless input[:excluded_headers].nil?
      end
    end

    class HeaderNames
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Headers
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Headers, context: context)
        Validators::HeaderMatchPattern.validate!(input[:match_pattern], context: "#{context}[:match_pattern]") unless input[:match_pattern].nil?
        Hearth::Validator.validate!(input[:match_scope], ::String, context: "#{context}[:match_scope]")
        Hearth::Validator.validate!(input[:oversize_handling], ::String, context: "#{context}[:oversize_handling]")
      end
    end

    class IPAddresses
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class IPSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IPSet, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:ip_address_version], ::String, context: "#{context}[:ip_address_version]")
        Validators::IPAddresses.validate!(input[:addresses], context: "#{context}[:addresses]") unless input[:addresses].nil?
      end
    end

    class IPSetForwardedIPConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IPSetForwardedIPConfig, context: context)
        Hearth::Validator.validate!(input[:header_name], ::String, context: "#{context}[:header_name]")
        Hearth::Validator.validate!(input[:fallback_behavior], ::String, context: "#{context}[:fallback_behavior]")
        Hearth::Validator.validate!(input[:position], ::String, context: "#{context}[:position]")
      end
    end

    class IPSetReferenceStatement
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IPSetReferenceStatement, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Validators::IPSetForwardedIPConfig.validate!(input[:ip_set_forwarded_ip_config], context: "#{context}[:ip_set_forwarded_ip_config]") unless input[:ip_set_forwarded_ip_config].nil?
      end
    end

    class IPSetSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::IPSetSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class IPSetSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IPSetSummary, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:lock_token], ::String, context: "#{context}[:lock_token]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class ImmunityTimeProperty
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImmunityTimeProperty, context: context)
        Hearth::Validator.validate!(input[:immunity_time], ::Integer, context: "#{context}[:immunity_time]")
      end
    end

    class JsonBody
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JsonBody, context: context)
        Validators::JsonMatchPattern.validate!(input[:match_pattern], context: "#{context}[:match_pattern]") unless input[:match_pattern].nil?
        Hearth::Validator.validate!(input[:match_scope], ::String, context: "#{context}[:match_scope]")
        Hearth::Validator.validate!(input[:invalid_fallback_behavior], ::String, context: "#{context}[:invalid_fallback_behavior]")
        Hearth::Validator.validate!(input[:oversize_handling], ::String, context: "#{context}[:oversize_handling]")
      end
    end

    class JsonMatchPattern
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JsonMatchPattern, context: context)
        Validators::All.validate!(input[:all], context: "#{context}[:all]") unless input[:all].nil?
        Validators::JsonPointerPaths.validate!(input[:included_paths], context: "#{context}[:included_paths]") unless input[:included_paths].nil?
      end
    end

    class JsonPointerPaths
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Label
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Label, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class LabelMatchStatement
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LabelMatchStatement, context: context)
        Hearth::Validator.validate!(input[:scope], ::String, context: "#{context}[:scope]")
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
      end
    end

    class LabelNameCondition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LabelNameCondition, context: context)
        Hearth::Validator.validate!(input[:label_name], ::String, context: "#{context}[:label_name]")
      end
    end

    class LabelSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::LabelSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LabelSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LabelSummary, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class Labels
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Label.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListAvailableManagedRuleGroupVersionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAvailableManagedRuleGroupVersionsInput, context: context)
        Hearth::Validator.validate!(input[:vendor_name], ::String, context: "#{context}[:vendor_name]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:scope], ::String, context: "#{context}[:scope]")
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class ListAvailableManagedRuleGroupVersionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAvailableManagedRuleGroupVersionsOutput, context: context)
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        Validators::ManagedRuleGroupVersions.validate!(input[:versions], context: "#{context}[:versions]") unless input[:versions].nil?
        Hearth::Validator.validate!(input[:current_default_version], ::String, context: "#{context}[:current_default_version]")
      end
    end

    class ListAvailableManagedRuleGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAvailableManagedRuleGroupsInput, context: context)
        Hearth::Validator.validate!(input[:scope], ::String, context: "#{context}[:scope]")
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class ListAvailableManagedRuleGroupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAvailableManagedRuleGroupsOutput, context: context)
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        Validators::ManagedRuleGroupSummaries.validate!(input[:managed_rule_groups], context: "#{context}[:managed_rule_groups]") unless input[:managed_rule_groups].nil?
      end
    end

    class ListIPSetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListIPSetsInput, context: context)
        Hearth::Validator.validate!(input[:scope], ::String, context: "#{context}[:scope]")
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class ListIPSetsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListIPSetsOutput, context: context)
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        Validators::IPSetSummaries.validate!(input[:ip_sets], context: "#{context}[:ip_sets]") unless input[:ip_sets].nil?
      end
    end

    class ListLoggingConfigurationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListLoggingConfigurationsInput, context: context)
        Hearth::Validator.validate!(input[:scope], ::String, context: "#{context}[:scope]")
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class ListLoggingConfigurationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListLoggingConfigurationsOutput, context: context)
        Validators::LoggingConfigurations.validate!(input[:logging_configurations], context: "#{context}[:logging_configurations]") unless input[:logging_configurations].nil?
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
      end
    end

    class ListManagedRuleSetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListManagedRuleSetsInput, context: context)
        Hearth::Validator.validate!(input[:scope], ::String, context: "#{context}[:scope]")
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class ListManagedRuleSetsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListManagedRuleSetsOutput, context: context)
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        Validators::ManagedRuleSetSummaries.validate!(input[:managed_rule_sets], context: "#{context}[:managed_rule_sets]") unless input[:managed_rule_sets].nil?
      end
    end

    class ListMobileSdkReleasesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListMobileSdkReleasesInput, context: context)
        Hearth::Validator.validate!(input[:platform], ::String, context: "#{context}[:platform]")
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class ListMobileSdkReleasesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListMobileSdkReleasesOutput, context: context)
        Validators::ReleaseSummaries.validate!(input[:release_summaries], context: "#{context}[:release_summaries]") unless input[:release_summaries].nil?
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
      end
    end

    class ListRegexPatternSetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRegexPatternSetsInput, context: context)
        Hearth::Validator.validate!(input[:scope], ::String, context: "#{context}[:scope]")
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class ListRegexPatternSetsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRegexPatternSetsOutput, context: context)
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        Validators::RegexPatternSetSummaries.validate!(input[:regex_pattern_sets], context: "#{context}[:regex_pattern_sets]") unless input[:regex_pattern_sets].nil?
      end
    end

    class ListResourcesForWebACLInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListResourcesForWebACLInput, context: context)
        Hearth::Validator.validate!(input[:web_acl_arn], ::String, context: "#{context}[:web_acl_arn]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
      end
    end

    class ListResourcesForWebACLOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListResourcesForWebACLOutput, context: context)
        Validators::ResourceArns.validate!(input[:resource_arns], context: "#{context}[:resource_arns]") unless input[:resource_arns].nil?
      end
    end

    class ListRuleGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRuleGroupsInput, context: context)
        Hearth::Validator.validate!(input[:scope], ::String, context: "#{context}[:scope]")
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class ListRuleGroupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRuleGroupsOutput, context: context)
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        Validators::RuleGroupSummaries.validate!(input[:rule_groups], context: "#{context}[:rule_groups]") unless input[:rule_groups].nil?
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        Validators::TagInfoForResource.validate!(input[:tag_info_for_resource], context: "#{context}[:tag_info_for_resource]") unless input[:tag_info_for_resource].nil?
      end
    end

    class ListWebACLsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListWebACLsInput, context: context)
        Hearth::Validator.validate!(input[:scope], ::String, context: "#{context}[:scope]")
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class ListWebACLsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListWebACLsOutput, context: context)
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        Validators::WebACLSummaries.validate!(input[:web_ac_ls], context: "#{context}[:web_ac_ls]") unless input[:web_ac_ls].nil?
      end
    end

    class LogDestinationConfigs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class LoggingConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LoggingConfiguration, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::LogDestinationConfigs.validate!(input[:log_destination_configs], context: "#{context}[:log_destination_configs]") unless input[:log_destination_configs].nil?
        Validators::RedactedFields.validate!(input[:redacted_fields], context: "#{context}[:redacted_fields]") unless input[:redacted_fields].nil?
        Hearth::Validator.validate!(input[:managed_by_firewall_manager], ::TrueClass, ::FalseClass, context: "#{context}[:managed_by_firewall_manager]")
        Validators::LoggingFilter.validate!(input[:logging_filter], context: "#{context}[:logging_filter]") unless input[:logging_filter].nil?
      end
    end

    class LoggingConfigurations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::LoggingConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LoggingFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LoggingFilter, context: context)
        Validators::Filters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:default_behavior], ::String, context: "#{context}[:default_behavior]")
      end
    end

    class ManagedRuleGroupConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ManagedRuleGroupConfig, context: context)
        Hearth::Validator.validate!(input[:login_path], ::String, context: "#{context}[:login_path]")
        Hearth::Validator.validate!(input[:payload_type], ::String, context: "#{context}[:payload_type]")
        Validators::UsernameField.validate!(input[:username_field], context: "#{context}[:username_field]") unless input[:username_field].nil?
        Validators::PasswordField.validate!(input[:password_field], context: "#{context}[:password_field]") unless input[:password_field].nil?
      end
    end

    class ManagedRuleGroupConfigs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ManagedRuleGroupConfig.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ManagedRuleGroupStatement
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ManagedRuleGroupStatement, context: context)
        Hearth::Validator.validate!(input[:vendor_name], ::String, context: "#{context}[:vendor_name]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Validators::ExcludedRules.validate!(input[:excluded_rules], context: "#{context}[:excluded_rules]") unless input[:excluded_rules].nil?
        Validators::Statement.validate!(input[:scope_down_statement], context: "#{context}[:scope_down_statement]") unless input[:scope_down_statement].nil?
        Validators::ManagedRuleGroupConfigs.validate!(input[:managed_rule_group_configs], context: "#{context}[:managed_rule_group_configs]") unless input[:managed_rule_group_configs].nil?
      end
    end

    class ManagedRuleGroupSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ManagedRuleGroupSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ManagedRuleGroupSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ManagedRuleGroupSummary, context: context)
        Hearth::Validator.validate!(input[:vendor_name], ::String, context: "#{context}[:vendor_name]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:versioning_supported], ::TrueClass, ::FalseClass, context: "#{context}[:versioning_supported]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class ManagedRuleGroupVersion
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ManagedRuleGroupVersion, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:last_update_timestamp], ::Time, context: "#{context}[:last_update_timestamp]")
      end
    end

    class ManagedRuleGroupVersions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ManagedRuleGroupVersion.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ManagedRuleSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ManagedRuleSet, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::PublishedVersions.validate!(input[:published_versions], context: "#{context}[:published_versions]") unless input[:published_versions].nil?
        Hearth::Validator.validate!(input[:recommended_version], ::String, context: "#{context}[:recommended_version]")
        Hearth::Validator.validate!(input[:label_namespace], ::String, context: "#{context}[:label_namespace]")
      end
    end

    class ManagedRuleSetSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ManagedRuleSetSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ManagedRuleSetSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ManagedRuleSetSummary, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:lock_token], ::String, context: "#{context}[:lock_token]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:label_namespace], ::String, context: "#{context}[:label_namespace]")
      end
    end

    class ManagedRuleSetVersion
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ManagedRuleSetVersion, context: context)
        Hearth::Validator.validate!(input[:associated_rule_group_arn], ::String, context: "#{context}[:associated_rule_group_arn]")
        Hearth::Validator.validate!(input[:capacity], ::Integer, context: "#{context}[:capacity]")
        Hearth::Validator.validate!(input[:forecasted_lifetime], ::Integer, context: "#{context}[:forecasted_lifetime]")
        Hearth::Validator.validate!(input[:publish_timestamp], ::Time, context: "#{context}[:publish_timestamp]")
        Hearth::Validator.validate!(input[:last_update_timestamp], ::Time, context: "#{context}[:last_update_timestamp]")
        Hearth::Validator.validate!(input[:expiry_timestamp], ::Time, context: "#{context}[:expiry_timestamp]")
      end
    end

    class Method
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Method, context: context)
      end
    end

    class MobileSdkRelease
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MobileSdkRelease, context: context)
        Hearth::Validator.validate!(input[:release_version], ::String, context: "#{context}[:release_version]")
        Hearth::Validator.validate!(input[:timestamp], ::Time, context: "#{context}[:timestamp]")
        Hearth::Validator.validate!(input[:release_notes], ::String, context: "#{context}[:release_notes]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class NoneAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NoneAction, context: context)
      end
    end

    class NotStatement
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotStatement, context: context)
        Validators::Statement.validate!(input[:statement], context: "#{context}[:statement]") unless input[:statement].nil?
      end
    end

    class OrStatement
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OrStatement, context: context)
        Validators::Statements.validate!(input[:statements], context: "#{context}[:statements]") unless input[:statements].nil?
      end
    end

    class OverrideAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OverrideAction, context: context)
        Validators::CountAction.validate!(input[:count], context: "#{context}[:count]") unless input[:count].nil?
        Validators::NoneAction.validate!(input[:none], context: "#{context}[:none]") unless input[:none].nil?
      end
    end

    class PasswordField
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PasswordField, context: context)
        Hearth::Validator.validate!(input[:identifier], ::String, context: "#{context}[:identifier]")
      end
    end

    class PublishedVersions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Validators::ManagedRuleSetVersion.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class PutLoggingConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutLoggingConfigurationInput, context: context)
        Validators::LoggingConfiguration.validate!(input[:logging_configuration], context: "#{context}[:logging_configuration]") unless input[:logging_configuration].nil?
      end
    end

    class PutLoggingConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutLoggingConfigurationOutput, context: context)
        Validators::LoggingConfiguration.validate!(input[:logging_configuration], context: "#{context}[:logging_configuration]") unless input[:logging_configuration].nil?
      end
    end

    class PutManagedRuleSetVersionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutManagedRuleSetVersionsInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:scope], ::String, context: "#{context}[:scope]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:lock_token], ::String, context: "#{context}[:lock_token]")
        Hearth::Validator.validate!(input[:recommended_version], ::String, context: "#{context}[:recommended_version]")
        Validators::VersionsToPublish.validate!(input[:versions_to_publish], context: "#{context}[:versions_to_publish]") unless input[:versions_to_publish].nil?
      end
    end

    class PutManagedRuleSetVersionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutManagedRuleSetVersionsOutput, context: context)
        Hearth::Validator.validate!(input[:next_lock_token], ::String, context: "#{context}[:next_lock_token]")
      end
    end

    class PutPermissionPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutPermissionPolicyInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:policy], ::String, context: "#{context}[:policy]")
      end
    end

    class PutPermissionPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutPermissionPolicyOutput, context: context)
      end
    end

    class QueryString
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::QueryString, context: context)
      end
    end

    class RateBasedStatement
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RateBasedStatement, context: context)
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:aggregate_key_type], ::String, context: "#{context}[:aggregate_key_type]")
        Validators::Statement.validate!(input[:scope_down_statement], context: "#{context}[:scope_down_statement]") unless input[:scope_down_statement].nil?
        Validators::ForwardedIPConfig.validate!(input[:forwarded_ip_config], context: "#{context}[:forwarded_ip_config]") unless input[:forwarded_ip_config].nil?
      end
    end

    class RateBasedStatementManagedKeysIPSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RateBasedStatementManagedKeysIPSet, context: context)
        Hearth::Validator.validate!(input[:ip_address_version], ::String, context: "#{context}[:ip_address_version]")
        Validators::IPAddresses.validate!(input[:addresses], context: "#{context}[:addresses]") unless input[:addresses].nil?
      end
    end

    class RedactedFields
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::FieldToMatch.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Regex
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Regex, context: context)
        Hearth::Validator.validate!(input[:regex_string], ::String, context: "#{context}[:regex_string]")
      end
    end

    class RegexMatchStatement
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegexMatchStatement, context: context)
        Hearth::Validator.validate!(input[:regex_string], ::String, context: "#{context}[:regex_string]")
        Validators::FieldToMatch.validate!(input[:field_to_match], context: "#{context}[:field_to_match]") unless input[:field_to_match].nil?
        Validators::TextTransformations.validate!(input[:text_transformations], context: "#{context}[:text_transformations]") unless input[:text_transformations].nil?
      end
    end

    class RegexPatternSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegexPatternSet, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::RegularExpressionList.validate!(input[:regular_expression_list], context: "#{context}[:regular_expression_list]") unless input[:regular_expression_list].nil?
      end
    end

    class RegexPatternSetReferenceStatement
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegexPatternSetReferenceStatement, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Validators::FieldToMatch.validate!(input[:field_to_match], context: "#{context}[:field_to_match]") unless input[:field_to_match].nil?
        Validators::TextTransformations.validate!(input[:text_transformations], context: "#{context}[:text_transformations]") unless input[:text_transformations].nil?
      end
    end

    class RegexPatternSetSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::RegexPatternSetSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RegexPatternSetSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegexPatternSetSummary, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:lock_token], ::String, context: "#{context}[:lock_token]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class RegularExpressionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Regex.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ReleaseSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ReleaseSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ReleaseSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReleaseSummary, context: context)
        Hearth::Validator.validate!(input[:release_version], ::String, context: "#{context}[:release_version]")
        Hearth::Validator.validate!(input[:timestamp], ::Time, context: "#{context}[:timestamp]")
      end
    end

    class ResourceArns
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Rule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Rule, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:priority], ::Integer, context: "#{context}[:priority]")
        Validators::Statement.validate!(input[:statement], context: "#{context}[:statement]") unless input[:statement].nil?
        Validators::RuleAction.validate!(input[:action], context: "#{context}[:action]") unless input[:action].nil?
        Validators::OverrideAction.validate!(input[:override_action], context: "#{context}[:override_action]") unless input[:override_action].nil?
        Validators::Labels.validate!(input[:rule_labels], context: "#{context}[:rule_labels]") unless input[:rule_labels].nil?
        Validators::VisibilityConfig.validate!(input[:visibility_config], context: "#{context}[:visibility_config]") unless input[:visibility_config].nil?
        Validators::CaptchaConfig.validate!(input[:captcha_config], context: "#{context}[:captcha_config]") unless input[:captcha_config].nil?
      end
    end

    class RuleAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RuleAction, context: context)
        Validators::BlockAction.validate!(input[:block], context: "#{context}[:block]") unless input[:block].nil?
        Validators::AllowAction.validate!(input[:allow], context: "#{context}[:allow]") unless input[:allow].nil?
        Validators::CountAction.validate!(input[:count], context: "#{context}[:count]") unless input[:count].nil?
        Validators::CaptchaAction.validate!(input[:captcha], context: "#{context}[:captcha]") unless input[:captcha].nil?
      end
    end

    class RuleGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RuleGroup, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:capacity], ::Integer, context: "#{context}[:capacity]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::Rules.validate!(input[:rules], context: "#{context}[:rules]") unless input[:rules].nil?
        Validators::VisibilityConfig.validate!(input[:visibility_config], context: "#{context}[:visibility_config]") unless input[:visibility_config].nil?
        Hearth::Validator.validate!(input[:label_namespace], ::String, context: "#{context}[:label_namespace]")
        Validators::CustomResponseBodies.validate!(input[:custom_response_bodies], context: "#{context}[:custom_response_bodies]") unless input[:custom_response_bodies].nil?
        Validators::LabelSummaries.validate!(input[:available_labels], context: "#{context}[:available_labels]") unless input[:available_labels].nil?
        Validators::LabelSummaries.validate!(input[:consumed_labels], context: "#{context}[:consumed_labels]") unless input[:consumed_labels].nil?
      end
    end

    class RuleGroupReferenceStatement
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RuleGroupReferenceStatement, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Validators::ExcludedRules.validate!(input[:excluded_rules], context: "#{context}[:excluded_rules]") unless input[:excluded_rules].nil?
      end
    end

    class RuleGroupSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::RuleGroupSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RuleGroupSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RuleGroupSummary, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:lock_token], ::String, context: "#{context}[:lock_token]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class RuleSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::RuleSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RuleSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RuleSummary, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::RuleAction.validate!(input[:action], context: "#{context}[:action]") unless input[:action].nil?
      end
    end

    class Rules
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Rule.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SampledHTTPRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SampledHTTPRequest, context: context)
        Validators::HTTPRequest.validate!(input[:request], context: "#{context}[:request]") unless input[:request].nil?
        Hearth::Validator.validate!(input[:weight], ::Integer, context: "#{context}[:weight]")
        Hearth::Validator.validate!(input[:timestamp], ::Time, context: "#{context}[:timestamp]")
        Hearth::Validator.validate!(input[:action], ::String, context: "#{context}[:action]")
        Hearth::Validator.validate!(input[:rule_name_within_rule_group], ::String, context: "#{context}[:rule_name_within_rule_group]")
        Validators::HTTPHeaders.validate!(input[:request_headers_inserted], context: "#{context}[:request_headers_inserted]") unless input[:request_headers_inserted].nil?
        Hearth::Validator.validate!(input[:response_code_sent], ::Integer, context: "#{context}[:response_code_sent]")
        Validators::Labels.validate!(input[:labels], context: "#{context}[:labels]") unless input[:labels].nil?
        Validators::CaptchaResponse.validate!(input[:captcha_response], context: "#{context}[:captcha_response]") unless input[:captcha_response].nil?
      end
    end

    class SampledHTTPRequests
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SampledHTTPRequest.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SingleHeader
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SingleHeader, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class SingleQueryArgument
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SingleQueryArgument, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class SizeConstraintStatement
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SizeConstraintStatement, context: context)
        Validators::FieldToMatch.validate!(input[:field_to_match], context: "#{context}[:field_to_match]") unless input[:field_to_match].nil?
        Hearth::Validator.validate!(input[:comparison_operator], ::String, context: "#{context}[:comparison_operator]")
        Hearth::Validator.validate!(input[:size], ::Integer, context: "#{context}[:size]")
        Validators::TextTransformations.validate!(input[:text_transformations], context: "#{context}[:text_transformations]") unless input[:text_transformations].nil?
      end
    end

    class SqliMatchStatement
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SqliMatchStatement, context: context)
        Validators::FieldToMatch.validate!(input[:field_to_match], context: "#{context}[:field_to_match]") unless input[:field_to_match].nil?
        Validators::TextTransformations.validate!(input[:text_transformations], context: "#{context}[:text_transformations]") unless input[:text_transformations].nil?
      end
    end

    class Statement
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Statement, context: context)
        Validators::ByteMatchStatement.validate!(input[:byte_match_statement], context: "#{context}[:byte_match_statement]") unless input[:byte_match_statement].nil?
        Validators::SqliMatchStatement.validate!(input[:sqli_match_statement], context: "#{context}[:sqli_match_statement]") unless input[:sqli_match_statement].nil?
        Validators::XssMatchStatement.validate!(input[:xss_match_statement], context: "#{context}[:xss_match_statement]") unless input[:xss_match_statement].nil?
        Validators::SizeConstraintStatement.validate!(input[:size_constraint_statement], context: "#{context}[:size_constraint_statement]") unless input[:size_constraint_statement].nil?
        Validators::GeoMatchStatement.validate!(input[:geo_match_statement], context: "#{context}[:geo_match_statement]") unless input[:geo_match_statement].nil?
        Validators::RuleGroupReferenceStatement.validate!(input[:rule_group_reference_statement], context: "#{context}[:rule_group_reference_statement]") unless input[:rule_group_reference_statement].nil?
        Validators::IPSetReferenceStatement.validate!(input[:ip_set_reference_statement], context: "#{context}[:ip_set_reference_statement]") unless input[:ip_set_reference_statement].nil?
        Validators::RegexPatternSetReferenceStatement.validate!(input[:regex_pattern_set_reference_statement], context: "#{context}[:regex_pattern_set_reference_statement]") unless input[:regex_pattern_set_reference_statement].nil?
        Validators::RateBasedStatement.validate!(input[:rate_based_statement], context: "#{context}[:rate_based_statement]") unless input[:rate_based_statement].nil?
        Validators::AndStatement.validate!(input[:and_statement], context: "#{context}[:and_statement]") unless input[:and_statement].nil?
        Validators::OrStatement.validate!(input[:or_statement], context: "#{context}[:or_statement]") unless input[:or_statement].nil?
        Validators::NotStatement.validate!(input[:not_statement], context: "#{context}[:not_statement]") unless input[:not_statement].nil?
        Validators::ManagedRuleGroupStatement.validate!(input[:managed_rule_group_statement], context: "#{context}[:managed_rule_group_statement]") unless input[:managed_rule_group_statement].nil?
        Validators::LabelMatchStatement.validate!(input[:label_match_statement], context: "#{context}[:label_match_statement]") unless input[:label_match_statement].nil?
        Validators::RegexMatchStatement.validate!(input[:regex_match_statement], context: "#{context}[:regex_match_statement]") unless input[:regex_match_statement].nil?
      end
    end

    class Statements
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Statement.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Tag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class TagInfoForResource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagInfoForResource, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagList.validate!(input[:tag_list], context: "#{context}[:tag_list]") unless input[:tag_list].nil?
      end
    end

    class TagKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class TextTransformation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TextTransformation, context: context)
        Hearth::Validator.validate!(input[:priority], ::Integer, context: "#{context}[:priority]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class TextTransformations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::TextTransformation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TimeWindow
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TimeWindow, context: context)
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateIPSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateIPSetInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:scope], ::String, context: "#{context}[:scope]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::IPAddresses.validate!(input[:addresses], context: "#{context}[:addresses]") unless input[:addresses].nil?
        Hearth::Validator.validate!(input[:lock_token], ::String, context: "#{context}[:lock_token]")
      end
    end

    class UpdateIPSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateIPSetOutput, context: context)
        Hearth::Validator.validate!(input[:next_lock_token], ::String, context: "#{context}[:next_lock_token]")
      end
    end

    class UpdateManagedRuleSetVersionExpiryDateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateManagedRuleSetVersionExpiryDateInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:scope], ::String, context: "#{context}[:scope]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:lock_token], ::String, context: "#{context}[:lock_token]")
        Hearth::Validator.validate!(input[:version_to_expire], ::String, context: "#{context}[:version_to_expire]")
        Hearth::Validator.validate!(input[:expiry_timestamp], ::Time, context: "#{context}[:expiry_timestamp]")
      end
    end

    class UpdateManagedRuleSetVersionExpiryDateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateManagedRuleSetVersionExpiryDateOutput, context: context)
        Hearth::Validator.validate!(input[:expiring_version], ::String, context: "#{context}[:expiring_version]")
        Hearth::Validator.validate!(input[:expiry_timestamp], ::Time, context: "#{context}[:expiry_timestamp]")
        Hearth::Validator.validate!(input[:next_lock_token], ::String, context: "#{context}[:next_lock_token]")
      end
    end

    class UpdateRegexPatternSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRegexPatternSetInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:scope], ::String, context: "#{context}[:scope]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::RegularExpressionList.validate!(input[:regular_expression_list], context: "#{context}[:regular_expression_list]") unless input[:regular_expression_list].nil?
        Hearth::Validator.validate!(input[:lock_token], ::String, context: "#{context}[:lock_token]")
      end
    end

    class UpdateRegexPatternSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRegexPatternSetOutput, context: context)
        Hearth::Validator.validate!(input[:next_lock_token], ::String, context: "#{context}[:next_lock_token]")
      end
    end

    class UpdateRuleGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRuleGroupInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:scope], ::String, context: "#{context}[:scope]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::Rules.validate!(input[:rules], context: "#{context}[:rules]") unless input[:rules].nil?
        Validators::VisibilityConfig.validate!(input[:visibility_config], context: "#{context}[:visibility_config]") unless input[:visibility_config].nil?
        Hearth::Validator.validate!(input[:lock_token], ::String, context: "#{context}[:lock_token]")
        Validators::CustomResponseBodies.validate!(input[:custom_response_bodies], context: "#{context}[:custom_response_bodies]") unless input[:custom_response_bodies].nil?
      end
    end

    class UpdateRuleGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRuleGroupOutput, context: context)
        Hearth::Validator.validate!(input[:next_lock_token], ::String, context: "#{context}[:next_lock_token]")
      end
    end

    class UpdateWebACLInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateWebACLInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:scope], ::String, context: "#{context}[:scope]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Validators::DefaultAction.validate!(input[:default_action], context: "#{context}[:default_action]") unless input[:default_action].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::Rules.validate!(input[:rules], context: "#{context}[:rules]") unless input[:rules].nil?
        Validators::VisibilityConfig.validate!(input[:visibility_config], context: "#{context}[:visibility_config]") unless input[:visibility_config].nil?
        Hearth::Validator.validate!(input[:lock_token], ::String, context: "#{context}[:lock_token]")
        Validators::CustomResponseBodies.validate!(input[:custom_response_bodies], context: "#{context}[:custom_response_bodies]") unless input[:custom_response_bodies].nil?
        Validators::CaptchaConfig.validate!(input[:captcha_config], context: "#{context}[:captcha_config]") unless input[:captcha_config].nil?
      end
    end

    class UpdateWebACLOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateWebACLOutput, context: context)
        Hearth::Validator.validate!(input[:next_lock_token], ::String, context: "#{context}[:next_lock_token]")
      end
    end

    class UriPath
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UriPath, context: context)
      end
    end

    class UsernameField
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UsernameField, context: context)
        Hearth::Validator.validate!(input[:identifier], ::String, context: "#{context}[:identifier]")
      end
    end

    class VersionToPublish
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VersionToPublish, context: context)
        Hearth::Validator.validate!(input[:associated_rule_group_arn], ::String, context: "#{context}[:associated_rule_group_arn]")
        Hearth::Validator.validate!(input[:forecasted_lifetime], ::Integer, context: "#{context}[:forecasted_lifetime]")
      end
    end

    class VersionsToPublish
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Validators::VersionToPublish.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class VisibilityConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VisibilityConfig, context: context)
        Hearth::Validator.validate!(input[:sampled_requests_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:sampled_requests_enabled]")
        Hearth::Validator.validate!(input[:cloud_watch_metrics_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:cloud_watch_metrics_enabled]")
        Hearth::Validator.validate!(input[:metric_name], ::String, context: "#{context}[:metric_name]")
      end
    end

    class WAFAssociatedItemException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WAFAssociatedItemException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class WAFConfigurationWarningException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WAFConfigurationWarningException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class WAFDuplicateItemException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WAFDuplicateItemException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class WAFExpiredManagedRuleGroupVersionException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WAFExpiredManagedRuleGroupVersionException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class WAFInternalErrorException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WAFInternalErrorException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class WAFInvalidOperationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WAFInvalidOperationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class WAFInvalidParameterException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WAFInvalidParameterException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:field], ::String, context: "#{context}[:field]")
        Hearth::Validator.validate!(input[:parameter], ::String, context: "#{context}[:parameter]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
      end
    end

    class WAFInvalidPermissionPolicyException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WAFInvalidPermissionPolicyException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class WAFInvalidResourceException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WAFInvalidResourceException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class WAFLimitsExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WAFLimitsExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class WAFLogDestinationPermissionIssueException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WAFLogDestinationPermissionIssueException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class WAFNonexistentItemException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WAFNonexistentItemException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class WAFOptimisticLockException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WAFOptimisticLockException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class WAFServiceLinkedRoleErrorException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WAFServiceLinkedRoleErrorException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class WAFSubscriptionNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WAFSubscriptionNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class WAFTagOperationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WAFTagOperationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class WAFTagOperationInternalErrorException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WAFTagOperationInternalErrorException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class WAFUnavailableEntityException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WAFUnavailableEntityException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class WebACL
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WebACL, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Validators::DefaultAction.validate!(input[:default_action], context: "#{context}[:default_action]") unless input[:default_action].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::Rules.validate!(input[:rules], context: "#{context}[:rules]") unless input[:rules].nil?
        Validators::VisibilityConfig.validate!(input[:visibility_config], context: "#{context}[:visibility_config]") unless input[:visibility_config].nil?
        Hearth::Validator.validate!(input[:capacity], ::Integer, context: "#{context}[:capacity]")
        Validators::FirewallManagerRuleGroups.validate!(input[:pre_process_firewall_manager_rule_groups], context: "#{context}[:pre_process_firewall_manager_rule_groups]") unless input[:pre_process_firewall_manager_rule_groups].nil?
        Validators::FirewallManagerRuleGroups.validate!(input[:post_process_firewall_manager_rule_groups], context: "#{context}[:post_process_firewall_manager_rule_groups]") unless input[:post_process_firewall_manager_rule_groups].nil?
        Hearth::Validator.validate!(input[:managed_by_firewall_manager], ::TrueClass, ::FalseClass, context: "#{context}[:managed_by_firewall_manager]")
        Hearth::Validator.validate!(input[:label_namespace], ::String, context: "#{context}[:label_namespace]")
        Validators::CustomResponseBodies.validate!(input[:custom_response_bodies], context: "#{context}[:custom_response_bodies]") unless input[:custom_response_bodies].nil?
        Validators::CaptchaConfig.validate!(input[:captcha_config], context: "#{context}[:captcha_config]") unless input[:captcha_config].nil?
      end
    end

    class WebACLSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::WebACLSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class WebACLSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WebACLSummary, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:lock_token], ::String, context: "#{context}[:lock_token]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class XssMatchStatement
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::XssMatchStatement, context: context)
        Validators::FieldToMatch.validate!(input[:field_to_match], context: "#{context}[:field_to_match]") unless input[:field_to_match].nil?
        Validators::TextTransformations.validate!(input[:text_transformations], context: "#{context}[:text_transformations]") unless input[:text_transformations].nil?
      end
    end

  end
end
