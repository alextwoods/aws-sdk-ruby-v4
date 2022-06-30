# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::WAFV2
  module Params

    module ActionCondition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActionCondition, context: context)
        type = Types::ActionCondition.new
        type.action = params[:action]
        type
      end
    end

    module All
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::All, context: context)
        type = Types::All.new
        type
      end
    end

    module AllQueryArguments
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AllQueryArguments, context: context)
        type = Types::AllQueryArguments.new
        type
      end
    end

    module AllowAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AllowAction, context: context)
        type = Types::AllowAction.new
        type.custom_request_handling = CustomRequestHandling.build(params[:custom_request_handling], context: "#{context}[:custom_request_handling]") unless params[:custom_request_handling].nil?
        type
      end
    end

    module AndStatement
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AndStatement, context: context)
        type = Types::AndStatement.new
        type.statements = Statements.build(params[:statements], context: "#{context}[:statements]") unless params[:statements].nil?
        type
      end
    end

    module AssociateWebACLInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateWebACLInput, context: context)
        type = Types::AssociateWebACLInput.new
        type.web_acl_arn = params[:web_acl_arn]
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module AssociateWebACLOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateWebACLOutput, context: context)
        type = Types::AssociateWebACLOutput.new
        type
      end
    end

    module BlockAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BlockAction, context: context)
        type = Types::BlockAction.new
        type.custom_response = CustomResponse.build(params[:custom_response], context: "#{context}[:custom_response]") unless params[:custom_response].nil?
        type
      end
    end

    module Body
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Body, context: context)
        type = Types::Body.new
        type.oversize_handling = params[:oversize_handling]
        type
      end
    end

    module ByteMatchStatement
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ByteMatchStatement, context: context)
        type = Types::ByteMatchStatement.new
        type.search_string = params[:search_string]
        type.field_to_match = FieldToMatch.build(params[:field_to_match], context: "#{context}[:field_to_match]") unless params[:field_to_match].nil?
        type.text_transformations = TextTransformations.build(params[:text_transformations], context: "#{context}[:text_transformations]") unless params[:text_transformations].nil?
        type.positional_constraint = params[:positional_constraint]
        type
      end
    end

    module CaptchaAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CaptchaAction, context: context)
        type = Types::CaptchaAction.new
        type.custom_request_handling = CustomRequestHandling.build(params[:custom_request_handling], context: "#{context}[:custom_request_handling]") unless params[:custom_request_handling].nil?
        type
      end
    end

    module CaptchaConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CaptchaConfig, context: context)
        type = Types::CaptchaConfig.new
        type.immunity_time_property = ImmunityTimeProperty.build(params[:immunity_time_property], context: "#{context}[:immunity_time_property]") unless params[:immunity_time_property].nil?
        type
      end
    end

    module CaptchaResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CaptchaResponse, context: context)
        type = Types::CaptchaResponse.new
        type.response_code = params[:response_code]
        type.solve_timestamp = params[:solve_timestamp]
        type.failure_reason = params[:failure_reason]
        type
      end
    end

    module CheckCapacityInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CheckCapacityInput, context: context)
        type = Types::CheckCapacityInput.new
        type.scope = params[:scope]
        type.rules = Rules.build(params[:rules], context: "#{context}[:rules]") unless params[:rules].nil?
        type
      end
    end

    module CheckCapacityOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CheckCapacityOutput, context: context)
        type = Types::CheckCapacityOutput.new
        type.capacity = params[:capacity]
        type
      end
    end

    module Condition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Condition, context: context)
        type = Types::Condition.new
        type.action_condition = ActionCondition.build(params[:action_condition], context: "#{context}[:action_condition]") unless params[:action_condition].nil?
        type.label_name_condition = LabelNameCondition.build(params[:label_name_condition], context: "#{context}[:label_name_condition]") unless params[:label_name_condition].nil?
        type
      end
    end

    module Conditions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Condition.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CookieMatchPattern
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CookieMatchPattern, context: context)
        type = Types::CookieMatchPattern.new
        type.all = All.build(params[:all], context: "#{context}[:all]") unless params[:all].nil?
        type.included_cookies = CookieNames.build(params[:included_cookies], context: "#{context}[:included_cookies]") unless params[:included_cookies].nil?
        type.excluded_cookies = CookieNames.build(params[:excluded_cookies], context: "#{context}[:excluded_cookies]") unless params[:excluded_cookies].nil?
        type
      end
    end

    module CookieNames
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Cookies
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Cookies, context: context)
        type = Types::Cookies.new
        type.match_pattern = CookieMatchPattern.build(params[:match_pattern], context: "#{context}[:match_pattern]") unless params[:match_pattern].nil?
        type.match_scope = params[:match_scope]
        type.oversize_handling = params[:oversize_handling]
        type
      end
    end

    module CountAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CountAction, context: context)
        type = Types::CountAction.new
        type.custom_request_handling = CustomRequestHandling.build(params[:custom_request_handling], context: "#{context}[:custom_request_handling]") unless params[:custom_request_handling].nil?
        type
      end
    end

    module CountryCodes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module CreateIPSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateIPSetInput, context: context)
        type = Types::CreateIPSetInput.new
        type.name = params[:name]
        type.scope = params[:scope]
        type.description = params[:description]
        type.ip_address_version = params[:ip_address_version]
        type.addresses = IPAddresses.build(params[:addresses], context: "#{context}[:addresses]") unless params[:addresses].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateIPSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateIPSetOutput, context: context)
        type = Types::CreateIPSetOutput.new
        type.summary = IPSetSummary.build(params[:summary], context: "#{context}[:summary]") unless params[:summary].nil?
        type
      end
    end

    module CreateRegexPatternSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRegexPatternSetInput, context: context)
        type = Types::CreateRegexPatternSetInput.new
        type.name = params[:name]
        type.scope = params[:scope]
        type.description = params[:description]
        type.regular_expression_list = RegularExpressionList.build(params[:regular_expression_list], context: "#{context}[:regular_expression_list]") unless params[:regular_expression_list].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateRegexPatternSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRegexPatternSetOutput, context: context)
        type = Types::CreateRegexPatternSetOutput.new
        type.summary = RegexPatternSetSummary.build(params[:summary], context: "#{context}[:summary]") unless params[:summary].nil?
        type
      end
    end

    module CreateRuleGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRuleGroupInput, context: context)
        type = Types::CreateRuleGroupInput.new
        type.name = params[:name]
        type.scope = params[:scope]
        type.capacity = params[:capacity]
        type.description = params[:description]
        type.rules = Rules.build(params[:rules], context: "#{context}[:rules]") unless params[:rules].nil?
        type.visibility_config = VisibilityConfig.build(params[:visibility_config], context: "#{context}[:visibility_config]") unless params[:visibility_config].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.custom_response_bodies = CustomResponseBodies.build(params[:custom_response_bodies], context: "#{context}[:custom_response_bodies]") unless params[:custom_response_bodies].nil?
        type
      end
    end

    module CreateRuleGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRuleGroupOutput, context: context)
        type = Types::CreateRuleGroupOutput.new
        type.summary = RuleGroupSummary.build(params[:summary], context: "#{context}[:summary]") unless params[:summary].nil?
        type
      end
    end

    module CreateWebACLInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateWebACLInput, context: context)
        type = Types::CreateWebACLInput.new
        type.name = params[:name]
        type.scope = params[:scope]
        type.default_action = DefaultAction.build(params[:default_action], context: "#{context}[:default_action]") unless params[:default_action].nil?
        type.description = params[:description]
        type.rules = Rules.build(params[:rules], context: "#{context}[:rules]") unless params[:rules].nil?
        type.visibility_config = VisibilityConfig.build(params[:visibility_config], context: "#{context}[:visibility_config]") unless params[:visibility_config].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.custom_response_bodies = CustomResponseBodies.build(params[:custom_response_bodies], context: "#{context}[:custom_response_bodies]") unless params[:custom_response_bodies].nil?
        type.captcha_config = CaptchaConfig.build(params[:captcha_config], context: "#{context}[:captcha_config]") unless params[:captcha_config].nil?
        type
      end
    end

    module CreateWebACLOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateWebACLOutput, context: context)
        type = Types::CreateWebACLOutput.new
        type.summary = WebACLSummary.build(params[:summary], context: "#{context}[:summary]") unless params[:summary].nil?
        type
      end
    end

    module CustomHTTPHeader
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomHTTPHeader, context: context)
        type = Types::CustomHTTPHeader.new
        type.name = params[:name]
        type.value = params[:value]
        type
      end
    end

    module CustomHTTPHeaders
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CustomHTTPHeader.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CustomRequestHandling
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomRequestHandling, context: context)
        type = Types::CustomRequestHandling.new
        type.insert_headers = CustomHTTPHeaders.build(params[:insert_headers], context: "#{context}[:insert_headers]") unless params[:insert_headers].nil?
        type
      end
    end

    module CustomResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomResponse, context: context)
        type = Types::CustomResponse.new
        type.response_code = params[:response_code]
        type.custom_response_body_key = params[:custom_response_body_key]
        type.response_headers = CustomHTTPHeaders.build(params[:response_headers], context: "#{context}[:response_headers]") unless params[:response_headers].nil?
        type
      end
    end

    module CustomResponseBodies
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = CustomResponseBody.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module CustomResponseBody
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomResponseBody, context: context)
        type = Types::CustomResponseBody.new
        type.content_type = params[:content_type]
        type.content = params[:content]
        type
      end
    end

    module DefaultAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DefaultAction, context: context)
        type = Types::DefaultAction.new
        type.block = BlockAction.build(params[:block], context: "#{context}[:block]") unless params[:block].nil?
        type.allow = AllowAction.build(params[:allow], context: "#{context}[:allow]") unless params[:allow].nil?
        type
      end
    end

    module DeleteFirewallManagerRuleGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFirewallManagerRuleGroupsInput, context: context)
        type = Types::DeleteFirewallManagerRuleGroupsInput.new
        type.web_acl_arn = params[:web_acl_arn]
        type.web_acl_lock_token = params[:web_acl_lock_token]
        type
      end
    end

    module DeleteFirewallManagerRuleGroupsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFirewallManagerRuleGroupsOutput, context: context)
        type = Types::DeleteFirewallManagerRuleGroupsOutput.new
        type.next_web_acl_lock_token = params[:next_web_acl_lock_token]
        type
      end
    end

    module DeleteIPSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteIPSetInput, context: context)
        type = Types::DeleteIPSetInput.new
        type.name = params[:name]
        type.scope = params[:scope]
        type.id = params[:id]
        type.lock_token = params[:lock_token]
        type
      end
    end

    module DeleteIPSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteIPSetOutput, context: context)
        type = Types::DeleteIPSetOutput.new
        type
      end
    end

    module DeleteLoggingConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteLoggingConfigurationInput, context: context)
        type = Types::DeleteLoggingConfigurationInput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module DeleteLoggingConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteLoggingConfigurationOutput, context: context)
        type = Types::DeleteLoggingConfigurationOutput.new
        type
      end
    end

    module DeletePermissionPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePermissionPolicyInput, context: context)
        type = Types::DeletePermissionPolicyInput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module DeletePermissionPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePermissionPolicyOutput, context: context)
        type = Types::DeletePermissionPolicyOutput.new
        type
      end
    end

    module DeleteRegexPatternSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRegexPatternSetInput, context: context)
        type = Types::DeleteRegexPatternSetInput.new
        type.name = params[:name]
        type.scope = params[:scope]
        type.id = params[:id]
        type.lock_token = params[:lock_token]
        type
      end
    end

    module DeleteRegexPatternSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRegexPatternSetOutput, context: context)
        type = Types::DeleteRegexPatternSetOutput.new
        type
      end
    end

    module DeleteRuleGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRuleGroupInput, context: context)
        type = Types::DeleteRuleGroupInput.new
        type.name = params[:name]
        type.scope = params[:scope]
        type.id = params[:id]
        type.lock_token = params[:lock_token]
        type
      end
    end

    module DeleteRuleGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRuleGroupOutput, context: context)
        type = Types::DeleteRuleGroupOutput.new
        type
      end
    end

    module DeleteWebACLInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteWebACLInput, context: context)
        type = Types::DeleteWebACLInput.new
        type.name = params[:name]
        type.scope = params[:scope]
        type.id = params[:id]
        type.lock_token = params[:lock_token]
        type
      end
    end

    module DeleteWebACLOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteWebACLOutput, context: context)
        type = Types::DeleteWebACLOutput.new
        type
      end
    end

    module DescribeManagedRuleGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeManagedRuleGroupInput, context: context)
        type = Types::DescribeManagedRuleGroupInput.new
        type.vendor_name = params[:vendor_name]
        type.name = params[:name]
        type.scope = params[:scope]
        type.version_name = params[:version_name]
        type
      end
    end

    module DescribeManagedRuleGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeManagedRuleGroupOutput, context: context)
        type = Types::DescribeManagedRuleGroupOutput.new
        type.version_name = params[:version_name]
        type.sns_topic_arn = params[:sns_topic_arn]
        type.capacity = params[:capacity]
        type.rules = RuleSummaries.build(params[:rules], context: "#{context}[:rules]") unless params[:rules].nil?
        type.label_namespace = params[:label_namespace]
        type.available_labels = LabelSummaries.build(params[:available_labels], context: "#{context}[:available_labels]") unless params[:available_labels].nil?
        type.consumed_labels = LabelSummaries.build(params[:consumed_labels], context: "#{context}[:consumed_labels]") unless params[:consumed_labels].nil?
        type
      end
    end

    module DisassociateWebACLInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateWebACLInput, context: context)
        type = Types::DisassociateWebACLInput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module DisassociateWebACLOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateWebACLOutput, context: context)
        type = Types::DisassociateWebACLOutput.new
        type
      end
    end

    module ExcludedRule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExcludedRule, context: context)
        type = Types::ExcludedRule.new
        type.name = params[:name]
        type
      end
    end

    module ExcludedRules
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ExcludedRule.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FieldToMatch
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FieldToMatch, context: context)
        type = Types::FieldToMatch.new
        type.single_header = SingleHeader.build(params[:single_header], context: "#{context}[:single_header]") unless params[:single_header].nil?
        type.single_query_argument = SingleQueryArgument.build(params[:single_query_argument], context: "#{context}[:single_query_argument]") unless params[:single_query_argument].nil?
        type.all_query_arguments = AllQueryArguments.build(params[:all_query_arguments], context: "#{context}[:all_query_arguments]") unless params[:all_query_arguments].nil?
        type.uri_path = UriPath.build(params[:uri_path], context: "#{context}[:uri_path]") unless params[:uri_path].nil?
        type.query_string = QueryString.build(params[:query_string], context: "#{context}[:query_string]") unless params[:query_string].nil?
        type.body = Body.build(params[:body], context: "#{context}[:body]") unless params[:body].nil?
        type.member_method = Method.build(params[:member_method], context: "#{context}[:member_method]") unless params[:member_method].nil?
        type.json_body = JsonBody.build(params[:json_body], context: "#{context}[:json_body]") unless params[:json_body].nil?
        type.headers = Headers.build(params[:headers], context: "#{context}[:headers]") unless params[:headers].nil?
        type.cookies = Cookies.build(params[:cookies], context: "#{context}[:cookies]") unless params[:cookies].nil?
        type
      end
    end

    module Filter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Filter, context: context)
        type = Types::Filter.new
        type.behavior = params[:behavior]
        type.requirement = params[:requirement]
        type.conditions = Conditions.build(params[:conditions], context: "#{context}[:conditions]") unless params[:conditions].nil?
        type
      end
    end

    module Filters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Filter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FirewallManagerRuleGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FirewallManagerRuleGroup, context: context)
        type = Types::FirewallManagerRuleGroup.new
        type.name = params[:name]
        type.priority = params[:priority]
        type.firewall_manager_statement = FirewallManagerStatement.build(params[:firewall_manager_statement], context: "#{context}[:firewall_manager_statement]") unless params[:firewall_manager_statement].nil?
        type.override_action = OverrideAction.build(params[:override_action], context: "#{context}[:override_action]") unless params[:override_action].nil?
        type.visibility_config = VisibilityConfig.build(params[:visibility_config], context: "#{context}[:visibility_config]") unless params[:visibility_config].nil?
        type
      end
    end

    module FirewallManagerRuleGroups
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FirewallManagerRuleGroup.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FirewallManagerStatement
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FirewallManagerStatement, context: context)
        type = Types::FirewallManagerStatement.new
        type.managed_rule_group_statement = ManagedRuleGroupStatement.build(params[:managed_rule_group_statement], context: "#{context}[:managed_rule_group_statement]") unless params[:managed_rule_group_statement].nil?
        type.rule_group_reference_statement = RuleGroupReferenceStatement.build(params[:rule_group_reference_statement], context: "#{context}[:rule_group_reference_statement]") unless params[:rule_group_reference_statement].nil?
        type
      end
    end

    module ForwardedIPConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ForwardedIPConfig, context: context)
        type = Types::ForwardedIPConfig.new
        type.header_name = params[:header_name]
        type.fallback_behavior = params[:fallback_behavior]
        type
      end
    end

    module GenerateMobileSdkReleaseUrlInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GenerateMobileSdkReleaseUrlInput, context: context)
        type = Types::GenerateMobileSdkReleaseUrlInput.new
        type.platform = params[:platform]
        type.release_version = params[:release_version]
        type
      end
    end

    module GenerateMobileSdkReleaseUrlOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GenerateMobileSdkReleaseUrlOutput, context: context)
        type = Types::GenerateMobileSdkReleaseUrlOutput.new
        type.url = params[:url]
        type
      end
    end

    module GeoMatchStatement
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GeoMatchStatement, context: context)
        type = Types::GeoMatchStatement.new
        type.country_codes = CountryCodes.build(params[:country_codes], context: "#{context}[:country_codes]") unless params[:country_codes].nil?
        type.forwarded_ip_config = ForwardedIPConfig.build(params[:forwarded_ip_config], context: "#{context}[:forwarded_ip_config]") unless params[:forwarded_ip_config].nil?
        type
      end
    end

    module GetIPSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetIPSetInput, context: context)
        type = Types::GetIPSetInput.new
        type.name = params[:name]
        type.scope = params[:scope]
        type.id = params[:id]
        type
      end
    end

    module GetIPSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetIPSetOutput, context: context)
        type = Types::GetIPSetOutput.new
        type.ip_set = IPSet.build(params[:ip_set], context: "#{context}[:ip_set]") unless params[:ip_set].nil?
        type.lock_token = params[:lock_token]
        type
      end
    end

    module GetLoggingConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLoggingConfigurationInput, context: context)
        type = Types::GetLoggingConfigurationInput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module GetLoggingConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLoggingConfigurationOutput, context: context)
        type = Types::GetLoggingConfigurationOutput.new
        type.logging_configuration = LoggingConfiguration.build(params[:logging_configuration], context: "#{context}[:logging_configuration]") unless params[:logging_configuration].nil?
        type
      end
    end

    module GetManagedRuleSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetManagedRuleSetInput, context: context)
        type = Types::GetManagedRuleSetInput.new
        type.name = params[:name]
        type.scope = params[:scope]
        type.id = params[:id]
        type
      end
    end

    module GetManagedRuleSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetManagedRuleSetOutput, context: context)
        type = Types::GetManagedRuleSetOutput.new
        type.managed_rule_set = ManagedRuleSet.build(params[:managed_rule_set], context: "#{context}[:managed_rule_set]") unless params[:managed_rule_set].nil?
        type.lock_token = params[:lock_token]
        type
      end
    end

    module GetMobileSdkReleaseInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMobileSdkReleaseInput, context: context)
        type = Types::GetMobileSdkReleaseInput.new
        type.platform = params[:platform]
        type.release_version = params[:release_version]
        type
      end
    end

    module GetMobileSdkReleaseOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMobileSdkReleaseOutput, context: context)
        type = Types::GetMobileSdkReleaseOutput.new
        type.mobile_sdk_release = MobileSdkRelease.build(params[:mobile_sdk_release], context: "#{context}[:mobile_sdk_release]") unless params[:mobile_sdk_release].nil?
        type
      end
    end

    module GetPermissionPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPermissionPolicyInput, context: context)
        type = Types::GetPermissionPolicyInput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module GetPermissionPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPermissionPolicyOutput, context: context)
        type = Types::GetPermissionPolicyOutput.new
        type.policy = params[:policy]
        type
      end
    end

    module GetRateBasedStatementManagedKeysInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRateBasedStatementManagedKeysInput, context: context)
        type = Types::GetRateBasedStatementManagedKeysInput.new
        type.scope = params[:scope]
        type.web_acl_name = params[:web_acl_name]
        type.web_acl_id = params[:web_acl_id]
        type.rule_group_rule_name = params[:rule_group_rule_name]
        type.rule_name = params[:rule_name]
        type
      end
    end

    module GetRateBasedStatementManagedKeysOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRateBasedStatementManagedKeysOutput, context: context)
        type = Types::GetRateBasedStatementManagedKeysOutput.new
        type.managed_keys_ipv4 = RateBasedStatementManagedKeysIPSet.build(params[:managed_keys_ipv4], context: "#{context}[:managed_keys_ipv4]") unless params[:managed_keys_ipv4].nil?
        type.managed_keys_ipv6 = RateBasedStatementManagedKeysIPSet.build(params[:managed_keys_ipv6], context: "#{context}[:managed_keys_ipv6]") unless params[:managed_keys_ipv6].nil?
        type
      end
    end

    module GetRegexPatternSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRegexPatternSetInput, context: context)
        type = Types::GetRegexPatternSetInput.new
        type.name = params[:name]
        type.scope = params[:scope]
        type.id = params[:id]
        type
      end
    end

    module GetRegexPatternSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRegexPatternSetOutput, context: context)
        type = Types::GetRegexPatternSetOutput.new
        type.regex_pattern_set = RegexPatternSet.build(params[:regex_pattern_set], context: "#{context}[:regex_pattern_set]") unless params[:regex_pattern_set].nil?
        type.lock_token = params[:lock_token]
        type
      end
    end

    module GetRuleGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRuleGroupInput, context: context)
        type = Types::GetRuleGroupInput.new
        type.name = params[:name]
        type.scope = params[:scope]
        type.id = params[:id]
        type.arn = params[:arn]
        type
      end
    end

    module GetRuleGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRuleGroupOutput, context: context)
        type = Types::GetRuleGroupOutput.new
        type.rule_group = RuleGroup.build(params[:rule_group], context: "#{context}[:rule_group]") unless params[:rule_group].nil?
        type.lock_token = params[:lock_token]
        type
      end
    end

    module GetSampledRequestsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSampledRequestsInput, context: context)
        type = Types::GetSampledRequestsInput.new
        type.web_acl_arn = params[:web_acl_arn]
        type.rule_metric_name = params[:rule_metric_name]
        type.scope = params[:scope]
        type.time_window = TimeWindow.build(params[:time_window], context: "#{context}[:time_window]") unless params[:time_window].nil?
        type.max_items = params[:max_items]
        type
      end
    end

    module GetSampledRequestsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSampledRequestsOutput, context: context)
        type = Types::GetSampledRequestsOutput.new
        type.sampled_requests = SampledHTTPRequests.build(params[:sampled_requests], context: "#{context}[:sampled_requests]") unless params[:sampled_requests].nil?
        type.population_size = params[:population_size]
        type.time_window = TimeWindow.build(params[:time_window], context: "#{context}[:time_window]") unless params[:time_window].nil?
        type
      end
    end

    module GetWebACLForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetWebACLForResourceInput, context: context)
        type = Types::GetWebACLForResourceInput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module GetWebACLForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetWebACLForResourceOutput, context: context)
        type = Types::GetWebACLForResourceOutput.new
        type.web_acl = WebACL.build(params[:web_acl], context: "#{context}[:web_acl]") unless params[:web_acl].nil?
        type
      end
    end

    module GetWebACLInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetWebACLInput, context: context)
        type = Types::GetWebACLInput.new
        type.name = params[:name]
        type.scope = params[:scope]
        type.id = params[:id]
        type
      end
    end

    module GetWebACLOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetWebACLOutput, context: context)
        type = Types::GetWebACLOutput.new
        type.web_acl = WebACL.build(params[:web_acl], context: "#{context}[:web_acl]") unless params[:web_acl].nil?
        type.lock_token = params[:lock_token]
        type.application_integration_url = params[:application_integration_url]
        type
      end
    end

    module HTTPHeader
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HTTPHeader, context: context)
        type = Types::HTTPHeader.new
        type.name = params[:name]
        type.value = params[:value]
        type
      end
    end

    module HTTPHeaders
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << HTTPHeader.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module HTTPRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HTTPRequest, context: context)
        type = Types::HTTPRequest.new
        type.client_ip = params[:client_ip]
        type.country = params[:country]
        type.uri = params[:uri]
        type.member_method = params[:member_method]
        type.http_version = params[:http_version]
        type.headers = HTTPHeaders.build(params[:headers], context: "#{context}[:headers]") unless params[:headers].nil?
        type
      end
    end

    module HeaderMatchPattern
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HeaderMatchPattern, context: context)
        type = Types::HeaderMatchPattern.new
        type.all = All.build(params[:all], context: "#{context}[:all]") unless params[:all].nil?
        type.included_headers = HeaderNames.build(params[:included_headers], context: "#{context}[:included_headers]") unless params[:included_headers].nil?
        type.excluded_headers = HeaderNames.build(params[:excluded_headers], context: "#{context}[:excluded_headers]") unless params[:excluded_headers].nil?
        type
      end
    end

    module HeaderNames
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Headers
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Headers, context: context)
        type = Types::Headers.new
        type.match_pattern = HeaderMatchPattern.build(params[:match_pattern], context: "#{context}[:match_pattern]") unless params[:match_pattern].nil?
        type.match_scope = params[:match_scope]
        type.oversize_handling = params[:oversize_handling]
        type
      end
    end

    module IPAddresses
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module IPSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IPSet, context: context)
        type = Types::IPSet.new
        type.name = params[:name]
        type.id = params[:id]
        type.arn = params[:arn]
        type.description = params[:description]
        type.ip_address_version = params[:ip_address_version]
        type.addresses = IPAddresses.build(params[:addresses], context: "#{context}[:addresses]") unless params[:addresses].nil?
        type
      end
    end

    module IPSetForwardedIPConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IPSetForwardedIPConfig, context: context)
        type = Types::IPSetForwardedIPConfig.new
        type.header_name = params[:header_name]
        type.fallback_behavior = params[:fallback_behavior]
        type.position = params[:position]
        type
      end
    end

    module IPSetReferenceStatement
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IPSetReferenceStatement, context: context)
        type = Types::IPSetReferenceStatement.new
        type.arn = params[:arn]
        type.ip_set_forwarded_ip_config = IPSetForwardedIPConfig.build(params[:ip_set_forwarded_ip_config], context: "#{context}[:ip_set_forwarded_ip_config]") unless params[:ip_set_forwarded_ip_config].nil?
        type
      end
    end

    module IPSetSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << IPSetSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module IPSetSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IPSetSummary, context: context)
        type = Types::IPSetSummary.new
        type.name = params[:name]
        type.id = params[:id]
        type.description = params[:description]
        type.lock_token = params[:lock_token]
        type.arn = params[:arn]
        type
      end
    end

    module ImmunityTimeProperty
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImmunityTimeProperty, context: context)
        type = Types::ImmunityTimeProperty.new
        type.immunity_time = params[:immunity_time]
        type
      end
    end

    module JsonBody
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JsonBody, context: context)
        type = Types::JsonBody.new
        type.match_pattern = JsonMatchPattern.build(params[:match_pattern], context: "#{context}[:match_pattern]") unless params[:match_pattern].nil?
        type.match_scope = params[:match_scope]
        type.invalid_fallback_behavior = params[:invalid_fallback_behavior]
        type.oversize_handling = params[:oversize_handling]
        type
      end
    end

    module JsonMatchPattern
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JsonMatchPattern, context: context)
        type = Types::JsonMatchPattern.new
        type.all = All.build(params[:all], context: "#{context}[:all]") unless params[:all].nil?
        type.included_paths = JsonPointerPaths.build(params[:included_paths], context: "#{context}[:included_paths]") unless params[:included_paths].nil?
        type
      end
    end

    module JsonPointerPaths
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Label
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Label, context: context)
        type = Types::Label.new
        type.name = params[:name]
        type
      end
    end

    module LabelMatchStatement
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LabelMatchStatement, context: context)
        type = Types::LabelMatchStatement.new
        type.scope = params[:scope]
        type.key = params[:key]
        type
      end
    end

    module LabelNameCondition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LabelNameCondition, context: context)
        type = Types::LabelNameCondition.new
        type.label_name = params[:label_name]
        type
      end
    end

    module LabelSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LabelSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LabelSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LabelSummary, context: context)
        type = Types::LabelSummary.new
        type.name = params[:name]
        type
      end
    end

    module Labels
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Label.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListAvailableManagedRuleGroupVersionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAvailableManagedRuleGroupVersionsInput, context: context)
        type = Types::ListAvailableManagedRuleGroupVersionsInput.new
        type.vendor_name = params[:vendor_name]
        type.name = params[:name]
        type.scope = params[:scope]
        type.next_marker = params[:next_marker]
        type.limit = params[:limit]
        type
      end
    end

    module ListAvailableManagedRuleGroupVersionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAvailableManagedRuleGroupVersionsOutput, context: context)
        type = Types::ListAvailableManagedRuleGroupVersionsOutput.new
        type.next_marker = params[:next_marker]
        type.versions = ManagedRuleGroupVersions.build(params[:versions], context: "#{context}[:versions]") unless params[:versions].nil?
        type.current_default_version = params[:current_default_version]
        type
      end
    end

    module ListAvailableManagedRuleGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAvailableManagedRuleGroupsInput, context: context)
        type = Types::ListAvailableManagedRuleGroupsInput.new
        type.scope = params[:scope]
        type.next_marker = params[:next_marker]
        type.limit = params[:limit]
        type
      end
    end

    module ListAvailableManagedRuleGroupsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAvailableManagedRuleGroupsOutput, context: context)
        type = Types::ListAvailableManagedRuleGroupsOutput.new
        type.next_marker = params[:next_marker]
        type.managed_rule_groups = ManagedRuleGroupSummaries.build(params[:managed_rule_groups], context: "#{context}[:managed_rule_groups]") unless params[:managed_rule_groups].nil?
        type
      end
    end

    module ListIPSetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListIPSetsInput, context: context)
        type = Types::ListIPSetsInput.new
        type.scope = params[:scope]
        type.next_marker = params[:next_marker]
        type.limit = params[:limit]
        type
      end
    end

    module ListIPSetsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListIPSetsOutput, context: context)
        type = Types::ListIPSetsOutput.new
        type.next_marker = params[:next_marker]
        type.ip_sets = IPSetSummaries.build(params[:ip_sets], context: "#{context}[:ip_sets]") unless params[:ip_sets].nil?
        type
      end
    end

    module ListLoggingConfigurationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListLoggingConfigurationsInput, context: context)
        type = Types::ListLoggingConfigurationsInput.new
        type.scope = params[:scope]
        type.next_marker = params[:next_marker]
        type.limit = params[:limit]
        type
      end
    end

    module ListLoggingConfigurationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListLoggingConfigurationsOutput, context: context)
        type = Types::ListLoggingConfigurationsOutput.new
        type.logging_configurations = LoggingConfigurations.build(params[:logging_configurations], context: "#{context}[:logging_configurations]") unless params[:logging_configurations].nil?
        type.next_marker = params[:next_marker]
        type
      end
    end

    module ListManagedRuleSetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListManagedRuleSetsInput, context: context)
        type = Types::ListManagedRuleSetsInput.new
        type.scope = params[:scope]
        type.next_marker = params[:next_marker]
        type.limit = params[:limit]
        type
      end
    end

    module ListManagedRuleSetsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListManagedRuleSetsOutput, context: context)
        type = Types::ListManagedRuleSetsOutput.new
        type.next_marker = params[:next_marker]
        type.managed_rule_sets = ManagedRuleSetSummaries.build(params[:managed_rule_sets], context: "#{context}[:managed_rule_sets]") unless params[:managed_rule_sets].nil?
        type
      end
    end

    module ListMobileSdkReleasesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListMobileSdkReleasesInput, context: context)
        type = Types::ListMobileSdkReleasesInput.new
        type.platform = params[:platform]
        type.next_marker = params[:next_marker]
        type.limit = params[:limit]
        type
      end
    end

    module ListMobileSdkReleasesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListMobileSdkReleasesOutput, context: context)
        type = Types::ListMobileSdkReleasesOutput.new
        type.release_summaries = ReleaseSummaries.build(params[:release_summaries], context: "#{context}[:release_summaries]") unless params[:release_summaries].nil?
        type.next_marker = params[:next_marker]
        type
      end
    end

    module ListRegexPatternSetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRegexPatternSetsInput, context: context)
        type = Types::ListRegexPatternSetsInput.new
        type.scope = params[:scope]
        type.next_marker = params[:next_marker]
        type.limit = params[:limit]
        type
      end
    end

    module ListRegexPatternSetsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRegexPatternSetsOutput, context: context)
        type = Types::ListRegexPatternSetsOutput.new
        type.next_marker = params[:next_marker]
        type.regex_pattern_sets = RegexPatternSetSummaries.build(params[:regex_pattern_sets], context: "#{context}[:regex_pattern_sets]") unless params[:regex_pattern_sets].nil?
        type
      end
    end

    module ListResourcesForWebACLInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListResourcesForWebACLInput, context: context)
        type = Types::ListResourcesForWebACLInput.new
        type.web_acl_arn = params[:web_acl_arn]
        type.resource_type = params[:resource_type]
        type
      end
    end

    module ListResourcesForWebACLOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListResourcesForWebACLOutput, context: context)
        type = Types::ListResourcesForWebACLOutput.new
        type.resource_arns = ResourceArns.build(params[:resource_arns], context: "#{context}[:resource_arns]") unless params[:resource_arns].nil?
        type
      end
    end

    module ListRuleGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRuleGroupsInput, context: context)
        type = Types::ListRuleGroupsInput.new
        type.scope = params[:scope]
        type.next_marker = params[:next_marker]
        type.limit = params[:limit]
        type
      end
    end

    module ListRuleGroupsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRuleGroupsOutput, context: context)
        type = Types::ListRuleGroupsOutput.new
        type.next_marker = params[:next_marker]
        type.rule_groups = RuleGroupSummaries.build(params[:rule_groups], context: "#{context}[:rule_groups]") unless params[:rule_groups].nil?
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.next_marker = params[:next_marker]
        type.limit = params[:limit]
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.next_marker = params[:next_marker]
        type.tag_info_for_resource = TagInfoForResource.build(params[:tag_info_for_resource], context: "#{context}[:tag_info_for_resource]") unless params[:tag_info_for_resource].nil?
        type
      end
    end

    module ListWebACLsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListWebACLsInput, context: context)
        type = Types::ListWebACLsInput.new
        type.scope = params[:scope]
        type.next_marker = params[:next_marker]
        type.limit = params[:limit]
        type
      end
    end

    module ListWebACLsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListWebACLsOutput, context: context)
        type = Types::ListWebACLsOutput.new
        type.next_marker = params[:next_marker]
        type.web_ac_ls = WebACLSummaries.build(params[:web_ac_ls], context: "#{context}[:web_ac_ls]") unless params[:web_ac_ls].nil?
        type
      end
    end

    module LogDestinationConfigs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module LoggingConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LoggingConfiguration, context: context)
        type = Types::LoggingConfiguration.new
        type.resource_arn = params[:resource_arn]
        type.log_destination_configs = LogDestinationConfigs.build(params[:log_destination_configs], context: "#{context}[:log_destination_configs]") unless params[:log_destination_configs].nil?
        type.redacted_fields = RedactedFields.build(params[:redacted_fields], context: "#{context}[:redacted_fields]") unless params[:redacted_fields].nil?
        type.managed_by_firewall_manager = params[:managed_by_firewall_manager]
        type.logging_filter = LoggingFilter.build(params[:logging_filter], context: "#{context}[:logging_filter]") unless params[:logging_filter].nil?
        type
      end
    end

    module LoggingConfigurations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LoggingConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LoggingFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LoggingFilter, context: context)
        type = Types::LoggingFilter.new
        type.filters = Filters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.default_behavior = params[:default_behavior]
        type
      end
    end

    module ManagedRuleGroupConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ManagedRuleGroupConfig, context: context)
        type = Types::ManagedRuleGroupConfig.new
        type.login_path = params[:login_path]
        type.payload_type = params[:payload_type]
        type.username_field = UsernameField.build(params[:username_field], context: "#{context}[:username_field]") unless params[:username_field].nil?
        type.password_field = PasswordField.build(params[:password_field], context: "#{context}[:password_field]") unless params[:password_field].nil?
        type
      end
    end

    module ManagedRuleGroupConfigs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ManagedRuleGroupConfig.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ManagedRuleGroupStatement
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ManagedRuleGroupStatement, context: context)
        type = Types::ManagedRuleGroupStatement.new
        type.vendor_name = params[:vendor_name]
        type.name = params[:name]
        type.version = params[:version]
        type.excluded_rules = ExcludedRules.build(params[:excluded_rules], context: "#{context}[:excluded_rules]") unless params[:excluded_rules].nil?
        type.scope_down_statement = Statement.build(params[:scope_down_statement], context: "#{context}[:scope_down_statement]") unless params[:scope_down_statement].nil?
        type.managed_rule_group_configs = ManagedRuleGroupConfigs.build(params[:managed_rule_group_configs], context: "#{context}[:managed_rule_group_configs]") unless params[:managed_rule_group_configs].nil?
        type
      end
    end

    module ManagedRuleGroupSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ManagedRuleGroupSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ManagedRuleGroupSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ManagedRuleGroupSummary, context: context)
        type = Types::ManagedRuleGroupSummary.new
        type.vendor_name = params[:vendor_name]
        type.name = params[:name]
        type.versioning_supported = params[:versioning_supported]
        type.description = params[:description]
        type
      end
    end

    module ManagedRuleGroupVersion
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ManagedRuleGroupVersion, context: context)
        type = Types::ManagedRuleGroupVersion.new
        type.name = params[:name]
        type.last_update_timestamp = params[:last_update_timestamp]
        type
      end
    end

    module ManagedRuleGroupVersions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ManagedRuleGroupVersion.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ManagedRuleSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ManagedRuleSet, context: context)
        type = Types::ManagedRuleSet.new
        type.name = params[:name]
        type.id = params[:id]
        type.arn = params[:arn]
        type.description = params[:description]
        type.published_versions = PublishedVersions.build(params[:published_versions], context: "#{context}[:published_versions]") unless params[:published_versions].nil?
        type.recommended_version = params[:recommended_version]
        type.label_namespace = params[:label_namespace]
        type
      end
    end

    module ManagedRuleSetSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ManagedRuleSetSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ManagedRuleSetSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ManagedRuleSetSummary, context: context)
        type = Types::ManagedRuleSetSummary.new
        type.name = params[:name]
        type.id = params[:id]
        type.description = params[:description]
        type.lock_token = params[:lock_token]
        type.arn = params[:arn]
        type.label_namespace = params[:label_namespace]
        type
      end
    end

    module ManagedRuleSetVersion
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ManagedRuleSetVersion, context: context)
        type = Types::ManagedRuleSetVersion.new
        type.associated_rule_group_arn = params[:associated_rule_group_arn]
        type.capacity = params[:capacity]
        type.forecasted_lifetime = params[:forecasted_lifetime]
        type.publish_timestamp = params[:publish_timestamp]
        type.last_update_timestamp = params[:last_update_timestamp]
        type.expiry_timestamp = params[:expiry_timestamp]
        type
      end
    end

    module Method
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Method, context: context)
        type = Types::Method.new
        type
      end
    end

    module MobileSdkRelease
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MobileSdkRelease, context: context)
        type = Types::MobileSdkRelease.new
        type.release_version = params[:release_version]
        type.timestamp = params[:timestamp]
        type.release_notes = params[:release_notes]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module NoneAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NoneAction, context: context)
        type = Types::NoneAction.new
        type
      end
    end

    module NotStatement
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotStatement, context: context)
        type = Types::NotStatement.new
        type.statement = Statement.build(params[:statement], context: "#{context}[:statement]") unless params[:statement].nil?
        type
      end
    end

    module OrStatement
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OrStatement, context: context)
        type = Types::OrStatement.new
        type.statements = Statements.build(params[:statements], context: "#{context}[:statements]") unless params[:statements].nil?
        type
      end
    end

    module OverrideAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OverrideAction, context: context)
        type = Types::OverrideAction.new
        type.count = CountAction.build(params[:count], context: "#{context}[:count]") unless params[:count].nil?
        type.none = NoneAction.build(params[:none], context: "#{context}[:none]") unless params[:none].nil?
        type
      end
    end

    module PasswordField
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PasswordField, context: context)
        type = Types::PasswordField.new
        type.identifier = params[:identifier]
        type
      end
    end

    module PublishedVersions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = ManagedRuleSetVersion.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module PutLoggingConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutLoggingConfigurationInput, context: context)
        type = Types::PutLoggingConfigurationInput.new
        type.logging_configuration = LoggingConfiguration.build(params[:logging_configuration], context: "#{context}[:logging_configuration]") unless params[:logging_configuration].nil?
        type
      end
    end

    module PutLoggingConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutLoggingConfigurationOutput, context: context)
        type = Types::PutLoggingConfigurationOutput.new
        type.logging_configuration = LoggingConfiguration.build(params[:logging_configuration], context: "#{context}[:logging_configuration]") unless params[:logging_configuration].nil?
        type
      end
    end

    module PutManagedRuleSetVersionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutManagedRuleSetVersionsInput, context: context)
        type = Types::PutManagedRuleSetVersionsInput.new
        type.name = params[:name]
        type.scope = params[:scope]
        type.id = params[:id]
        type.lock_token = params[:lock_token]
        type.recommended_version = params[:recommended_version]
        type.versions_to_publish = VersionsToPublish.build(params[:versions_to_publish], context: "#{context}[:versions_to_publish]") unless params[:versions_to_publish].nil?
        type
      end
    end

    module PutManagedRuleSetVersionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutManagedRuleSetVersionsOutput, context: context)
        type = Types::PutManagedRuleSetVersionsOutput.new
        type.next_lock_token = params[:next_lock_token]
        type
      end
    end

    module PutPermissionPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutPermissionPolicyInput, context: context)
        type = Types::PutPermissionPolicyInput.new
        type.resource_arn = params[:resource_arn]
        type.policy = params[:policy]
        type
      end
    end

    module PutPermissionPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutPermissionPolicyOutput, context: context)
        type = Types::PutPermissionPolicyOutput.new
        type
      end
    end

    module QueryString
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::QueryString, context: context)
        type = Types::QueryString.new
        type
      end
    end

    module RateBasedStatement
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RateBasedStatement, context: context)
        type = Types::RateBasedStatement.new
        type.limit = params[:limit]
        type.aggregate_key_type = params[:aggregate_key_type]
        type.scope_down_statement = Statement.build(params[:scope_down_statement], context: "#{context}[:scope_down_statement]") unless params[:scope_down_statement].nil?
        type.forwarded_ip_config = ForwardedIPConfig.build(params[:forwarded_ip_config], context: "#{context}[:forwarded_ip_config]") unless params[:forwarded_ip_config].nil?
        type
      end
    end

    module RateBasedStatementManagedKeysIPSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RateBasedStatementManagedKeysIPSet, context: context)
        type = Types::RateBasedStatementManagedKeysIPSet.new
        type.ip_address_version = params[:ip_address_version]
        type.addresses = IPAddresses.build(params[:addresses], context: "#{context}[:addresses]") unless params[:addresses].nil?
        type
      end
    end

    module RedactedFields
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FieldToMatch.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Regex
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Regex, context: context)
        type = Types::Regex.new
        type.regex_string = params[:regex_string]
        type
      end
    end

    module RegexMatchStatement
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegexMatchStatement, context: context)
        type = Types::RegexMatchStatement.new
        type.regex_string = params[:regex_string]
        type.field_to_match = FieldToMatch.build(params[:field_to_match], context: "#{context}[:field_to_match]") unless params[:field_to_match].nil?
        type.text_transformations = TextTransformations.build(params[:text_transformations], context: "#{context}[:text_transformations]") unless params[:text_transformations].nil?
        type
      end
    end

    module RegexPatternSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegexPatternSet, context: context)
        type = Types::RegexPatternSet.new
        type.name = params[:name]
        type.id = params[:id]
        type.arn = params[:arn]
        type.description = params[:description]
        type.regular_expression_list = RegularExpressionList.build(params[:regular_expression_list], context: "#{context}[:regular_expression_list]") unless params[:regular_expression_list].nil?
        type
      end
    end

    module RegexPatternSetReferenceStatement
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegexPatternSetReferenceStatement, context: context)
        type = Types::RegexPatternSetReferenceStatement.new
        type.arn = params[:arn]
        type.field_to_match = FieldToMatch.build(params[:field_to_match], context: "#{context}[:field_to_match]") unless params[:field_to_match].nil?
        type.text_transformations = TextTransformations.build(params[:text_transformations], context: "#{context}[:text_transformations]") unless params[:text_transformations].nil?
        type
      end
    end

    module RegexPatternSetSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RegexPatternSetSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RegexPatternSetSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegexPatternSetSummary, context: context)
        type = Types::RegexPatternSetSummary.new
        type.name = params[:name]
        type.id = params[:id]
        type.description = params[:description]
        type.lock_token = params[:lock_token]
        type.arn = params[:arn]
        type
      end
    end

    module RegularExpressionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Regex.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ReleaseSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ReleaseSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ReleaseSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReleaseSummary, context: context)
        type = Types::ReleaseSummary.new
        type.release_version = params[:release_version]
        type.timestamp = params[:timestamp]
        type
      end
    end

    module ResourceArns
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Rule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Rule, context: context)
        type = Types::Rule.new
        type.name = params[:name]
        type.priority = params[:priority]
        type.statement = Statement.build(params[:statement], context: "#{context}[:statement]") unless params[:statement].nil?
        type.action = RuleAction.build(params[:action], context: "#{context}[:action]") unless params[:action].nil?
        type.override_action = OverrideAction.build(params[:override_action], context: "#{context}[:override_action]") unless params[:override_action].nil?
        type.rule_labels = Labels.build(params[:rule_labels], context: "#{context}[:rule_labels]") unless params[:rule_labels].nil?
        type.visibility_config = VisibilityConfig.build(params[:visibility_config], context: "#{context}[:visibility_config]") unless params[:visibility_config].nil?
        type.captcha_config = CaptchaConfig.build(params[:captcha_config], context: "#{context}[:captcha_config]") unless params[:captcha_config].nil?
        type
      end
    end

    module RuleAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RuleAction, context: context)
        type = Types::RuleAction.new
        type.block = BlockAction.build(params[:block], context: "#{context}[:block]") unless params[:block].nil?
        type.allow = AllowAction.build(params[:allow], context: "#{context}[:allow]") unless params[:allow].nil?
        type.count = CountAction.build(params[:count], context: "#{context}[:count]") unless params[:count].nil?
        type.captcha = CaptchaAction.build(params[:captcha], context: "#{context}[:captcha]") unless params[:captcha].nil?
        type
      end
    end

    module RuleGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RuleGroup, context: context)
        type = Types::RuleGroup.new
        type.name = params[:name]
        type.id = params[:id]
        type.capacity = params[:capacity]
        type.arn = params[:arn]
        type.description = params[:description]
        type.rules = Rules.build(params[:rules], context: "#{context}[:rules]") unless params[:rules].nil?
        type.visibility_config = VisibilityConfig.build(params[:visibility_config], context: "#{context}[:visibility_config]") unless params[:visibility_config].nil?
        type.label_namespace = params[:label_namespace]
        type.custom_response_bodies = CustomResponseBodies.build(params[:custom_response_bodies], context: "#{context}[:custom_response_bodies]") unless params[:custom_response_bodies].nil?
        type.available_labels = LabelSummaries.build(params[:available_labels], context: "#{context}[:available_labels]") unless params[:available_labels].nil?
        type.consumed_labels = LabelSummaries.build(params[:consumed_labels], context: "#{context}[:consumed_labels]") unless params[:consumed_labels].nil?
        type
      end
    end

    module RuleGroupReferenceStatement
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RuleGroupReferenceStatement, context: context)
        type = Types::RuleGroupReferenceStatement.new
        type.arn = params[:arn]
        type.excluded_rules = ExcludedRules.build(params[:excluded_rules], context: "#{context}[:excluded_rules]") unless params[:excluded_rules].nil?
        type
      end
    end

    module RuleGroupSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RuleGroupSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RuleGroupSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RuleGroupSummary, context: context)
        type = Types::RuleGroupSummary.new
        type.name = params[:name]
        type.id = params[:id]
        type.description = params[:description]
        type.lock_token = params[:lock_token]
        type.arn = params[:arn]
        type
      end
    end

    module RuleSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RuleSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RuleSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RuleSummary, context: context)
        type = Types::RuleSummary.new
        type.name = params[:name]
        type.action = RuleAction.build(params[:action], context: "#{context}[:action]") unless params[:action].nil?
        type
      end
    end

    module Rules
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Rule.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SampledHTTPRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SampledHTTPRequest, context: context)
        type = Types::SampledHTTPRequest.new
        type.request = HTTPRequest.build(params[:request], context: "#{context}[:request]") unless params[:request].nil?
        type.weight = params[:weight]
        type.timestamp = params[:timestamp]
        type.action = params[:action]
        type.rule_name_within_rule_group = params[:rule_name_within_rule_group]
        type.request_headers_inserted = HTTPHeaders.build(params[:request_headers_inserted], context: "#{context}[:request_headers_inserted]") unless params[:request_headers_inserted].nil?
        type.response_code_sent = params[:response_code_sent]
        type.labels = Labels.build(params[:labels], context: "#{context}[:labels]") unless params[:labels].nil?
        type.captcha_response = CaptchaResponse.build(params[:captcha_response], context: "#{context}[:captcha_response]") unless params[:captcha_response].nil?
        type
      end
    end

    module SampledHTTPRequests
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SampledHTTPRequest.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SingleHeader
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SingleHeader, context: context)
        type = Types::SingleHeader.new
        type.name = params[:name]
        type
      end
    end

    module SingleQueryArgument
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SingleQueryArgument, context: context)
        type = Types::SingleQueryArgument.new
        type.name = params[:name]
        type
      end
    end

    module SizeConstraintStatement
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SizeConstraintStatement, context: context)
        type = Types::SizeConstraintStatement.new
        type.field_to_match = FieldToMatch.build(params[:field_to_match], context: "#{context}[:field_to_match]") unless params[:field_to_match].nil?
        type.comparison_operator = params[:comparison_operator]
        type.size = params[:size]
        type.text_transformations = TextTransformations.build(params[:text_transformations], context: "#{context}[:text_transformations]") unless params[:text_transformations].nil?
        type
      end
    end

    module SqliMatchStatement
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SqliMatchStatement, context: context)
        type = Types::SqliMatchStatement.new
        type.field_to_match = FieldToMatch.build(params[:field_to_match], context: "#{context}[:field_to_match]") unless params[:field_to_match].nil?
        type.text_transformations = TextTransformations.build(params[:text_transformations], context: "#{context}[:text_transformations]") unless params[:text_transformations].nil?
        type
      end
    end

    module Statement
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Statement, context: context)
        type = Types::Statement.new
        type.byte_match_statement = ByteMatchStatement.build(params[:byte_match_statement], context: "#{context}[:byte_match_statement]") unless params[:byte_match_statement].nil?
        type.sqli_match_statement = SqliMatchStatement.build(params[:sqli_match_statement], context: "#{context}[:sqli_match_statement]") unless params[:sqli_match_statement].nil?
        type.xss_match_statement = XssMatchStatement.build(params[:xss_match_statement], context: "#{context}[:xss_match_statement]") unless params[:xss_match_statement].nil?
        type.size_constraint_statement = SizeConstraintStatement.build(params[:size_constraint_statement], context: "#{context}[:size_constraint_statement]") unless params[:size_constraint_statement].nil?
        type.geo_match_statement = GeoMatchStatement.build(params[:geo_match_statement], context: "#{context}[:geo_match_statement]") unless params[:geo_match_statement].nil?
        type.rule_group_reference_statement = RuleGroupReferenceStatement.build(params[:rule_group_reference_statement], context: "#{context}[:rule_group_reference_statement]") unless params[:rule_group_reference_statement].nil?
        type.ip_set_reference_statement = IPSetReferenceStatement.build(params[:ip_set_reference_statement], context: "#{context}[:ip_set_reference_statement]") unless params[:ip_set_reference_statement].nil?
        type.regex_pattern_set_reference_statement = RegexPatternSetReferenceStatement.build(params[:regex_pattern_set_reference_statement], context: "#{context}[:regex_pattern_set_reference_statement]") unless params[:regex_pattern_set_reference_statement].nil?
        type.rate_based_statement = RateBasedStatement.build(params[:rate_based_statement], context: "#{context}[:rate_based_statement]") unless params[:rate_based_statement].nil?
        type.and_statement = AndStatement.build(params[:and_statement], context: "#{context}[:and_statement]") unless params[:and_statement].nil?
        type.or_statement = OrStatement.build(params[:or_statement], context: "#{context}[:or_statement]") unless params[:or_statement].nil?
        type.not_statement = NotStatement.build(params[:not_statement], context: "#{context}[:not_statement]") unless params[:not_statement].nil?
        type.managed_rule_group_statement = ManagedRuleGroupStatement.build(params[:managed_rule_group_statement], context: "#{context}[:managed_rule_group_statement]") unless params[:managed_rule_group_statement].nil?
        type.label_match_statement = LabelMatchStatement.build(params[:label_match_statement], context: "#{context}[:label_match_statement]") unless params[:label_match_statement].nil?
        type.regex_match_statement = RegexMatchStatement.build(params[:regex_match_statement], context: "#{context}[:regex_match_statement]") unless params[:regex_match_statement].nil?
        type
      end
    end

    module Statements
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Statement.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Tag
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Tag, context: context)
        type = Types::Tag.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module TagInfoForResource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagInfoForResource, context: context)
        type = Types::TagInfoForResource.new
        type.resource_arn = params[:resource_arn]
        type.tag_list = TagList.build(params[:tag_list], context: "#{context}[:tag_list]") unless params[:tag_list].nil?
        type
      end
    end

    module TagKeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module TagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceOutput, context: context)
        type = Types::TagResourceOutput.new
        type
      end
    end

    module TextTransformation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TextTransformation, context: context)
        type = Types::TextTransformation.new
        type.priority = params[:priority]
        type.type = params[:type]
        type
      end
    end

    module TextTransformations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TextTransformation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TimeWindow
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TimeWindow, context: context)
        type = Types::TimeWindow.new
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = TagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module UntagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceOutput, context: context)
        type = Types::UntagResourceOutput.new
        type
      end
    end

    module UpdateIPSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateIPSetInput, context: context)
        type = Types::UpdateIPSetInput.new
        type.name = params[:name]
        type.scope = params[:scope]
        type.id = params[:id]
        type.description = params[:description]
        type.addresses = IPAddresses.build(params[:addresses], context: "#{context}[:addresses]") unless params[:addresses].nil?
        type.lock_token = params[:lock_token]
        type
      end
    end

    module UpdateIPSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateIPSetOutput, context: context)
        type = Types::UpdateIPSetOutput.new
        type.next_lock_token = params[:next_lock_token]
        type
      end
    end

    module UpdateManagedRuleSetVersionExpiryDateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateManagedRuleSetVersionExpiryDateInput, context: context)
        type = Types::UpdateManagedRuleSetVersionExpiryDateInput.new
        type.name = params[:name]
        type.scope = params[:scope]
        type.id = params[:id]
        type.lock_token = params[:lock_token]
        type.version_to_expire = params[:version_to_expire]
        type.expiry_timestamp = params[:expiry_timestamp]
        type
      end
    end

    module UpdateManagedRuleSetVersionExpiryDateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateManagedRuleSetVersionExpiryDateOutput, context: context)
        type = Types::UpdateManagedRuleSetVersionExpiryDateOutput.new
        type.expiring_version = params[:expiring_version]
        type.expiry_timestamp = params[:expiry_timestamp]
        type.next_lock_token = params[:next_lock_token]
        type
      end
    end

    module UpdateRegexPatternSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRegexPatternSetInput, context: context)
        type = Types::UpdateRegexPatternSetInput.new
        type.name = params[:name]
        type.scope = params[:scope]
        type.id = params[:id]
        type.description = params[:description]
        type.regular_expression_list = RegularExpressionList.build(params[:regular_expression_list], context: "#{context}[:regular_expression_list]") unless params[:regular_expression_list].nil?
        type.lock_token = params[:lock_token]
        type
      end
    end

    module UpdateRegexPatternSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRegexPatternSetOutput, context: context)
        type = Types::UpdateRegexPatternSetOutput.new
        type.next_lock_token = params[:next_lock_token]
        type
      end
    end

    module UpdateRuleGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRuleGroupInput, context: context)
        type = Types::UpdateRuleGroupInput.new
        type.name = params[:name]
        type.scope = params[:scope]
        type.id = params[:id]
        type.description = params[:description]
        type.rules = Rules.build(params[:rules], context: "#{context}[:rules]") unless params[:rules].nil?
        type.visibility_config = VisibilityConfig.build(params[:visibility_config], context: "#{context}[:visibility_config]") unless params[:visibility_config].nil?
        type.lock_token = params[:lock_token]
        type.custom_response_bodies = CustomResponseBodies.build(params[:custom_response_bodies], context: "#{context}[:custom_response_bodies]") unless params[:custom_response_bodies].nil?
        type
      end
    end

    module UpdateRuleGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRuleGroupOutput, context: context)
        type = Types::UpdateRuleGroupOutput.new
        type.next_lock_token = params[:next_lock_token]
        type
      end
    end

    module UpdateWebACLInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateWebACLInput, context: context)
        type = Types::UpdateWebACLInput.new
        type.name = params[:name]
        type.scope = params[:scope]
        type.id = params[:id]
        type.default_action = DefaultAction.build(params[:default_action], context: "#{context}[:default_action]") unless params[:default_action].nil?
        type.description = params[:description]
        type.rules = Rules.build(params[:rules], context: "#{context}[:rules]") unless params[:rules].nil?
        type.visibility_config = VisibilityConfig.build(params[:visibility_config], context: "#{context}[:visibility_config]") unless params[:visibility_config].nil?
        type.lock_token = params[:lock_token]
        type.custom_response_bodies = CustomResponseBodies.build(params[:custom_response_bodies], context: "#{context}[:custom_response_bodies]") unless params[:custom_response_bodies].nil?
        type.captcha_config = CaptchaConfig.build(params[:captcha_config], context: "#{context}[:captcha_config]") unless params[:captcha_config].nil?
        type
      end
    end

    module UpdateWebACLOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateWebACLOutput, context: context)
        type = Types::UpdateWebACLOutput.new
        type.next_lock_token = params[:next_lock_token]
        type
      end
    end

    module UriPath
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UriPath, context: context)
        type = Types::UriPath.new
        type
      end
    end

    module UsernameField
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UsernameField, context: context)
        type = Types::UsernameField.new
        type.identifier = params[:identifier]
        type
      end
    end

    module VersionToPublish
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VersionToPublish, context: context)
        type = Types::VersionToPublish.new
        type.associated_rule_group_arn = params[:associated_rule_group_arn]
        type.forecasted_lifetime = params[:forecasted_lifetime]
        type
      end
    end

    module VersionsToPublish
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = VersionToPublish.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module VisibilityConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VisibilityConfig, context: context)
        type = Types::VisibilityConfig.new
        type.sampled_requests_enabled = params[:sampled_requests_enabled]
        type.cloud_watch_metrics_enabled = params[:cloud_watch_metrics_enabled]
        type.metric_name = params[:metric_name]
        type
      end
    end

    module WAFAssociatedItemException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WAFAssociatedItemException, context: context)
        type = Types::WAFAssociatedItemException.new
        type.message = params[:message]
        type
      end
    end

    module WAFConfigurationWarningException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WAFConfigurationWarningException, context: context)
        type = Types::WAFConfigurationWarningException.new
        type.message = params[:message]
        type
      end
    end

    module WAFDuplicateItemException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WAFDuplicateItemException, context: context)
        type = Types::WAFDuplicateItemException.new
        type.message = params[:message]
        type
      end
    end

    module WAFExpiredManagedRuleGroupVersionException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WAFExpiredManagedRuleGroupVersionException, context: context)
        type = Types::WAFExpiredManagedRuleGroupVersionException.new
        type.message = params[:message]
        type
      end
    end

    module WAFInternalErrorException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WAFInternalErrorException, context: context)
        type = Types::WAFInternalErrorException.new
        type.message = params[:message]
        type
      end
    end

    module WAFInvalidOperationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WAFInvalidOperationException, context: context)
        type = Types::WAFInvalidOperationException.new
        type.message = params[:message]
        type
      end
    end

    module WAFInvalidParameterException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WAFInvalidParameterException, context: context)
        type = Types::WAFInvalidParameterException.new
        type.message = params[:message]
        type.field = params[:field]
        type.parameter = params[:parameter]
        type.reason = params[:reason]
        type
      end
    end

    module WAFInvalidPermissionPolicyException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WAFInvalidPermissionPolicyException, context: context)
        type = Types::WAFInvalidPermissionPolicyException.new
        type.message = params[:message]
        type
      end
    end

    module WAFInvalidResourceException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WAFInvalidResourceException, context: context)
        type = Types::WAFInvalidResourceException.new
        type.message = params[:message]
        type
      end
    end

    module WAFLimitsExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WAFLimitsExceededException, context: context)
        type = Types::WAFLimitsExceededException.new
        type.message = params[:message]
        type
      end
    end

    module WAFLogDestinationPermissionIssueException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WAFLogDestinationPermissionIssueException, context: context)
        type = Types::WAFLogDestinationPermissionIssueException.new
        type.message = params[:message]
        type
      end
    end

    module WAFNonexistentItemException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WAFNonexistentItemException, context: context)
        type = Types::WAFNonexistentItemException.new
        type.message = params[:message]
        type
      end
    end

    module WAFOptimisticLockException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WAFOptimisticLockException, context: context)
        type = Types::WAFOptimisticLockException.new
        type.message = params[:message]
        type
      end
    end

    module WAFServiceLinkedRoleErrorException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WAFServiceLinkedRoleErrorException, context: context)
        type = Types::WAFServiceLinkedRoleErrorException.new
        type.message = params[:message]
        type
      end
    end

    module WAFSubscriptionNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WAFSubscriptionNotFoundException, context: context)
        type = Types::WAFSubscriptionNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module WAFTagOperationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WAFTagOperationException, context: context)
        type = Types::WAFTagOperationException.new
        type.message = params[:message]
        type
      end
    end

    module WAFTagOperationInternalErrorException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WAFTagOperationInternalErrorException, context: context)
        type = Types::WAFTagOperationInternalErrorException.new
        type.message = params[:message]
        type
      end
    end

    module WAFUnavailableEntityException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WAFUnavailableEntityException, context: context)
        type = Types::WAFUnavailableEntityException.new
        type.message = params[:message]
        type
      end
    end

    module WebACL
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WebACL, context: context)
        type = Types::WebACL.new
        type.name = params[:name]
        type.id = params[:id]
        type.arn = params[:arn]
        type.default_action = DefaultAction.build(params[:default_action], context: "#{context}[:default_action]") unless params[:default_action].nil?
        type.description = params[:description]
        type.rules = Rules.build(params[:rules], context: "#{context}[:rules]") unless params[:rules].nil?
        type.visibility_config = VisibilityConfig.build(params[:visibility_config], context: "#{context}[:visibility_config]") unless params[:visibility_config].nil?
        type.capacity = params[:capacity]
        type.pre_process_firewall_manager_rule_groups = FirewallManagerRuleGroups.build(params[:pre_process_firewall_manager_rule_groups], context: "#{context}[:pre_process_firewall_manager_rule_groups]") unless params[:pre_process_firewall_manager_rule_groups].nil?
        type.post_process_firewall_manager_rule_groups = FirewallManagerRuleGroups.build(params[:post_process_firewall_manager_rule_groups], context: "#{context}[:post_process_firewall_manager_rule_groups]") unless params[:post_process_firewall_manager_rule_groups].nil?
        type.managed_by_firewall_manager = params[:managed_by_firewall_manager]
        type.label_namespace = params[:label_namespace]
        type.custom_response_bodies = CustomResponseBodies.build(params[:custom_response_bodies], context: "#{context}[:custom_response_bodies]") unless params[:custom_response_bodies].nil?
        type.captcha_config = CaptchaConfig.build(params[:captcha_config], context: "#{context}[:captcha_config]") unless params[:captcha_config].nil?
        type
      end
    end

    module WebACLSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << WebACLSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module WebACLSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WebACLSummary, context: context)
        type = Types::WebACLSummary.new
        type.name = params[:name]
        type.id = params[:id]
        type.description = params[:description]
        type.lock_token = params[:lock_token]
        type.arn = params[:arn]
        type
      end
    end

    module XssMatchStatement
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::XssMatchStatement, context: context)
        type = Types::XssMatchStatement.new
        type.field_to_match = FieldToMatch.build(params[:field_to_match], context: "#{context}[:field_to_match]") unless params[:field_to_match].nil?
        type.text_transformations = TextTransformations.build(params[:text_transformations], context: "#{context}[:text_transformations]") unless params[:text_transformations].nil?
        type
      end
    end

  end
end
