# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::WAF
  module Parsers

    # Operation Parser for CreateByteMatchSet
    class CreateByteMatchSet
      def self.parse(http_resp)
        data = Types::CreateByteMatchSetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.byte_match_set = (ByteMatchSet.parse(map['ByteMatchSet']) unless map['ByteMatchSet'].nil?)
        data.change_token = map['ChangeToken']
        data
      end
    end

    class ByteMatchSet
      def self.parse(map)
        data = Types::ByteMatchSet.new
        data.byte_match_set_id = map['ByteMatchSetId']
        data.name = map['Name']
        data.byte_match_tuples = (ByteMatchTuples.parse(map['ByteMatchTuples']) unless map['ByteMatchTuples'].nil?)
        return data
      end
    end

    class ByteMatchTuples
      def self.parse(list)
        list.map do |value|
          ByteMatchTuple.parse(value) unless value.nil?
        end
      end
    end

    class ByteMatchTuple
      def self.parse(map)
        data = Types::ByteMatchTuple.new
        data.field_to_match = (FieldToMatch.parse(map['FieldToMatch']) unless map['FieldToMatch'].nil?)
        data.target_string = ::Base64::decode64(map['TargetString']) unless map['TargetString'].nil?
        data.text_transformation = map['TextTransformation']
        data.positional_constraint = map['PositionalConstraint']
        return data
      end
    end

    class FieldToMatch
      def self.parse(map)
        data = Types::FieldToMatch.new
        data.type = map['Type']
        data.data = map['Data']
        return data
      end
    end

    # Error Parser for WAFInvalidParameterException
    class WAFInvalidParameterException
      def self.parse(http_resp)
        data = Types::WAFInvalidParameterException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.field = map['field']
        data.parameter = map['parameter']
        data.reason = map['reason']
        data
      end
    end

    # Error Parser for WAFDisallowedNameException
    class WAFDisallowedNameException
      def self.parse(http_resp)
        data = Types::WAFDisallowedNameException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
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
        data.message = map['message']
        data
      end
    end

    # Error Parser for WAFStaleDataException
    class WAFStaleDataException
      def self.parse(http_resp)
        data = Types::WAFStaleDataException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
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
        data.message = map['message']
        data
      end
    end

    # Error Parser for WAFInvalidAccountException
    class WAFInvalidAccountException
      def self.parse(http_resp)
        data = Types::WAFInvalidAccountException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for CreateGeoMatchSet
    class CreateGeoMatchSet
      def self.parse(http_resp)
        data = Types::CreateGeoMatchSetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.geo_match_set = (GeoMatchSet.parse(map['GeoMatchSet']) unless map['GeoMatchSet'].nil?)
        data.change_token = map['ChangeToken']
        data
      end
    end

    class GeoMatchSet
      def self.parse(map)
        data = Types::GeoMatchSet.new
        data.geo_match_set_id = map['GeoMatchSetId']
        data.name = map['Name']
        data.geo_match_constraints = (GeoMatchConstraints.parse(map['GeoMatchConstraints']) unless map['GeoMatchConstraints'].nil?)
        return data
      end
    end

    class GeoMatchConstraints
      def self.parse(list)
        list.map do |value|
          GeoMatchConstraint.parse(value) unless value.nil?
        end
      end
    end

    class GeoMatchConstraint
      def self.parse(map)
        data = Types::GeoMatchConstraint.new
        data.type = map['Type']
        data.value = map['Value']
        return data
      end
    end

    # Operation Parser for CreateIPSet
    class CreateIPSet
      def self.parse(http_resp)
        data = Types::CreateIPSetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.ip_set = (IPSet.parse(map['IPSet']) unless map['IPSet'].nil?)
        data.change_token = map['ChangeToken']
        data
      end
    end

    class IPSet
      def self.parse(map)
        data = Types::IPSet.new
        data.ip_set_id = map['IPSetId']
        data.name = map['Name']
        data.ip_set_descriptors = (IPSetDescriptors.parse(map['IPSetDescriptors']) unless map['IPSetDescriptors'].nil?)
        return data
      end
    end

    class IPSetDescriptors
      def self.parse(list)
        list.map do |value|
          IPSetDescriptor.parse(value) unless value.nil?
        end
      end
    end

    class IPSetDescriptor
      def self.parse(map)
        data = Types::IPSetDescriptor.new
        data.type = map['Type']
        data.value = map['Value']
        return data
      end
    end

    # Operation Parser for CreateRateBasedRule
    class CreateRateBasedRule
      def self.parse(http_resp)
        data = Types::CreateRateBasedRuleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.rule = (RateBasedRule.parse(map['Rule']) unless map['Rule'].nil?)
        data.change_token = map['ChangeToken']
        data
      end
    end

    class RateBasedRule
      def self.parse(map)
        data = Types::RateBasedRule.new
        data.rule_id = map['RuleId']
        data.name = map['Name']
        data.metric_name = map['MetricName']
        data.match_predicates = (Predicates.parse(map['MatchPredicates']) unless map['MatchPredicates'].nil?)
        data.rate_key = map['RateKey']
        data.rate_limit = map['RateLimit']
        return data
      end
    end

    class Predicates
      def self.parse(list)
        list.map do |value|
          Predicate.parse(value) unless value.nil?
        end
      end
    end

    class Predicate
      def self.parse(map)
        data = Types::Predicate.new
        data.negated = map['Negated']
        data.type = map['Type']
        data.data_id = map['DataId']
        return data
      end
    end

    # Error Parser for WAFTagOperationInternalErrorException
    class WAFTagOperationInternalErrorException
      def self.parse(http_resp)
        data = Types::WAFTagOperationInternalErrorException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for WAFBadRequestException
    class WAFBadRequestException
      def self.parse(http_resp)
        data = Types::WAFBadRequestException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
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
        data.message = map['message']
        data
      end
    end

    # Operation Parser for CreateRegexMatchSet
    class CreateRegexMatchSet
      def self.parse(http_resp)
        data = Types::CreateRegexMatchSetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.regex_match_set = (RegexMatchSet.parse(map['RegexMatchSet']) unless map['RegexMatchSet'].nil?)
        data.change_token = map['ChangeToken']
        data
      end
    end

    class RegexMatchSet
      def self.parse(map)
        data = Types::RegexMatchSet.new
        data.regex_match_set_id = map['RegexMatchSetId']
        data.name = map['Name']
        data.regex_match_tuples = (RegexMatchTuples.parse(map['RegexMatchTuples']) unless map['RegexMatchTuples'].nil?)
        return data
      end
    end

    class RegexMatchTuples
      def self.parse(list)
        list.map do |value|
          RegexMatchTuple.parse(value) unless value.nil?
        end
      end
    end

    class RegexMatchTuple
      def self.parse(map)
        data = Types::RegexMatchTuple.new
        data.field_to_match = (FieldToMatch.parse(map['FieldToMatch']) unless map['FieldToMatch'].nil?)
        data.text_transformation = map['TextTransformation']
        data.regex_pattern_set_id = map['RegexPatternSetId']
        return data
      end
    end

    # Operation Parser for CreateRegexPatternSet
    class CreateRegexPatternSet
      def self.parse(http_resp)
        data = Types::CreateRegexPatternSetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.regex_pattern_set = (RegexPatternSet.parse(map['RegexPatternSet']) unless map['RegexPatternSet'].nil?)
        data.change_token = map['ChangeToken']
        data
      end
    end

    class RegexPatternSet
      def self.parse(map)
        data = Types::RegexPatternSet.new
        data.regex_pattern_set_id = map['RegexPatternSetId']
        data.name = map['Name']
        data.regex_pattern_strings = (RegexPatternStrings.parse(map['RegexPatternStrings']) unless map['RegexPatternStrings'].nil?)
        return data
      end
    end

    class RegexPatternStrings
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for CreateRule
    class CreateRule
      def self.parse(http_resp)
        data = Types::CreateRuleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.rule = (Rule.parse(map['Rule']) unless map['Rule'].nil?)
        data.change_token = map['ChangeToken']
        data
      end
    end

    class Rule
      def self.parse(map)
        data = Types::Rule.new
        data.rule_id = map['RuleId']
        data.name = map['Name']
        data.metric_name = map['MetricName']
        data.predicates = (Predicates.parse(map['Predicates']) unless map['Predicates'].nil?)
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
        data.rule_group = (RuleGroup.parse(map['RuleGroup']) unless map['RuleGroup'].nil?)
        data.change_token = map['ChangeToken']
        data
      end
    end

    class RuleGroup
      def self.parse(map)
        data = Types::RuleGroup.new
        data.rule_group_id = map['RuleGroupId']
        data.name = map['Name']
        data.metric_name = map['MetricName']
        return data
      end
    end

    # Operation Parser for CreateSizeConstraintSet
    class CreateSizeConstraintSet
      def self.parse(http_resp)
        data = Types::CreateSizeConstraintSetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.size_constraint_set = (SizeConstraintSet.parse(map['SizeConstraintSet']) unless map['SizeConstraintSet'].nil?)
        data.change_token = map['ChangeToken']
        data
      end
    end

    class SizeConstraintSet
      def self.parse(map)
        data = Types::SizeConstraintSet.new
        data.size_constraint_set_id = map['SizeConstraintSetId']
        data.name = map['Name']
        data.size_constraints = (SizeConstraints.parse(map['SizeConstraints']) unless map['SizeConstraints'].nil?)
        return data
      end
    end

    class SizeConstraints
      def self.parse(list)
        list.map do |value|
          SizeConstraint.parse(value) unless value.nil?
        end
      end
    end

    class SizeConstraint
      def self.parse(map)
        data = Types::SizeConstraint.new
        data.field_to_match = (FieldToMatch.parse(map['FieldToMatch']) unless map['FieldToMatch'].nil?)
        data.text_transformation = map['TextTransformation']
        data.comparison_operator = map['ComparisonOperator']
        data.size = map['Size']
        return data
      end
    end

    # Operation Parser for CreateSqlInjectionMatchSet
    class CreateSqlInjectionMatchSet
      def self.parse(http_resp)
        data = Types::CreateSqlInjectionMatchSetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.sql_injection_match_set = (SqlInjectionMatchSet.parse(map['SqlInjectionMatchSet']) unless map['SqlInjectionMatchSet'].nil?)
        data.change_token = map['ChangeToken']
        data
      end
    end

    class SqlInjectionMatchSet
      def self.parse(map)
        data = Types::SqlInjectionMatchSet.new
        data.sql_injection_match_set_id = map['SqlInjectionMatchSetId']
        data.name = map['Name']
        data.sql_injection_match_tuples = (SqlInjectionMatchTuples.parse(map['SqlInjectionMatchTuples']) unless map['SqlInjectionMatchTuples'].nil?)
        return data
      end
    end

    class SqlInjectionMatchTuples
      def self.parse(list)
        list.map do |value|
          SqlInjectionMatchTuple.parse(value) unless value.nil?
        end
      end
    end

    class SqlInjectionMatchTuple
      def self.parse(map)
        data = Types::SqlInjectionMatchTuple.new
        data.field_to_match = (FieldToMatch.parse(map['FieldToMatch']) unless map['FieldToMatch'].nil?)
        data.text_transformation = map['TextTransformation']
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
        data.web_acl = (WebACL.parse(map['WebACL']) unless map['WebACL'].nil?)
        data.change_token = map['ChangeToken']
        data
      end
    end

    class WebACL
      def self.parse(map)
        data = Types::WebACL.new
        data.web_acl_id = map['WebACLId']
        data.name = map['Name']
        data.metric_name = map['MetricName']
        data.default_action = (WafAction.parse(map['DefaultAction']) unless map['DefaultAction'].nil?)
        data.rules = (ActivatedRules.parse(map['Rules']) unless map['Rules'].nil?)
        data.web_acl_arn = map['WebACLArn']
        return data
      end
    end

    class ActivatedRules
      def self.parse(list)
        list.map do |value|
          ActivatedRule.parse(value) unless value.nil?
        end
      end
    end

    class ActivatedRule
      def self.parse(map)
        data = Types::ActivatedRule.new
        data.priority = map['Priority']
        data.rule_id = map['RuleId']
        data.action = (WafAction.parse(map['Action']) unless map['Action'].nil?)
        data.override_action = (WafOverrideAction.parse(map['OverrideAction']) unless map['OverrideAction'].nil?)
        data.type = map['Type']
        data.excluded_rules = (ExcludedRules.parse(map['ExcludedRules']) unless map['ExcludedRules'].nil?)
        return data
      end
    end

    class ExcludedRules
      def self.parse(list)
        list.map do |value|
          ExcludedRule.parse(value) unless value.nil?
        end
      end
    end

    class ExcludedRule
      def self.parse(map)
        data = Types::ExcludedRule.new
        data.rule_id = map['RuleId']
        return data
      end
    end

    class WafOverrideAction
      def self.parse(map)
        data = Types::WafOverrideAction.new
        data.type = map['Type']
        return data
      end
    end

    class WafAction
      def self.parse(map)
        data = Types::WafAction.new
        data.type = map['Type']
        return data
      end
    end

    # Operation Parser for CreateWebACLMigrationStack
    class CreateWebACLMigrationStack
      def self.parse(http_resp)
        data = Types::CreateWebACLMigrationStackOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.s3_object_url = map['S3ObjectUrl']
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
        data.message = map['message']
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
        data.message = map['message']
        data
      end
    end

    # Error Parser for WAFEntityMigrationException
    class WAFEntityMigrationException
      def self.parse(http_resp)
        data = Types::WAFEntityMigrationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data.migration_error_type = map['MigrationErrorType']
        data.migration_error_reason = map['MigrationErrorReason']
        data
      end
    end

    # Operation Parser for CreateXssMatchSet
    class CreateXssMatchSet
      def self.parse(http_resp)
        data = Types::CreateXssMatchSetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.xss_match_set = (XssMatchSet.parse(map['XssMatchSet']) unless map['XssMatchSet'].nil?)
        data.change_token = map['ChangeToken']
        data
      end
    end

    class XssMatchSet
      def self.parse(map)
        data = Types::XssMatchSet.new
        data.xss_match_set_id = map['XssMatchSetId']
        data.name = map['Name']
        data.xss_match_tuples = (XssMatchTuples.parse(map['XssMatchTuples']) unless map['XssMatchTuples'].nil?)
        return data
      end
    end

    class XssMatchTuples
      def self.parse(list)
        list.map do |value|
          XssMatchTuple.parse(value) unless value.nil?
        end
      end
    end

    class XssMatchTuple
      def self.parse(map)
        data = Types::XssMatchTuple.new
        data.field_to_match = (FieldToMatch.parse(map['FieldToMatch']) unless map['FieldToMatch'].nil?)
        data.text_transformation = map['TextTransformation']
        return data
      end
    end

    # Operation Parser for DeleteByteMatchSet
    class DeleteByteMatchSet
      def self.parse(http_resp)
        data = Types::DeleteByteMatchSetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.change_token = map['ChangeToken']
        data
      end
    end

    # Error Parser for WAFReferencedItemException
    class WAFReferencedItemException
      def self.parse(http_resp)
        data = Types::WAFReferencedItemException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for WAFNonEmptyEntityException
    class WAFNonEmptyEntityException
      def self.parse(http_resp)
        data = Types::WAFNonEmptyEntityException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for DeleteGeoMatchSet
    class DeleteGeoMatchSet
      def self.parse(http_resp)
        data = Types::DeleteGeoMatchSetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.change_token = map['ChangeToken']
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
        data.change_token = map['ChangeToken']
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

    # Operation Parser for DeleteRateBasedRule
    class DeleteRateBasedRule
      def self.parse(http_resp)
        data = Types::DeleteRateBasedRuleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.change_token = map['ChangeToken']
        data
      end
    end

    # Operation Parser for DeleteRegexMatchSet
    class DeleteRegexMatchSet
      def self.parse(http_resp)
        data = Types::DeleteRegexMatchSetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.change_token = map['ChangeToken']
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
        data.change_token = map['ChangeToken']
        data
      end
    end

    # Operation Parser for DeleteRule
    class DeleteRule
      def self.parse(http_resp)
        data = Types::DeleteRuleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.change_token = map['ChangeToken']
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
        data.change_token = map['ChangeToken']
        data
      end
    end

    # Operation Parser for DeleteSizeConstraintSet
    class DeleteSizeConstraintSet
      def self.parse(http_resp)
        data = Types::DeleteSizeConstraintSetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.change_token = map['ChangeToken']
        data
      end
    end

    # Operation Parser for DeleteSqlInjectionMatchSet
    class DeleteSqlInjectionMatchSet
      def self.parse(http_resp)
        data = Types::DeleteSqlInjectionMatchSetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.change_token = map['ChangeToken']
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
        data.change_token = map['ChangeToken']
        data
      end
    end

    # Operation Parser for DeleteXssMatchSet
    class DeleteXssMatchSet
      def self.parse(http_resp)
        data = Types::DeleteXssMatchSetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.change_token = map['ChangeToken']
        data
      end
    end

    # Operation Parser for GetByteMatchSet
    class GetByteMatchSet
      def self.parse(http_resp)
        data = Types::GetByteMatchSetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.byte_match_set = (ByteMatchSet.parse(map['ByteMatchSet']) unless map['ByteMatchSet'].nil?)
        data
      end
    end

    # Operation Parser for GetChangeToken
    class GetChangeToken
      def self.parse(http_resp)
        data = Types::GetChangeTokenOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.change_token = map['ChangeToken']
        data
      end
    end

    # Operation Parser for GetChangeTokenStatus
    class GetChangeTokenStatus
      def self.parse(http_resp)
        data = Types::GetChangeTokenStatusOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.change_token_status = map['ChangeTokenStatus']
        data
      end
    end

    # Operation Parser for GetGeoMatchSet
    class GetGeoMatchSet
      def self.parse(http_resp)
        data = Types::GetGeoMatchSetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.geo_match_set = (GeoMatchSet.parse(map['GeoMatchSet']) unless map['GeoMatchSet'].nil?)
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
        data.ip_set = (IPSet.parse(map['IPSet']) unless map['IPSet'].nil?)
        data
      end
    end

    # Operation Parser for GetLoggingConfiguration
    class GetLoggingConfiguration
      def self.parse(http_resp)
        data = Types::GetLoggingConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.logging_configuration = (LoggingConfiguration.parse(map['LoggingConfiguration']) unless map['LoggingConfiguration'].nil?)
        data
      end
    end

    class LoggingConfiguration
      def self.parse(map)
        data = Types::LoggingConfiguration.new
        data.resource_arn = map['ResourceArn']
        data.log_destination_configs = (LogDestinationConfigs.parse(map['LogDestinationConfigs']) unless map['LogDestinationConfigs'].nil?)
        data.redacted_fields = (RedactedFields.parse(map['RedactedFields']) unless map['RedactedFields'].nil?)
        return data
      end
    end

    class RedactedFields
      def self.parse(list)
        list.map do |value|
          FieldToMatch.parse(value) unless value.nil?
        end
      end
    end

    class LogDestinationConfigs
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
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

    # Operation Parser for GetRateBasedRule
    class GetRateBasedRule
      def self.parse(http_resp)
        data = Types::GetRateBasedRuleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.rule = (RateBasedRule.parse(map['Rule']) unless map['Rule'].nil?)
        data
      end
    end

    # Operation Parser for GetRateBasedRuleManagedKeys
    class GetRateBasedRuleManagedKeys
      def self.parse(http_resp)
        data = Types::GetRateBasedRuleManagedKeysOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.managed_keys = (ManagedKeys.parse(map['ManagedKeys']) unless map['ManagedKeys'].nil?)
        data.next_marker = map['NextMarker']
        data
      end
    end

    class ManagedKeys
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for GetRegexMatchSet
    class GetRegexMatchSet
      def self.parse(http_resp)
        data = Types::GetRegexMatchSetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.regex_match_set = (RegexMatchSet.parse(map['RegexMatchSet']) unless map['RegexMatchSet'].nil?)
        data
      end
    end

    # Operation Parser for GetRegexPatternSet
    class GetRegexPatternSet
      def self.parse(http_resp)
        data = Types::GetRegexPatternSetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.regex_pattern_set = (RegexPatternSet.parse(map['RegexPatternSet']) unless map['RegexPatternSet'].nil?)
        data
      end
    end

    # Operation Parser for GetRule
    class GetRule
      def self.parse(http_resp)
        data = Types::GetRuleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.rule = (Rule.parse(map['Rule']) unless map['Rule'].nil?)
        data
      end
    end

    # Operation Parser for GetRuleGroup
    class GetRuleGroup
      def self.parse(http_resp)
        data = Types::GetRuleGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.rule_group = (RuleGroup.parse(map['RuleGroup']) unless map['RuleGroup'].nil?)
        data
      end
    end

    # Operation Parser for GetSampledRequests
    class GetSampledRequests
      def self.parse(http_resp)
        data = Types::GetSampledRequestsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.sampled_requests = (SampledHTTPRequests.parse(map['SampledRequests']) unless map['SampledRequests'].nil?)
        data.population_size = map['PopulationSize']
        data.time_window = (TimeWindow.parse(map['TimeWindow']) unless map['TimeWindow'].nil?)
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
          SampledHTTPRequest.parse(value) unless value.nil?
        end
      end
    end

    class SampledHTTPRequest
      def self.parse(map)
        data = Types::SampledHTTPRequest.new
        data.request = (HTTPRequest.parse(map['Request']) unless map['Request'].nil?)
        data.weight = map['Weight']
        data.timestamp = Time.at(map['Timestamp'].to_i) if map['Timestamp']
        data.action = map['Action']
        data.rule_within_rule_group = map['RuleWithinRuleGroup']
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
        data.headers = (HTTPHeaders.parse(map['Headers']) unless map['Headers'].nil?)
        return data
      end
    end

    class HTTPHeaders
      def self.parse(list)
        list.map do |value|
          HTTPHeader.parse(value) unless value.nil?
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

    # Operation Parser for GetSizeConstraintSet
    class GetSizeConstraintSet
      def self.parse(http_resp)
        data = Types::GetSizeConstraintSetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.size_constraint_set = (SizeConstraintSet.parse(map['SizeConstraintSet']) unless map['SizeConstraintSet'].nil?)
        data
      end
    end

    # Operation Parser for GetSqlInjectionMatchSet
    class GetSqlInjectionMatchSet
      def self.parse(http_resp)
        data = Types::GetSqlInjectionMatchSetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.sql_injection_match_set = (SqlInjectionMatchSet.parse(map['SqlInjectionMatchSet']) unless map['SqlInjectionMatchSet'].nil?)
        data
      end
    end

    # Operation Parser for GetWebACL
    class GetWebACL
      def self.parse(http_resp)
        data = Types::GetWebACLOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.web_acl = (WebACL.parse(map['WebACL']) unless map['WebACL'].nil?)
        data
      end
    end

    # Operation Parser for GetXssMatchSet
    class GetXssMatchSet
      def self.parse(http_resp)
        data = Types::GetXssMatchSetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.xss_match_set = (XssMatchSet.parse(map['XssMatchSet']) unless map['XssMatchSet'].nil?)
        data
      end
    end

    # Operation Parser for ListActivatedRulesInRuleGroup
    class ListActivatedRulesInRuleGroup
      def self.parse(http_resp)
        data = Types::ListActivatedRulesInRuleGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_marker = map['NextMarker']
        data.activated_rules = (ActivatedRules.parse(map['ActivatedRules']) unless map['ActivatedRules'].nil?)
        data
      end
    end

    # Operation Parser for ListByteMatchSets
    class ListByteMatchSets
      def self.parse(http_resp)
        data = Types::ListByteMatchSetsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_marker = map['NextMarker']
        data.byte_match_sets = (ByteMatchSetSummaries.parse(map['ByteMatchSets']) unless map['ByteMatchSets'].nil?)
        data
      end
    end

    class ByteMatchSetSummaries
      def self.parse(list)
        list.map do |value|
          ByteMatchSetSummary.parse(value) unless value.nil?
        end
      end
    end

    class ByteMatchSetSummary
      def self.parse(map)
        data = Types::ByteMatchSetSummary.new
        data.byte_match_set_id = map['ByteMatchSetId']
        data.name = map['Name']
        return data
      end
    end

    # Operation Parser for ListGeoMatchSets
    class ListGeoMatchSets
      def self.parse(http_resp)
        data = Types::ListGeoMatchSetsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_marker = map['NextMarker']
        data.geo_match_sets = (GeoMatchSetSummaries.parse(map['GeoMatchSets']) unless map['GeoMatchSets'].nil?)
        data
      end
    end

    class GeoMatchSetSummaries
      def self.parse(list)
        list.map do |value|
          GeoMatchSetSummary.parse(value) unless value.nil?
        end
      end
    end

    class GeoMatchSetSummary
      def self.parse(map)
        data = Types::GeoMatchSetSummary.new
        data.geo_match_set_id = map['GeoMatchSetId']
        data.name = map['Name']
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
        data.ip_sets = (IPSetSummaries.parse(map['IPSets']) unless map['IPSets'].nil?)
        data
      end
    end

    class IPSetSummaries
      def self.parse(list)
        list.map do |value|
          IPSetSummary.parse(value) unless value.nil?
        end
      end
    end

    class IPSetSummary
      def self.parse(map)
        data = Types::IPSetSummary.new
        data.ip_set_id = map['IPSetId']
        data.name = map['Name']
        return data
      end
    end

    # Operation Parser for ListLoggingConfigurations
    class ListLoggingConfigurations
      def self.parse(http_resp)
        data = Types::ListLoggingConfigurationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.logging_configurations = (LoggingConfigurations.parse(map['LoggingConfigurations']) unless map['LoggingConfigurations'].nil?)
        data.next_marker = map['NextMarker']
        data
      end
    end

    class LoggingConfigurations
      def self.parse(list)
        list.map do |value|
          LoggingConfiguration.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListRateBasedRules
    class ListRateBasedRules
      def self.parse(http_resp)
        data = Types::ListRateBasedRulesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_marker = map['NextMarker']
        data.rules = (RuleSummaries.parse(map['Rules']) unless map['Rules'].nil?)
        data
      end
    end

    class RuleSummaries
      def self.parse(list)
        list.map do |value|
          RuleSummary.parse(value) unless value.nil?
        end
      end
    end

    class RuleSummary
      def self.parse(map)
        data = Types::RuleSummary.new
        data.rule_id = map['RuleId']
        data.name = map['Name']
        return data
      end
    end

    # Operation Parser for ListRegexMatchSets
    class ListRegexMatchSets
      def self.parse(http_resp)
        data = Types::ListRegexMatchSetsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_marker = map['NextMarker']
        data.regex_match_sets = (RegexMatchSetSummaries.parse(map['RegexMatchSets']) unless map['RegexMatchSets'].nil?)
        data
      end
    end

    class RegexMatchSetSummaries
      def self.parse(list)
        list.map do |value|
          RegexMatchSetSummary.parse(value) unless value.nil?
        end
      end
    end

    class RegexMatchSetSummary
      def self.parse(map)
        data = Types::RegexMatchSetSummary.new
        data.regex_match_set_id = map['RegexMatchSetId']
        data.name = map['Name']
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
        data.regex_pattern_sets = (RegexPatternSetSummaries.parse(map['RegexPatternSets']) unless map['RegexPatternSets'].nil?)
        data
      end
    end

    class RegexPatternSetSummaries
      def self.parse(list)
        list.map do |value|
          RegexPatternSetSummary.parse(value) unless value.nil?
        end
      end
    end

    class RegexPatternSetSummary
      def self.parse(map)
        data = Types::RegexPatternSetSummary.new
        data.regex_pattern_set_id = map['RegexPatternSetId']
        data.name = map['Name']
        return data
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
        data.rule_groups = (RuleGroupSummaries.parse(map['RuleGroups']) unless map['RuleGroups'].nil?)
        data
      end
    end

    class RuleGroupSummaries
      def self.parse(list)
        list.map do |value|
          RuleGroupSummary.parse(value) unless value.nil?
        end
      end
    end

    class RuleGroupSummary
      def self.parse(map)
        data = Types::RuleGroupSummary.new
        data.rule_group_id = map['RuleGroupId']
        data.name = map['Name']
        return data
      end
    end

    # Operation Parser for ListRules
    class ListRules
      def self.parse(http_resp)
        data = Types::ListRulesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_marker = map['NextMarker']
        data.rules = (RuleSummaries.parse(map['Rules']) unless map['Rules'].nil?)
        data
      end
    end

    # Operation Parser for ListSizeConstraintSets
    class ListSizeConstraintSets
      def self.parse(http_resp)
        data = Types::ListSizeConstraintSetsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_marker = map['NextMarker']
        data.size_constraint_sets = (SizeConstraintSetSummaries.parse(map['SizeConstraintSets']) unless map['SizeConstraintSets'].nil?)
        data
      end
    end

    class SizeConstraintSetSummaries
      def self.parse(list)
        list.map do |value|
          SizeConstraintSetSummary.parse(value) unless value.nil?
        end
      end
    end

    class SizeConstraintSetSummary
      def self.parse(map)
        data = Types::SizeConstraintSetSummary.new
        data.size_constraint_set_id = map['SizeConstraintSetId']
        data.name = map['Name']
        return data
      end
    end

    # Operation Parser for ListSqlInjectionMatchSets
    class ListSqlInjectionMatchSets
      def self.parse(http_resp)
        data = Types::ListSqlInjectionMatchSetsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_marker = map['NextMarker']
        data.sql_injection_match_sets = (SqlInjectionMatchSetSummaries.parse(map['SqlInjectionMatchSets']) unless map['SqlInjectionMatchSets'].nil?)
        data
      end
    end

    class SqlInjectionMatchSetSummaries
      def self.parse(list)
        list.map do |value|
          SqlInjectionMatchSetSummary.parse(value) unless value.nil?
        end
      end
    end

    class SqlInjectionMatchSetSummary
      def self.parse(map)
        data = Types::SqlInjectionMatchSetSummary.new
        data.sql_injection_match_set_id = map['SqlInjectionMatchSetId']
        data.name = map['Name']
        return data
      end
    end

    # Operation Parser for ListSubscribedRuleGroups
    class ListSubscribedRuleGroups
      def self.parse(http_resp)
        data = Types::ListSubscribedRuleGroupsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_marker = map['NextMarker']
        data.rule_groups = (SubscribedRuleGroupSummaries.parse(map['RuleGroups']) unless map['RuleGroups'].nil?)
        data
      end
    end

    class SubscribedRuleGroupSummaries
      def self.parse(list)
        list.map do |value|
          SubscribedRuleGroupSummary.parse(value) unless value.nil?
        end
      end
    end

    class SubscribedRuleGroupSummary
      def self.parse(map)
        data = Types::SubscribedRuleGroupSummary.new
        data.rule_group_id = map['RuleGroupId']
        data.name = map['Name']
        data.metric_name = map['MetricName']
        return data
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
        data.tag_info_for_resource = (TagInfoForResource.parse(map['TagInfoForResource']) unless map['TagInfoForResource'].nil?)
        data
      end
    end

    class TagInfoForResource
      def self.parse(map)
        data = Types::TagInfoForResource.new
        data.resource_arn = map['ResourceARN']
        data.tag_list = (TagList.parse(map['TagList']) unless map['TagList'].nil?)
        return data
      end
    end

    class TagList
      def self.parse(list)
        list.map do |value|
          Tag.parse(value) unless value.nil?
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

    # Operation Parser for ListWebACLs
    class ListWebACLs
      def self.parse(http_resp)
        data = Types::ListWebACLsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_marker = map['NextMarker']
        data.web_ac_ls = (WebACLSummaries.parse(map['WebACLs']) unless map['WebACLs'].nil?)
        data
      end
    end

    class WebACLSummaries
      def self.parse(list)
        list.map do |value|
          WebACLSummary.parse(value) unless value.nil?
        end
      end
    end

    class WebACLSummary
      def self.parse(map)
        data = Types::WebACLSummary.new
        data.web_acl_id = map['WebACLId']
        data.name = map['Name']
        return data
      end
    end

    # Operation Parser for ListXssMatchSets
    class ListXssMatchSets
      def self.parse(http_resp)
        data = Types::ListXssMatchSetsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_marker = map['NextMarker']
        data.xss_match_sets = (XssMatchSetSummaries.parse(map['XssMatchSets']) unless map['XssMatchSets'].nil?)
        data
      end
    end

    class XssMatchSetSummaries
      def self.parse(list)
        list.map do |value|
          XssMatchSetSummary.parse(value) unless value.nil?
        end
      end
    end

    class XssMatchSetSummary
      def self.parse(map)
        data = Types::XssMatchSetSummary.new
        data.xss_match_set_id = map['XssMatchSetId']
        data.name = map['Name']
        return data
      end
    end

    # Operation Parser for PutLoggingConfiguration
    class PutLoggingConfiguration
      def self.parse(http_resp)
        data = Types::PutLoggingConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.logging_configuration = (LoggingConfiguration.parse(map['LoggingConfiguration']) unless map['LoggingConfiguration'].nil?)
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
        data.message = map['message']
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

    # Operation Parser for UpdateByteMatchSet
    class UpdateByteMatchSet
      def self.parse(http_resp)
        data = Types::UpdateByteMatchSetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.change_token = map['ChangeToken']
        data
      end
    end

    # Error Parser for WAFNonexistentContainerException
    class WAFNonexistentContainerException
      def self.parse(http_resp)
        data = Types::WAFNonexistentContainerException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for UpdateGeoMatchSet
    class UpdateGeoMatchSet
      def self.parse(http_resp)
        data = Types::UpdateGeoMatchSetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.change_token = map['ChangeToken']
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
        data.change_token = map['ChangeToken']
        data
      end
    end

    # Operation Parser for UpdateRateBasedRule
    class UpdateRateBasedRule
      def self.parse(http_resp)
        data = Types::UpdateRateBasedRuleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.change_token = map['ChangeToken']
        data
      end
    end

    # Operation Parser for UpdateRegexMatchSet
    class UpdateRegexMatchSet
      def self.parse(http_resp)
        data = Types::UpdateRegexMatchSetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.change_token = map['ChangeToken']
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
        data.change_token = map['ChangeToken']
        data
      end
    end

    # Error Parser for WAFInvalidRegexPatternException
    class WAFInvalidRegexPatternException
      def self.parse(http_resp)
        data = Types::WAFInvalidRegexPatternException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for UpdateRule
    class UpdateRule
      def self.parse(http_resp)
        data = Types::UpdateRuleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.change_token = map['ChangeToken']
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
        data.change_token = map['ChangeToken']
        data
      end
    end

    # Operation Parser for UpdateSizeConstraintSet
    class UpdateSizeConstraintSet
      def self.parse(http_resp)
        data = Types::UpdateSizeConstraintSetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.change_token = map['ChangeToken']
        data
      end
    end

    # Operation Parser for UpdateSqlInjectionMatchSet
    class UpdateSqlInjectionMatchSet
      def self.parse(http_resp)
        data = Types::UpdateSqlInjectionMatchSetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.change_token = map['ChangeToken']
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
        data.change_token = map['ChangeToken']
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
        data.message = map['message']
        data
      end
    end

    # Operation Parser for UpdateXssMatchSet
    class UpdateXssMatchSet
      def self.parse(http_resp)
        data = Types::UpdateXssMatchSetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.change_token = map['ChangeToken']
        data
      end
    end
  end
end
