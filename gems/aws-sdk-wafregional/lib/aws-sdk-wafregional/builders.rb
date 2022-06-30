# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::WAFRegional
  module Builders

    # Operation Builder for AssociateWebACL
    class AssociateWebACL
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_Regional_20161128.AssociateWebACL'
        data = {}
        data['WebACLId'] = input[:web_acl_id] unless input[:web_acl_id].nil?
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateByteMatchSet
    class CreateByteMatchSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_Regional_20161128.CreateByteMatchSet'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['ChangeToken'] = input[:change_token] unless input[:change_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateGeoMatchSet
    class CreateGeoMatchSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_Regional_20161128.CreateGeoMatchSet'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['ChangeToken'] = input[:change_token] unless input[:change_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateIPSet
    class CreateIPSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_Regional_20161128.CreateIPSet'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['ChangeToken'] = input[:change_token] unless input[:change_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateRateBasedRule
    class CreateRateBasedRule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_Regional_20161128.CreateRateBasedRule'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['MetricName'] = input[:metric_name] unless input[:metric_name].nil?
        data['RateKey'] = input[:rate_key] unless input[:rate_key].nil?
        data['RateLimit'] = input[:rate_limit] unless input[:rate_limit].nil?
        data['ChangeToken'] = input[:change_token] unless input[:change_token].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagList
    class TagList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Tag.build(element) unless element.nil?
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

    # Operation Builder for CreateRegexMatchSet
    class CreateRegexMatchSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_Regional_20161128.CreateRegexMatchSet'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['ChangeToken'] = input[:change_token] unless input[:change_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateRegexPatternSet
    class CreateRegexPatternSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_Regional_20161128.CreateRegexPatternSet'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['ChangeToken'] = input[:change_token] unless input[:change_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateRule
    class CreateRule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_Regional_20161128.CreateRule'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['MetricName'] = input[:metric_name] unless input[:metric_name].nil?
        data['ChangeToken'] = input[:change_token] unless input[:change_token].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateRuleGroup
    class CreateRuleGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_Regional_20161128.CreateRuleGroup'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['MetricName'] = input[:metric_name] unless input[:metric_name].nil?
        data['ChangeToken'] = input[:change_token] unless input[:change_token].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateSizeConstraintSet
    class CreateSizeConstraintSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_Regional_20161128.CreateSizeConstraintSet'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['ChangeToken'] = input[:change_token] unless input[:change_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateSqlInjectionMatchSet
    class CreateSqlInjectionMatchSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_Regional_20161128.CreateSqlInjectionMatchSet'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['ChangeToken'] = input[:change_token] unless input[:change_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateWebACL
    class CreateWebACL
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_Regional_20161128.CreateWebACL'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['MetricName'] = input[:metric_name] unless input[:metric_name].nil?
        data['DefaultAction'] = Builders::WafAction.build(input[:default_action]) unless input[:default_action].nil?
        data['ChangeToken'] = input[:change_token] unless input[:change_token].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for WafAction
    class WafAction
      def self.build(input)
        data = {}
        data['Type'] = input[:type] unless input[:type].nil?
        data
      end
    end

    # Operation Builder for CreateWebACLMigrationStack
    class CreateWebACLMigrationStack
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_Regional_20161128.CreateWebACLMigrationStack'
        data = {}
        data['WebACLId'] = input[:web_acl_id] unless input[:web_acl_id].nil?
        data['S3BucketName'] = input[:s3_bucket_name] unless input[:s3_bucket_name].nil?
        data['IgnoreUnsupportedType'] = input[:ignore_unsupported_type] unless input[:ignore_unsupported_type].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateXssMatchSet
    class CreateXssMatchSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_Regional_20161128.CreateXssMatchSet'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['ChangeToken'] = input[:change_token] unless input[:change_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteByteMatchSet
    class DeleteByteMatchSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_Regional_20161128.DeleteByteMatchSet'
        data = {}
        data['ByteMatchSetId'] = input[:byte_match_set_id] unless input[:byte_match_set_id].nil?
        data['ChangeToken'] = input[:change_token] unless input[:change_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteGeoMatchSet
    class DeleteGeoMatchSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_Regional_20161128.DeleteGeoMatchSet'
        data = {}
        data['GeoMatchSetId'] = input[:geo_match_set_id] unless input[:geo_match_set_id].nil?
        data['ChangeToken'] = input[:change_token] unless input[:change_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteIPSet
    class DeleteIPSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_Regional_20161128.DeleteIPSet'
        data = {}
        data['IPSetId'] = input[:ip_set_id] unless input[:ip_set_id].nil?
        data['ChangeToken'] = input[:change_token] unless input[:change_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteLoggingConfiguration
    class DeleteLoggingConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_Regional_20161128.DeleteLoggingConfiguration'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeletePermissionPolicy
    class DeletePermissionPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_Regional_20161128.DeletePermissionPolicy'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteRateBasedRule
    class DeleteRateBasedRule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_Regional_20161128.DeleteRateBasedRule'
        data = {}
        data['RuleId'] = input[:rule_id] unless input[:rule_id].nil?
        data['ChangeToken'] = input[:change_token] unless input[:change_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteRegexMatchSet
    class DeleteRegexMatchSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_Regional_20161128.DeleteRegexMatchSet'
        data = {}
        data['RegexMatchSetId'] = input[:regex_match_set_id] unless input[:regex_match_set_id].nil?
        data['ChangeToken'] = input[:change_token] unless input[:change_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteRegexPatternSet
    class DeleteRegexPatternSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_Regional_20161128.DeleteRegexPatternSet'
        data = {}
        data['RegexPatternSetId'] = input[:regex_pattern_set_id] unless input[:regex_pattern_set_id].nil?
        data['ChangeToken'] = input[:change_token] unless input[:change_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteRule
    class DeleteRule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_Regional_20161128.DeleteRule'
        data = {}
        data['RuleId'] = input[:rule_id] unless input[:rule_id].nil?
        data['ChangeToken'] = input[:change_token] unless input[:change_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteRuleGroup
    class DeleteRuleGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_Regional_20161128.DeleteRuleGroup'
        data = {}
        data['RuleGroupId'] = input[:rule_group_id] unless input[:rule_group_id].nil?
        data['ChangeToken'] = input[:change_token] unless input[:change_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteSizeConstraintSet
    class DeleteSizeConstraintSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_Regional_20161128.DeleteSizeConstraintSet'
        data = {}
        data['SizeConstraintSetId'] = input[:size_constraint_set_id] unless input[:size_constraint_set_id].nil?
        data['ChangeToken'] = input[:change_token] unless input[:change_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteSqlInjectionMatchSet
    class DeleteSqlInjectionMatchSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_Regional_20161128.DeleteSqlInjectionMatchSet'
        data = {}
        data['SqlInjectionMatchSetId'] = input[:sql_injection_match_set_id] unless input[:sql_injection_match_set_id].nil?
        data['ChangeToken'] = input[:change_token] unless input[:change_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteWebACL
    class DeleteWebACL
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_Regional_20161128.DeleteWebACL'
        data = {}
        data['WebACLId'] = input[:web_acl_id] unless input[:web_acl_id].nil?
        data['ChangeToken'] = input[:change_token] unless input[:change_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteXssMatchSet
    class DeleteXssMatchSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_Regional_20161128.DeleteXssMatchSet'
        data = {}
        data['XssMatchSetId'] = input[:xss_match_set_id] unless input[:xss_match_set_id].nil?
        data['ChangeToken'] = input[:change_token] unless input[:change_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DisassociateWebACL
    class DisassociateWebACL
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_Regional_20161128.DisassociateWebACL'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetByteMatchSet
    class GetByteMatchSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_Regional_20161128.GetByteMatchSet'
        data = {}
        data['ByteMatchSetId'] = input[:byte_match_set_id] unless input[:byte_match_set_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetChangeToken
    class GetChangeToken
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_Regional_20161128.GetChangeToken'
        data = {}
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetChangeTokenStatus
    class GetChangeTokenStatus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_Regional_20161128.GetChangeTokenStatus'
        data = {}
        data['ChangeToken'] = input[:change_token] unless input[:change_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetGeoMatchSet
    class GetGeoMatchSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_Regional_20161128.GetGeoMatchSet'
        data = {}
        data['GeoMatchSetId'] = input[:geo_match_set_id] unless input[:geo_match_set_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetIPSet
    class GetIPSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_Regional_20161128.GetIPSet'
        data = {}
        data['IPSetId'] = input[:ip_set_id] unless input[:ip_set_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetLoggingConfiguration
    class GetLoggingConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_Regional_20161128.GetLoggingConfiguration'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetPermissionPolicy
    class GetPermissionPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_Regional_20161128.GetPermissionPolicy'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetRateBasedRule
    class GetRateBasedRule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_Regional_20161128.GetRateBasedRule'
        data = {}
        data['RuleId'] = input[:rule_id] unless input[:rule_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetRateBasedRuleManagedKeys
    class GetRateBasedRuleManagedKeys
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_Regional_20161128.GetRateBasedRuleManagedKeys'
        data = {}
        data['RuleId'] = input[:rule_id] unless input[:rule_id].nil?
        data['NextMarker'] = input[:next_marker] unless input[:next_marker].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetRegexMatchSet
    class GetRegexMatchSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_Regional_20161128.GetRegexMatchSet'
        data = {}
        data['RegexMatchSetId'] = input[:regex_match_set_id] unless input[:regex_match_set_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetRegexPatternSet
    class GetRegexPatternSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_Regional_20161128.GetRegexPatternSet'
        data = {}
        data['RegexPatternSetId'] = input[:regex_pattern_set_id] unless input[:regex_pattern_set_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetRule
    class GetRule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_Regional_20161128.GetRule'
        data = {}
        data['RuleId'] = input[:rule_id] unless input[:rule_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetRuleGroup
    class GetRuleGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_Regional_20161128.GetRuleGroup'
        data = {}
        data['RuleGroupId'] = input[:rule_group_id] unless input[:rule_group_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetSampledRequests
    class GetSampledRequests
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_Regional_20161128.GetSampledRequests'
        data = {}
        data['WebAclId'] = input[:web_acl_id] unless input[:web_acl_id].nil?
        data['RuleId'] = input[:rule_id] unless input[:rule_id].nil?
        data['TimeWindow'] = Builders::TimeWindow.build(input[:time_window]) unless input[:time_window].nil?
        data['MaxItems'] = input[:max_items] unless input[:max_items].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
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

    # Operation Builder for GetSizeConstraintSet
    class GetSizeConstraintSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_Regional_20161128.GetSizeConstraintSet'
        data = {}
        data['SizeConstraintSetId'] = input[:size_constraint_set_id] unless input[:size_constraint_set_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetSqlInjectionMatchSet
    class GetSqlInjectionMatchSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_Regional_20161128.GetSqlInjectionMatchSet'
        data = {}
        data['SqlInjectionMatchSetId'] = input[:sql_injection_match_set_id] unless input[:sql_injection_match_set_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetWebACL
    class GetWebACL
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_Regional_20161128.GetWebACL'
        data = {}
        data['WebACLId'] = input[:web_acl_id] unless input[:web_acl_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetWebACLForResource
    class GetWebACLForResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_Regional_20161128.GetWebACLForResource'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetXssMatchSet
    class GetXssMatchSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_Regional_20161128.GetXssMatchSet'
        data = {}
        data['XssMatchSetId'] = input[:xss_match_set_id] unless input[:xss_match_set_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListActivatedRulesInRuleGroup
    class ListActivatedRulesInRuleGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_Regional_20161128.ListActivatedRulesInRuleGroup'
        data = {}
        data['RuleGroupId'] = input[:rule_group_id] unless input[:rule_group_id].nil?
        data['NextMarker'] = input[:next_marker] unless input[:next_marker].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListByteMatchSets
    class ListByteMatchSets
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_Regional_20161128.ListByteMatchSets'
        data = {}
        data['NextMarker'] = input[:next_marker] unless input[:next_marker].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListGeoMatchSets
    class ListGeoMatchSets
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_Regional_20161128.ListGeoMatchSets'
        data = {}
        data['NextMarker'] = input[:next_marker] unless input[:next_marker].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListIPSets
    class ListIPSets
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_Regional_20161128.ListIPSets'
        data = {}
        data['NextMarker'] = input[:next_marker] unless input[:next_marker].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListLoggingConfigurations
    class ListLoggingConfigurations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_Regional_20161128.ListLoggingConfigurations'
        data = {}
        data['NextMarker'] = input[:next_marker] unless input[:next_marker].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListRateBasedRules
    class ListRateBasedRules
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_Regional_20161128.ListRateBasedRules'
        data = {}
        data['NextMarker'] = input[:next_marker] unless input[:next_marker].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListRegexMatchSets
    class ListRegexMatchSets
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_Regional_20161128.ListRegexMatchSets'
        data = {}
        data['NextMarker'] = input[:next_marker] unless input[:next_marker].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListRegexPatternSets
    class ListRegexPatternSets
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_Regional_20161128.ListRegexPatternSets'
        data = {}
        data['NextMarker'] = input[:next_marker] unless input[:next_marker].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListResourcesForWebACL
    class ListResourcesForWebACL
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_Regional_20161128.ListResourcesForWebACL'
        data = {}
        data['WebACLId'] = input[:web_acl_id] unless input[:web_acl_id].nil?
        data['ResourceType'] = input[:resource_type] unless input[:resource_type].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListRuleGroups
    class ListRuleGroups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_Regional_20161128.ListRuleGroups'
        data = {}
        data['NextMarker'] = input[:next_marker] unless input[:next_marker].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListRules
    class ListRules
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_Regional_20161128.ListRules'
        data = {}
        data['NextMarker'] = input[:next_marker] unless input[:next_marker].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListSizeConstraintSets
    class ListSizeConstraintSets
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_Regional_20161128.ListSizeConstraintSets'
        data = {}
        data['NextMarker'] = input[:next_marker] unless input[:next_marker].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListSqlInjectionMatchSets
    class ListSqlInjectionMatchSets
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_Regional_20161128.ListSqlInjectionMatchSets'
        data = {}
        data['NextMarker'] = input[:next_marker] unless input[:next_marker].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListSubscribedRuleGroups
    class ListSubscribedRuleGroups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_Regional_20161128.ListSubscribedRuleGroups'
        data = {}
        data['NextMarker'] = input[:next_marker] unless input[:next_marker].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_Regional_20161128.ListTagsForResource'
        data = {}
        data['NextMarker'] = input[:next_marker] unless input[:next_marker].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data['ResourceARN'] = input[:resource_arn] unless input[:resource_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListWebACLs
    class ListWebACLs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_Regional_20161128.ListWebACLs'
        data = {}
        data['NextMarker'] = input[:next_marker] unless input[:next_marker].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListXssMatchSets
    class ListXssMatchSets
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_Regional_20161128.ListXssMatchSets'
        data = {}
        data['NextMarker'] = input[:next_marker] unless input[:next_marker].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutLoggingConfiguration
    class PutLoggingConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_Regional_20161128.PutLoggingConfiguration'
        data = {}
        data['LoggingConfiguration'] = Builders::LoggingConfiguration.build(input[:logging_configuration]) unless input[:logging_configuration].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for LoggingConfiguration
    class LoggingConfiguration
      def self.build(input)
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['LogDestinationConfigs'] = Builders::LogDestinationConfigs.build(input[:log_destination_configs]) unless input[:log_destination_configs].nil?
        data['RedactedFields'] = Builders::RedactedFields.build(input[:redacted_fields]) unless input[:redacted_fields].nil?
        data
      end
    end

    # List Builder for RedactedFields
    class RedactedFields
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::FieldToMatch.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for FieldToMatch
    class FieldToMatch
      def self.build(input)
        data = {}
        data['Type'] = input[:type] unless input[:type].nil?
        data['Data'] = input[:data] unless input[:data].nil?
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

    # Operation Builder for PutPermissionPolicy
    class PutPermissionPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_Regional_20161128.PutPermissionPolicy'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['Policy'] = input[:policy] unless input[:policy].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_Regional_20161128.TagResource'
        data = {}
        data['ResourceARN'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_Regional_20161128.UntagResource'
        data = {}
        data['ResourceARN'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['TagKeys'] = Builders::TagKeyList.build(input[:tag_keys]) unless input[:tag_keys].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
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

    # Operation Builder for UpdateByteMatchSet
    class UpdateByteMatchSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_Regional_20161128.UpdateByteMatchSet'
        data = {}
        data['ByteMatchSetId'] = input[:byte_match_set_id] unless input[:byte_match_set_id].nil?
        data['ChangeToken'] = input[:change_token] unless input[:change_token].nil?
        data['Updates'] = Builders::ByteMatchSetUpdates.build(input[:updates]) unless input[:updates].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ByteMatchSetUpdates
    class ByteMatchSetUpdates
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ByteMatchSetUpdate.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ByteMatchSetUpdate
    class ByteMatchSetUpdate
      def self.build(input)
        data = {}
        data['Action'] = input[:action] unless input[:action].nil?
        data['ByteMatchTuple'] = Builders::ByteMatchTuple.build(input[:byte_match_tuple]) unless input[:byte_match_tuple].nil?
        data
      end
    end

    # Structure Builder for ByteMatchTuple
    class ByteMatchTuple
      def self.build(input)
        data = {}
        data['FieldToMatch'] = Builders::FieldToMatch.build(input[:field_to_match]) unless input[:field_to_match].nil?
        data['TargetString'] = Base64::encode64(input[:target_string]).strip unless input[:target_string].nil?
        data['TextTransformation'] = input[:text_transformation] unless input[:text_transformation].nil?
        data['PositionalConstraint'] = input[:positional_constraint] unless input[:positional_constraint].nil?
        data
      end
    end

    # Operation Builder for UpdateGeoMatchSet
    class UpdateGeoMatchSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_Regional_20161128.UpdateGeoMatchSet'
        data = {}
        data['GeoMatchSetId'] = input[:geo_match_set_id] unless input[:geo_match_set_id].nil?
        data['ChangeToken'] = input[:change_token] unless input[:change_token].nil?
        data['Updates'] = Builders::GeoMatchSetUpdates.build(input[:updates]) unless input[:updates].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for GeoMatchSetUpdates
    class GeoMatchSetUpdates
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::GeoMatchSetUpdate.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for GeoMatchSetUpdate
    class GeoMatchSetUpdate
      def self.build(input)
        data = {}
        data['Action'] = input[:action] unless input[:action].nil?
        data['GeoMatchConstraint'] = Builders::GeoMatchConstraint.build(input[:geo_match_constraint]) unless input[:geo_match_constraint].nil?
        data
      end
    end

    # Structure Builder for GeoMatchConstraint
    class GeoMatchConstraint
      def self.build(input)
        data = {}
        data['Type'] = input[:type] unless input[:type].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for UpdateIPSet
    class UpdateIPSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_Regional_20161128.UpdateIPSet'
        data = {}
        data['IPSetId'] = input[:ip_set_id] unless input[:ip_set_id].nil?
        data['ChangeToken'] = input[:change_token] unless input[:change_token].nil?
        data['Updates'] = Builders::IPSetUpdates.build(input[:updates]) unless input[:updates].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for IPSetUpdates
    class IPSetUpdates
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::IPSetUpdate.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for IPSetUpdate
    class IPSetUpdate
      def self.build(input)
        data = {}
        data['Action'] = input[:action] unless input[:action].nil?
        data['IPSetDescriptor'] = Builders::IPSetDescriptor.build(input[:ip_set_descriptor]) unless input[:ip_set_descriptor].nil?
        data
      end
    end

    # Structure Builder for IPSetDescriptor
    class IPSetDescriptor
      def self.build(input)
        data = {}
        data['Type'] = input[:type] unless input[:type].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for UpdateRateBasedRule
    class UpdateRateBasedRule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_Regional_20161128.UpdateRateBasedRule'
        data = {}
        data['RuleId'] = input[:rule_id] unless input[:rule_id].nil?
        data['ChangeToken'] = input[:change_token] unless input[:change_token].nil?
        data['Updates'] = Builders::RuleUpdates.build(input[:updates]) unless input[:updates].nil?
        data['RateLimit'] = input[:rate_limit] unless input[:rate_limit].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for RuleUpdates
    class RuleUpdates
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::RuleUpdate.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for RuleUpdate
    class RuleUpdate
      def self.build(input)
        data = {}
        data['Action'] = input[:action] unless input[:action].nil?
        data['Predicate'] = Builders::Predicate.build(input[:predicate]) unless input[:predicate].nil?
        data
      end
    end

    # Structure Builder for Predicate
    class Predicate
      def self.build(input)
        data = {}
        data['Negated'] = input[:negated] unless input[:negated].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data['DataId'] = input[:data_id] unless input[:data_id].nil?
        data
      end
    end

    # Operation Builder for UpdateRegexMatchSet
    class UpdateRegexMatchSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_Regional_20161128.UpdateRegexMatchSet'
        data = {}
        data['RegexMatchSetId'] = input[:regex_match_set_id] unless input[:regex_match_set_id].nil?
        data['Updates'] = Builders::RegexMatchSetUpdates.build(input[:updates]) unless input[:updates].nil?
        data['ChangeToken'] = input[:change_token] unless input[:change_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for RegexMatchSetUpdates
    class RegexMatchSetUpdates
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::RegexMatchSetUpdate.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for RegexMatchSetUpdate
    class RegexMatchSetUpdate
      def self.build(input)
        data = {}
        data['Action'] = input[:action] unless input[:action].nil?
        data['RegexMatchTuple'] = Builders::RegexMatchTuple.build(input[:regex_match_tuple]) unless input[:regex_match_tuple].nil?
        data
      end
    end

    # Structure Builder for RegexMatchTuple
    class RegexMatchTuple
      def self.build(input)
        data = {}
        data['FieldToMatch'] = Builders::FieldToMatch.build(input[:field_to_match]) unless input[:field_to_match].nil?
        data['TextTransformation'] = input[:text_transformation] unless input[:text_transformation].nil?
        data['RegexPatternSetId'] = input[:regex_pattern_set_id] unless input[:regex_pattern_set_id].nil?
        data
      end
    end

    # Operation Builder for UpdateRegexPatternSet
    class UpdateRegexPatternSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_Regional_20161128.UpdateRegexPatternSet'
        data = {}
        data['RegexPatternSetId'] = input[:regex_pattern_set_id] unless input[:regex_pattern_set_id].nil?
        data['Updates'] = Builders::RegexPatternSetUpdates.build(input[:updates]) unless input[:updates].nil?
        data['ChangeToken'] = input[:change_token] unless input[:change_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for RegexPatternSetUpdates
    class RegexPatternSetUpdates
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::RegexPatternSetUpdate.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for RegexPatternSetUpdate
    class RegexPatternSetUpdate
      def self.build(input)
        data = {}
        data['Action'] = input[:action] unless input[:action].nil?
        data['RegexPatternString'] = input[:regex_pattern_string] unless input[:regex_pattern_string].nil?
        data
      end
    end

    # Operation Builder for UpdateRule
    class UpdateRule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_Regional_20161128.UpdateRule'
        data = {}
        data['RuleId'] = input[:rule_id] unless input[:rule_id].nil?
        data['ChangeToken'] = input[:change_token] unless input[:change_token].nil?
        data['Updates'] = Builders::RuleUpdates.build(input[:updates]) unless input[:updates].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateRuleGroup
    class UpdateRuleGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_Regional_20161128.UpdateRuleGroup'
        data = {}
        data['RuleGroupId'] = input[:rule_group_id] unless input[:rule_group_id].nil?
        data['Updates'] = Builders::RuleGroupUpdates.build(input[:updates]) unless input[:updates].nil?
        data['ChangeToken'] = input[:change_token] unless input[:change_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for RuleGroupUpdates
    class RuleGroupUpdates
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::RuleGroupUpdate.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for RuleGroupUpdate
    class RuleGroupUpdate
      def self.build(input)
        data = {}
        data['Action'] = input[:action] unless input[:action].nil?
        data['ActivatedRule'] = Builders::ActivatedRule.build(input[:activated_rule]) unless input[:activated_rule].nil?
        data
      end
    end

    # Structure Builder for ActivatedRule
    class ActivatedRule
      def self.build(input)
        data = {}
        data['Priority'] = input[:priority] unless input[:priority].nil?
        data['RuleId'] = input[:rule_id] unless input[:rule_id].nil?
        data['Action'] = Builders::WafAction.build(input[:action]) unless input[:action].nil?
        data['OverrideAction'] = Builders::WafOverrideAction.build(input[:override_action]) unless input[:override_action].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data['ExcludedRules'] = Builders::ExcludedRules.build(input[:excluded_rules]) unless input[:excluded_rules].nil?
        data
      end
    end

    # List Builder for ExcludedRules
    class ExcludedRules
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ExcludedRule.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ExcludedRule
    class ExcludedRule
      def self.build(input)
        data = {}
        data['RuleId'] = input[:rule_id] unless input[:rule_id].nil?
        data
      end
    end

    # Structure Builder for WafOverrideAction
    class WafOverrideAction
      def self.build(input)
        data = {}
        data['Type'] = input[:type] unless input[:type].nil?
        data
      end
    end

    # Operation Builder for UpdateSizeConstraintSet
    class UpdateSizeConstraintSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_Regional_20161128.UpdateSizeConstraintSet'
        data = {}
        data['SizeConstraintSetId'] = input[:size_constraint_set_id] unless input[:size_constraint_set_id].nil?
        data['ChangeToken'] = input[:change_token] unless input[:change_token].nil?
        data['Updates'] = Builders::SizeConstraintSetUpdates.build(input[:updates]) unless input[:updates].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for SizeConstraintSetUpdates
    class SizeConstraintSetUpdates
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::SizeConstraintSetUpdate.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for SizeConstraintSetUpdate
    class SizeConstraintSetUpdate
      def self.build(input)
        data = {}
        data['Action'] = input[:action] unless input[:action].nil?
        data['SizeConstraint'] = Builders::SizeConstraint.build(input[:size_constraint]) unless input[:size_constraint].nil?
        data
      end
    end

    # Structure Builder for SizeConstraint
    class SizeConstraint
      def self.build(input)
        data = {}
        data['FieldToMatch'] = Builders::FieldToMatch.build(input[:field_to_match]) unless input[:field_to_match].nil?
        data['TextTransformation'] = input[:text_transformation] unless input[:text_transformation].nil?
        data['ComparisonOperator'] = input[:comparison_operator] unless input[:comparison_operator].nil?
        data['Size'] = input[:size] unless input[:size].nil?
        data
      end
    end

    # Operation Builder for UpdateSqlInjectionMatchSet
    class UpdateSqlInjectionMatchSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_Regional_20161128.UpdateSqlInjectionMatchSet'
        data = {}
        data['SqlInjectionMatchSetId'] = input[:sql_injection_match_set_id] unless input[:sql_injection_match_set_id].nil?
        data['ChangeToken'] = input[:change_token] unless input[:change_token].nil?
        data['Updates'] = Builders::SqlInjectionMatchSetUpdates.build(input[:updates]) unless input[:updates].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for SqlInjectionMatchSetUpdates
    class SqlInjectionMatchSetUpdates
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::SqlInjectionMatchSetUpdate.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for SqlInjectionMatchSetUpdate
    class SqlInjectionMatchSetUpdate
      def self.build(input)
        data = {}
        data['Action'] = input[:action] unless input[:action].nil?
        data['SqlInjectionMatchTuple'] = Builders::SqlInjectionMatchTuple.build(input[:sql_injection_match_tuple]) unless input[:sql_injection_match_tuple].nil?
        data
      end
    end

    # Structure Builder for SqlInjectionMatchTuple
    class SqlInjectionMatchTuple
      def self.build(input)
        data = {}
        data['FieldToMatch'] = Builders::FieldToMatch.build(input[:field_to_match]) unless input[:field_to_match].nil?
        data['TextTransformation'] = input[:text_transformation] unless input[:text_transformation].nil?
        data
      end
    end

    # Operation Builder for UpdateWebACL
    class UpdateWebACL
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_Regional_20161128.UpdateWebACL'
        data = {}
        data['WebACLId'] = input[:web_acl_id] unless input[:web_acl_id].nil?
        data['ChangeToken'] = input[:change_token] unless input[:change_token].nil?
        data['Updates'] = Builders::WebACLUpdates.build(input[:updates]) unless input[:updates].nil?
        data['DefaultAction'] = Builders::WafAction.build(input[:default_action]) unless input[:default_action].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for WebACLUpdates
    class WebACLUpdates
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::WebACLUpdate.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for WebACLUpdate
    class WebACLUpdate
      def self.build(input)
        data = {}
        data['Action'] = input[:action] unless input[:action].nil?
        data['ActivatedRule'] = Builders::ActivatedRule.build(input[:activated_rule]) unless input[:activated_rule].nil?
        data
      end
    end

    # Operation Builder for UpdateXssMatchSet
    class UpdateXssMatchSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSWAF_Regional_20161128.UpdateXssMatchSet'
        data = {}
        data['XssMatchSetId'] = input[:xss_match_set_id] unless input[:xss_match_set_id].nil?
        data['ChangeToken'] = input[:change_token] unless input[:change_token].nil?
        data['Updates'] = Builders::XssMatchSetUpdates.build(input[:updates]) unless input[:updates].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for XssMatchSetUpdates
    class XssMatchSetUpdates
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::XssMatchSetUpdate.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for XssMatchSetUpdate
    class XssMatchSetUpdate
      def self.build(input)
        data = {}
        data['Action'] = input[:action] unless input[:action].nil?
        data['XssMatchTuple'] = Builders::XssMatchTuple.build(input[:xss_match_tuple]) unless input[:xss_match_tuple].nil?
        data
      end
    end

    # Structure Builder for XssMatchTuple
    class XssMatchTuple
      def self.build(input)
        data = {}
        data['FieldToMatch'] = Builders::FieldToMatch.build(input[:field_to_match]) unless input[:field_to_match].nil?
        data['TextTransformation'] = input[:text_transformation] unless input[:text_transformation].nil?
        data
      end
    end
  end
end
