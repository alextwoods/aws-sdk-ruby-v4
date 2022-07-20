# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::WAFRegional
  module Validators

    class ActivatedRule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActivatedRule, context: context)
        Hearth::Validator.validate!(input[:priority], ::Integer, context: "#{context}[:priority]")
        Hearth::Validator.validate!(input[:rule_id], ::String, context: "#{context}[:rule_id]")
        WafAction.validate!(input[:action], context: "#{context}[:action]") unless input[:action].nil?
        WafOverrideAction.validate!(input[:override_action], context: "#{context}[:override_action]") unless input[:override_action].nil?
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        ExcludedRules.validate!(input[:excluded_rules], context: "#{context}[:excluded_rules]") unless input[:excluded_rules].nil?
      end
    end

    class ActivatedRules
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ActivatedRule.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AssociateWebACLInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateWebACLInput, context: context)
        Hearth::Validator.validate!(input[:web_acl_id], ::String, context: "#{context}[:web_acl_id]")
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class AssociateWebACLOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateWebACLOutput, context: context)
      end
    end

    class ByteMatchSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ByteMatchSet, context: context)
        Hearth::Validator.validate!(input[:byte_match_set_id], ::String, context: "#{context}[:byte_match_set_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        ByteMatchTuples.validate!(input[:byte_match_tuples], context: "#{context}[:byte_match_tuples]") unless input[:byte_match_tuples].nil?
      end
    end

    class ByteMatchSetSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ByteMatchSetSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ByteMatchSetSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ByteMatchSetSummary, context: context)
        Hearth::Validator.validate!(input[:byte_match_set_id], ::String, context: "#{context}[:byte_match_set_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class ByteMatchSetUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ByteMatchSetUpdate, context: context)
        Hearth::Validator.validate!(input[:action], ::String, context: "#{context}[:action]")
        ByteMatchTuple.validate!(input[:byte_match_tuple], context: "#{context}[:byte_match_tuple]") unless input[:byte_match_tuple].nil?
      end
    end

    class ByteMatchSetUpdates
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ByteMatchSetUpdate.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ByteMatchTuple
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ByteMatchTuple, context: context)
        FieldToMatch.validate!(input[:field_to_match], context: "#{context}[:field_to_match]") unless input[:field_to_match].nil?
        Hearth::Validator.validate!(input[:target_string], ::String, context: "#{context}[:target_string]")
        Hearth::Validator.validate!(input[:text_transformation], ::String, context: "#{context}[:text_transformation]")
        Hearth::Validator.validate!(input[:positional_constraint], ::String, context: "#{context}[:positional_constraint]")
      end
    end

    class ByteMatchTuples
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ByteMatchTuple.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CreateByteMatchSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateByteMatchSetInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:change_token], ::String, context: "#{context}[:change_token]")
      end
    end

    class CreateByteMatchSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateByteMatchSetOutput, context: context)
        ByteMatchSet.validate!(input[:byte_match_set], context: "#{context}[:byte_match_set]") unless input[:byte_match_set].nil?
        Hearth::Validator.validate!(input[:change_token], ::String, context: "#{context}[:change_token]")
      end
    end

    class CreateGeoMatchSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateGeoMatchSetInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:change_token], ::String, context: "#{context}[:change_token]")
      end
    end

    class CreateGeoMatchSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateGeoMatchSetOutput, context: context)
        GeoMatchSet.validate!(input[:geo_match_set], context: "#{context}[:geo_match_set]") unless input[:geo_match_set].nil?
        Hearth::Validator.validate!(input[:change_token], ::String, context: "#{context}[:change_token]")
      end
    end

    class CreateIPSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateIPSetInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:change_token], ::String, context: "#{context}[:change_token]")
      end
    end

    class CreateIPSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateIPSetOutput, context: context)
        IPSet.validate!(input[:ip_set], context: "#{context}[:ip_set]") unless input[:ip_set].nil?
        Hearth::Validator.validate!(input[:change_token], ::String, context: "#{context}[:change_token]")
      end
    end

    class CreateRateBasedRuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRateBasedRuleInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:metric_name], ::String, context: "#{context}[:metric_name]")
        Hearth::Validator.validate!(input[:rate_key], ::String, context: "#{context}[:rate_key]")
        Hearth::Validator.validate!(input[:rate_limit], ::Integer, context: "#{context}[:rate_limit]")
        Hearth::Validator.validate!(input[:change_token], ::String, context: "#{context}[:change_token]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateRateBasedRuleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRateBasedRuleOutput, context: context)
        RateBasedRule.validate!(input[:rule], context: "#{context}[:rule]") unless input[:rule].nil?
        Hearth::Validator.validate!(input[:change_token], ::String, context: "#{context}[:change_token]")
      end
    end

    class CreateRegexMatchSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRegexMatchSetInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:change_token], ::String, context: "#{context}[:change_token]")
      end
    end

    class CreateRegexMatchSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRegexMatchSetOutput, context: context)
        RegexMatchSet.validate!(input[:regex_match_set], context: "#{context}[:regex_match_set]") unless input[:regex_match_set].nil?
        Hearth::Validator.validate!(input[:change_token], ::String, context: "#{context}[:change_token]")
      end
    end

    class CreateRegexPatternSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRegexPatternSetInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:change_token], ::String, context: "#{context}[:change_token]")
      end
    end

    class CreateRegexPatternSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRegexPatternSetOutput, context: context)
        RegexPatternSet.validate!(input[:regex_pattern_set], context: "#{context}[:regex_pattern_set]") unless input[:regex_pattern_set].nil?
        Hearth::Validator.validate!(input[:change_token], ::String, context: "#{context}[:change_token]")
      end
    end

    class CreateRuleGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRuleGroupInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:metric_name], ::String, context: "#{context}[:metric_name]")
        Hearth::Validator.validate!(input[:change_token], ::String, context: "#{context}[:change_token]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateRuleGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRuleGroupOutput, context: context)
        RuleGroup.validate!(input[:rule_group], context: "#{context}[:rule_group]") unless input[:rule_group].nil?
        Hearth::Validator.validate!(input[:change_token], ::String, context: "#{context}[:change_token]")
      end
    end

    class CreateRuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRuleInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:metric_name], ::String, context: "#{context}[:metric_name]")
        Hearth::Validator.validate!(input[:change_token], ::String, context: "#{context}[:change_token]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateRuleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRuleOutput, context: context)
        Rule.validate!(input[:rule], context: "#{context}[:rule]") unless input[:rule].nil?
        Hearth::Validator.validate!(input[:change_token], ::String, context: "#{context}[:change_token]")
      end
    end

    class CreateSizeConstraintSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSizeConstraintSetInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:change_token], ::String, context: "#{context}[:change_token]")
      end
    end

    class CreateSizeConstraintSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSizeConstraintSetOutput, context: context)
        SizeConstraintSet.validate!(input[:size_constraint_set], context: "#{context}[:size_constraint_set]") unless input[:size_constraint_set].nil?
        Hearth::Validator.validate!(input[:change_token], ::String, context: "#{context}[:change_token]")
      end
    end

    class CreateSqlInjectionMatchSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSqlInjectionMatchSetInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:change_token], ::String, context: "#{context}[:change_token]")
      end
    end

    class CreateSqlInjectionMatchSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSqlInjectionMatchSetOutput, context: context)
        SqlInjectionMatchSet.validate!(input[:sql_injection_match_set], context: "#{context}[:sql_injection_match_set]") unless input[:sql_injection_match_set].nil?
        Hearth::Validator.validate!(input[:change_token], ::String, context: "#{context}[:change_token]")
      end
    end

    class CreateWebACLInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateWebACLInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:metric_name], ::String, context: "#{context}[:metric_name]")
        WafAction.validate!(input[:default_action], context: "#{context}[:default_action]") unless input[:default_action].nil?
        Hearth::Validator.validate!(input[:change_token], ::String, context: "#{context}[:change_token]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateWebACLMigrationStackInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateWebACLMigrationStackInput, context: context)
        Hearth::Validator.validate!(input[:web_acl_id], ::String, context: "#{context}[:web_acl_id]")
        Hearth::Validator.validate!(input[:s3_bucket_name], ::String, context: "#{context}[:s3_bucket_name]")
        Hearth::Validator.validate!(input[:ignore_unsupported_type], ::TrueClass, ::FalseClass, context: "#{context}[:ignore_unsupported_type]")
      end
    end

    class CreateWebACLMigrationStackOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateWebACLMigrationStackOutput, context: context)
        Hearth::Validator.validate!(input[:s3_object_url], ::String, context: "#{context}[:s3_object_url]")
      end
    end

    class CreateWebACLOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateWebACLOutput, context: context)
        WebACL.validate!(input[:web_acl], context: "#{context}[:web_acl]") unless input[:web_acl].nil?
        Hearth::Validator.validate!(input[:change_token], ::String, context: "#{context}[:change_token]")
      end
    end

    class CreateXssMatchSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateXssMatchSetInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:change_token], ::String, context: "#{context}[:change_token]")
      end
    end

    class CreateXssMatchSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateXssMatchSetOutput, context: context)
        XssMatchSet.validate!(input[:xss_match_set], context: "#{context}[:xss_match_set]") unless input[:xss_match_set].nil?
        Hearth::Validator.validate!(input[:change_token], ::String, context: "#{context}[:change_token]")
      end
    end

    class DeleteByteMatchSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteByteMatchSetInput, context: context)
        Hearth::Validator.validate!(input[:byte_match_set_id], ::String, context: "#{context}[:byte_match_set_id]")
        Hearth::Validator.validate!(input[:change_token], ::String, context: "#{context}[:change_token]")
      end
    end

    class DeleteByteMatchSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteByteMatchSetOutput, context: context)
        Hearth::Validator.validate!(input[:change_token], ::String, context: "#{context}[:change_token]")
      end
    end

    class DeleteGeoMatchSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteGeoMatchSetInput, context: context)
        Hearth::Validator.validate!(input[:geo_match_set_id], ::String, context: "#{context}[:geo_match_set_id]")
        Hearth::Validator.validate!(input[:change_token], ::String, context: "#{context}[:change_token]")
      end
    end

    class DeleteGeoMatchSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteGeoMatchSetOutput, context: context)
        Hearth::Validator.validate!(input[:change_token], ::String, context: "#{context}[:change_token]")
      end
    end

    class DeleteIPSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteIPSetInput, context: context)
        Hearth::Validator.validate!(input[:ip_set_id], ::String, context: "#{context}[:ip_set_id]")
        Hearth::Validator.validate!(input[:change_token], ::String, context: "#{context}[:change_token]")
      end
    end

    class DeleteIPSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteIPSetOutput, context: context)
        Hearth::Validator.validate!(input[:change_token], ::String, context: "#{context}[:change_token]")
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

    class DeleteRateBasedRuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRateBasedRuleInput, context: context)
        Hearth::Validator.validate!(input[:rule_id], ::String, context: "#{context}[:rule_id]")
        Hearth::Validator.validate!(input[:change_token], ::String, context: "#{context}[:change_token]")
      end
    end

    class DeleteRateBasedRuleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRateBasedRuleOutput, context: context)
        Hearth::Validator.validate!(input[:change_token], ::String, context: "#{context}[:change_token]")
      end
    end

    class DeleteRegexMatchSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRegexMatchSetInput, context: context)
        Hearth::Validator.validate!(input[:regex_match_set_id], ::String, context: "#{context}[:regex_match_set_id]")
        Hearth::Validator.validate!(input[:change_token], ::String, context: "#{context}[:change_token]")
      end
    end

    class DeleteRegexMatchSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRegexMatchSetOutput, context: context)
        Hearth::Validator.validate!(input[:change_token], ::String, context: "#{context}[:change_token]")
      end
    end

    class DeleteRegexPatternSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRegexPatternSetInput, context: context)
        Hearth::Validator.validate!(input[:regex_pattern_set_id], ::String, context: "#{context}[:regex_pattern_set_id]")
        Hearth::Validator.validate!(input[:change_token], ::String, context: "#{context}[:change_token]")
      end
    end

    class DeleteRegexPatternSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRegexPatternSetOutput, context: context)
        Hearth::Validator.validate!(input[:change_token], ::String, context: "#{context}[:change_token]")
      end
    end

    class DeleteRuleGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRuleGroupInput, context: context)
        Hearth::Validator.validate!(input[:rule_group_id], ::String, context: "#{context}[:rule_group_id]")
        Hearth::Validator.validate!(input[:change_token], ::String, context: "#{context}[:change_token]")
      end
    end

    class DeleteRuleGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRuleGroupOutput, context: context)
        Hearth::Validator.validate!(input[:change_token], ::String, context: "#{context}[:change_token]")
      end
    end

    class DeleteRuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRuleInput, context: context)
        Hearth::Validator.validate!(input[:rule_id], ::String, context: "#{context}[:rule_id]")
        Hearth::Validator.validate!(input[:change_token], ::String, context: "#{context}[:change_token]")
      end
    end

    class DeleteRuleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRuleOutput, context: context)
        Hearth::Validator.validate!(input[:change_token], ::String, context: "#{context}[:change_token]")
      end
    end

    class DeleteSizeConstraintSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSizeConstraintSetInput, context: context)
        Hearth::Validator.validate!(input[:size_constraint_set_id], ::String, context: "#{context}[:size_constraint_set_id]")
        Hearth::Validator.validate!(input[:change_token], ::String, context: "#{context}[:change_token]")
      end
    end

    class DeleteSizeConstraintSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSizeConstraintSetOutput, context: context)
        Hearth::Validator.validate!(input[:change_token], ::String, context: "#{context}[:change_token]")
      end
    end

    class DeleteSqlInjectionMatchSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSqlInjectionMatchSetInput, context: context)
        Hearth::Validator.validate!(input[:sql_injection_match_set_id], ::String, context: "#{context}[:sql_injection_match_set_id]")
        Hearth::Validator.validate!(input[:change_token], ::String, context: "#{context}[:change_token]")
      end
    end

    class DeleteSqlInjectionMatchSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSqlInjectionMatchSetOutput, context: context)
        Hearth::Validator.validate!(input[:change_token], ::String, context: "#{context}[:change_token]")
      end
    end

    class DeleteWebACLInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteWebACLInput, context: context)
        Hearth::Validator.validate!(input[:web_acl_id], ::String, context: "#{context}[:web_acl_id]")
        Hearth::Validator.validate!(input[:change_token], ::String, context: "#{context}[:change_token]")
      end
    end

    class DeleteWebACLOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteWebACLOutput, context: context)
        Hearth::Validator.validate!(input[:change_token], ::String, context: "#{context}[:change_token]")
      end
    end

    class DeleteXssMatchSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteXssMatchSetInput, context: context)
        Hearth::Validator.validate!(input[:xss_match_set_id], ::String, context: "#{context}[:xss_match_set_id]")
        Hearth::Validator.validate!(input[:change_token], ::String, context: "#{context}[:change_token]")
      end
    end

    class DeleteXssMatchSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteXssMatchSetOutput, context: context)
        Hearth::Validator.validate!(input[:change_token], ::String, context: "#{context}[:change_token]")
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
        Hearth::Validator.validate!(input[:rule_id], ::String, context: "#{context}[:rule_id]")
      end
    end

    class ExcludedRules
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ExcludedRule.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FieldToMatch
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FieldToMatch, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:data], ::String, context: "#{context}[:data]")
      end
    end

    class GeoMatchConstraint
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GeoMatchConstraint, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class GeoMatchConstraints
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          GeoMatchConstraint.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GeoMatchSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GeoMatchSet, context: context)
        Hearth::Validator.validate!(input[:geo_match_set_id], ::String, context: "#{context}[:geo_match_set_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        GeoMatchConstraints.validate!(input[:geo_match_constraints], context: "#{context}[:geo_match_constraints]") unless input[:geo_match_constraints].nil?
      end
    end

    class GeoMatchSetSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          GeoMatchSetSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GeoMatchSetSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GeoMatchSetSummary, context: context)
        Hearth::Validator.validate!(input[:geo_match_set_id], ::String, context: "#{context}[:geo_match_set_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class GeoMatchSetUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GeoMatchSetUpdate, context: context)
        Hearth::Validator.validate!(input[:action], ::String, context: "#{context}[:action]")
        GeoMatchConstraint.validate!(input[:geo_match_constraint], context: "#{context}[:geo_match_constraint]") unless input[:geo_match_constraint].nil?
      end
    end

    class GeoMatchSetUpdates
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          GeoMatchSetUpdate.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GetByteMatchSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetByteMatchSetInput, context: context)
        Hearth::Validator.validate!(input[:byte_match_set_id], ::String, context: "#{context}[:byte_match_set_id]")
      end
    end

    class GetByteMatchSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetByteMatchSetOutput, context: context)
        ByteMatchSet.validate!(input[:byte_match_set], context: "#{context}[:byte_match_set]") unless input[:byte_match_set].nil?
      end
    end

    class GetChangeTokenInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetChangeTokenInput, context: context)
      end
    end

    class GetChangeTokenOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetChangeTokenOutput, context: context)
        Hearth::Validator.validate!(input[:change_token], ::String, context: "#{context}[:change_token]")
      end
    end

    class GetChangeTokenStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetChangeTokenStatusInput, context: context)
        Hearth::Validator.validate!(input[:change_token], ::String, context: "#{context}[:change_token]")
      end
    end

    class GetChangeTokenStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetChangeTokenStatusOutput, context: context)
        Hearth::Validator.validate!(input[:change_token_status], ::String, context: "#{context}[:change_token_status]")
      end
    end

    class GetGeoMatchSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetGeoMatchSetInput, context: context)
        Hearth::Validator.validate!(input[:geo_match_set_id], ::String, context: "#{context}[:geo_match_set_id]")
      end
    end

    class GetGeoMatchSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetGeoMatchSetOutput, context: context)
        GeoMatchSet.validate!(input[:geo_match_set], context: "#{context}[:geo_match_set]") unless input[:geo_match_set].nil?
      end
    end

    class GetIPSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetIPSetInput, context: context)
        Hearth::Validator.validate!(input[:ip_set_id], ::String, context: "#{context}[:ip_set_id]")
      end
    end

    class GetIPSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetIPSetOutput, context: context)
        IPSet.validate!(input[:ip_set], context: "#{context}[:ip_set]") unless input[:ip_set].nil?
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
        LoggingConfiguration.validate!(input[:logging_configuration], context: "#{context}[:logging_configuration]") unless input[:logging_configuration].nil?
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

    class GetRateBasedRuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRateBasedRuleInput, context: context)
        Hearth::Validator.validate!(input[:rule_id], ::String, context: "#{context}[:rule_id]")
      end
    end

    class GetRateBasedRuleManagedKeysInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRateBasedRuleManagedKeysInput, context: context)
        Hearth::Validator.validate!(input[:rule_id], ::String, context: "#{context}[:rule_id]")
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
      end
    end

    class GetRateBasedRuleManagedKeysOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRateBasedRuleManagedKeysOutput, context: context)
        ManagedKeys.validate!(input[:managed_keys], context: "#{context}[:managed_keys]") unless input[:managed_keys].nil?
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
      end
    end

    class GetRateBasedRuleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRateBasedRuleOutput, context: context)
        RateBasedRule.validate!(input[:rule], context: "#{context}[:rule]") unless input[:rule].nil?
      end
    end

    class GetRegexMatchSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRegexMatchSetInput, context: context)
        Hearth::Validator.validate!(input[:regex_match_set_id], ::String, context: "#{context}[:regex_match_set_id]")
      end
    end

    class GetRegexMatchSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRegexMatchSetOutput, context: context)
        RegexMatchSet.validate!(input[:regex_match_set], context: "#{context}[:regex_match_set]") unless input[:regex_match_set].nil?
      end
    end

    class GetRegexPatternSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRegexPatternSetInput, context: context)
        Hearth::Validator.validate!(input[:regex_pattern_set_id], ::String, context: "#{context}[:regex_pattern_set_id]")
      end
    end

    class GetRegexPatternSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRegexPatternSetOutput, context: context)
        RegexPatternSet.validate!(input[:regex_pattern_set], context: "#{context}[:regex_pattern_set]") unless input[:regex_pattern_set].nil?
      end
    end

    class GetRuleGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRuleGroupInput, context: context)
        Hearth::Validator.validate!(input[:rule_group_id], ::String, context: "#{context}[:rule_group_id]")
      end
    end

    class GetRuleGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRuleGroupOutput, context: context)
        RuleGroup.validate!(input[:rule_group], context: "#{context}[:rule_group]") unless input[:rule_group].nil?
      end
    end

    class GetRuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRuleInput, context: context)
        Hearth::Validator.validate!(input[:rule_id], ::String, context: "#{context}[:rule_id]")
      end
    end

    class GetRuleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRuleOutput, context: context)
        Rule.validate!(input[:rule], context: "#{context}[:rule]") unless input[:rule].nil?
      end
    end

    class GetSampledRequestsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSampledRequestsInput, context: context)
        Hearth::Validator.validate!(input[:web_acl_id], ::String, context: "#{context}[:web_acl_id]")
        Hearth::Validator.validate!(input[:rule_id], ::String, context: "#{context}[:rule_id]")
        TimeWindow.validate!(input[:time_window], context: "#{context}[:time_window]") unless input[:time_window].nil?
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class GetSampledRequestsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSampledRequestsOutput, context: context)
        SampledHTTPRequests.validate!(input[:sampled_requests], context: "#{context}[:sampled_requests]") unless input[:sampled_requests].nil?
        Hearth::Validator.validate!(input[:population_size], ::Integer, context: "#{context}[:population_size]")
        TimeWindow.validate!(input[:time_window], context: "#{context}[:time_window]") unless input[:time_window].nil?
      end
    end

    class GetSizeConstraintSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSizeConstraintSetInput, context: context)
        Hearth::Validator.validate!(input[:size_constraint_set_id], ::String, context: "#{context}[:size_constraint_set_id]")
      end
    end

    class GetSizeConstraintSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSizeConstraintSetOutput, context: context)
        SizeConstraintSet.validate!(input[:size_constraint_set], context: "#{context}[:size_constraint_set]") unless input[:size_constraint_set].nil?
      end
    end

    class GetSqlInjectionMatchSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSqlInjectionMatchSetInput, context: context)
        Hearth::Validator.validate!(input[:sql_injection_match_set_id], ::String, context: "#{context}[:sql_injection_match_set_id]")
      end
    end

    class GetSqlInjectionMatchSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSqlInjectionMatchSetOutput, context: context)
        SqlInjectionMatchSet.validate!(input[:sql_injection_match_set], context: "#{context}[:sql_injection_match_set]") unless input[:sql_injection_match_set].nil?
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
        WebACLSummary.validate!(input[:web_acl_summary], context: "#{context}[:web_acl_summary]") unless input[:web_acl_summary].nil?
      end
    end

    class GetWebACLInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetWebACLInput, context: context)
        Hearth::Validator.validate!(input[:web_acl_id], ::String, context: "#{context}[:web_acl_id]")
      end
    end

    class GetWebACLOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetWebACLOutput, context: context)
        WebACL.validate!(input[:web_acl], context: "#{context}[:web_acl]") unless input[:web_acl].nil?
      end
    end

    class GetXssMatchSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetXssMatchSetInput, context: context)
        Hearth::Validator.validate!(input[:xss_match_set_id], ::String, context: "#{context}[:xss_match_set_id]")
      end
    end

    class GetXssMatchSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetXssMatchSetOutput, context: context)
        XssMatchSet.validate!(input[:xss_match_set], context: "#{context}[:xss_match_set]") unless input[:xss_match_set].nil?
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
          HTTPHeader.validate!(element, context: "#{context}[#{index}]") unless element.nil?
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
        HTTPHeaders.validate!(input[:headers], context: "#{context}[:headers]") unless input[:headers].nil?
      end
    end

    class IPSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IPSet, context: context)
        Hearth::Validator.validate!(input[:ip_set_id], ::String, context: "#{context}[:ip_set_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        IPSetDescriptors.validate!(input[:ip_set_descriptors], context: "#{context}[:ip_set_descriptors]") unless input[:ip_set_descriptors].nil?
      end
    end

    class IPSetDescriptor
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IPSetDescriptor, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class IPSetDescriptors
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          IPSetDescriptor.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class IPSetSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          IPSetSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class IPSetSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IPSetSummary, context: context)
        Hearth::Validator.validate!(input[:ip_set_id], ::String, context: "#{context}[:ip_set_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class IPSetUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IPSetUpdate, context: context)
        Hearth::Validator.validate!(input[:action], ::String, context: "#{context}[:action]")
        IPSetDescriptor.validate!(input[:ip_set_descriptor], context: "#{context}[:ip_set_descriptor]") unless input[:ip_set_descriptor].nil?
      end
    end

    class IPSetUpdates
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          IPSetUpdate.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListActivatedRulesInRuleGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListActivatedRulesInRuleGroupInput, context: context)
        Hearth::Validator.validate!(input[:rule_group_id], ::String, context: "#{context}[:rule_group_id]")
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class ListActivatedRulesInRuleGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListActivatedRulesInRuleGroupOutput, context: context)
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        ActivatedRules.validate!(input[:activated_rules], context: "#{context}[:activated_rules]") unless input[:activated_rules].nil?
      end
    end

    class ListByteMatchSetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListByteMatchSetsInput, context: context)
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class ListByteMatchSetsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListByteMatchSetsOutput, context: context)
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        ByteMatchSetSummaries.validate!(input[:byte_match_sets], context: "#{context}[:byte_match_sets]") unless input[:byte_match_sets].nil?
      end
    end

    class ListGeoMatchSetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListGeoMatchSetsInput, context: context)
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class ListGeoMatchSetsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListGeoMatchSetsOutput, context: context)
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        GeoMatchSetSummaries.validate!(input[:geo_match_sets], context: "#{context}[:geo_match_sets]") unless input[:geo_match_sets].nil?
      end
    end

    class ListIPSetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListIPSetsInput, context: context)
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class ListIPSetsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListIPSetsOutput, context: context)
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        IPSetSummaries.validate!(input[:ip_sets], context: "#{context}[:ip_sets]") unless input[:ip_sets].nil?
      end
    end

    class ListLoggingConfigurationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListLoggingConfigurationsInput, context: context)
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class ListLoggingConfigurationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListLoggingConfigurationsOutput, context: context)
        LoggingConfigurations.validate!(input[:logging_configurations], context: "#{context}[:logging_configurations]") unless input[:logging_configurations].nil?
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
      end
    end

    class ListRateBasedRulesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRateBasedRulesInput, context: context)
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class ListRateBasedRulesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRateBasedRulesOutput, context: context)
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        RuleSummaries.validate!(input[:rules], context: "#{context}[:rules]") unless input[:rules].nil?
      end
    end

    class ListRegexMatchSetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRegexMatchSetsInput, context: context)
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class ListRegexMatchSetsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRegexMatchSetsOutput, context: context)
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        RegexMatchSetSummaries.validate!(input[:regex_match_sets], context: "#{context}[:regex_match_sets]") unless input[:regex_match_sets].nil?
      end
    end

    class ListRegexPatternSetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRegexPatternSetsInput, context: context)
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class ListRegexPatternSetsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRegexPatternSetsOutput, context: context)
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        RegexPatternSetSummaries.validate!(input[:regex_pattern_sets], context: "#{context}[:regex_pattern_sets]") unless input[:regex_pattern_sets].nil?
      end
    end

    class ListResourcesForWebACLInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListResourcesForWebACLInput, context: context)
        Hearth::Validator.validate!(input[:web_acl_id], ::String, context: "#{context}[:web_acl_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
      end
    end

    class ListResourcesForWebACLOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListResourcesForWebACLOutput, context: context)
        ResourceArns.validate!(input[:resource_arns], context: "#{context}[:resource_arns]") unless input[:resource_arns].nil?
      end
    end

    class ListRuleGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRuleGroupsInput, context: context)
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class ListRuleGroupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRuleGroupsOutput, context: context)
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        RuleGroupSummaries.validate!(input[:rule_groups], context: "#{context}[:rule_groups]") unless input[:rule_groups].nil?
      end
    end

    class ListRulesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRulesInput, context: context)
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class ListRulesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRulesOutput, context: context)
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        RuleSummaries.validate!(input[:rules], context: "#{context}[:rules]") unless input[:rules].nil?
      end
    end

    class ListSizeConstraintSetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSizeConstraintSetsInput, context: context)
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class ListSizeConstraintSetsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSizeConstraintSetsOutput, context: context)
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        SizeConstraintSetSummaries.validate!(input[:size_constraint_sets], context: "#{context}[:size_constraint_sets]") unless input[:size_constraint_sets].nil?
      end
    end

    class ListSqlInjectionMatchSetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSqlInjectionMatchSetsInput, context: context)
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class ListSqlInjectionMatchSetsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSqlInjectionMatchSetsOutput, context: context)
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        SqlInjectionMatchSetSummaries.validate!(input[:sql_injection_match_sets], context: "#{context}[:sql_injection_match_sets]") unless input[:sql_injection_match_sets].nil?
      end
    end

    class ListSubscribedRuleGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSubscribedRuleGroupsInput, context: context)
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class ListSubscribedRuleGroupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSubscribedRuleGroupsOutput, context: context)
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        SubscribedRuleGroupSummaries.validate!(input[:rule_groups], context: "#{context}[:rule_groups]") unless input[:rule_groups].nil?
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
        TagInfoForResource.validate!(input[:tag_info_for_resource], context: "#{context}[:tag_info_for_resource]") unless input[:tag_info_for_resource].nil?
      end
    end

    class ListWebACLsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListWebACLsInput, context: context)
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class ListWebACLsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListWebACLsOutput, context: context)
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        WebACLSummaries.validate!(input[:web_ac_ls], context: "#{context}[:web_ac_ls]") unless input[:web_ac_ls].nil?
      end
    end

    class ListXssMatchSetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListXssMatchSetsInput, context: context)
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class ListXssMatchSetsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListXssMatchSetsOutput, context: context)
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        XssMatchSetSummaries.validate!(input[:xss_match_sets], context: "#{context}[:xss_match_sets]") unless input[:xss_match_sets].nil?
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
        LogDestinationConfigs.validate!(input[:log_destination_configs], context: "#{context}[:log_destination_configs]") unless input[:log_destination_configs].nil?
        RedactedFields.validate!(input[:redacted_fields], context: "#{context}[:redacted_fields]") unless input[:redacted_fields].nil?
      end
    end

    class LoggingConfigurations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          LoggingConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ManagedKeys
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Predicate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Predicate, context: context)
        Hearth::Validator.validate!(input[:negated], ::TrueClass, ::FalseClass, context: "#{context}[:negated]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:data_id], ::String, context: "#{context}[:data_id]")
      end
    end

    class Predicates
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Predicate.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PutLoggingConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutLoggingConfigurationInput, context: context)
        LoggingConfiguration.validate!(input[:logging_configuration], context: "#{context}[:logging_configuration]") unless input[:logging_configuration].nil?
      end
    end

    class PutLoggingConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutLoggingConfigurationOutput, context: context)
        LoggingConfiguration.validate!(input[:logging_configuration], context: "#{context}[:logging_configuration]") unless input[:logging_configuration].nil?
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

    class RateBasedRule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RateBasedRule, context: context)
        Hearth::Validator.validate!(input[:rule_id], ::String, context: "#{context}[:rule_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:metric_name], ::String, context: "#{context}[:metric_name]")
        Predicates.validate!(input[:match_predicates], context: "#{context}[:match_predicates]") unless input[:match_predicates].nil?
        Hearth::Validator.validate!(input[:rate_key], ::String, context: "#{context}[:rate_key]")
        Hearth::Validator.validate!(input[:rate_limit], ::Integer, context: "#{context}[:rate_limit]")
      end
    end

    class RedactedFields
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          FieldToMatch.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RegexMatchSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegexMatchSet, context: context)
        Hearth::Validator.validate!(input[:regex_match_set_id], ::String, context: "#{context}[:regex_match_set_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        RegexMatchTuples.validate!(input[:regex_match_tuples], context: "#{context}[:regex_match_tuples]") unless input[:regex_match_tuples].nil?
      end
    end

    class RegexMatchSetSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RegexMatchSetSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RegexMatchSetSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegexMatchSetSummary, context: context)
        Hearth::Validator.validate!(input[:regex_match_set_id], ::String, context: "#{context}[:regex_match_set_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class RegexMatchSetUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegexMatchSetUpdate, context: context)
        Hearth::Validator.validate!(input[:action], ::String, context: "#{context}[:action]")
        RegexMatchTuple.validate!(input[:regex_match_tuple], context: "#{context}[:regex_match_tuple]") unless input[:regex_match_tuple].nil?
      end
    end

    class RegexMatchSetUpdates
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RegexMatchSetUpdate.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RegexMatchTuple
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegexMatchTuple, context: context)
        FieldToMatch.validate!(input[:field_to_match], context: "#{context}[:field_to_match]") unless input[:field_to_match].nil?
        Hearth::Validator.validate!(input[:text_transformation], ::String, context: "#{context}[:text_transformation]")
        Hearth::Validator.validate!(input[:regex_pattern_set_id], ::String, context: "#{context}[:regex_pattern_set_id]")
      end
    end

    class RegexMatchTuples
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RegexMatchTuple.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RegexPatternSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegexPatternSet, context: context)
        Hearth::Validator.validate!(input[:regex_pattern_set_id], ::String, context: "#{context}[:regex_pattern_set_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        RegexPatternStrings.validate!(input[:regex_pattern_strings], context: "#{context}[:regex_pattern_strings]") unless input[:regex_pattern_strings].nil?
      end
    end

    class RegexPatternSetSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RegexPatternSetSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RegexPatternSetSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegexPatternSetSummary, context: context)
        Hearth::Validator.validate!(input[:regex_pattern_set_id], ::String, context: "#{context}[:regex_pattern_set_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class RegexPatternSetUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegexPatternSetUpdate, context: context)
        Hearth::Validator.validate!(input[:action], ::String, context: "#{context}[:action]")
        Hearth::Validator.validate!(input[:regex_pattern_string], ::String, context: "#{context}[:regex_pattern_string]")
      end
    end

    class RegexPatternSetUpdates
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RegexPatternSetUpdate.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RegexPatternStrings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
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
        Hearth::Validator.validate!(input[:rule_id], ::String, context: "#{context}[:rule_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:metric_name], ::String, context: "#{context}[:metric_name]")
        Predicates.validate!(input[:predicates], context: "#{context}[:predicates]") unless input[:predicates].nil?
      end
    end

    class RuleGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RuleGroup, context: context)
        Hearth::Validator.validate!(input[:rule_group_id], ::String, context: "#{context}[:rule_group_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:metric_name], ::String, context: "#{context}[:metric_name]")
      end
    end

    class RuleGroupSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RuleGroupSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RuleGroupSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RuleGroupSummary, context: context)
        Hearth::Validator.validate!(input[:rule_group_id], ::String, context: "#{context}[:rule_group_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class RuleGroupUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RuleGroupUpdate, context: context)
        Hearth::Validator.validate!(input[:action], ::String, context: "#{context}[:action]")
        ActivatedRule.validate!(input[:activated_rule], context: "#{context}[:activated_rule]") unless input[:activated_rule].nil?
      end
    end

    class RuleGroupUpdates
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RuleGroupUpdate.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RuleSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RuleSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RuleSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RuleSummary, context: context)
        Hearth::Validator.validate!(input[:rule_id], ::String, context: "#{context}[:rule_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class RuleUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RuleUpdate, context: context)
        Hearth::Validator.validate!(input[:action], ::String, context: "#{context}[:action]")
        Predicate.validate!(input[:predicate], context: "#{context}[:predicate]") unless input[:predicate].nil?
      end
    end

    class RuleUpdates
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RuleUpdate.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SampledHTTPRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SampledHTTPRequest, context: context)
        HTTPRequest.validate!(input[:request], context: "#{context}[:request]") unless input[:request].nil?
        Hearth::Validator.validate!(input[:weight], ::Integer, context: "#{context}[:weight]")
        Hearth::Validator.validate!(input[:timestamp], ::Time, context: "#{context}[:timestamp]")
        Hearth::Validator.validate!(input[:action], ::String, context: "#{context}[:action]")
        Hearth::Validator.validate!(input[:rule_within_rule_group], ::String, context: "#{context}[:rule_within_rule_group]")
      end
    end

    class SampledHTTPRequests
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SampledHTTPRequest.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SizeConstraint
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SizeConstraint, context: context)
        FieldToMatch.validate!(input[:field_to_match], context: "#{context}[:field_to_match]") unless input[:field_to_match].nil?
        Hearth::Validator.validate!(input[:text_transformation], ::String, context: "#{context}[:text_transformation]")
        Hearth::Validator.validate!(input[:comparison_operator], ::String, context: "#{context}[:comparison_operator]")
        Hearth::Validator.validate!(input[:size], ::Integer, context: "#{context}[:size]")
      end
    end

    class SizeConstraintSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SizeConstraintSet, context: context)
        Hearth::Validator.validate!(input[:size_constraint_set_id], ::String, context: "#{context}[:size_constraint_set_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        SizeConstraints.validate!(input[:size_constraints], context: "#{context}[:size_constraints]") unless input[:size_constraints].nil?
      end
    end

    class SizeConstraintSetSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SizeConstraintSetSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SizeConstraintSetSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SizeConstraintSetSummary, context: context)
        Hearth::Validator.validate!(input[:size_constraint_set_id], ::String, context: "#{context}[:size_constraint_set_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class SizeConstraintSetUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SizeConstraintSetUpdate, context: context)
        Hearth::Validator.validate!(input[:action], ::String, context: "#{context}[:action]")
        SizeConstraint.validate!(input[:size_constraint], context: "#{context}[:size_constraint]") unless input[:size_constraint].nil?
      end
    end

    class SizeConstraintSetUpdates
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SizeConstraintSetUpdate.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SizeConstraints
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SizeConstraint.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SqlInjectionMatchSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SqlInjectionMatchSet, context: context)
        Hearth::Validator.validate!(input[:sql_injection_match_set_id], ::String, context: "#{context}[:sql_injection_match_set_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        SqlInjectionMatchTuples.validate!(input[:sql_injection_match_tuples], context: "#{context}[:sql_injection_match_tuples]") unless input[:sql_injection_match_tuples].nil?
      end
    end

    class SqlInjectionMatchSetSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SqlInjectionMatchSetSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SqlInjectionMatchSetSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SqlInjectionMatchSetSummary, context: context)
        Hearth::Validator.validate!(input[:sql_injection_match_set_id], ::String, context: "#{context}[:sql_injection_match_set_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class SqlInjectionMatchSetUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SqlInjectionMatchSetUpdate, context: context)
        Hearth::Validator.validate!(input[:action], ::String, context: "#{context}[:action]")
        SqlInjectionMatchTuple.validate!(input[:sql_injection_match_tuple], context: "#{context}[:sql_injection_match_tuple]") unless input[:sql_injection_match_tuple].nil?
      end
    end

    class SqlInjectionMatchSetUpdates
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SqlInjectionMatchSetUpdate.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SqlInjectionMatchTuple
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SqlInjectionMatchTuple, context: context)
        FieldToMatch.validate!(input[:field_to_match], context: "#{context}[:field_to_match]") unless input[:field_to_match].nil?
        Hearth::Validator.validate!(input[:text_transformation], ::String, context: "#{context}[:text_transformation]")
      end
    end

    class SqlInjectionMatchTuples
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SqlInjectionMatchTuple.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SubscribedRuleGroupSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SubscribedRuleGroupSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SubscribedRuleGroupSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SubscribedRuleGroupSummary, context: context)
        Hearth::Validator.validate!(input[:rule_group_id], ::String, context: "#{context}[:rule_group_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:metric_name], ::String, context: "#{context}[:metric_name]")
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
        TagList.validate!(input[:tag_list], context: "#{context}[:tag_list]") unless input[:tag_list].nil?
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
          Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
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
        TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateByteMatchSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateByteMatchSetInput, context: context)
        Hearth::Validator.validate!(input[:byte_match_set_id], ::String, context: "#{context}[:byte_match_set_id]")
        Hearth::Validator.validate!(input[:change_token], ::String, context: "#{context}[:change_token]")
        ByteMatchSetUpdates.validate!(input[:updates], context: "#{context}[:updates]") unless input[:updates].nil?
      end
    end

    class UpdateByteMatchSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateByteMatchSetOutput, context: context)
        Hearth::Validator.validate!(input[:change_token], ::String, context: "#{context}[:change_token]")
      end
    end

    class UpdateGeoMatchSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateGeoMatchSetInput, context: context)
        Hearth::Validator.validate!(input[:geo_match_set_id], ::String, context: "#{context}[:geo_match_set_id]")
        Hearth::Validator.validate!(input[:change_token], ::String, context: "#{context}[:change_token]")
        GeoMatchSetUpdates.validate!(input[:updates], context: "#{context}[:updates]") unless input[:updates].nil?
      end
    end

    class UpdateGeoMatchSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateGeoMatchSetOutput, context: context)
        Hearth::Validator.validate!(input[:change_token], ::String, context: "#{context}[:change_token]")
      end
    end

    class UpdateIPSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateIPSetInput, context: context)
        Hearth::Validator.validate!(input[:ip_set_id], ::String, context: "#{context}[:ip_set_id]")
        Hearth::Validator.validate!(input[:change_token], ::String, context: "#{context}[:change_token]")
        IPSetUpdates.validate!(input[:updates], context: "#{context}[:updates]") unless input[:updates].nil?
      end
    end

    class UpdateIPSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateIPSetOutput, context: context)
        Hearth::Validator.validate!(input[:change_token], ::String, context: "#{context}[:change_token]")
      end
    end

    class UpdateRateBasedRuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRateBasedRuleInput, context: context)
        Hearth::Validator.validate!(input[:rule_id], ::String, context: "#{context}[:rule_id]")
        Hearth::Validator.validate!(input[:change_token], ::String, context: "#{context}[:change_token]")
        RuleUpdates.validate!(input[:updates], context: "#{context}[:updates]") unless input[:updates].nil?
        Hearth::Validator.validate!(input[:rate_limit], ::Integer, context: "#{context}[:rate_limit]")
      end
    end

    class UpdateRateBasedRuleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRateBasedRuleOutput, context: context)
        Hearth::Validator.validate!(input[:change_token], ::String, context: "#{context}[:change_token]")
      end
    end

    class UpdateRegexMatchSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRegexMatchSetInput, context: context)
        Hearth::Validator.validate!(input[:regex_match_set_id], ::String, context: "#{context}[:regex_match_set_id]")
        RegexMatchSetUpdates.validate!(input[:updates], context: "#{context}[:updates]") unless input[:updates].nil?
        Hearth::Validator.validate!(input[:change_token], ::String, context: "#{context}[:change_token]")
      end
    end

    class UpdateRegexMatchSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRegexMatchSetOutput, context: context)
        Hearth::Validator.validate!(input[:change_token], ::String, context: "#{context}[:change_token]")
      end
    end

    class UpdateRegexPatternSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRegexPatternSetInput, context: context)
        Hearth::Validator.validate!(input[:regex_pattern_set_id], ::String, context: "#{context}[:regex_pattern_set_id]")
        RegexPatternSetUpdates.validate!(input[:updates], context: "#{context}[:updates]") unless input[:updates].nil?
        Hearth::Validator.validate!(input[:change_token], ::String, context: "#{context}[:change_token]")
      end
    end

    class UpdateRegexPatternSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRegexPatternSetOutput, context: context)
        Hearth::Validator.validate!(input[:change_token], ::String, context: "#{context}[:change_token]")
      end
    end

    class UpdateRuleGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRuleGroupInput, context: context)
        Hearth::Validator.validate!(input[:rule_group_id], ::String, context: "#{context}[:rule_group_id]")
        RuleGroupUpdates.validate!(input[:updates], context: "#{context}[:updates]") unless input[:updates].nil?
        Hearth::Validator.validate!(input[:change_token], ::String, context: "#{context}[:change_token]")
      end
    end

    class UpdateRuleGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRuleGroupOutput, context: context)
        Hearth::Validator.validate!(input[:change_token], ::String, context: "#{context}[:change_token]")
      end
    end

    class UpdateRuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRuleInput, context: context)
        Hearth::Validator.validate!(input[:rule_id], ::String, context: "#{context}[:rule_id]")
        Hearth::Validator.validate!(input[:change_token], ::String, context: "#{context}[:change_token]")
        RuleUpdates.validate!(input[:updates], context: "#{context}[:updates]") unless input[:updates].nil?
      end
    end

    class UpdateRuleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRuleOutput, context: context)
        Hearth::Validator.validate!(input[:change_token], ::String, context: "#{context}[:change_token]")
      end
    end

    class UpdateSizeConstraintSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSizeConstraintSetInput, context: context)
        Hearth::Validator.validate!(input[:size_constraint_set_id], ::String, context: "#{context}[:size_constraint_set_id]")
        Hearth::Validator.validate!(input[:change_token], ::String, context: "#{context}[:change_token]")
        SizeConstraintSetUpdates.validate!(input[:updates], context: "#{context}[:updates]") unless input[:updates].nil?
      end
    end

    class UpdateSizeConstraintSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSizeConstraintSetOutput, context: context)
        Hearth::Validator.validate!(input[:change_token], ::String, context: "#{context}[:change_token]")
      end
    end

    class UpdateSqlInjectionMatchSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSqlInjectionMatchSetInput, context: context)
        Hearth::Validator.validate!(input[:sql_injection_match_set_id], ::String, context: "#{context}[:sql_injection_match_set_id]")
        Hearth::Validator.validate!(input[:change_token], ::String, context: "#{context}[:change_token]")
        SqlInjectionMatchSetUpdates.validate!(input[:updates], context: "#{context}[:updates]") unless input[:updates].nil?
      end
    end

    class UpdateSqlInjectionMatchSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSqlInjectionMatchSetOutput, context: context)
        Hearth::Validator.validate!(input[:change_token], ::String, context: "#{context}[:change_token]")
      end
    end

    class UpdateWebACLInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateWebACLInput, context: context)
        Hearth::Validator.validate!(input[:web_acl_id], ::String, context: "#{context}[:web_acl_id]")
        Hearth::Validator.validate!(input[:change_token], ::String, context: "#{context}[:change_token]")
        WebACLUpdates.validate!(input[:updates], context: "#{context}[:updates]") unless input[:updates].nil?
        WafAction.validate!(input[:default_action], context: "#{context}[:default_action]") unless input[:default_action].nil?
      end
    end

    class UpdateWebACLOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateWebACLOutput, context: context)
        Hearth::Validator.validate!(input[:change_token], ::String, context: "#{context}[:change_token]")
      end
    end

    class UpdateXssMatchSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateXssMatchSetInput, context: context)
        Hearth::Validator.validate!(input[:xss_match_set_id], ::String, context: "#{context}[:xss_match_set_id]")
        Hearth::Validator.validate!(input[:change_token], ::String, context: "#{context}[:change_token]")
        XssMatchSetUpdates.validate!(input[:updates], context: "#{context}[:updates]") unless input[:updates].nil?
      end
    end

    class UpdateXssMatchSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateXssMatchSetOutput, context: context)
        Hearth::Validator.validate!(input[:change_token], ::String, context: "#{context}[:change_token]")
      end
    end

    class WAFBadRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WAFBadRequestException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class WAFDisallowedNameException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WAFDisallowedNameException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class WAFEntityMigrationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WAFEntityMigrationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:migration_error_type], ::String, context: "#{context}[:migration_error_type]")
        Hearth::Validator.validate!(input[:migration_error_reason], ::String, context: "#{context}[:migration_error_reason]")
      end
    end

    class WAFInternalErrorException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WAFInternalErrorException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class WAFInvalidAccountException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WAFInvalidAccountException, context: context)
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

    class WAFInvalidRegexPatternException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WAFInvalidRegexPatternException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class WAFLimitsExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WAFLimitsExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class WAFNonEmptyEntityException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WAFNonEmptyEntityException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class WAFNonexistentContainerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WAFNonexistentContainerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class WAFNonexistentItemException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WAFNonexistentItemException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class WAFReferencedItemException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WAFReferencedItemException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class WAFServiceLinkedRoleErrorException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WAFServiceLinkedRoleErrorException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class WAFStaleDataException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WAFStaleDataException, context: context)
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

    class WafAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WafAction, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class WafOverrideAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WafOverrideAction, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class WebACL
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WebACL, context: context)
        Hearth::Validator.validate!(input[:web_acl_id], ::String, context: "#{context}[:web_acl_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:metric_name], ::String, context: "#{context}[:metric_name]")
        WafAction.validate!(input[:default_action], context: "#{context}[:default_action]") unless input[:default_action].nil?
        ActivatedRules.validate!(input[:rules], context: "#{context}[:rules]") unless input[:rules].nil?
        Hearth::Validator.validate!(input[:web_acl_arn], ::String, context: "#{context}[:web_acl_arn]")
      end
    end

    class WebACLSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          WebACLSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class WebACLSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WebACLSummary, context: context)
        Hearth::Validator.validate!(input[:web_acl_id], ::String, context: "#{context}[:web_acl_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class WebACLUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WebACLUpdate, context: context)
        Hearth::Validator.validate!(input[:action], ::String, context: "#{context}[:action]")
        ActivatedRule.validate!(input[:activated_rule], context: "#{context}[:activated_rule]") unless input[:activated_rule].nil?
      end
    end

    class WebACLUpdates
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          WebACLUpdate.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class XssMatchSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::XssMatchSet, context: context)
        Hearth::Validator.validate!(input[:xss_match_set_id], ::String, context: "#{context}[:xss_match_set_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        XssMatchTuples.validate!(input[:xss_match_tuples], context: "#{context}[:xss_match_tuples]") unless input[:xss_match_tuples].nil?
      end
    end

    class XssMatchSetSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          XssMatchSetSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class XssMatchSetSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::XssMatchSetSummary, context: context)
        Hearth::Validator.validate!(input[:xss_match_set_id], ::String, context: "#{context}[:xss_match_set_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class XssMatchSetUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::XssMatchSetUpdate, context: context)
        Hearth::Validator.validate!(input[:action], ::String, context: "#{context}[:action]")
        XssMatchTuple.validate!(input[:xss_match_tuple], context: "#{context}[:xss_match_tuple]") unless input[:xss_match_tuple].nil?
      end
    end

    class XssMatchSetUpdates
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          XssMatchSetUpdate.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class XssMatchTuple
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::XssMatchTuple, context: context)
        FieldToMatch.validate!(input[:field_to_match], context: "#{context}[:field_to_match]") unless input[:field_to_match].nil?
        Hearth::Validator.validate!(input[:text_transformation], ::String, context: "#{context}[:text_transformation]")
      end
    end

    class XssMatchTuples
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          XssMatchTuple.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

  end
end
