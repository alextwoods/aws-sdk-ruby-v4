# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'
require 'stringio'

module AWS::SDK::WAFV2
  module Builders

    # Operation Builder for AssociateWebACL
    class AssociateWebACL
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_20190729.AssociateWebACL'
        data = {}
        data['WebACLArn'] = input[:web_acl_arn] unless input[:web_acl_arn].nil?
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CheckCapacity
    class CheckCapacity
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_20190729.CheckCapacity'
        data = {}
        data['Scope'] = input[:scope] unless input[:scope].nil?
        data['Rules'] = Rules.build(input[:rules]) unless input[:rules].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for Rules
    class Rules
      def self.build(input)
        data = []
        input.each do |element|
          data << Rule.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Rule
    class Rule
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Priority'] = input[:priority] unless input[:priority].nil?
        data['Statement'] = Statement.build(input[:statement]) unless input[:statement].nil?
        data['Action'] = RuleAction.build(input[:action]) unless input[:action].nil?
        data['OverrideAction'] = OverrideAction.build(input[:override_action]) unless input[:override_action].nil?
        data['RuleLabels'] = Labels.build(input[:rule_labels]) unless input[:rule_labels].nil?
        data['VisibilityConfig'] = VisibilityConfig.build(input[:visibility_config]) unless input[:visibility_config].nil?
        data['CaptchaConfig'] = CaptchaConfig.build(input[:captcha_config]) unless input[:captcha_config].nil?
        data
      end
    end

    # Structure Builder for CaptchaConfig
    class CaptchaConfig
      def self.build(input)
        data = {}
        data['ImmunityTimeProperty'] = ImmunityTimeProperty.build(input[:immunity_time_property]) unless input[:immunity_time_property].nil?
        data
      end
    end

    # Structure Builder for ImmunityTimeProperty
    class ImmunityTimeProperty
      def self.build(input)
        data = {}
        data['ImmunityTime'] = input[:immunity_time] unless input[:immunity_time].nil?
        data
      end
    end

    # Structure Builder for VisibilityConfig
    class VisibilityConfig
      def self.build(input)
        data = {}
        data['SampledRequestsEnabled'] = input[:sampled_requests_enabled] unless input[:sampled_requests_enabled].nil?
        data['CloudWatchMetricsEnabled'] = input[:cloud_watch_metrics_enabled] unless input[:cloud_watch_metrics_enabled].nil?
        data['MetricName'] = input[:metric_name] unless input[:metric_name].nil?
        data
      end
    end

    # List Builder for Labels
    class Labels
      def self.build(input)
        data = []
        input.each do |element|
          data << Label.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Label
    class Label
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data
      end
    end

    # Structure Builder for OverrideAction
    class OverrideAction
      def self.build(input)
        data = {}
        data['Count'] = CountAction.build(input[:count]) unless input[:count].nil?
        data['None'] = NoneAction.build(input[:none]) unless input[:none].nil?
        data
      end
    end

    # Structure Builder for NoneAction
    class NoneAction
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for CountAction
    class CountAction
      def self.build(input)
        data = {}
        data['CustomRequestHandling'] = CustomRequestHandling.build(input[:custom_request_handling]) unless input[:custom_request_handling].nil?
        data
      end
    end

    # Structure Builder for CustomRequestHandling
    class CustomRequestHandling
      def self.build(input)
        data = {}
        data['InsertHeaders'] = CustomHTTPHeaders.build(input[:insert_headers]) unless input[:insert_headers].nil?
        data
      end
    end

    # List Builder for CustomHTTPHeaders
    class CustomHTTPHeaders
      def self.build(input)
        data = []
        input.each do |element|
          data << CustomHTTPHeader.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for CustomHTTPHeader
    class CustomHTTPHeader
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Structure Builder for RuleAction
    class RuleAction
      def self.build(input)
        data = {}
        data['Block'] = BlockAction.build(input[:block]) unless input[:block].nil?
        data['Allow'] = AllowAction.build(input[:allow]) unless input[:allow].nil?
        data['Count'] = CountAction.build(input[:count]) unless input[:count].nil?
        data['Captcha'] = CaptchaAction.build(input[:captcha]) unless input[:captcha].nil?
        data
      end
    end

    # Structure Builder for CaptchaAction
    class CaptchaAction
      def self.build(input)
        data = {}
        data['CustomRequestHandling'] = CustomRequestHandling.build(input[:custom_request_handling]) unless input[:custom_request_handling].nil?
        data
      end
    end

    # Structure Builder for AllowAction
    class AllowAction
      def self.build(input)
        data = {}
        data['CustomRequestHandling'] = CustomRequestHandling.build(input[:custom_request_handling]) unless input[:custom_request_handling].nil?
        data
      end
    end

    # Structure Builder for BlockAction
    class BlockAction
      def self.build(input)
        data = {}
        data['CustomResponse'] = CustomResponse.build(input[:custom_response]) unless input[:custom_response].nil?
        data
      end
    end

    # Structure Builder for CustomResponse
    class CustomResponse
      def self.build(input)
        data = {}
        data['ResponseCode'] = input[:response_code] unless input[:response_code].nil?
        data['CustomResponseBodyKey'] = input[:custom_response_body_key] unless input[:custom_response_body_key].nil?
        data['ResponseHeaders'] = CustomHTTPHeaders.build(input[:response_headers]) unless input[:response_headers].nil?
        data
      end
    end

    # Structure Builder for Statement
    class Statement
      def self.build(input)
        data = {}
        data['ByteMatchStatement'] = ByteMatchStatement.build(input[:byte_match_statement]) unless input[:byte_match_statement].nil?
        data['SqliMatchStatement'] = SqliMatchStatement.build(input[:sqli_match_statement]) unless input[:sqli_match_statement].nil?
        data['XssMatchStatement'] = XssMatchStatement.build(input[:xss_match_statement]) unless input[:xss_match_statement].nil?
        data['SizeConstraintStatement'] = SizeConstraintStatement.build(input[:size_constraint_statement]) unless input[:size_constraint_statement].nil?
        data['GeoMatchStatement'] = GeoMatchStatement.build(input[:geo_match_statement]) unless input[:geo_match_statement].nil?
        data['RuleGroupReferenceStatement'] = RuleGroupReferenceStatement.build(input[:rule_group_reference_statement]) unless input[:rule_group_reference_statement].nil?
        data['IPSetReferenceStatement'] = IPSetReferenceStatement.build(input[:ip_set_reference_statement]) unless input[:ip_set_reference_statement].nil?
        data['RegexPatternSetReferenceStatement'] = RegexPatternSetReferenceStatement.build(input[:regex_pattern_set_reference_statement]) unless input[:regex_pattern_set_reference_statement].nil?
        data['RateBasedStatement'] = RateBasedStatement.build(input[:rate_based_statement]) unless input[:rate_based_statement].nil?
        data['AndStatement'] = AndStatement.build(input[:and_statement]) unless input[:and_statement].nil?
        data['OrStatement'] = OrStatement.build(input[:or_statement]) unless input[:or_statement].nil?
        data['NotStatement'] = NotStatement.build(input[:not_statement]) unless input[:not_statement].nil?
        data['ManagedRuleGroupStatement'] = ManagedRuleGroupStatement.build(input[:managed_rule_group_statement]) unless input[:managed_rule_group_statement].nil?
        data['LabelMatchStatement'] = LabelMatchStatement.build(input[:label_match_statement]) unless input[:label_match_statement].nil?
        data['RegexMatchStatement'] = RegexMatchStatement.build(input[:regex_match_statement]) unless input[:regex_match_statement].nil?
        data
      end
    end

    # Structure Builder for RegexMatchStatement
    class RegexMatchStatement
      def self.build(input)
        data = {}
        data['RegexString'] = input[:regex_string] unless input[:regex_string].nil?
        data['FieldToMatch'] = FieldToMatch.build(input[:field_to_match]) unless input[:field_to_match].nil?
        data['TextTransformations'] = TextTransformations.build(input[:text_transformations]) unless input[:text_transformations].nil?
        data
      end
    end

    # List Builder for TextTransformations
    class TextTransformations
      def self.build(input)
        data = []
        input.each do |element|
          data << TextTransformation.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for TextTransformation
    class TextTransformation
      def self.build(input)
        data = {}
        data['Priority'] = input[:priority] unless input[:priority].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data
      end
    end

    # Structure Builder for FieldToMatch
    class FieldToMatch
      def self.build(input)
        data = {}
        data['SingleHeader'] = SingleHeader.build(input[:single_header]) unless input[:single_header].nil?
        data['SingleQueryArgument'] = SingleQueryArgument.build(input[:single_query_argument]) unless input[:single_query_argument].nil?
        data['AllQueryArguments'] = AllQueryArguments.build(input[:all_query_arguments]) unless input[:all_query_arguments].nil?
        data['UriPath'] = UriPath.build(input[:uri_path]) unless input[:uri_path].nil?
        data['QueryString'] = QueryString.build(input[:query_string]) unless input[:query_string].nil?
        data['Body'] = Body.build(input[:body]) unless input[:body].nil?
        data['Method'] = Method.build(input[:member_method]) unless input[:member_method].nil?
        data['JsonBody'] = JsonBody.build(input[:json_body]) unless input[:json_body].nil?
        data['Headers'] = Headers.build(input[:headers]) unless input[:headers].nil?
        data['Cookies'] = Cookies.build(input[:cookies]) unless input[:cookies].nil?
        data
      end
    end

    # Structure Builder for Cookies
    class Cookies
      def self.build(input)
        data = {}
        data['MatchPattern'] = CookieMatchPattern.build(input[:match_pattern]) unless input[:match_pattern].nil?
        data['MatchScope'] = input[:match_scope] unless input[:match_scope].nil?
        data['OversizeHandling'] = input[:oversize_handling] unless input[:oversize_handling].nil?
        data
      end
    end

    # Structure Builder for CookieMatchPattern
    class CookieMatchPattern
      def self.build(input)
        data = {}
        data['All'] = All.build(input[:all]) unless input[:all].nil?
        data['IncludedCookies'] = CookieNames.build(input[:included_cookies]) unless input[:included_cookies].nil?
        data['ExcludedCookies'] = CookieNames.build(input[:excluded_cookies]) unless input[:excluded_cookies].nil?
        data
      end
    end

    # List Builder for CookieNames
    class CookieNames
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for All
    class All
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for Headers
    class Headers
      def self.build(input)
        data = {}
        data['MatchPattern'] = HeaderMatchPattern.build(input[:match_pattern]) unless input[:match_pattern].nil?
        data['MatchScope'] = input[:match_scope] unless input[:match_scope].nil?
        data['OversizeHandling'] = input[:oversize_handling] unless input[:oversize_handling].nil?
        data
      end
    end

    # Structure Builder for HeaderMatchPattern
    class HeaderMatchPattern
      def self.build(input)
        data = {}
        data['All'] = All.build(input[:all]) unless input[:all].nil?
        data['IncludedHeaders'] = HeaderNames.build(input[:included_headers]) unless input[:included_headers].nil?
        data['ExcludedHeaders'] = HeaderNames.build(input[:excluded_headers]) unless input[:excluded_headers].nil?
        data
      end
    end

    # List Builder for HeaderNames
    class HeaderNames
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for JsonBody
    class JsonBody
      def self.build(input)
        data = {}
        data['MatchPattern'] = JsonMatchPattern.build(input[:match_pattern]) unless input[:match_pattern].nil?
        data['MatchScope'] = input[:match_scope] unless input[:match_scope].nil?
        data['InvalidFallbackBehavior'] = input[:invalid_fallback_behavior] unless input[:invalid_fallback_behavior].nil?
        data['OversizeHandling'] = input[:oversize_handling] unless input[:oversize_handling].nil?
        data
      end
    end

    # Structure Builder for JsonMatchPattern
    class JsonMatchPattern
      def self.build(input)
        data = {}
        data['All'] = All.build(input[:all]) unless input[:all].nil?
        data['IncludedPaths'] = JsonPointerPaths.build(input[:included_paths]) unless input[:included_paths].nil?
        data
      end
    end

    # List Builder for JsonPointerPaths
    class JsonPointerPaths
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Method
    class Method
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for Body
    class Body
      def self.build(input)
        data = {}
        data['OversizeHandling'] = input[:oversize_handling] unless input[:oversize_handling].nil?
        data
      end
    end

    # Structure Builder for QueryString
    class QueryString
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for UriPath
    class UriPath
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for AllQueryArguments
    class AllQueryArguments
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for SingleQueryArgument
    class SingleQueryArgument
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data
      end
    end

    # Structure Builder for SingleHeader
    class SingleHeader
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data
      end
    end

    # Structure Builder for LabelMatchStatement
    class LabelMatchStatement
      def self.build(input)
        data = {}
        data['Scope'] = input[:scope] unless input[:scope].nil?
        data['Key'] = input[:key] unless input[:key].nil?
        data
      end
    end

    # Structure Builder for ManagedRuleGroupStatement
    class ManagedRuleGroupStatement
      def self.build(input)
        data = {}
        data['VendorName'] = input[:vendor_name] unless input[:vendor_name].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['Version'] = input[:version] unless input[:version].nil?
        data['ExcludedRules'] = ExcludedRules.build(input[:excluded_rules]) unless input[:excluded_rules].nil?
        data['ScopeDownStatement'] = Statement.build(input[:scope_down_statement]) unless input[:scope_down_statement].nil?
        data['ManagedRuleGroupConfigs'] = ManagedRuleGroupConfigs.build(input[:managed_rule_group_configs]) unless input[:managed_rule_group_configs].nil?
        data
      end
    end

    # List Builder for ManagedRuleGroupConfigs
    class ManagedRuleGroupConfigs
      def self.build(input)
        data = []
        input.each do |element|
          data << ManagedRuleGroupConfig.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ManagedRuleGroupConfig
    class ManagedRuleGroupConfig
      def self.build(input)
        data = {}
        data['LoginPath'] = input[:login_path] unless input[:login_path].nil?
        data['PayloadType'] = input[:payload_type] unless input[:payload_type].nil?
        data['UsernameField'] = UsernameField.build(input[:username_field]) unless input[:username_field].nil?
        data['PasswordField'] = PasswordField.build(input[:password_field]) unless input[:password_field].nil?
        data
      end
    end

    # Structure Builder for PasswordField
    class PasswordField
      def self.build(input)
        data = {}
        data['Identifier'] = input[:identifier] unless input[:identifier].nil?
        data
      end
    end

    # Structure Builder for UsernameField
    class UsernameField
      def self.build(input)
        data = {}
        data['Identifier'] = input[:identifier] unless input[:identifier].nil?
        data
      end
    end

    # List Builder for ExcludedRules
    class ExcludedRules
      def self.build(input)
        data = []
        input.each do |element|
          data << ExcludedRule.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ExcludedRule
    class ExcludedRule
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data
      end
    end

    # Structure Builder for NotStatement
    class NotStatement
      def self.build(input)
        data = {}
        data['Statement'] = Statement.build(input[:statement]) unless input[:statement].nil?
        data
      end
    end

    # Structure Builder for OrStatement
    class OrStatement
      def self.build(input)
        data = {}
        data['Statements'] = Statements.build(input[:statements]) unless input[:statements].nil?
        data
      end
    end

    # List Builder for Statements
    class Statements
      def self.build(input)
        data = []
        input.each do |element|
          data << Statement.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AndStatement
    class AndStatement
      def self.build(input)
        data = {}
        data['Statements'] = Statements.build(input[:statements]) unless input[:statements].nil?
        data
      end
    end

    # Structure Builder for RateBasedStatement
    class RateBasedStatement
      def self.build(input)
        data = {}
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data['AggregateKeyType'] = input[:aggregate_key_type] unless input[:aggregate_key_type].nil?
        data['ScopeDownStatement'] = Statement.build(input[:scope_down_statement]) unless input[:scope_down_statement].nil?
        data['ForwardedIPConfig'] = ForwardedIPConfig.build(input[:forwarded_ip_config]) unless input[:forwarded_ip_config].nil?
        data
      end
    end

    # Structure Builder for ForwardedIPConfig
    class ForwardedIPConfig
      def self.build(input)
        data = {}
        data['HeaderName'] = input[:header_name] unless input[:header_name].nil?
        data['FallbackBehavior'] = input[:fallback_behavior] unless input[:fallback_behavior].nil?
        data
      end
    end

    # Structure Builder for RegexPatternSetReferenceStatement
    class RegexPatternSetReferenceStatement
      def self.build(input)
        data = {}
        data['ARN'] = input[:arn] unless input[:arn].nil?
        data['FieldToMatch'] = FieldToMatch.build(input[:field_to_match]) unless input[:field_to_match].nil?
        data['TextTransformations'] = TextTransformations.build(input[:text_transformations]) unless input[:text_transformations].nil?
        data
      end
    end

    # Structure Builder for IPSetReferenceStatement
    class IPSetReferenceStatement
      def self.build(input)
        data = {}
        data['ARN'] = input[:arn] unless input[:arn].nil?
        data['IPSetForwardedIPConfig'] = IPSetForwardedIPConfig.build(input[:ip_set_forwarded_ip_config]) unless input[:ip_set_forwarded_ip_config].nil?
        data
      end
    end

    # Structure Builder for IPSetForwardedIPConfig
    class IPSetForwardedIPConfig
      def self.build(input)
        data = {}
        data['HeaderName'] = input[:header_name] unless input[:header_name].nil?
        data['FallbackBehavior'] = input[:fallback_behavior] unless input[:fallback_behavior].nil?
        data['Position'] = input[:position] unless input[:position].nil?
        data
      end
    end

    # Structure Builder for RuleGroupReferenceStatement
    class RuleGroupReferenceStatement
      def self.build(input)
        data = {}
        data['ARN'] = input[:arn] unless input[:arn].nil?
        data['ExcludedRules'] = ExcludedRules.build(input[:excluded_rules]) unless input[:excluded_rules].nil?
        data
      end
    end

    # Structure Builder for GeoMatchStatement
    class GeoMatchStatement
      def self.build(input)
        data = {}
        data['CountryCodes'] = CountryCodes.build(input[:country_codes]) unless input[:country_codes].nil?
        data['ForwardedIPConfig'] = ForwardedIPConfig.build(input[:forwarded_ip_config]) unless input[:forwarded_ip_config].nil?
        data
      end
    end

    # List Builder for CountryCodes
    class CountryCodes
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for SizeConstraintStatement
    class SizeConstraintStatement
      def self.build(input)
        data = {}
        data['FieldToMatch'] = FieldToMatch.build(input[:field_to_match]) unless input[:field_to_match].nil?
        data['ComparisonOperator'] = input[:comparison_operator] unless input[:comparison_operator].nil?
        data['Size'] = input[:size] unless input[:size].nil?
        data['TextTransformations'] = TextTransformations.build(input[:text_transformations]) unless input[:text_transformations].nil?
        data
      end
    end

    # Structure Builder for XssMatchStatement
    class XssMatchStatement
      def self.build(input)
        data = {}
        data['FieldToMatch'] = FieldToMatch.build(input[:field_to_match]) unless input[:field_to_match].nil?
        data['TextTransformations'] = TextTransformations.build(input[:text_transformations]) unless input[:text_transformations].nil?
        data
      end
    end

    # Structure Builder for SqliMatchStatement
    class SqliMatchStatement
      def self.build(input)
        data = {}
        data['FieldToMatch'] = FieldToMatch.build(input[:field_to_match]) unless input[:field_to_match].nil?
        data['TextTransformations'] = TextTransformations.build(input[:text_transformations]) unless input[:text_transformations].nil?
        data
      end
    end

    # Structure Builder for ByteMatchStatement
    class ByteMatchStatement
      def self.build(input)
        data = {}
        data['SearchString'] = ::Base64::encode64(input[:search_string]).strip unless input[:search_string].nil?
        data['FieldToMatch'] = FieldToMatch.build(input[:field_to_match]) unless input[:field_to_match].nil?
        data['TextTransformations'] = TextTransformations.build(input[:text_transformations]) unless input[:text_transformations].nil?
        data['PositionalConstraint'] = input[:positional_constraint] unless input[:positional_constraint].nil?
        data
      end
    end

    # Operation Builder for CreateIPSet
    class CreateIPSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_20190729.CreateIPSet'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Scope'] = input[:scope] unless input[:scope].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['IPAddressVersion'] = input[:ip_address_version] unless input[:ip_address_version].nil?
        data['Addresses'] = IPAddresses.build(input[:addresses]) unless input[:addresses].nil?
        data['Tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagList
    class TagList
      def self.build(input)
        data = []
        input.each do |element|
          data << Tag.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Tag
    class Tag
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # List Builder for IPAddresses
    class IPAddresses
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateRegexPatternSet
    class CreateRegexPatternSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_20190729.CreateRegexPatternSet'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Scope'] = input[:scope] unless input[:scope].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['RegularExpressionList'] = RegularExpressionList.build(input[:regular_expression_list]) unless input[:regular_expression_list].nil?
        data['Tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for RegularExpressionList
    class RegularExpressionList
      def self.build(input)
        data = []
        input.each do |element|
          data << Regex.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Regex
    class Regex
      def self.build(input)
        data = {}
        data['RegexString'] = input[:regex_string] unless input[:regex_string].nil?
        data
      end
    end

    # Operation Builder for CreateRuleGroup
    class CreateRuleGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_20190729.CreateRuleGroup'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Scope'] = input[:scope] unless input[:scope].nil?
        data['Capacity'] = input[:capacity] unless input[:capacity].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Rules'] = Rules.build(input[:rules]) unless input[:rules].nil?
        data['VisibilityConfig'] = VisibilityConfig.build(input[:visibility_config]) unless input[:visibility_config].nil?
        data['Tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        data['CustomResponseBodies'] = CustomResponseBodies.build(input[:custom_response_bodies]) unless input[:custom_response_bodies].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for CustomResponseBodies
    class CustomResponseBodies
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = CustomResponseBody.build(value) unless value.nil?
        end
        data
      end
    end

    # Structure Builder for CustomResponseBody
    class CustomResponseBody
      def self.build(input)
        data = {}
        data['ContentType'] = input[:content_type] unless input[:content_type].nil?
        data['Content'] = input[:content] unless input[:content].nil?
        data
      end
    end

    # Operation Builder for CreateWebACL
    class CreateWebACL
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_20190729.CreateWebACL'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Scope'] = input[:scope] unless input[:scope].nil?
        data['DefaultAction'] = DefaultAction.build(input[:default_action]) unless input[:default_action].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Rules'] = Rules.build(input[:rules]) unless input[:rules].nil?
        data['VisibilityConfig'] = VisibilityConfig.build(input[:visibility_config]) unless input[:visibility_config].nil?
        data['Tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        data['CustomResponseBodies'] = CustomResponseBodies.build(input[:custom_response_bodies]) unless input[:custom_response_bodies].nil?
        data['CaptchaConfig'] = CaptchaConfig.build(input[:captcha_config]) unless input[:captcha_config].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for DefaultAction
    class DefaultAction
      def self.build(input)
        data = {}
        data['Block'] = BlockAction.build(input[:block]) unless input[:block].nil?
        data['Allow'] = AllowAction.build(input[:allow]) unless input[:allow].nil?
        data
      end
    end

    # Operation Builder for DeleteFirewallManagerRuleGroups
    class DeleteFirewallManagerRuleGroups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_20190729.DeleteFirewallManagerRuleGroups'
        data = {}
        data['WebACLArn'] = input[:web_acl_arn] unless input[:web_acl_arn].nil?
        data['WebACLLockToken'] = input[:web_acl_lock_token] unless input[:web_acl_lock_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteIPSet
    class DeleteIPSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_20190729.DeleteIPSet'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Scope'] = input[:scope] unless input[:scope].nil?
        data['Id'] = input[:id] unless input[:id].nil?
        data['LockToken'] = input[:lock_token] unless input[:lock_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteLoggingConfiguration
    class DeleteLoggingConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_20190729.DeleteLoggingConfiguration'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeletePermissionPolicy
    class DeletePermissionPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_20190729.DeletePermissionPolicy'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteRegexPatternSet
    class DeleteRegexPatternSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_20190729.DeleteRegexPatternSet'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Scope'] = input[:scope] unless input[:scope].nil?
        data['Id'] = input[:id] unless input[:id].nil?
        data['LockToken'] = input[:lock_token] unless input[:lock_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteRuleGroup
    class DeleteRuleGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_20190729.DeleteRuleGroup'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Scope'] = input[:scope] unless input[:scope].nil?
        data['Id'] = input[:id] unless input[:id].nil?
        data['LockToken'] = input[:lock_token] unless input[:lock_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteWebACL
    class DeleteWebACL
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_20190729.DeleteWebACL'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Scope'] = input[:scope] unless input[:scope].nil?
        data['Id'] = input[:id] unless input[:id].nil?
        data['LockToken'] = input[:lock_token] unless input[:lock_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeManagedRuleGroup
    class DescribeManagedRuleGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_20190729.DescribeManagedRuleGroup'
        data = {}
        data['VendorName'] = input[:vendor_name] unless input[:vendor_name].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['Scope'] = input[:scope] unless input[:scope].nil?
        data['VersionName'] = input[:version_name] unless input[:version_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DisassociateWebACL
    class DisassociateWebACL
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_20190729.DisassociateWebACL'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GenerateMobileSdkReleaseUrl
    class GenerateMobileSdkReleaseUrl
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_20190729.GenerateMobileSdkReleaseUrl'
        data = {}
        data['Platform'] = input[:platform] unless input[:platform].nil?
        data['ReleaseVersion'] = input[:release_version] unless input[:release_version].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetIPSet
    class GetIPSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_20190729.GetIPSet'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Scope'] = input[:scope] unless input[:scope].nil?
        data['Id'] = input[:id] unless input[:id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetLoggingConfiguration
    class GetLoggingConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_20190729.GetLoggingConfiguration'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetManagedRuleSet
    class GetManagedRuleSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_20190729.GetManagedRuleSet'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Scope'] = input[:scope] unless input[:scope].nil?
        data['Id'] = input[:id] unless input[:id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetMobileSdkRelease
    class GetMobileSdkRelease
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_20190729.GetMobileSdkRelease'
        data = {}
        data['Platform'] = input[:platform] unless input[:platform].nil?
        data['ReleaseVersion'] = input[:release_version] unless input[:release_version].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetPermissionPolicy
    class GetPermissionPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_20190729.GetPermissionPolicy'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetRateBasedStatementManagedKeys
    class GetRateBasedStatementManagedKeys
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_20190729.GetRateBasedStatementManagedKeys'
        data = {}
        data['Scope'] = input[:scope] unless input[:scope].nil?
        data['WebACLName'] = input[:web_acl_name] unless input[:web_acl_name].nil?
        data['WebACLId'] = input[:web_acl_id] unless input[:web_acl_id].nil?
        data['RuleGroupRuleName'] = input[:rule_group_rule_name] unless input[:rule_group_rule_name].nil?
        data['RuleName'] = input[:rule_name] unless input[:rule_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetRegexPatternSet
    class GetRegexPatternSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_20190729.GetRegexPatternSet'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Scope'] = input[:scope] unless input[:scope].nil?
        data['Id'] = input[:id] unless input[:id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetRuleGroup
    class GetRuleGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_20190729.GetRuleGroup'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Scope'] = input[:scope] unless input[:scope].nil?
        data['Id'] = input[:id] unless input[:id].nil?
        data['ARN'] = input[:arn] unless input[:arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetSampledRequests
    class GetSampledRequests
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_20190729.GetSampledRequests'
        data = {}
        data['WebAclArn'] = input[:web_acl_arn] unless input[:web_acl_arn].nil?
        data['RuleMetricName'] = input[:rule_metric_name] unless input[:rule_metric_name].nil?
        data['Scope'] = input[:scope] unless input[:scope].nil?
        data['TimeWindow'] = TimeWindow.build(input[:time_window]) unless input[:time_window].nil?
        data['MaxItems'] = input[:max_items] unless input[:max_items].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for TimeWindow
    class TimeWindow
      def self.build(input)
        data = {}
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:start_time]).to_i unless input[:start_time].nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:end_time]).to_i unless input[:end_time].nil?
        data
      end
    end

    # Operation Builder for GetWebACL
    class GetWebACL
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_20190729.GetWebACL'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Scope'] = input[:scope] unless input[:scope].nil?
        data['Id'] = input[:id] unless input[:id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetWebACLForResource
    class GetWebACLForResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_20190729.GetWebACLForResource'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListAvailableManagedRuleGroupVersions
    class ListAvailableManagedRuleGroupVersions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_20190729.ListAvailableManagedRuleGroupVersions'
        data = {}
        data['VendorName'] = input[:vendor_name] unless input[:vendor_name].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['Scope'] = input[:scope] unless input[:scope].nil?
        data['NextMarker'] = input[:next_marker] unless input[:next_marker].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListAvailableManagedRuleGroups
    class ListAvailableManagedRuleGroups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_20190729.ListAvailableManagedRuleGroups'
        data = {}
        data['Scope'] = input[:scope] unless input[:scope].nil?
        data['NextMarker'] = input[:next_marker] unless input[:next_marker].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListIPSets
    class ListIPSets
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_20190729.ListIPSets'
        data = {}
        data['Scope'] = input[:scope] unless input[:scope].nil?
        data['NextMarker'] = input[:next_marker] unless input[:next_marker].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListLoggingConfigurations
    class ListLoggingConfigurations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_20190729.ListLoggingConfigurations'
        data = {}
        data['Scope'] = input[:scope] unless input[:scope].nil?
        data['NextMarker'] = input[:next_marker] unless input[:next_marker].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListManagedRuleSets
    class ListManagedRuleSets
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_20190729.ListManagedRuleSets'
        data = {}
        data['Scope'] = input[:scope] unless input[:scope].nil?
        data['NextMarker'] = input[:next_marker] unless input[:next_marker].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListMobileSdkReleases
    class ListMobileSdkReleases
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_20190729.ListMobileSdkReleases'
        data = {}
        data['Platform'] = input[:platform] unless input[:platform].nil?
        data['NextMarker'] = input[:next_marker] unless input[:next_marker].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListRegexPatternSets
    class ListRegexPatternSets
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_20190729.ListRegexPatternSets'
        data = {}
        data['Scope'] = input[:scope] unless input[:scope].nil?
        data['NextMarker'] = input[:next_marker] unless input[:next_marker].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListResourcesForWebACL
    class ListResourcesForWebACL
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_20190729.ListResourcesForWebACL'
        data = {}
        data['WebACLArn'] = input[:web_acl_arn] unless input[:web_acl_arn].nil?
        data['ResourceType'] = input[:resource_type] unless input[:resource_type].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListRuleGroups
    class ListRuleGroups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_20190729.ListRuleGroups'
        data = {}
        data['Scope'] = input[:scope] unless input[:scope].nil?
        data['NextMarker'] = input[:next_marker] unless input[:next_marker].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_20190729.ListTagsForResource'
        data = {}
        data['NextMarker'] = input[:next_marker] unless input[:next_marker].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data['ResourceARN'] = input[:resource_arn] unless input[:resource_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListWebACLs
    class ListWebACLs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_20190729.ListWebACLs'
        data = {}
        data['Scope'] = input[:scope] unless input[:scope].nil?
        data['NextMarker'] = input[:next_marker] unless input[:next_marker].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutLoggingConfiguration
    class PutLoggingConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_20190729.PutLoggingConfiguration'
        data = {}
        data['LoggingConfiguration'] = LoggingConfiguration.build(input[:logging_configuration]) unless input[:logging_configuration].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for LoggingConfiguration
    class LoggingConfiguration
      def self.build(input)
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['LogDestinationConfigs'] = LogDestinationConfigs.build(input[:log_destination_configs]) unless input[:log_destination_configs].nil?
        data['RedactedFields'] = RedactedFields.build(input[:redacted_fields]) unless input[:redacted_fields].nil?
        data['ManagedByFirewallManager'] = input[:managed_by_firewall_manager] unless input[:managed_by_firewall_manager].nil?
        data['LoggingFilter'] = LoggingFilter.build(input[:logging_filter]) unless input[:logging_filter].nil?
        data
      end
    end

    # Structure Builder for LoggingFilter
    class LoggingFilter
      def self.build(input)
        data = {}
        data['Filters'] = Filters.build(input[:filters]) unless input[:filters].nil?
        data['DefaultBehavior'] = input[:default_behavior] unless input[:default_behavior].nil?
        data
      end
    end

    # List Builder for Filters
    class Filters
      def self.build(input)
        data = []
        input.each do |element|
          data << Filter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Filter
    class Filter
      def self.build(input)
        data = {}
        data['Behavior'] = input[:behavior] unless input[:behavior].nil?
        data['Requirement'] = input[:requirement] unless input[:requirement].nil?
        data['Conditions'] = Conditions.build(input[:conditions]) unless input[:conditions].nil?
        data
      end
    end

    # List Builder for Conditions
    class Conditions
      def self.build(input)
        data = []
        input.each do |element|
          data << Condition.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Condition
    class Condition
      def self.build(input)
        data = {}
        data['ActionCondition'] = ActionCondition.build(input[:action_condition]) unless input[:action_condition].nil?
        data['LabelNameCondition'] = LabelNameCondition.build(input[:label_name_condition]) unless input[:label_name_condition].nil?
        data
      end
    end

    # Structure Builder for LabelNameCondition
    class LabelNameCondition
      def self.build(input)
        data = {}
        data['LabelName'] = input[:label_name] unless input[:label_name].nil?
        data
      end
    end

    # Structure Builder for ActionCondition
    class ActionCondition
      def self.build(input)
        data = {}
        data['Action'] = input[:action] unless input[:action].nil?
        data
      end
    end

    # List Builder for RedactedFields
    class RedactedFields
      def self.build(input)
        data = []
        input.each do |element|
          data << FieldToMatch.build(element) unless element.nil?
        end
        data
      end
    end

    # List Builder for LogDestinationConfigs
    class LogDestinationConfigs
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for PutManagedRuleSetVersions
    class PutManagedRuleSetVersions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_20190729.PutManagedRuleSetVersions'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Scope'] = input[:scope] unless input[:scope].nil?
        data['Id'] = input[:id] unless input[:id].nil?
        data['LockToken'] = input[:lock_token] unless input[:lock_token].nil?
        data['RecommendedVersion'] = input[:recommended_version] unless input[:recommended_version].nil?
        data['VersionsToPublish'] = VersionsToPublish.build(input[:versions_to_publish]) unless input[:versions_to_publish].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for VersionsToPublish
    class VersionsToPublish
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = VersionToPublish.build(value) unless value.nil?
        end
        data
      end
    end

    # Structure Builder for VersionToPublish
    class VersionToPublish
      def self.build(input)
        data = {}
        data['AssociatedRuleGroupArn'] = input[:associated_rule_group_arn] unless input[:associated_rule_group_arn].nil?
        data['ForecastedLifetime'] = input[:forecasted_lifetime] unless input[:forecasted_lifetime].nil?
        data
      end
    end

    # Operation Builder for PutPermissionPolicy
    class PutPermissionPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_20190729.PutPermissionPolicy'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['Policy'] = input[:policy] unless input[:policy].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_20190729.TagResource'
        data = {}
        data['ResourceARN'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['Tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_20190729.UntagResource'
        data = {}
        data['ResourceARN'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['TagKeys'] = TagKeyList.build(input[:tag_keys]) unless input[:tag_keys].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagKeyList
    class TagKeyList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateIPSet
    class UpdateIPSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_20190729.UpdateIPSet'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Scope'] = input[:scope] unless input[:scope].nil?
        data['Id'] = input[:id] unless input[:id].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Addresses'] = IPAddresses.build(input[:addresses]) unless input[:addresses].nil?
        data['LockToken'] = input[:lock_token] unless input[:lock_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateManagedRuleSetVersionExpiryDate
    class UpdateManagedRuleSetVersionExpiryDate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_20190729.UpdateManagedRuleSetVersionExpiryDate'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Scope'] = input[:scope] unless input[:scope].nil?
        data['Id'] = input[:id] unless input[:id].nil?
        data['LockToken'] = input[:lock_token] unless input[:lock_token].nil?
        data['VersionToExpire'] = input[:version_to_expire] unless input[:version_to_expire].nil?
        data['ExpiryTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(input[:expiry_timestamp]).to_i unless input[:expiry_timestamp].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateRegexPatternSet
    class UpdateRegexPatternSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_20190729.UpdateRegexPatternSet'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Scope'] = input[:scope] unless input[:scope].nil?
        data['Id'] = input[:id] unless input[:id].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['RegularExpressionList'] = RegularExpressionList.build(input[:regular_expression_list]) unless input[:regular_expression_list].nil?
        data['LockToken'] = input[:lock_token] unless input[:lock_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateRuleGroup
    class UpdateRuleGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_20190729.UpdateRuleGroup'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Scope'] = input[:scope] unless input[:scope].nil?
        data['Id'] = input[:id] unless input[:id].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Rules'] = Rules.build(input[:rules]) unless input[:rules].nil?
        data['VisibilityConfig'] = VisibilityConfig.build(input[:visibility_config]) unless input[:visibility_config].nil?
        data['LockToken'] = input[:lock_token] unless input[:lock_token].nil?
        data['CustomResponseBodies'] = CustomResponseBodies.build(input[:custom_response_bodies]) unless input[:custom_response_bodies].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateWebACL
    class UpdateWebACL
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_20190729.UpdateWebACL'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Scope'] = input[:scope] unless input[:scope].nil?
        data['Id'] = input[:id] unless input[:id].nil?
        data['DefaultAction'] = DefaultAction.build(input[:default_action]) unless input[:default_action].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Rules'] = Rules.build(input[:rules]) unless input[:rules].nil?
        data['VisibilityConfig'] = VisibilityConfig.build(input[:visibility_config]) unless input[:visibility_config].nil?
        data['LockToken'] = input[:lock_token] unless input[:lock_token].nil?
        data['CustomResponseBodies'] = CustomResponseBodies.build(input[:custom_response_bodies]) unless input[:custom_response_bodies].nil?
        data['CaptchaConfig'] = CaptchaConfig.build(input[:captcha_config]) unless input[:captcha_config].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
