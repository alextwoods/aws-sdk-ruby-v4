# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::WAF
  module Params

    module ActivatedRule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActivatedRule, context: context)
        type = Types::ActivatedRule.new
        type.priority = params[:priority]
        type.rule_id = params[:rule_id]
        type.action = WafAction.build(params[:action], context: "#{context}[:action]") unless params[:action].nil?
        type.override_action = WafOverrideAction.build(params[:override_action], context: "#{context}[:override_action]") unless params[:override_action].nil?
        type.type = params[:type]
        type.excluded_rules = ExcludedRules.build(params[:excluded_rules], context: "#{context}[:excluded_rules]") unless params[:excluded_rules].nil?
        type
      end
    end

    module ActivatedRules
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ActivatedRule.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ByteMatchSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ByteMatchSet, context: context)
        type = Types::ByteMatchSet.new
        type.byte_match_set_id = params[:byte_match_set_id]
        type.name = params[:name]
        type.byte_match_tuples = ByteMatchTuples.build(params[:byte_match_tuples], context: "#{context}[:byte_match_tuples]") unless params[:byte_match_tuples].nil?
        type
      end
    end

    module ByteMatchSetSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ByteMatchSetSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ByteMatchSetSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ByteMatchSetSummary, context: context)
        type = Types::ByteMatchSetSummary.new
        type.byte_match_set_id = params[:byte_match_set_id]
        type.name = params[:name]
        type
      end
    end

    module ByteMatchSetUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ByteMatchSetUpdate, context: context)
        type = Types::ByteMatchSetUpdate.new
        type.action = params[:action]
        type.byte_match_tuple = ByteMatchTuple.build(params[:byte_match_tuple], context: "#{context}[:byte_match_tuple]") unless params[:byte_match_tuple].nil?
        type
      end
    end

    module ByteMatchSetUpdates
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ByteMatchSetUpdate.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ByteMatchTuple
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ByteMatchTuple, context: context)
        type = Types::ByteMatchTuple.new
        type.field_to_match = FieldToMatch.build(params[:field_to_match], context: "#{context}[:field_to_match]") unless params[:field_to_match].nil?
        type.target_string = params[:target_string]
        type.text_transformation = params[:text_transformation]
        type.positional_constraint = params[:positional_constraint]
        type
      end
    end

    module ByteMatchTuples
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ByteMatchTuple.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CreateByteMatchSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateByteMatchSetInput, context: context)
        type = Types::CreateByteMatchSetInput.new
        type.name = params[:name]
        type.change_token = params[:change_token]
        type
      end
    end

    module CreateByteMatchSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateByteMatchSetOutput, context: context)
        type = Types::CreateByteMatchSetOutput.new
        type.byte_match_set = ByteMatchSet.build(params[:byte_match_set], context: "#{context}[:byte_match_set]") unless params[:byte_match_set].nil?
        type.change_token = params[:change_token]
        type
      end
    end

    module CreateGeoMatchSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateGeoMatchSetInput, context: context)
        type = Types::CreateGeoMatchSetInput.new
        type.name = params[:name]
        type.change_token = params[:change_token]
        type
      end
    end

    module CreateGeoMatchSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateGeoMatchSetOutput, context: context)
        type = Types::CreateGeoMatchSetOutput.new
        type.geo_match_set = GeoMatchSet.build(params[:geo_match_set], context: "#{context}[:geo_match_set]") unless params[:geo_match_set].nil?
        type.change_token = params[:change_token]
        type
      end
    end

    module CreateIPSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateIPSetInput, context: context)
        type = Types::CreateIPSetInput.new
        type.name = params[:name]
        type.change_token = params[:change_token]
        type
      end
    end

    module CreateIPSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateIPSetOutput, context: context)
        type = Types::CreateIPSetOutput.new
        type.ip_set = IPSet.build(params[:ip_set], context: "#{context}[:ip_set]") unless params[:ip_set].nil?
        type.change_token = params[:change_token]
        type
      end
    end

    module CreateRateBasedRuleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRateBasedRuleInput, context: context)
        type = Types::CreateRateBasedRuleInput.new
        type.name = params[:name]
        type.metric_name = params[:metric_name]
        type.rate_key = params[:rate_key]
        type.rate_limit = params[:rate_limit]
        type.change_token = params[:change_token]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateRateBasedRuleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRateBasedRuleOutput, context: context)
        type = Types::CreateRateBasedRuleOutput.new
        type.rule = RateBasedRule.build(params[:rule], context: "#{context}[:rule]") unless params[:rule].nil?
        type.change_token = params[:change_token]
        type
      end
    end

    module CreateRegexMatchSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRegexMatchSetInput, context: context)
        type = Types::CreateRegexMatchSetInput.new
        type.name = params[:name]
        type.change_token = params[:change_token]
        type
      end
    end

    module CreateRegexMatchSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRegexMatchSetOutput, context: context)
        type = Types::CreateRegexMatchSetOutput.new
        type.regex_match_set = RegexMatchSet.build(params[:regex_match_set], context: "#{context}[:regex_match_set]") unless params[:regex_match_set].nil?
        type.change_token = params[:change_token]
        type
      end
    end

    module CreateRegexPatternSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRegexPatternSetInput, context: context)
        type = Types::CreateRegexPatternSetInput.new
        type.name = params[:name]
        type.change_token = params[:change_token]
        type
      end
    end

    module CreateRegexPatternSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRegexPatternSetOutput, context: context)
        type = Types::CreateRegexPatternSetOutput.new
        type.regex_pattern_set = RegexPatternSet.build(params[:regex_pattern_set], context: "#{context}[:regex_pattern_set]") unless params[:regex_pattern_set].nil?
        type.change_token = params[:change_token]
        type
      end
    end

    module CreateRuleGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRuleGroupInput, context: context)
        type = Types::CreateRuleGroupInput.new
        type.name = params[:name]
        type.metric_name = params[:metric_name]
        type.change_token = params[:change_token]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateRuleGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRuleGroupOutput, context: context)
        type = Types::CreateRuleGroupOutput.new
        type.rule_group = RuleGroup.build(params[:rule_group], context: "#{context}[:rule_group]") unless params[:rule_group].nil?
        type.change_token = params[:change_token]
        type
      end
    end

    module CreateRuleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRuleInput, context: context)
        type = Types::CreateRuleInput.new
        type.name = params[:name]
        type.metric_name = params[:metric_name]
        type.change_token = params[:change_token]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateRuleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRuleOutput, context: context)
        type = Types::CreateRuleOutput.new
        type.rule = Rule.build(params[:rule], context: "#{context}[:rule]") unless params[:rule].nil?
        type.change_token = params[:change_token]
        type
      end
    end

    module CreateSizeConstraintSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSizeConstraintSetInput, context: context)
        type = Types::CreateSizeConstraintSetInput.new
        type.name = params[:name]
        type.change_token = params[:change_token]
        type
      end
    end

    module CreateSizeConstraintSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSizeConstraintSetOutput, context: context)
        type = Types::CreateSizeConstraintSetOutput.new
        type.size_constraint_set = SizeConstraintSet.build(params[:size_constraint_set], context: "#{context}[:size_constraint_set]") unless params[:size_constraint_set].nil?
        type.change_token = params[:change_token]
        type
      end
    end

    module CreateSqlInjectionMatchSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSqlInjectionMatchSetInput, context: context)
        type = Types::CreateSqlInjectionMatchSetInput.new
        type.name = params[:name]
        type.change_token = params[:change_token]
        type
      end
    end

    module CreateSqlInjectionMatchSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSqlInjectionMatchSetOutput, context: context)
        type = Types::CreateSqlInjectionMatchSetOutput.new
        type.sql_injection_match_set = SqlInjectionMatchSet.build(params[:sql_injection_match_set], context: "#{context}[:sql_injection_match_set]") unless params[:sql_injection_match_set].nil?
        type.change_token = params[:change_token]
        type
      end
    end

    module CreateWebACLInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateWebACLInput, context: context)
        type = Types::CreateWebACLInput.new
        type.name = params[:name]
        type.metric_name = params[:metric_name]
        type.default_action = WafAction.build(params[:default_action], context: "#{context}[:default_action]") unless params[:default_action].nil?
        type.change_token = params[:change_token]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateWebACLMigrationStackInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateWebACLMigrationStackInput, context: context)
        type = Types::CreateWebACLMigrationStackInput.new
        type.web_acl_id = params[:web_acl_id]
        type.s3_bucket_name = params[:s3_bucket_name]
        type.ignore_unsupported_type = params[:ignore_unsupported_type]
        type
      end
    end

    module CreateWebACLMigrationStackOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateWebACLMigrationStackOutput, context: context)
        type = Types::CreateWebACLMigrationStackOutput.new
        type.s3_object_url = params[:s3_object_url]
        type
      end
    end

    module CreateWebACLOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateWebACLOutput, context: context)
        type = Types::CreateWebACLOutput.new
        type.web_acl = WebACL.build(params[:web_acl], context: "#{context}[:web_acl]") unless params[:web_acl].nil?
        type.change_token = params[:change_token]
        type
      end
    end

    module CreateXssMatchSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateXssMatchSetInput, context: context)
        type = Types::CreateXssMatchSetInput.new
        type.name = params[:name]
        type.change_token = params[:change_token]
        type
      end
    end

    module CreateXssMatchSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateXssMatchSetOutput, context: context)
        type = Types::CreateXssMatchSetOutput.new
        type.xss_match_set = XssMatchSet.build(params[:xss_match_set], context: "#{context}[:xss_match_set]") unless params[:xss_match_set].nil?
        type.change_token = params[:change_token]
        type
      end
    end

    module DeleteByteMatchSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteByteMatchSetInput, context: context)
        type = Types::DeleteByteMatchSetInput.new
        type.byte_match_set_id = params[:byte_match_set_id]
        type.change_token = params[:change_token]
        type
      end
    end

    module DeleteByteMatchSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteByteMatchSetOutput, context: context)
        type = Types::DeleteByteMatchSetOutput.new
        type.change_token = params[:change_token]
        type
      end
    end

    module DeleteGeoMatchSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteGeoMatchSetInput, context: context)
        type = Types::DeleteGeoMatchSetInput.new
        type.geo_match_set_id = params[:geo_match_set_id]
        type.change_token = params[:change_token]
        type
      end
    end

    module DeleteGeoMatchSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteGeoMatchSetOutput, context: context)
        type = Types::DeleteGeoMatchSetOutput.new
        type.change_token = params[:change_token]
        type
      end
    end

    module DeleteIPSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteIPSetInput, context: context)
        type = Types::DeleteIPSetInput.new
        type.ip_set_id = params[:ip_set_id]
        type.change_token = params[:change_token]
        type
      end
    end

    module DeleteIPSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteIPSetOutput, context: context)
        type = Types::DeleteIPSetOutput.new
        type.change_token = params[:change_token]
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

    module DeleteRateBasedRuleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRateBasedRuleInput, context: context)
        type = Types::DeleteRateBasedRuleInput.new
        type.rule_id = params[:rule_id]
        type.change_token = params[:change_token]
        type
      end
    end

    module DeleteRateBasedRuleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRateBasedRuleOutput, context: context)
        type = Types::DeleteRateBasedRuleOutput.new
        type.change_token = params[:change_token]
        type
      end
    end

    module DeleteRegexMatchSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRegexMatchSetInput, context: context)
        type = Types::DeleteRegexMatchSetInput.new
        type.regex_match_set_id = params[:regex_match_set_id]
        type.change_token = params[:change_token]
        type
      end
    end

    module DeleteRegexMatchSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRegexMatchSetOutput, context: context)
        type = Types::DeleteRegexMatchSetOutput.new
        type.change_token = params[:change_token]
        type
      end
    end

    module DeleteRegexPatternSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRegexPatternSetInput, context: context)
        type = Types::DeleteRegexPatternSetInput.new
        type.regex_pattern_set_id = params[:regex_pattern_set_id]
        type.change_token = params[:change_token]
        type
      end
    end

    module DeleteRegexPatternSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRegexPatternSetOutput, context: context)
        type = Types::DeleteRegexPatternSetOutput.new
        type.change_token = params[:change_token]
        type
      end
    end

    module DeleteRuleGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRuleGroupInput, context: context)
        type = Types::DeleteRuleGroupInput.new
        type.rule_group_id = params[:rule_group_id]
        type.change_token = params[:change_token]
        type
      end
    end

    module DeleteRuleGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRuleGroupOutput, context: context)
        type = Types::DeleteRuleGroupOutput.new
        type.change_token = params[:change_token]
        type
      end
    end

    module DeleteRuleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRuleInput, context: context)
        type = Types::DeleteRuleInput.new
        type.rule_id = params[:rule_id]
        type.change_token = params[:change_token]
        type
      end
    end

    module DeleteRuleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRuleOutput, context: context)
        type = Types::DeleteRuleOutput.new
        type.change_token = params[:change_token]
        type
      end
    end

    module DeleteSizeConstraintSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSizeConstraintSetInput, context: context)
        type = Types::DeleteSizeConstraintSetInput.new
        type.size_constraint_set_id = params[:size_constraint_set_id]
        type.change_token = params[:change_token]
        type
      end
    end

    module DeleteSizeConstraintSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSizeConstraintSetOutput, context: context)
        type = Types::DeleteSizeConstraintSetOutput.new
        type.change_token = params[:change_token]
        type
      end
    end

    module DeleteSqlInjectionMatchSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSqlInjectionMatchSetInput, context: context)
        type = Types::DeleteSqlInjectionMatchSetInput.new
        type.sql_injection_match_set_id = params[:sql_injection_match_set_id]
        type.change_token = params[:change_token]
        type
      end
    end

    module DeleteSqlInjectionMatchSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSqlInjectionMatchSetOutput, context: context)
        type = Types::DeleteSqlInjectionMatchSetOutput.new
        type.change_token = params[:change_token]
        type
      end
    end

    module DeleteWebACLInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteWebACLInput, context: context)
        type = Types::DeleteWebACLInput.new
        type.web_acl_id = params[:web_acl_id]
        type.change_token = params[:change_token]
        type
      end
    end

    module DeleteWebACLOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteWebACLOutput, context: context)
        type = Types::DeleteWebACLOutput.new
        type.change_token = params[:change_token]
        type
      end
    end

    module DeleteXssMatchSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteXssMatchSetInput, context: context)
        type = Types::DeleteXssMatchSetInput.new
        type.xss_match_set_id = params[:xss_match_set_id]
        type.change_token = params[:change_token]
        type
      end
    end

    module DeleteXssMatchSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteXssMatchSetOutput, context: context)
        type = Types::DeleteXssMatchSetOutput.new
        type.change_token = params[:change_token]
        type
      end
    end

    module ExcludedRule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExcludedRule, context: context)
        type = Types::ExcludedRule.new
        type.rule_id = params[:rule_id]
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
        type.type = params[:type]
        type.data = params[:data]
        type
      end
    end

    module GeoMatchConstraint
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GeoMatchConstraint, context: context)
        type = Types::GeoMatchConstraint.new
        type.type = params[:type]
        type.value = params[:value]
        type
      end
    end

    module GeoMatchConstraints
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << GeoMatchConstraint.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GeoMatchSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GeoMatchSet, context: context)
        type = Types::GeoMatchSet.new
        type.geo_match_set_id = params[:geo_match_set_id]
        type.name = params[:name]
        type.geo_match_constraints = GeoMatchConstraints.build(params[:geo_match_constraints], context: "#{context}[:geo_match_constraints]") unless params[:geo_match_constraints].nil?
        type
      end
    end

    module GeoMatchSetSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << GeoMatchSetSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GeoMatchSetSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GeoMatchSetSummary, context: context)
        type = Types::GeoMatchSetSummary.new
        type.geo_match_set_id = params[:geo_match_set_id]
        type.name = params[:name]
        type
      end
    end

    module GeoMatchSetUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GeoMatchSetUpdate, context: context)
        type = Types::GeoMatchSetUpdate.new
        type.action = params[:action]
        type.geo_match_constraint = GeoMatchConstraint.build(params[:geo_match_constraint], context: "#{context}[:geo_match_constraint]") unless params[:geo_match_constraint].nil?
        type
      end
    end

    module GeoMatchSetUpdates
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << GeoMatchSetUpdate.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GetByteMatchSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetByteMatchSetInput, context: context)
        type = Types::GetByteMatchSetInput.new
        type.byte_match_set_id = params[:byte_match_set_id]
        type
      end
    end

    module GetByteMatchSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetByteMatchSetOutput, context: context)
        type = Types::GetByteMatchSetOutput.new
        type.byte_match_set = ByteMatchSet.build(params[:byte_match_set], context: "#{context}[:byte_match_set]") unless params[:byte_match_set].nil?
        type
      end
    end

    module GetChangeTokenInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetChangeTokenInput, context: context)
        type = Types::GetChangeTokenInput.new
        type
      end
    end

    module GetChangeTokenOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetChangeTokenOutput, context: context)
        type = Types::GetChangeTokenOutput.new
        type.change_token = params[:change_token]
        type
      end
    end

    module GetChangeTokenStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetChangeTokenStatusInput, context: context)
        type = Types::GetChangeTokenStatusInput.new
        type.change_token = params[:change_token]
        type
      end
    end

    module GetChangeTokenStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetChangeTokenStatusOutput, context: context)
        type = Types::GetChangeTokenStatusOutput.new
        type.change_token_status = params[:change_token_status]
        type
      end
    end

    module GetGeoMatchSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetGeoMatchSetInput, context: context)
        type = Types::GetGeoMatchSetInput.new
        type.geo_match_set_id = params[:geo_match_set_id]
        type
      end
    end

    module GetGeoMatchSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetGeoMatchSetOutput, context: context)
        type = Types::GetGeoMatchSetOutput.new
        type.geo_match_set = GeoMatchSet.build(params[:geo_match_set], context: "#{context}[:geo_match_set]") unless params[:geo_match_set].nil?
        type
      end
    end

    module GetIPSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetIPSetInput, context: context)
        type = Types::GetIPSetInput.new
        type.ip_set_id = params[:ip_set_id]
        type
      end
    end

    module GetIPSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetIPSetOutput, context: context)
        type = Types::GetIPSetOutput.new
        type.ip_set = IPSet.build(params[:ip_set], context: "#{context}[:ip_set]") unless params[:ip_set].nil?
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

    module GetRateBasedRuleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRateBasedRuleInput, context: context)
        type = Types::GetRateBasedRuleInput.new
        type.rule_id = params[:rule_id]
        type
      end
    end

    module GetRateBasedRuleManagedKeysInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRateBasedRuleManagedKeysInput, context: context)
        type = Types::GetRateBasedRuleManagedKeysInput.new
        type.rule_id = params[:rule_id]
        type.next_marker = params[:next_marker]
        type
      end
    end

    module GetRateBasedRuleManagedKeysOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRateBasedRuleManagedKeysOutput, context: context)
        type = Types::GetRateBasedRuleManagedKeysOutput.new
        type.managed_keys = ManagedKeys.build(params[:managed_keys], context: "#{context}[:managed_keys]") unless params[:managed_keys].nil?
        type.next_marker = params[:next_marker]
        type
      end
    end

    module GetRateBasedRuleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRateBasedRuleOutput, context: context)
        type = Types::GetRateBasedRuleOutput.new
        type.rule = RateBasedRule.build(params[:rule], context: "#{context}[:rule]") unless params[:rule].nil?
        type
      end
    end

    module GetRegexMatchSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRegexMatchSetInput, context: context)
        type = Types::GetRegexMatchSetInput.new
        type.regex_match_set_id = params[:regex_match_set_id]
        type
      end
    end

    module GetRegexMatchSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRegexMatchSetOutput, context: context)
        type = Types::GetRegexMatchSetOutput.new
        type.regex_match_set = RegexMatchSet.build(params[:regex_match_set], context: "#{context}[:regex_match_set]") unless params[:regex_match_set].nil?
        type
      end
    end

    module GetRegexPatternSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRegexPatternSetInput, context: context)
        type = Types::GetRegexPatternSetInput.new
        type.regex_pattern_set_id = params[:regex_pattern_set_id]
        type
      end
    end

    module GetRegexPatternSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRegexPatternSetOutput, context: context)
        type = Types::GetRegexPatternSetOutput.new
        type.regex_pattern_set = RegexPatternSet.build(params[:regex_pattern_set], context: "#{context}[:regex_pattern_set]") unless params[:regex_pattern_set].nil?
        type
      end
    end

    module GetRuleGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRuleGroupInput, context: context)
        type = Types::GetRuleGroupInput.new
        type.rule_group_id = params[:rule_group_id]
        type
      end
    end

    module GetRuleGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRuleGroupOutput, context: context)
        type = Types::GetRuleGroupOutput.new
        type.rule_group = RuleGroup.build(params[:rule_group], context: "#{context}[:rule_group]") unless params[:rule_group].nil?
        type
      end
    end

    module GetRuleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRuleInput, context: context)
        type = Types::GetRuleInput.new
        type.rule_id = params[:rule_id]
        type
      end
    end

    module GetRuleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRuleOutput, context: context)
        type = Types::GetRuleOutput.new
        type.rule = Rule.build(params[:rule], context: "#{context}[:rule]") unless params[:rule].nil?
        type
      end
    end

    module GetSampledRequestsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSampledRequestsInput, context: context)
        type = Types::GetSampledRequestsInput.new
        type.web_acl_id = params[:web_acl_id]
        type.rule_id = params[:rule_id]
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

    module GetSizeConstraintSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSizeConstraintSetInput, context: context)
        type = Types::GetSizeConstraintSetInput.new
        type.size_constraint_set_id = params[:size_constraint_set_id]
        type
      end
    end

    module GetSizeConstraintSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSizeConstraintSetOutput, context: context)
        type = Types::GetSizeConstraintSetOutput.new
        type.size_constraint_set = SizeConstraintSet.build(params[:size_constraint_set], context: "#{context}[:size_constraint_set]") unless params[:size_constraint_set].nil?
        type
      end
    end

    module GetSqlInjectionMatchSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSqlInjectionMatchSetInput, context: context)
        type = Types::GetSqlInjectionMatchSetInput.new
        type.sql_injection_match_set_id = params[:sql_injection_match_set_id]
        type
      end
    end

    module GetSqlInjectionMatchSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSqlInjectionMatchSetOutput, context: context)
        type = Types::GetSqlInjectionMatchSetOutput.new
        type.sql_injection_match_set = SqlInjectionMatchSet.build(params[:sql_injection_match_set], context: "#{context}[:sql_injection_match_set]") unless params[:sql_injection_match_set].nil?
        type
      end
    end

    module GetWebACLInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetWebACLInput, context: context)
        type = Types::GetWebACLInput.new
        type.web_acl_id = params[:web_acl_id]
        type
      end
    end

    module GetWebACLOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetWebACLOutput, context: context)
        type = Types::GetWebACLOutput.new
        type.web_acl = WebACL.build(params[:web_acl], context: "#{context}[:web_acl]") unless params[:web_acl].nil?
        type
      end
    end

    module GetXssMatchSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetXssMatchSetInput, context: context)
        type = Types::GetXssMatchSetInput.new
        type.xss_match_set_id = params[:xss_match_set_id]
        type
      end
    end

    module GetXssMatchSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetXssMatchSetOutput, context: context)
        type = Types::GetXssMatchSetOutput.new
        type.xss_match_set = XssMatchSet.build(params[:xss_match_set], context: "#{context}[:xss_match_set]") unless params[:xss_match_set].nil?
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

    module IPSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IPSet, context: context)
        type = Types::IPSet.new
        type.ip_set_id = params[:ip_set_id]
        type.name = params[:name]
        type.ip_set_descriptors = IPSetDescriptors.build(params[:ip_set_descriptors], context: "#{context}[:ip_set_descriptors]") unless params[:ip_set_descriptors].nil?
        type
      end
    end

    module IPSetDescriptor
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IPSetDescriptor, context: context)
        type = Types::IPSetDescriptor.new
        type.type = params[:type]
        type.value = params[:value]
        type
      end
    end

    module IPSetDescriptors
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << IPSetDescriptor.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
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
        type.ip_set_id = params[:ip_set_id]
        type.name = params[:name]
        type
      end
    end

    module IPSetUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IPSetUpdate, context: context)
        type = Types::IPSetUpdate.new
        type.action = params[:action]
        type.ip_set_descriptor = IPSetDescriptor.build(params[:ip_set_descriptor], context: "#{context}[:ip_set_descriptor]") unless params[:ip_set_descriptor].nil?
        type
      end
    end

    module IPSetUpdates
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << IPSetUpdate.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListActivatedRulesInRuleGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListActivatedRulesInRuleGroupInput, context: context)
        type = Types::ListActivatedRulesInRuleGroupInput.new
        type.rule_group_id = params[:rule_group_id]
        type.next_marker = params[:next_marker]
        type.limit = params[:limit]
        type
      end
    end

    module ListActivatedRulesInRuleGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListActivatedRulesInRuleGroupOutput, context: context)
        type = Types::ListActivatedRulesInRuleGroupOutput.new
        type.next_marker = params[:next_marker]
        type.activated_rules = ActivatedRules.build(params[:activated_rules], context: "#{context}[:activated_rules]") unless params[:activated_rules].nil?
        type
      end
    end

    module ListByteMatchSetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListByteMatchSetsInput, context: context)
        type = Types::ListByteMatchSetsInput.new
        type.next_marker = params[:next_marker]
        type.limit = params[:limit]
        type
      end
    end

    module ListByteMatchSetsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListByteMatchSetsOutput, context: context)
        type = Types::ListByteMatchSetsOutput.new
        type.next_marker = params[:next_marker]
        type.byte_match_sets = ByteMatchSetSummaries.build(params[:byte_match_sets], context: "#{context}[:byte_match_sets]") unless params[:byte_match_sets].nil?
        type
      end
    end

    module ListGeoMatchSetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListGeoMatchSetsInput, context: context)
        type = Types::ListGeoMatchSetsInput.new
        type.next_marker = params[:next_marker]
        type.limit = params[:limit]
        type
      end
    end

    module ListGeoMatchSetsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListGeoMatchSetsOutput, context: context)
        type = Types::ListGeoMatchSetsOutput.new
        type.next_marker = params[:next_marker]
        type.geo_match_sets = GeoMatchSetSummaries.build(params[:geo_match_sets], context: "#{context}[:geo_match_sets]") unless params[:geo_match_sets].nil?
        type
      end
    end

    module ListIPSetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListIPSetsInput, context: context)
        type = Types::ListIPSetsInput.new
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

    module ListRateBasedRulesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRateBasedRulesInput, context: context)
        type = Types::ListRateBasedRulesInput.new
        type.next_marker = params[:next_marker]
        type.limit = params[:limit]
        type
      end
    end

    module ListRateBasedRulesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRateBasedRulesOutput, context: context)
        type = Types::ListRateBasedRulesOutput.new
        type.next_marker = params[:next_marker]
        type.rules = RuleSummaries.build(params[:rules], context: "#{context}[:rules]") unless params[:rules].nil?
        type
      end
    end

    module ListRegexMatchSetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRegexMatchSetsInput, context: context)
        type = Types::ListRegexMatchSetsInput.new
        type.next_marker = params[:next_marker]
        type.limit = params[:limit]
        type
      end
    end

    module ListRegexMatchSetsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRegexMatchSetsOutput, context: context)
        type = Types::ListRegexMatchSetsOutput.new
        type.next_marker = params[:next_marker]
        type.regex_match_sets = RegexMatchSetSummaries.build(params[:regex_match_sets], context: "#{context}[:regex_match_sets]") unless params[:regex_match_sets].nil?
        type
      end
    end

    module ListRegexPatternSetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRegexPatternSetsInput, context: context)
        type = Types::ListRegexPatternSetsInput.new
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

    module ListRuleGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRuleGroupsInput, context: context)
        type = Types::ListRuleGroupsInput.new
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

    module ListRulesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRulesInput, context: context)
        type = Types::ListRulesInput.new
        type.next_marker = params[:next_marker]
        type.limit = params[:limit]
        type
      end
    end

    module ListRulesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRulesOutput, context: context)
        type = Types::ListRulesOutput.new
        type.next_marker = params[:next_marker]
        type.rules = RuleSummaries.build(params[:rules], context: "#{context}[:rules]") unless params[:rules].nil?
        type
      end
    end

    module ListSizeConstraintSetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSizeConstraintSetsInput, context: context)
        type = Types::ListSizeConstraintSetsInput.new
        type.next_marker = params[:next_marker]
        type.limit = params[:limit]
        type
      end
    end

    module ListSizeConstraintSetsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSizeConstraintSetsOutput, context: context)
        type = Types::ListSizeConstraintSetsOutput.new
        type.next_marker = params[:next_marker]
        type.size_constraint_sets = SizeConstraintSetSummaries.build(params[:size_constraint_sets], context: "#{context}[:size_constraint_sets]") unless params[:size_constraint_sets].nil?
        type
      end
    end

    module ListSqlInjectionMatchSetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSqlInjectionMatchSetsInput, context: context)
        type = Types::ListSqlInjectionMatchSetsInput.new
        type.next_marker = params[:next_marker]
        type.limit = params[:limit]
        type
      end
    end

    module ListSqlInjectionMatchSetsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSqlInjectionMatchSetsOutput, context: context)
        type = Types::ListSqlInjectionMatchSetsOutput.new
        type.next_marker = params[:next_marker]
        type.sql_injection_match_sets = SqlInjectionMatchSetSummaries.build(params[:sql_injection_match_sets], context: "#{context}[:sql_injection_match_sets]") unless params[:sql_injection_match_sets].nil?
        type
      end
    end

    module ListSubscribedRuleGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSubscribedRuleGroupsInput, context: context)
        type = Types::ListSubscribedRuleGroupsInput.new
        type.next_marker = params[:next_marker]
        type.limit = params[:limit]
        type
      end
    end

    module ListSubscribedRuleGroupsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSubscribedRuleGroupsOutput, context: context)
        type = Types::ListSubscribedRuleGroupsOutput.new
        type.next_marker = params[:next_marker]
        type.rule_groups = SubscribedRuleGroupSummaries.build(params[:rule_groups], context: "#{context}[:rule_groups]") unless params[:rule_groups].nil?
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

    module ListXssMatchSetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListXssMatchSetsInput, context: context)
        type = Types::ListXssMatchSetsInput.new
        type.next_marker = params[:next_marker]
        type.limit = params[:limit]
        type
      end
    end

    module ListXssMatchSetsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListXssMatchSetsOutput, context: context)
        type = Types::ListXssMatchSetsOutput.new
        type.next_marker = params[:next_marker]
        type.xss_match_sets = XssMatchSetSummaries.build(params[:xss_match_sets], context: "#{context}[:xss_match_sets]") unless params[:xss_match_sets].nil?
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

    module ManagedKeys
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Predicate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Predicate, context: context)
        type = Types::Predicate.new
        type.negated = params[:negated]
        type.type = params[:type]
        type.data_id = params[:data_id]
        type
      end
    end

    module Predicates
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Predicate.build(element, context: "#{context}[#{index}]") unless element.nil?
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

    module RateBasedRule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RateBasedRule, context: context)
        type = Types::RateBasedRule.new
        type.rule_id = params[:rule_id]
        type.name = params[:name]
        type.metric_name = params[:metric_name]
        type.match_predicates = Predicates.build(params[:match_predicates], context: "#{context}[:match_predicates]") unless params[:match_predicates].nil?
        type.rate_key = params[:rate_key]
        type.rate_limit = params[:rate_limit]
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

    module RegexMatchSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegexMatchSet, context: context)
        type = Types::RegexMatchSet.new
        type.regex_match_set_id = params[:regex_match_set_id]
        type.name = params[:name]
        type.regex_match_tuples = RegexMatchTuples.build(params[:regex_match_tuples], context: "#{context}[:regex_match_tuples]") unless params[:regex_match_tuples].nil?
        type
      end
    end

    module RegexMatchSetSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RegexMatchSetSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RegexMatchSetSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegexMatchSetSummary, context: context)
        type = Types::RegexMatchSetSummary.new
        type.regex_match_set_id = params[:regex_match_set_id]
        type.name = params[:name]
        type
      end
    end

    module RegexMatchSetUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegexMatchSetUpdate, context: context)
        type = Types::RegexMatchSetUpdate.new
        type.action = params[:action]
        type.regex_match_tuple = RegexMatchTuple.build(params[:regex_match_tuple], context: "#{context}[:regex_match_tuple]") unless params[:regex_match_tuple].nil?
        type
      end
    end

    module RegexMatchSetUpdates
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RegexMatchSetUpdate.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RegexMatchTuple
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegexMatchTuple, context: context)
        type = Types::RegexMatchTuple.new
        type.field_to_match = FieldToMatch.build(params[:field_to_match], context: "#{context}[:field_to_match]") unless params[:field_to_match].nil?
        type.text_transformation = params[:text_transformation]
        type.regex_pattern_set_id = params[:regex_pattern_set_id]
        type
      end
    end

    module RegexMatchTuples
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RegexMatchTuple.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RegexPatternSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegexPatternSet, context: context)
        type = Types::RegexPatternSet.new
        type.regex_pattern_set_id = params[:regex_pattern_set_id]
        type.name = params[:name]
        type.regex_pattern_strings = RegexPatternStrings.build(params[:regex_pattern_strings], context: "#{context}[:regex_pattern_strings]") unless params[:regex_pattern_strings].nil?
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
        type.regex_pattern_set_id = params[:regex_pattern_set_id]
        type.name = params[:name]
        type
      end
    end

    module RegexPatternSetUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegexPatternSetUpdate, context: context)
        type = Types::RegexPatternSetUpdate.new
        type.action = params[:action]
        type.regex_pattern_string = params[:regex_pattern_string]
        type
      end
    end

    module RegexPatternSetUpdates
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RegexPatternSetUpdate.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RegexPatternStrings
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
        type.rule_id = params[:rule_id]
        type.name = params[:name]
        type.metric_name = params[:metric_name]
        type.predicates = Predicates.build(params[:predicates], context: "#{context}[:predicates]") unless params[:predicates].nil?
        type
      end
    end

    module RuleGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RuleGroup, context: context)
        type = Types::RuleGroup.new
        type.rule_group_id = params[:rule_group_id]
        type.name = params[:name]
        type.metric_name = params[:metric_name]
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
        type.rule_group_id = params[:rule_group_id]
        type.name = params[:name]
        type
      end
    end

    module RuleGroupUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RuleGroupUpdate, context: context)
        type = Types::RuleGroupUpdate.new
        type.action = params[:action]
        type.activated_rule = ActivatedRule.build(params[:activated_rule], context: "#{context}[:activated_rule]") unless params[:activated_rule].nil?
        type
      end
    end

    module RuleGroupUpdates
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RuleGroupUpdate.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
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
        type.rule_id = params[:rule_id]
        type.name = params[:name]
        type
      end
    end

    module RuleUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RuleUpdate, context: context)
        type = Types::RuleUpdate.new
        type.action = params[:action]
        type.predicate = Predicate.build(params[:predicate], context: "#{context}[:predicate]") unless params[:predicate].nil?
        type
      end
    end

    module RuleUpdates
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RuleUpdate.build(element, context: "#{context}[#{index}]") unless element.nil?
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
        type.rule_within_rule_group = params[:rule_within_rule_group]
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

    module SizeConstraint
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SizeConstraint, context: context)
        type = Types::SizeConstraint.new
        type.field_to_match = FieldToMatch.build(params[:field_to_match], context: "#{context}[:field_to_match]") unless params[:field_to_match].nil?
        type.text_transformation = params[:text_transformation]
        type.comparison_operator = params[:comparison_operator]
        type.size = params[:size]
        type
      end
    end

    module SizeConstraintSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SizeConstraintSet, context: context)
        type = Types::SizeConstraintSet.new
        type.size_constraint_set_id = params[:size_constraint_set_id]
        type.name = params[:name]
        type.size_constraints = SizeConstraints.build(params[:size_constraints], context: "#{context}[:size_constraints]") unless params[:size_constraints].nil?
        type
      end
    end

    module SizeConstraintSetSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SizeConstraintSetSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SizeConstraintSetSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SizeConstraintSetSummary, context: context)
        type = Types::SizeConstraintSetSummary.new
        type.size_constraint_set_id = params[:size_constraint_set_id]
        type.name = params[:name]
        type
      end
    end

    module SizeConstraintSetUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SizeConstraintSetUpdate, context: context)
        type = Types::SizeConstraintSetUpdate.new
        type.action = params[:action]
        type.size_constraint = SizeConstraint.build(params[:size_constraint], context: "#{context}[:size_constraint]") unless params[:size_constraint].nil?
        type
      end
    end

    module SizeConstraintSetUpdates
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SizeConstraintSetUpdate.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SizeConstraints
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SizeConstraint.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SqlInjectionMatchSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SqlInjectionMatchSet, context: context)
        type = Types::SqlInjectionMatchSet.new
        type.sql_injection_match_set_id = params[:sql_injection_match_set_id]
        type.name = params[:name]
        type.sql_injection_match_tuples = SqlInjectionMatchTuples.build(params[:sql_injection_match_tuples], context: "#{context}[:sql_injection_match_tuples]") unless params[:sql_injection_match_tuples].nil?
        type
      end
    end

    module SqlInjectionMatchSetSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SqlInjectionMatchSetSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SqlInjectionMatchSetSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SqlInjectionMatchSetSummary, context: context)
        type = Types::SqlInjectionMatchSetSummary.new
        type.sql_injection_match_set_id = params[:sql_injection_match_set_id]
        type.name = params[:name]
        type
      end
    end

    module SqlInjectionMatchSetUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SqlInjectionMatchSetUpdate, context: context)
        type = Types::SqlInjectionMatchSetUpdate.new
        type.action = params[:action]
        type.sql_injection_match_tuple = SqlInjectionMatchTuple.build(params[:sql_injection_match_tuple], context: "#{context}[:sql_injection_match_tuple]") unless params[:sql_injection_match_tuple].nil?
        type
      end
    end

    module SqlInjectionMatchSetUpdates
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SqlInjectionMatchSetUpdate.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SqlInjectionMatchTuple
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SqlInjectionMatchTuple, context: context)
        type = Types::SqlInjectionMatchTuple.new
        type.field_to_match = FieldToMatch.build(params[:field_to_match], context: "#{context}[:field_to_match]") unless params[:field_to_match].nil?
        type.text_transformation = params[:text_transformation]
        type
      end
    end

    module SqlInjectionMatchTuples
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SqlInjectionMatchTuple.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SubscribedRuleGroupSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SubscribedRuleGroupSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SubscribedRuleGroupSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SubscribedRuleGroupSummary, context: context)
        type = Types::SubscribedRuleGroupSummary.new
        type.rule_group_id = params[:rule_group_id]
        type.name = params[:name]
        type.metric_name = params[:metric_name]
        type
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

    module UpdateByteMatchSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateByteMatchSetInput, context: context)
        type = Types::UpdateByteMatchSetInput.new
        type.byte_match_set_id = params[:byte_match_set_id]
        type.change_token = params[:change_token]
        type.updates = ByteMatchSetUpdates.build(params[:updates], context: "#{context}[:updates]") unless params[:updates].nil?
        type
      end
    end

    module UpdateByteMatchSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateByteMatchSetOutput, context: context)
        type = Types::UpdateByteMatchSetOutput.new
        type.change_token = params[:change_token]
        type
      end
    end

    module UpdateGeoMatchSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateGeoMatchSetInput, context: context)
        type = Types::UpdateGeoMatchSetInput.new
        type.geo_match_set_id = params[:geo_match_set_id]
        type.change_token = params[:change_token]
        type.updates = GeoMatchSetUpdates.build(params[:updates], context: "#{context}[:updates]") unless params[:updates].nil?
        type
      end
    end

    module UpdateGeoMatchSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateGeoMatchSetOutput, context: context)
        type = Types::UpdateGeoMatchSetOutput.new
        type.change_token = params[:change_token]
        type
      end
    end

    module UpdateIPSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateIPSetInput, context: context)
        type = Types::UpdateIPSetInput.new
        type.ip_set_id = params[:ip_set_id]
        type.change_token = params[:change_token]
        type.updates = IPSetUpdates.build(params[:updates], context: "#{context}[:updates]") unless params[:updates].nil?
        type
      end
    end

    module UpdateIPSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateIPSetOutput, context: context)
        type = Types::UpdateIPSetOutput.new
        type.change_token = params[:change_token]
        type
      end
    end

    module UpdateRateBasedRuleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRateBasedRuleInput, context: context)
        type = Types::UpdateRateBasedRuleInput.new
        type.rule_id = params[:rule_id]
        type.change_token = params[:change_token]
        type.updates = RuleUpdates.build(params[:updates], context: "#{context}[:updates]") unless params[:updates].nil?
        type.rate_limit = params[:rate_limit]
        type
      end
    end

    module UpdateRateBasedRuleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRateBasedRuleOutput, context: context)
        type = Types::UpdateRateBasedRuleOutput.new
        type.change_token = params[:change_token]
        type
      end
    end

    module UpdateRegexMatchSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRegexMatchSetInput, context: context)
        type = Types::UpdateRegexMatchSetInput.new
        type.regex_match_set_id = params[:regex_match_set_id]
        type.updates = RegexMatchSetUpdates.build(params[:updates], context: "#{context}[:updates]") unless params[:updates].nil?
        type.change_token = params[:change_token]
        type
      end
    end

    module UpdateRegexMatchSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRegexMatchSetOutput, context: context)
        type = Types::UpdateRegexMatchSetOutput.new
        type.change_token = params[:change_token]
        type
      end
    end

    module UpdateRegexPatternSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRegexPatternSetInput, context: context)
        type = Types::UpdateRegexPatternSetInput.new
        type.regex_pattern_set_id = params[:regex_pattern_set_id]
        type.updates = RegexPatternSetUpdates.build(params[:updates], context: "#{context}[:updates]") unless params[:updates].nil?
        type.change_token = params[:change_token]
        type
      end
    end

    module UpdateRegexPatternSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRegexPatternSetOutput, context: context)
        type = Types::UpdateRegexPatternSetOutput.new
        type.change_token = params[:change_token]
        type
      end
    end

    module UpdateRuleGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRuleGroupInput, context: context)
        type = Types::UpdateRuleGroupInput.new
        type.rule_group_id = params[:rule_group_id]
        type.updates = RuleGroupUpdates.build(params[:updates], context: "#{context}[:updates]") unless params[:updates].nil?
        type.change_token = params[:change_token]
        type
      end
    end

    module UpdateRuleGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRuleGroupOutput, context: context)
        type = Types::UpdateRuleGroupOutput.new
        type.change_token = params[:change_token]
        type
      end
    end

    module UpdateRuleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRuleInput, context: context)
        type = Types::UpdateRuleInput.new
        type.rule_id = params[:rule_id]
        type.change_token = params[:change_token]
        type.updates = RuleUpdates.build(params[:updates], context: "#{context}[:updates]") unless params[:updates].nil?
        type
      end
    end

    module UpdateRuleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRuleOutput, context: context)
        type = Types::UpdateRuleOutput.new
        type.change_token = params[:change_token]
        type
      end
    end

    module UpdateSizeConstraintSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSizeConstraintSetInput, context: context)
        type = Types::UpdateSizeConstraintSetInput.new
        type.size_constraint_set_id = params[:size_constraint_set_id]
        type.change_token = params[:change_token]
        type.updates = SizeConstraintSetUpdates.build(params[:updates], context: "#{context}[:updates]") unless params[:updates].nil?
        type
      end
    end

    module UpdateSizeConstraintSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSizeConstraintSetOutput, context: context)
        type = Types::UpdateSizeConstraintSetOutput.new
        type.change_token = params[:change_token]
        type
      end
    end

    module UpdateSqlInjectionMatchSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSqlInjectionMatchSetInput, context: context)
        type = Types::UpdateSqlInjectionMatchSetInput.new
        type.sql_injection_match_set_id = params[:sql_injection_match_set_id]
        type.change_token = params[:change_token]
        type.updates = SqlInjectionMatchSetUpdates.build(params[:updates], context: "#{context}[:updates]") unless params[:updates].nil?
        type
      end
    end

    module UpdateSqlInjectionMatchSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSqlInjectionMatchSetOutput, context: context)
        type = Types::UpdateSqlInjectionMatchSetOutput.new
        type.change_token = params[:change_token]
        type
      end
    end

    module UpdateWebACLInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateWebACLInput, context: context)
        type = Types::UpdateWebACLInput.new
        type.web_acl_id = params[:web_acl_id]
        type.change_token = params[:change_token]
        type.updates = WebACLUpdates.build(params[:updates], context: "#{context}[:updates]") unless params[:updates].nil?
        type.default_action = WafAction.build(params[:default_action], context: "#{context}[:default_action]") unless params[:default_action].nil?
        type
      end
    end

    module UpdateWebACLOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateWebACLOutput, context: context)
        type = Types::UpdateWebACLOutput.new
        type.change_token = params[:change_token]
        type
      end
    end

    module UpdateXssMatchSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateXssMatchSetInput, context: context)
        type = Types::UpdateXssMatchSetInput.new
        type.xss_match_set_id = params[:xss_match_set_id]
        type.change_token = params[:change_token]
        type.updates = XssMatchSetUpdates.build(params[:updates], context: "#{context}[:updates]") unless params[:updates].nil?
        type
      end
    end

    module UpdateXssMatchSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateXssMatchSetOutput, context: context)
        type = Types::UpdateXssMatchSetOutput.new
        type.change_token = params[:change_token]
        type
      end
    end

    module WAFBadRequestException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WAFBadRequestException, context: context)
        type = Types::WAFBadRequestException.new
        type.message = params[:message]
        type
      end
    end

    module WAFDisallowedNameException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WAFDisallowedNameException, context: context)
        type = Types::WAFDisallowedNameException.new
        type.message = params[:message]
        type
      end
    end

    module WAFEntityMigrationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WAFEntityMigrationException, context: context)
        type = Types::WAFEntityMigrationException.new
        type.message = params[:message]
        type.migration_error_type = params[:migration_error_type]
        type.migration_error_reason = params[:migration_error_reason]
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

    module WAFInvalidAccountException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WAFInvalidAccountException, context: context)
        type = Types::WAFInvalidAccountException.new
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

    module WAFInvalidRegexPatternException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WAFInvalidRegexPatternException, context: context)
        type = Types::WAFInvalidRegexPatternException.new
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

    module WAFNonEmptyEntityException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WAFNonEmptyEntityException, context: context)
        type = Types::WAFNonEmptyEntityException.new
        type.message = params[:message]
        type
      end
    end

    module WAFNonexistentContainerException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WAFNonexistentContainerException, context: context)
        type = Types::WAFNonexistentContainerException.new
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

    module WAFReferencedItemException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WAFReferencedItemException, context: context)
        type = Types::WAFReferencedItemException.new
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

    module WAFStaleDataException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WAFStaleDataException, context: context)
        type = Types::WAFStaleDataException.new
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

    module WafAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WafAction, context: context)
        type = Types::WafAction.new
        type.type = params[:type]
        type
      end
    end

    module WafOverrideAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WafOverrideAction, context: context)
        type = Types::WafOverrideAction.new
        type.type = params[:type]
        type
      end
    end

    module WebACL
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WebACL, context: context)
        type = Types::WebACL.new
        type.web_acl_id = params[:web_acl_id]
        type.name = params[:name]
        type.metric_name = params[:metric_name]
        type.default_action = WafAction.build(params[:default_action], context: "#{context}[:default_action]") unless params[:default_action].nil?
        type.rules = ActivatedRules.build(params[:rules], context: "#{context}[:rules]") unless params[:rules].nil?
        type.web_acl_arn = params[:web_acl_arn]
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
        type.web_acl_id = params[:web_acl_id]
        type.name = params[:name]
        type
      end
    end

    module WebACLUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WebACLUpdate, context: context)
        type = Types::WebACLUpdate.new
        type.action = params[:action]
        type.activated_rule = ActivatedRule.build(params[:activated_rule], context: "#{context}[:activated_rule]") unless params[:activated_rule].nil?
        type
      end
    end

    module WebACLUpdates
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << WebACLUpdate.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module XssMatchSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::XssMatchSet, context: context)
        type = Types::XssMatchSet.new
        type.xss_match_set_id = params[:xss_match_set_id]
        type.name = params[:name]
        type.xss_match_tuples = XssMatchTuples.build(params[:xss_match_tuples], context: "#{context}[:xss_match_tuples]") unless params[:xss_match_tuples].nil?
        type
      end
    end

    module XssMatchSetSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << XssMatchSetSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module XssMatchSetSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::XssMatchSetSummary, context: context)
        type = Types::XssMatchSetSummary.new
        type.xss_match_set_id = params[:xss_match_set_id]
        type.name = params[:name]
        type
      end
    end

    module XssMatchSetUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::XssMatchSetUpdate, context: context)
        type = Types::XssMatchSetUpdate.new
        type.action = params[:action]
        type.xss_match_tuple = XssMatchTuple.build(params[:xss_match_tuple], context: "#{context}[:xss_match_tuple]") unless params[:xss_match_tuple].nil?
        type
      end
    end

    module XssMatchSetUpdates
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << XssMatchSetUpdate.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module XssMatchTuple
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::XssMatchTuple, context: context)
        type = Types::XssMatchTuple.new
        type.field_to_match = FieldToMatch.build(params[:field_to_match], context: "#{context}[:field_to_match]") unless params[:field_to_match].nil?
        type.text_transformation = params[:text_transformation]
        type
      end
    end

    module XssMatchTuples
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << XssMatchTuple.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

  end
end
