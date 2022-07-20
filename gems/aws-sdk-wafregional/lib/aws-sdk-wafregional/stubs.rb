# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'
require 'stringio'

module AWS::SDK::WAFRegional
  module Stubs

    # Operation Stubber for AssociateWebACL
    class AssociateWebACL
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateByteMatchSet
    class CreateByteMatchSet
      def self.default(visited=[])
        {
          byte_match_set: ByteMatchSet.default(visited),
          change_token: 'change_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ByteMatchSet'] = ByteMatchSet.stub(stub[:byte_match_set]) unless stub[:byte_match_set].nil?
        data['ChangeToken'] = stub[:change_token] unless stub[:change_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for ByteMatchSet
    class ByteMatchSet
      def self.default(visited=[])
        return nil if visited.include?('ByteMatchSet')
        visited = visited + ['ByteMatchSet']
        {
          byte_match_set_id: 'byte_match_set_id',
          name: 'name',
          byte_match_tuples: ByteMatchTuples.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ByteMatchSet.new
        data = {}
        data['ByteMatchSetId'] = stub[:byte_match_set_id] unless stub[:byte_match_set_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['ByteMatchTuples'] = ByteMatchTuples.stub(stub[:byte_match_tuples]) unless stub[:byte_match_tuples].nil?
        data
      end
    end

    # List Stubber for ByteMatchTuples
    class ByteMatchTuples
      def self.default(visited=[])
        return nil if visited.include?('ByteMatchTuples')
        visited = visited + ['ByteMatchTuples']
        [
          ByteMatchTuple.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ByteMatchTuple.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ByteMatchTuple
    class ByteMatchTuple
      def self.default(visited=[])
        return nil if visited.include?('ByteMatchTuple')
        visited = visited + ['ByteMatchTuple']
        {
          field_to_match: FieldToMatch.default(visited),
          target_string: 'target_string',
          text_transformation: 'text_transformation',
          positional_constraint: 'positional_constraint',
        }
      end

      def self.stub(stub)
        stub ||= Types::ByteMatchTuple.new
        data = {}
        data['FieldToMatch'] = FieldToMatch.stub(stub[:field_to_match]) unless stub[:field_to_match].nil?
        data['TargetString'] = ::Base64::encode64(stub[:target_string]) unless stub[:target_string].nil?
        data['TextTransformation'] = stub[:text_transformation] unless stub[:text_transformation].nil?
        data['PositionalConstraint'] = stub[:positional_constraint] unless stub[:positional_constraint].nil?
        data
      end
    end

    # Structure Stubber for FieldToMatch
    class FieldToMatch
      def self.default(visited=[])
        return nil if visited.include?('FieldToMatch')
        visited = visited + ['FieldToMatch']
        {
          type: 'type',
          data: 'data',
        }
      end

      def self.stub(stub)
        stub ||= Types::FieldToMatch.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Data'] = stub[:data] unless stub[:data].nil?
        data
      end
    end

    # Operation Stubber for CreateGeoMatchSet
    class CreateGeoMatchSet
      def self.default(visited=[])
        {
          geo_match_set: GeoMatchSet.default(visited),
          change_token: 'change_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GeoMatchSet'] = GeoMatchSet.stub(stub[:geo_match_set]) unless stub[:geo_match_set].nil?
        data['ChangeToken'] = stub[:change_token] unless stub[:change_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for GeoMatchSet
    class GeoMatchSet
      def self.default(visited=[])
        return nil if visited.include?('GeoMatchSet')
        visited = visited + ['GeoMatchSet']
        {
          geo_match_set_id: 'geo_match_set_id',
          name: 'name',
          geo_match_constraints: GeoMatchConstraints.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::GeoMatchSet.new
        data = {}
        data['GeoMatchSetId'] = stub[:geo_match_set_id] unless stub[:geo_match_set_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['GeoMatchConstraints'] = GeoMatchConstraints.stub(stub[:geo_match_constraints]) unless stub[:geo_match_constraints].nil?
        data
      end
    end

    # List Stubber for GeoMatchConstraints
    class GeoMatchConstraints
      def self.default(visited=[])
        return nil if visited.include?('GeoMatchConstraints')
        visited = visited + ['GeoMatchConstraints']
        [
          GeoMatchConstraint.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << GeoMatchConstraint.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for GeoMatchConstraint
    class GeoMatchConstraint
      def self.default(visited=[])
        return nil if visited.include?('GeoMatchConstraint')
        visited = visited + ['GeoMatchConstraint']
        {
          type: 'type',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::GeoMatchConstraint.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for CreateIPSet
    class CreateIPSet
      def self.default(visited=[])
        {
          ip_set: IPSet.default(visited),
          change_token: 'change_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['IPSet'] = IPSet.stub(stub[:ip_set]) unless stub[:ip_set].nil?
        data['ChangeToken'] = stub[:change_token] unless stub[:change_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for IPSet
    class IPSet
      def self.default(visited=[])
        return nil if visited.include?('IPSet')
        visited = visited + ['IPSet']
        {
          ip_set_id: 'ip_set_id',
          name: 'name',
          ip_set_descriptors: IPSetDescriptors.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::IPSet.new
        data = {}
        data['IPSetId'] = stub[:ip_set_id] unless stub[:ip_set_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['IPSetDescriptors'] = IPSetDescriptors.stub(stub[:ip_set_descriptors]) unless stub[:ip_set_descriptors].nil?
        data
      end
    end

    # List Stubber for IPSetDescriptors
    class IPSetDescriptors
      def self.default(visited=[])
        return nil if visited.include?('IPSetDescriptors')
        visited = visited + ['IPSetDescriptors']
        [
          IPSetDescriptor.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << IPSetDescriptor.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for IPSetDescriptor
    class IPSetDescriptor
      def self.default(visited=[])
        return nil if visited.include?('IPSetDescriptor')
        visited = visited + ['IPSetDescriptor']
        {
          type: 'type',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::IPSetDescriptor.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for CreateRateBasedRule
    class CreateRateBasedRule
      def self.default(visited=[])
        {
          rule: RateBasedRule.default(visited),
          change_token: 'change_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Rule'] = RateBasedRule.stub(stub[:rule]) unless stub[:rule].nil?
        data['ChangeToken'] = stub[:change_token] unless stub[:change_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for RateBasedRule
    class RateBasedRule
      def self.default(visited=[])
        return nil if visited.include?('RateBasedRule')
        visited = visited + ['RateBasedRule']
        {
          rule_id: 'rule_id',
          name: 'name',
          metric_name: 'metric_name',
          match_predicates: Predicates.default(visited),
          rate_key: 'rate_key',
          rate_limit: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::RateBasedRule.new
        data = {}
        data['RuleId'] = stub[:rule_id] unless stub[:rule_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['MetricName'] = stub[:metric_name] unless stub[:metric_name].nil?
        data['MatchPredicates'] = Predicates.stub(stub[:match_predicates]) unless stub[:match_predicates].nil?
        data['RateKey'] = stub[:rate_key] unless stub[:rate_key].nil?
        data['RateLimit'] = stub[:rate_limit] unless stub[:rate_limit].nil?
        data
      end
    end

    # List Stubber for Predicates
    class Predicates
      def self.default(visited=[])
        return nil if visited.include?('Predicates')
        visited = visited + ['Predicates']
        [
          Predicate.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Predicate.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Predicate
    class Predicate
      def self.default(visited=[])
        return nil if visited.include?('Predicate')
        visited = visited + ['Predicate']
        {
          negated: false,
          type: 'type',
          data_id: 'data_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::Predicate.new
        data = {}
        data['Negated'] = stub[:negated] unless stub[:negated].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['DataId'] = stub[:data_id] unless stub[:data_id].nil?
        data
      end
    end

    # Operation Stubber for CreateRegexMatchSet
    class CreateRegexMatchSet
      def self.default(visited=[])
        {
          regex_match_set: RegexMatchSet.default(visited),
          change_token: 'change_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['RegexMatchSet'] = RegexMatchSet.stub(stub[:regex_match_set]) unless stub[:regex_match_set].nil?
        data['ChangeToken'] = stub[:change_token] unless stub[:change_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for RegexMatchSet
    class RegexMatchSet
      def self.default(visited=[])
        return nil if visited.include?('RegexMatchSet')
        visited = visited + ['RegexMatchSet']
        {
          regex_match_set_id: 'regex_match_set_id',
          name: 'name',
          regex_match_tuples: RegexMatchTuples.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RegexMatchSet.new
        data = {}
        data['RegexMatchSetId'] = stub[:regex_match_set_id] unless stub[:regex_match_set_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['RegexMatchTuples'] = RegexMatchTuples.stub(stub[:regex_match_tuples]) unless stub[:regex_match_tuples].nil?
        data
      end
    end

    # List Stubber for RegexMatchTuples
    class RegexMatchTuples
      def self.default(visited=[])
        return nil if visited.include?('RegexMatchTuples')
        visited = visited + ['RegexMatchTuples']
        [
          RegexMatchTuple.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << RegexMatchTuple.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RegexMatchTuple
    class RegexMatchTuple
      def self.default(visited=[])
        return nil if visited.include?('RegexMatchTuple')
        visited = visited + ['RegexMatchTuple']
        {
          field_to_match: FieldToMatch.default(visited),
          text_transformation: 'text_transformation',
          regex_pattern_set_id: 'regex_pattern_set_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::RegexMatchTuple.new
        data = {}
        data['FieldToMatch'] = FieldToMatch.stub(stub[:field_to_match]) unless stub[:field_to_match].nil?
        data['TextTransformation'] = stub[:text_transformation] unless stub[:text_transformation].nil?
        data['RegexPatternSetId'] = stub[:regex_pattern_set_id] unless stub[:regex_pattern_set_id].nil?
        data
      end
    end

    # Operation Stubber for CreateRegexPatternSet
    class CreateRegexPatternSet
      def self.default(visited=[])
        {
          regex_pattern_set: RegexPatternSet.default(visited),
          change_token: 'change_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['RegexPatternSet'] = RegexPatternSet.stub(stub[:regex_pattern_set]) unless stub[:regex_pattern_set].nil?
        data['ChangeToken'] = stub[:change_token] unless stub[:change_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for RegexPatternSet
    class RegexPatternSet
      def self.default(visited=[])
        return nil if visited.include?('RegexPatternSet')
        visited = visited + ['RegexPatternSet']
        {
          regex_pattern_set_id: 'regex_pattern_set_id',
          name: 'name',
          regex_pattern_strings: RegexPatternStrings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RegexPatternSet.new
        data = {}
        data['RegexPatternSetId'] = stub[:regex_pattern_set_id] unless stub[:regex_pattern_set_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['RegexPatternStrings'] = RegexPatternStrings.stub(stub[:regex_pattern_strings]) unless stub[:regex_pattern_strings].nil?
        data
      end
    end

    # List Stubber for RegexPatternStrings
    class RegexPatternStrings
      def self.default(visited=[])
        return nil if visited.include?('RegexPatternStrings')
        visited = visited + ['RegexPatternStrings']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for CreateRule
    class CreateRule
      def self.default(visited=[])
        {
          rule: Rule.default(visited),
          change_token: 'change_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Rule'] = Rule.stub(stub[:rule]) unless stub[:rule].nil?
        data['ChangeToken'] = stub[:change_token] unless stub[:change_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Rule
    class Rule
      def self.default(visited=[])
        return nil if visited.include?('Rule')
        visited = visited + ['Rule']
        {
          rule_id: 'rule_id',
          name: 'name',
          metric_name: 'metric_name',
          predicates: Predicates.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Rule.new
        data = {}
        data['RuleId'] = stub[:rule_id] unless stub[:rule_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['MetricName'] = stub[:metric_name] unless stub[:metric_name].nil?
        data['Predicates'] = Predicates.stub(stub[:predicates]) unless stub[:predicates].nil?
        data
      end
    end

    # Operation Stubber for CreateRuleGroup
    class CreateRuleGroup
      def self.default(visited=[])
        {
          rule_group: RuleGroup.default(visited),
          change_token: 'change_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['RuleGroup'] = RuleGroup.stub(stub[:rule_group]) unless stub[:rule_group].nil?
        data['ChangeToken'] = stub[:change_token] unless stub[:change_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for RuleGroup
    class RuleGroup
      def self.default(visited=[])
        return nil if visited.include?('RuleGroup')
        visited = visited + ['RuleGroup']
        {
          rule_group_id: 'rule_group_id',
          name: 'name',
          metric_name: 'metric_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::RuleGroup.new
        data = {}
        data['RuleGroupId'] = stub[:rule_group_id] unless stub[:rule_group_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['MetricName'] = stub[:metric_name] unless stub[:metric_name].nil?
        data
      end
    end

    # Operation Stubber for CreateSizeConstraintSet
    class CreateSizeConstraintSet
      def self.default(visited=[])
        {
          size_constraint_set: SizeConstraintSet.default(visited),
          change_token: 'change_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['SizeConstraintSet'] = SizeConstraintSet.stub(stub[:size_constraint_set]) unless stub[:size_constraint_set].nil?
        data['ChangeToken'] = stub[:change_token] unless stub[:change_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for SizeConstraintSet
    class SizeConstraintSet
      def self.default(visited=[])
        return nil if visited.include?('SizeConstraintSet')
        visited = visited + ['SizeConstraintSet']
        {
          size_constraint_set_id: 'size_constraint_set_id',
          name: 'name',
          size_constraints: SizeConstraints.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SizeConstraintSet.new
        data = {}
        data['SizeConstraintSetId'] = stub[:size_constraint_set_id] unless stub[:size_constraint_set_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['SizeConstraints'] = SizeConstraints.stub(stub[:size_constraints]) unless stub[:size_constraints].nil?
        data
      end
    end

    # List Stubber for SizeConstraints
    class SizeConstraints
      def self.default(visited=[])
        return nil if visited.include?('SizeConstraints')
        visited = visited + ['SizeConstraints']
        [
          SizeConstraint.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << SizeConstraint.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SizeConstraint
    class SizeConstraint
      def self.default(visited=[])
        return nil if visited.include?('SizeConstraint')
        visited = visited + ['SizeConstraint']
        {
          field_to_match: FieldToMatch.default(visited),
          text_transformation: 'text_transformation',
          comparison_operator: 'comparison_operator',
          size: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::SizeConstraint.new
        data = {}
        data['FieldToMatch'] = FieldToMatch.stub(stub[:field_to_match]) unless stub[:field_to_match].nil?
        data['TextTransformation'] = stub[:text_transformation] unless stub[:text_transformation].nil?
        data['ComparisonOperator'] = stub[:comparison_operator] unless stub[:comparison_operator].nil?
        data['Size'] = stub[:size] unless stub[:size].nil?
        data
      end
    end

    # Operation Stubber for CreateSqlInjectionMatchSet
    class CreateSqlInjectionMatchSet
      def self.default(visited=[])
        {
          sql_injection_match_set: SqlInjectionMatchSet.default(visited),
          change_token: 'change_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['SqlInjectionMatchSet'] = SqlInjectionMatchSet.stub(stub[:sql_injection_match_set]) unless stub[:sql_injection_match_set].nil?
        data['ChangeToken'] = stub[:change_token] unless stub[:change_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for SqlInjectionMatchSet
    class SqlInjectionMatchSet
      def self.default(visited=[])
        return nil if visited.include?('SqlInjectionMatchSet')
        visited = visited + ['SqlInjectionMatchSet']
        {
          sql_injection_match_set_id: 'sql_injection_match_set_id',
          name: 'name',
          sql_injection_match_tuples: SqlInjectionMatchTuples.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SqlInjectionMatchSet.new
        data = {}
        data['SqlInjectionMatchSetId'] = stub[:sql_injection_match_set_id] unless stub[:sql_injection_match_set_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['SqlInjectionMatchTuples'] = SqlInjectionMatchTuples.stub(stub[:sql_injection_match_tuples]) unless stub[:sql_injection_match_tuples].nil?
        data
      end
    end

    # List Stubber for SqlInjectionMatchTuples
    class SqlInjectionMatchTuples
      def self.default(visited=[])
        return nil if visited.include?('SqlInjectionMatchTuples')
        visited = visited + ['SqlInjectionMatchTuples']
        [
          SqlInjectionMatchTuple.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << SqlInjectionMatchTuple.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SqlInjectionMatchTuple
    class SqlInjectionMatchTuple
      def self.default(visited=[])
        return nil if visited.include?('SqlInjectionMatchTuple')
        visited = visited + ['SqlInjectionMatchTuple']
        {
          field_to_match: FieldToMatch.default(visited),
          text_transformation: 'text_transformation',
        }
      end

      def self.stub(stub)
        stub ||= Types::SqlInjectionMatchTuple.new
        data = {}
        data['FieldToMatch'] = FieldToMatch.stub(stub[:field_to_match]) unless stub[:field_to_match].nil?
        data['TextTransformation'] = stub[:text_transformation] unless stub[:text_transformation].nil?
        data
      end
    end

    # Operation Stubber for CreateWebACL
    class CreateWebACL
      def self.default(visited=[])
        {
          web_acl: WebACL.default(visited),
          change_token: 'change_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['WebACL'] = WebACL.stub(stub[:web_acl]) unless stub[:web_acl].nil?
        data['ChangeToken'] = stub[:change_token] unless stub[:change_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for WebACL
    class WebACL
      def self.default(visited=[])
        return nil if visited.include?('WebACL')
        visited = visited + ['WebACL']
        {
          web_acl_id: 'web_acl_id',
          name: 'name',
          metric_name: 'metric_name',
          default_action: WafAction.default(visited),
          rules: ActivatedRules.default(visited),
          web_acl_arn: 'web_acl_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::WebACL.new
        data = {}
        data['WebACLId'] = stub[:web_acl_id] unless stub[:web_acl_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['MetricName'] = stub[:metric_name] unless stub[:metric_name].nil?
        data['DefaultAction'] = WafAction.stub(stub[:default_action]) unless stub[:default_action].nil?
        data['Rules'] = ActivatedRules.stub(stub[:rules]) unless stub[:rules].nil?
        data['WebACLArn'] = stub[:web_acl_arn] unless stub[:web_acl_arn].nil?
        data
      end
    end

    # List Stubber for ActivatedRules
    class ActivatedRules
      def self.default(visited=[])
        return nil if visited.include?('ActivatedRules')
        visited = visited + ['ActivatedRules']
        [
          ActivatedRule.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ActivatedRule.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ActivatedRule
    class ActivatedRule
      def self.default(visited=[])
        return nil if visited.include?('ActivatedRule')
        visited = visited + ['ActivatedRule']
        {
          priority: 1,
          rule_id: 'rule_id',
          action: WafAction.default(visited),
          override_action: WafOverrideAction.default(visited),
          type: 'type',
          excluded_rules: ExcludedRules.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ActivatedRule.new
        data = {}
        data['Priority'] = stub[:priority] unless stub[:priority].nil?
        data['RuleId'] = stub[:rule_id] unless stub[:rule_id].nil?
        data['Action'] = WafAction.stub(stub[:action]) unless stub[:action].nil?
        data['OverrideAction'] = WafOverrideAction.stub(stub[:override_action]) unless stub[:override_action].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['ExcludedRules'] = ExcludedRules.stub(stub[:excluded_rules]) unless stub[:excluded_rules].nil?
        data
      end
    end

    # List Stubber for ExcludedRules
    class ExcludedRules
      def self.default(visited=[])
        return nil if visited.include?('ExcludedRules')
        visited = visited + ['ExcludedRules']
        [
          ExcludedRule.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ExcludedRule.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ExcludedRule
    class ExcludedRule
      def self.default(visited=[])
        return nil if visited.include?('ExcludedRule')
        visited = visited + ['ExcludedRule']
        {
          rule_id: 'rule_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::ExcludedRule.new
        data = {}
        data['RuleId'] = stub[:rule_id] unless stub[:rule_id].nil?
        data
      end
    end

    # Structure Stubber for WafOverrideAction
    class WafOverrideAction
      def self.default(visited=[])
        return nil if visited.include?('WafOverrideAction')
        visited = visited + ['WafOverrideAction']
        {
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::WafOverrideAction.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # Structure Stubber for WafAction
    class WafAction
      def self.default(visited=[])
        return nil if visited.include?('WafAction')
        visited = visited + ['WafAction']
        {
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::WafAction.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # Operation Stubber for CreateWebACLMigrationStack
    class CreateWebACLMigrationStack
      def self.default(visited=[])
        {
          s3_object_url: 's3_object_url',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['S3ObjectUrl'] = stub[:s3_object_url] unless stub[:s3_object_url].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateXssMatchSet
    class CreateXssMatchSet
      def self.default(visited=[])
        {
          xss_match_set: XssMatchSet.default(visited),
          change_token: 'change_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['XssMatchSet'] = XssMatchSet.stub(stub[:xss_match_set]) unless stub[:xss_match_set].nil?
        data['ChangeToken'] = stub[:change_token] unless stub[:change_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for XssMatchSet
    class XssMatchSet
      def self.default(visited=[])
        return nil if visited.include?('XssMatchSet')
        visited = visited + ['XssMatchSet']
        {
          xss_match_set_id: 'xss_match_set_id',
          name: 'name',
          xss_match_tuples: XssMatchTuples.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::XssMatchSet.new
        data = {}
        data['XssMatchSetId'] = stub[:xss_match_set_id] unless stub[:xss_match_set_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['XssMatchTuples'] = XssMatchTuples.stub(stub[:xss_match_tuples]) unless stub[:xss_match_tuples].nil?
        data
      end
    end

    # List Stubber for XssMatchTuples
    class XssMatchTuples
      def self.default(visited=[])
        return nil if visited.include?('XssMatchTuples')
        visited = visited + ['XssMatchTuples']
        [
          XssMatchTuple.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << XssMatchTuple.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for XssMatchTuple
    class XssMatchTuple
      def self.default(visited=[])
        return nil if visited.include?('XssMatchTuple')
        visited = visited + ['XssMatchTuple']
        {
          field_to_match: FieldToMatch.default(visited),
          text_transformation: 'text_transformation',
        }
      end

      def self.stub(stub)
        stub ||= Types::XssMatchTuple.new
        data = {}
        data['FieldToMatch'] = FieldToMatch.stub(stub[:field_to_match]) unless stub[:field_to_match].nil?
        data['TextTransformation'] = stub[:text_transformation] unless stub[:text_transformation].nil?
        data
      end
    end

    # Operation Stubber for DeleteByteMatchSet
    class DeleteByteMatchSet
      def self.default(visited=[])
        {
          change_token: 'change_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ChangeToken'] = stub[:change_token] unless stub[:change_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteGeoMatchSet
    class DeleteGeoMatchSet
      def self.default(visited=[])
        {
          change_token: 'change_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ChangeToken'] = stub[:change_token] unless stub[:change_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteIPSet
    class DeleteIPSet
      def self.default(visited=[])
        {
          change_token: 'change_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ChangeToken'] = stub[:change_token] unless stub[:change_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteLoggingConfiguration
    class DeleteLoggingConfiguration
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeletePermissionPolicy
    class DeletePermissionPolicy
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteRateBasedRule
    class DeleteRateBasedRule
      def self.default(visited=[])
        {
          change_token: 'change_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ChangeToken'] = stub[:change_token] unless stub[:change_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteRegexMatchSet
    class DeleteRegexMatchSet
      def self.default(visited=[])
        {
          change_token: 'change_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ChangeToken'] = stub[:change_token] unless stub[:change_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteRegexPatternSet
    class DeleteRegexPatternSet
      def self.default(visited=[])
        {
          change_token: 'change_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ChangeToken'] = stub[:change_token] unless stub[:change_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteRule
    class DeleteRule
      def self.default(visited=[])
        {
          change_token: 'change_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ChangeToken'] = stub[:change_token] unless stub[:change_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteRuleGroup
    class DeleteRuleGroup
      def self.default(visited=[])
        {
          change_token: 'change_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ChangeToken'] = stub[:change_token] unless stub[:change_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteSizeConstraintSet
    class DeleteSizeConstraintSet
      def self.default(visited=[])
        {
          change_token: 'change_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ChangeToken'] = stub[:change_token] unless stub[:change_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteSqlInjectionMatchSet
    class DeleteSqlInjectionMatchSet
      def self.default(visited=[])
        {
          change_token: 'change_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ChangeToken'] = stub[:change_token] unless stub[:change_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteWebACL
    class DeleteWebACL
      def self.default(visited=[])
        {
          change_token: 'change_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ChangeToken'] = stub[:change_token] unless stub[:change_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteXssMatchSet
    class DeleteXssMatchSet
      def self.default(visited=[])
        {
          change_token: 'change_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ChangeToken'] = stub[:change_token] unless stub[:change_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DisassociateWebACL
    class DisassociateWebACL
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetByteMatchSet
    class GetByteMatchSet
      def self.default(visited=[])
        {
          byte_match_set: ByteMatchSet.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ByteMatchSet'] = ByteMatchSet.stub(stub[:byte_match_set]) unless stub[:byte_match_set].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetChangeToken
    class GetChangeToken
      def self.default(visited=[])
        {
          change_token: 'change_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ChangeToken'] = stub[:change_token] unless stub[:change_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetChangeTokenStatus
    class GetChangeTokenStatus
      def self.default(visited=[])
        {
          change_token_status: 'change_token_status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ChangeTokenStatus'] = stub[:change_token_status] unless stub[:change_token_status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetGeoMatchSet
    class GetGeoMatchSet
      def self.default(visited=[])
        {
          geo_match_set: GeoMatchSet.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GeoMatchSet'] = GeoMatchSet.stub(stub[:geo_match_set]) unless stub[:geo_match_set].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetIPSet
    class GetIPSet
      def self.default(visited=[])
        {
          ip_set: IPSet.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['IPSet'] = IPSet.stub(stub[:ip_set]) unless stub[:ip_set].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetLoggingConfiguration
    class GetLoggingConfiguration
      def self.default(visited=[])
        {
          logging_configuration: LoggingConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['LoggingConfiguration'] = LoggingConfiguration.stub(stub[:logging_configuration]) unless stub[:logging_configuration].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for LoggingConfiguration
    class LoggingConfiguration
      def self.default(visited=[])
        return nil if visited.include?('LoggingConfiguration')
        visited = visited + ['LoggingConfiguration']
        {
          resource_arn: 'resource_arn',
          log_destination_configs: LogDestinationConfigs.default(visited),
          redacted_fields: RedactedFields.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::LoggingConfiguration.new
        data = {}
        data['ResourceArn'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data['LogDestinationConfigs'] = LogDestinationConfigs.stub(stub[:log_destination_configs]) unless stub[:log_destination_configs].nil?
        data['RedactedFields'] = RedactedFields.stub(stub[:redacted_fields]) unless stub[:redacted_fields].nil?
        data
      end
    end

    # List Stubber for RedactedFields
    class RedactedFields
      def self.default(visited=[])
        return nil if visited.include?('RedactedFields')
        visited = visited + ['RedactedFields']
        [
          FieldToMatch.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << FieldToMatch.stub(element) unless element.nil?
        end
        data
      end
    end

    # List Stubber for LogDestinationConfigs
    class LogDestinationConfigs
      def self.default(visited=[])
        return nil if visited.include?('LogDestinationConfigs')
        visited = visited + ['LogDestinationConfigs']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for GetPermissionPolicy
    class GetPermissionPolicy
      def self.default(visited=[])
        {
          policy: 'policy',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Policy'] = stub[:policy] unless stub[:policy].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetRateBasedRule
    class GetRateBasedRule
      def self.default(visited=[])
        {
          rule: RateBasedRule.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Rule'] = RateBasedRule.stub(stub[:rule]) unless stub[:rule].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetRateBasedRuleManagedKeys
    class GetRateBasedRuleManagedKeys
      def self.default(visited=[])
        {
          managed_keys: ManagedKeys.default(visited),
          next_marker: 'next_marker',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ManagedKeys'] = ManagedKeys.stub(stub[:managed_keys]) unless stub[:managed_keys].nil?
        data['NextMarker'] = stub[:next_marker] unless stub[:next_marker].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ManagedKeys
    class ManagedKeys
      def self.default(visited=[])
        return nil if visited.include?('ManagedKeys')
        visited = visited + ['ManagedKeys']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for GetRegexMatchSet
    class GetRegexMatchSet
      def self.default(visited=[])
        {
          regex_match_set: RegexMatchSet.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['RegexMatchSet'] = RegexMatchSet.stub(stub[:regex_match_set]) unless stub[:regex_match_set].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetRegexPatternSet
    class GetRegexPatternSet
      def self.default(visited=[])
        {
          regex_pattern_set: RegexPatternSet.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['RegexPatternSet'] = RegexPatternSet.stub(stub[:regex_pattern_set]) unless stub[:regex_pattern_set].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetRule
    class GetRule
      def self.default(visited=[])
        {
          rule: Rule.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Rule'] = Rule.stub(stub[:rule]) unless stub[:rule].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetRuleGroup
    class GetRuleGroup
      def self.default(visited=[])
        {
          rule_group: RuleGroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['RuleGroup'] = RuleGroup.stub(stub[:rule_group]) unless stub[:rule_group].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetSampledRequests
    class GetSampledRequests
      def self.default(visited=[])
        {
          sampled_requests: SampledHTTPRequests.default(visited),
          population_size: 1,
          time_window: TimeWindow.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['SampledRequests'] = SampledHTTPRequests.stub(stub[:sampled_requests]) unless stub[:sampled_requests].nil?
        data['PopulationSize'] = stub[:population_size] unless stub[:population_size].nil?
        data['TimeWindow'] = TimeWindow.stub(stub[:time_window]) unless stub[:time_window].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for TimeWindow
    class TimeWindow
      def self.default(visited=[])
        return nil if visited.include?('TimeWindow')
        visited = visited + ['TimeWindow']
        {
          start_time: Time.now,
          end_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::TimeWindow.new
        data = {}
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_time]).to_i unless stub[:end_time].nil?
        data
      end
    end

    # List Stubber for SampledHTTPRequests
    class SampledHTTPRequests
      def self.default(visited=[])
        return nil if visited.include?('SampledHTTPRequests')
        visited = visited + ['SampledHTTPRequests']
        [
          SampledHTTPRequest.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << SampledHTTPRequest.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SampledHTTPRequest
    class SampledHTTPRequest
      def self.default(visited=[])
        return nil if visited.include?('SampledHTTPRequest')
        visited = visited + ['SampledHTTPRequest']
        {
          request: HTTPRequest.default(visited),
          weight: 1,
          timestamp: Time.now,
          action: 'action',
          rule_within_rule_group: 'rule_within_rule_group',
        }
      end

      def self.stub(stub)
        stub ||= Types::SampledHTTPRequest.new
        data = {}
        data['Request'] = HTTPRequest.stub(stub[:request]) unless stub[:request].nil?
        data['Weight'] = stub[:weight] unless stub[:weight].nil?
        data['Timestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:timestamp]).to_i unless stub[:timestamp].nil?
        data['Action'] = stub[:action] unless stub[:action].nil?
        data['RuleWithinRuleGroup'] = stub[:rule_within_rule_group] unless stub[:rule_within_rule_group].nil?
        data
      end
    end

    # Structure Stubber for HTTPRequest
    class HTTPRequest
      def self.default(visited=[])
        return nil if visited.include?('HTTPRequest')
        visited = visited + ['HTTPRequest']
        {
          client_ip: 'client_ip',
          country: 'country',
          uri: 'uri',
          member_method: 'member_method',
          http_version: 'http_version',
          headers: HTTPHeaders.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::HTTPRequest.new
        data = {}
        data['ClientIP'] = stub[:client_ip] unless stub[:client_ip].nil?
        data['Country'] = stub[:country] unless stub[:country].nil?
        data['URI'] = stub[:uri] unless stub[:uri].nil?
        data['Method'] = stub[:member_method] unless stub[:member_method].nil?
        data['HTTPVersion'] = stub[:http_version] unless stub[:http_version].nil?
        data['Headers'] = HTTPHeaders.stub(stub[:headers]) unless stub[:headers].nil?
        data
      end
    end

    # List Stubber for HTTPHeaders
    class HTTPHeaders
      def self.default(visited=[])
        return nil if visited.include?('HTTPHeaders')
        visited = visited + ['HTTPHeaders']
        [
          HTTPHeader.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << HTTPHeader.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for HTTPHeader
    class HTTPHeader
      def self.default(visited=[])
        return nil if visited.include?('HTTPHeader')
        visited = visited + ['HTTPHeader']
        {
          name: 'name',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::HTTPHeader.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for GetSizeConstraintSet
    class GetSizeConstraintSet
      def self.default(visited=[])
        {
          size_constraint_set: SizeConstraintSet.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['SizeConstraintSet'] = SizeConstraintSet.stub(stub[:size_constraint_set]) unless stub[:size_constraint_set].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetSqlInjectionMatchSet
    class GetSqlInjectionMatchSet
      def self.default(visited=[])
        {
          sql_injection_match_set: SqlInjectionMatchSet.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['SqlInjectionMatchSet'] = SqlInjectionMatchSet.stub(stub[:sql_injection_match_set]) unless stub[:sql_injection_match_set].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetWebACL
    class GetWebACL
      def self.default(visited=[])
        {
          web_acl: WebACL.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['WebACL'] = WebACL.stub(stub[:web_acl]) unless stub[:web_acl].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetWebACLForResource
    class GetWebACLForResource
      def self.default(visited=[])
        {
          web_acl_summary: WebACLSummary.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['WebACLSummary'] = WebACLSummary.stub(stub[:web_acl_summary]) unless stub[:web_acl_summary].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for WebACLSummary
    class WebACLSummary
      def self.default(visited=[])
        return nil if visited.include?('WebACLSummary')
        visited = visited + ['WebACLSummary']
        {
          web_acl_id: 'web_acl_id',
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::WebACLSummary.new
        data = {}
        data['WebACLId'] = stub[:web_acl_id] unless stub[:web_acl_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # Operation Stubber for GetXssMatchSet
    class GetXssMatchSet
      def self.default(visited=[])
        {
          xss_match_set: XssMatchSet.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['XssMatchSet'] = XssMatchSet.stub(stub[:xss_match_set]) unless stub[:xss_match_set].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListActivatedRulesInRuleGroup
    class ListActivatedRulesInRuleGroup
      def self.default(visited=[])
        {
          next_marker: 'next_marker',
          activated_rules: ActivatedRules.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextMarker'] = stub[:next_marker] unless stub[:next_marker].nil?
        data['ActivatedRules'] = ActivatedRules.stub(stub[:activated_rules]) unless stub[:activated_rules].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListByteMatchSets
    class ListByteMatchSets
      def self.default(visited=[])
        {
          next_marker: 'next_marker',
          byte_match_sets: ByteMatchSetSummaries.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextMarker'] = stub[:next_marker] unless stub[:next_marker].nil?
        data['ByteMatchSets'] = ByteMatchSetSummaries.stub(stub[:byte_match_sets]) unless stub[:byte_match_sets].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ByteMatchSetSummaries
    class ByteMatchSetSummaries
      def self.default(visited=[])
        return nil if visited.include?('ByteMatchSetSummaries')
        visited = visited + ['ByteMatchSetSummaries']
        [
          ByteMatchSetSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ByteMatchSetSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ByteMatchSetSummary
    class ByteMatchSetSummary
      def self.default(visited=[])
        return nil if visited.include?('ByteMatchSetSummary')
        visited = visited + ['ByteMatchSetSummary']
        {
          byte_match_set_id: 'byte_match_set_id',
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::ByteMatchSetSummary.new
        data = {}
        data['ByteMatchSetId'] = stub[:byte_match_set_id] unless stub[:byte_match_set_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # Operation Stubber for ListGeoMatchSets
    class ListGeoMatchSets
      def self.default(visited=[])
        {
          next_marker: 'next_marker',
          geo_match_sets: GeoMatchSetSummaries.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextMarker'] = stub[:next_marker] unless stub[:next_marker].nil?
        data['GeoMatchSets'] = GeoMatchSetSummaries.stub(stub[:geo_match_sets]) unless stub[:geo_match_sets].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for GeoMatchSetSummaries
    class GeoMatchSetSummaries
      def self.default(visited=[])
        return nil if visited.include?('GeoMatchSetSummaries')
        visited = visited + ['GeoMatchSetSummaries']
        [
          GeoMatchSetSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << GeoMatchSetSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for GeoMatchSetSummary
    class GeoMatchSetSummary
      def self.default(visited=[])
        return nil if visited.include?('GeoMatchSetSummary')
        visited = visited + ['GeoMatchSetSummary']
        {
          geo_match_set_id: 'geo_match_set_id',
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::GeoMatchSetSummary.new
        data = {}
        data['GeoMatchSetId'] = stub[:geo_match_set_id] unless stub[:geo_match_set_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # Operation Stubber for ListIPSets
    class ListIPSets
      def self.default(visited=[])
        {
          next_marker: 'next_marker',
          ip_sets: IPSetSummaries.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextMarker'] = stub[:next_marker] unless stub[:next_marker].nil?
        data['IPSets'] = IPSetSummaries.stub(stub[:ip_sets]) unless stub[:ip_sets].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for IPSetSummaries
    class IPSetSummaries
      def self.default(visited=[])
        return nil if visited.include?('IPSetSummaries')
        visited = visited + ['IPSetSummaries']
        [
          IPSetSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << IPSetSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for IPSetSummary
    class IPSetSummary
      def self.default(visited=[])
        return nil if visited.include?('IPSetSummary')
        visited = visited + ['IPSetSummary']
        {
          ip_set_id: 'ip_set_id',
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::IPSetSummary.new
        data = {}
        data['IPSetId'] = stub[:ip_set_id] unless stub[:ip_set_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # Operation Stubber for ListLoggingConfigurations
    class ListLoggingConfigurations
      def self.default(visited=[])
        {
          logging_configurations: LoggingConfigurations.default(visited),
          next_marker: 'next_marker',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['LoggingConfigurations'] = LoggingConfigurations.stub(stub[:logging_configurations]) unless stub[:logging_configurations].nil?
        data['NextMarker'] = stub[:next_marker] unless stub[:next_marker].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for LoggingConfigurations
    class LoggingConfigurations
      def self.default(visited=[])
        return nil if visited.include?('LoggingConfigurations')
        visited = visited + ['LoggingConfigurations']
        [
          LoggingConfiguration.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << LoggingConfiguration.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListRateBasedRules
    class ListRateBasedRules
      def self.default(visited=[])
        {
          next_marker: 'next_marker',
          rules: RuleSummaries.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextMarker'] = stub[:next_marker] unless stub[:next_marker].nil?
        data['Rules'] = RuleSummaries.stub(stub[:rules]) unless stub[:rules].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for RuleSummaries
    class RuleSummaries
      def self.default(visited=[])
        return nil if visited.include?('RuleSummaries')
        visited = visited + ['RuleSummaries']
        [
          RuleSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << RuleSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RuleSummary
    class RuleSummary
      def self.default(visited=[])
        return nil if visited.include?('RuleSummary')
        visited = visited + ['RuleSummary']
        {
          rule_id: 'rule_id',
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::RuleSummary.new
        data = {}
        data['RuleId'] = stub[:rule_id] unless stub[:rule_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # Operation Stubber for ListRegexMatchSets
    class ListRegexMatchSets
      def self.default(visited=[])
        {
          next_marker: 'next_marker',
          regex_match_sets: RegexMatchSetSummaries.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextMarker'] = stub[:next_marker] unless stub[:next_marker].nil?
        data['RegexMatchSets'] = RegexMatchSetSummaries.stub(stub[:regex_match_sets]) unless stub[:regex_match_sets].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for RegexMatchSetSummaries
    class RegexMatchSetSummaries
      def self.default(visited=[])
        return nil if visited.include?('RegexMatchSetSummaries')
        visited = visited + ['RegexMatchSetSummaries']
        [
          RegexMatchSetSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << RegexMatchSetSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RegexMatchSetSummary
    class RegexMatchSetSummary
      def self.default(visited=[])
        return nil if visited.include?('RegexMatchSetSummary')
        visited = visited + ['RegexMatchSetSummary']
        {
          regex_match_set_id: 'regex_match_set_id',
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::RegexMatchSetSummary.new
        data = {}
        data['RegexMatchSetId'] = stub[:regex_match_set_id] unless stub[:regex_match_set_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # Operation Stubber for ListRegexPatternSets
    class ListRegexPatternSets
      def self.default(visited=[])
        {
          next_marker: 'next_marker',
          regex_pattern_sets: RegexPatternSetSummaries.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextMarker'] = stub[:next_marker] unless stub[:next_marker].nil?
        data['RegexPatternSets'] = RegexPatternSetSummaries.stub(stub[:regex_pattern_sets]) unless stub[:regex_pattern_sets].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for RegexPatternSetSummaries
    class RegexPatternSetSummaries
      def self.default(visited=[])
        return nil if visited.include?('RegexPatternSetSummaries')
        visited = visited + ['RegexPatternSetSummaries']
        [
          RegexPatternSetSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << RegexPatternSetSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RegexPatternSetSummary
    class RegexPatternSetSummary
      def self.default(visited=[])
        return nil if visited.include?('RegexPatternSetSummary')
        visited = visited + ['RegexPatternSetSummary']
        {
          regex_pattern_set_id: 'regex_pattern_set_id',
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::RegexPatternSetSummary.new
        data = {}
        data['RegexPatternSetId'] = stub[:regex_pattern_set_id] unless stub[:regex_pattern_set_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # Operation Stubber for ListResourcesForWebACL
    class ListResourcesForWebACL
      def self.default(visited=[])
        {
          resource_arns: ResourceArns.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ResourceArns'] = ResourceArns.stub(stub[:resource_arns]) unless stub[:resource_arns].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ResourceArns
    class ResourceArns
      def self.default(visited=[])
        return nil if visited.include?('ResourceArns')
        visited = visited + ['ResourceArns']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListRuleGroups
    class ListRuleGroups
      def self.default(visited=[])
        {
          next_marker: 'next_marker',
          rule_groups: RuleGroupSummaries.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextMarker'] = stub[:next_marker] unless stub[:next_marker].nil?
        data['RuleGroups'] = RuleGroupSummaries.stub(stub[:rule_groups]) unless stub[:rule_groups].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for RuleGroupSummaries
    class RuleGroupSummaries
      def self.default(visited=[])
        return nil if visited.include?('RuleGroupSummaries')
        visited = visited + ['RuleGroupSummaries']
        [
          RuleGroupSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << RuleGroupSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RuleGroupSummary
    class RuleGroupSummary
      def self.default(visited=[])
        return nil if visited.include?('RuleGroupSummary')
        visited = visited + ['RuleGroupSummary']
        {
          rule_group_id: 'rule_group_id',
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::RuleGroupSummary.new
        data = {}
        data['RuleGroupId'] = stub[:rule_group_id] unless stub[:rule_group_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # Operation Stubber for ListRules
    class ListRules
      def self.default(visited=[])
        {
          next_marker: 'next_marker',
          rules: RuleSummaries.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextMarker'] = stub[:next_marker] unless stub[:next_marker].nil?
        data['Rules'] = RuleSummaries.stub(stub[:rules]) unless stub[:rules].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListSizeConstraintSets
    class ListSizeConstraintSets
      def self.default(visited=[])
        {
          next_marker: 'next_marker',
          size_constraint_sets: SizeConstraintSetSummaries.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextMarker'] = stub[:next_marker] unless stub[:next_marker].nil?
        data['SizeConstraintSets'] = SizeConstraintSetSummaries.stub(stub[:size_constraint_sets]) unless stub[:size_constraint_sets].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for SizeConstraintSetSummaries
    class SizeConstraintSetSummaries
      def self.default(visited=[])
        return nil if visited.include?('SizeConstraintSetSummaries')
        visited = visited + ['SizeConstraintSetSummaries']
        [
          SizeConstraintSetSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << SizeConstraintSetSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SizeConstraintSetSummary
    class SizeConstraintSetSummary
      def self.default(visited=[])
        return nil if visited.include?('SizeConstraintSetSummary')
        visited = visited + ['SizeConstraintSetSummary']
        {
          size_constraint_set_id: 'size_constraint_set_id',
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::SizeConstraintSetSummary.new
        data = {}
        data['SizeConstraintSetId'] = stub[:size_constraint_set_id] unless stub[:size_constraint_set_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # Operation Stubber for ListSqlInjectionMatchSets
    class ListSqlInjectionMatchSets
      def self.default(visited=[])
        {
          next_marker: 'next_marker',
          sql_injection_match_sets: SqlInjectionMatchSetSummaries.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextMarker'] = stub[:next_marker] unless stub[:next_marker].nil?
        data['SqlInjectionMatchSets'] = SqlInjectionMatchSetSummaries.stub(stub[:sql_injection_match_sets]) unless stub[:sql_injection_match_sets].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for SqlInjectionMatchSetSummaries
    class SqlInjectionMatchSetSummaries
      def self.default(visited=[])
        return nil if visited.include?('SqlInjectionMatchSetSummaries')
        visited = visited + ['SqlInjectionMatchSetSummaries']
        [
          SqlInjectionMatchSetSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << SqlInjectionMatchSetSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SqlInjectionMatchSetSummary
    class SqlInjectionMatchSetSummary
      def self.default(visited=[])
        return nil if visited.include?('SqlInjectionMatchSetSummary')
        visited = visited + ['SqlInjectionMatchSetSummary']
        {
          sql_injection_match_set_id: 'sql_injection_match_set_id',
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::SqlInjectionMatchSetSummary.new
        data = {}
        data['SqlInjectionMatchSetId'] = stub[:sql_injection_match_set_id] unless stub[:sql_injection_match_set_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # Operation Stubber for ListSubscribedRuleGroups
    class ListSubscribedRuleGroups
      def self.default(visited=[])
        {
          next_marker: 'next_marker',
          rule_groups: SubscribedRuleGroupSummaries.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextMarker'] = stub[:next_marker] unless stub[:next_marker].nil?
        data['RuleGroups'] = SubscribedRuleGroupSummaries.stub(stub[:rule_groups]) unless stub[:rule_groups].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for SubscribedRuleGroupSummaries
    class SubscribedRuleGroupSummaries
      def self.default(visited=[])
        return nil if visited.include?('SubscribedRuleGroupSummaries')
        visited = visited + ['SubscribedRuleGroupSummaries']
        [
          SubscribedRuleGroupSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << SubscribedRuleGroupSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SubscribedRuleGroupSummary
    class SubscribedRuleGroupSummary
      def self.default(visited=[])
        return nil if visited.include?('SubscribedRuleGroupSummary')
        visited = visited + ['SubscribedRuleGroupSummary']
        {
          rule_group_id: 'rule_group_id',
          name: 'name',
          metric_name: 'metric_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::SubscribedRuleGroupSummary.new
        data = {}
        data['RuleGroupId'] = stub[:rule_group_id] unless stub[:rule_group_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['MetricName'] = stub[:metric_name] unless stub[:metric_name].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          next_marker: 'next_marker',
          tag_info_for_resource: TagInfoForResource.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextMarker'] = stub[:next_marker] unless stub[:next_marker].nil?
        data['TagInfoForResource'] = TagInfoForResource.stub(stub[:tag_info_for_resource]) unless stub[:tag_info_for_resource].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for TagInfoForResource
    class TagInfoForResource
      def self.default(visited=[])
        return nil if visited.include?('TagInfoForResource')
        visited = visited + ['TagInfoForResource']
        {
          resource_arn: 'resource_arn',
          tag_list: TagList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TagInfoForResource.new
        data = {}
        data['ResourceARN'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data['TagList'] = TagList.stub(stub[:tag_list]) unless stub[:tag_list].nil?
        data
      end
    end

    # List Stubber for TagList
    class TagList
      def self.default(visited=[])
        return nil if visited.include?('TagList')
        visited = visited + ['TagList']
        [
          Tag.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Tag.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Tag
    class Tag
      def self.default(visited=[])
        return nil if visited.include?('Tag')
        visited = visited + ['Tag']
        {
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::Tag.new
        data = {}
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for ListWebACLs
    class ListWebACLs
      def self.default(visited=[])
        {
          next_marker: 'next_marker',
          web_ac_ls: WebACLSummaries.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextMarker'] = stub[:next_marker] unless stub[:next_marker].nil?
        data['WebACLs'] = WebACLSummaries.stub(stub[:web_ac_ls]) unless stub[:web_ac_ls].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for WebACLSummaries
    class WebACLSummaries
      def self.default(visited=[])
        return nil if visited.include?('WebACLSummaries')
        visited = visited + ['WebACLSummaries']
        [
          WebACLSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << WebACLSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListXssMatchSets
    class ListXssMatchSets
      def self.default(visited=[])
        {
          next_marker: 'next_marker',
          xss_match_sets: XssMatchSetSummaries.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextMarker'] = stub[:next_marker] unless stub[:next_marker].nil?
        data['XssMatchSets'] = XssMatchSetSummaries.stub(stub[:xss_match_sets]) unless stub[:xss_match_sets].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for XssMatchSetSummaries
    class XssMatchSetSummaries
      def self.default(visited=[])
        return nil if visited.include?('XssMatchSetSummaries')
        visited = visited + ['XssMatchSetSummaries']
        [
          XssMatchSetSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << XssMatchSetSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for XssMatchSetSummary
    class XssMatchSetSummary
      def self.default(visited=[])
        return nil if visited.include?('XssMatchSetSummary')
        visited = visited + ['XssMatchSetSummary']
        {
          xss_match_set_id: 'xss_match_set_id',
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::XssMatchSetSummary.new
        data = {}
        data['XssMatchSetId'] = stub[:xss_match_set_id] unless stub[:xss_match_set_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # Operation Stubber for PutLoggingConfiguration
    class PutLoggingConfiguration
      def self.default(visited=[])
        {
          logging_configuration: LoggingConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['LoggingConfiguration'] = LoggingConfiguration.stub(stub[:logging_configuration]) unless stub[:logging_configuration].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutPermissionPolicy
    class PutPermissionPolicy
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for TagResource
    class TagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UntagResource
    class UntagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateByteMatchSet
    class UpdateByteMatchSet
      def self.default(visited=[])
        {
          change_token: 'change_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ChangeToken'] = stub[:change_token] unless stub[:change_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateGeoMatchSet
    class UpdateGeoMatchSet
      def self.default(visited=[])
        {
          change_token: 'change_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ChangeToken'] = stub[:change_token] unless stub[:change_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateIPSet
    class UpdateIPSet
      def self.default(visited=[])
        {
          change_token: 'change_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ChangeToken'] = stub[:change_token] unless stub[:change_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateRateBasedRule
    class UpdateRateBasedRule
      def self.default(visited=[])
        {
          change_token: 'change_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ChangeToken'] = stub[:change_token] unless stub[:change_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateRegexMatchSet
    class UpdateRegexMatchSet
      def self.default(visited=[])
        {
          change_token: 'change_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ChangeToken'] = stub[:change_token] unless stub[:change_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateRegexPatternSet
    class UpdateRegexPatternSet
      def self.default(visited=[])
        {
          change_token: 'change_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ChangeToken'] = stub[:change_token] unless stub[:change_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateRule
    class UpdateRule
      def self.default(visited=[])
        {
          change_token: 'change_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ChangeToken'] = stub[:change_token] unless stub[:change_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateRuleGroup
    class UpdateRuleGroup
      def self.default(visited=[])
        {
          change_token: 'change_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ChangeToken'] = stub[:change_token] unless stub[:change_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateSizeConstraintSet
    class UpdateSizeConstraintSet
      def self.default(visited=[])
        {
          change_token: 'change_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ChangeToken'] = stub[:change_token] unless stub[:change_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateSqlInjectionMatchSet
    class UpdateSqlInjectionMatchSet
      def self.default(visited=[])
        {
          change_token: 'change_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ChangeToken'] = stub[:change_token] unless stub[:change_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateWebACL
    class UpdateWebACL
      def self.default(visited=[])
        {
          change_token: 'change_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ChangeToken'] = stub[:change_token] unless stub[:change_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateXssMatchSet
    class UpdateXssMatchSet
      def self.default(visited=[])
        {
          change_token: 'change_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ChangeToken'] = stub[:change_token] unless stub[:change_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
