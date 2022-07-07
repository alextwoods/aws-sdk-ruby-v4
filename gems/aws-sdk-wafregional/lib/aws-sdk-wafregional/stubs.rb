# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

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
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateByteMatchSet
    class CreateByteMatchSet
      def self.default(visited=[])
        {
          byte_match_set: Stubs::ByteMatchSet.default(visited),
          change_token: 'change_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ByteMatchSet'] = Stubs::ByteMatchSet.stub(stub[:byte_match_set]) unless stub[:byte_match_set].nil?
        data['ChangeToken'] = stub[:change_token] unless stub[:change_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
          byte_match_tuples: Stubs::ByteMatchTuples.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ByteMatchSet.new
        data = {}
        data['ByteMatchSetId'] = stub[:byte_match_set_id] unless stub[:byte_match_set_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['ByteMatchTuples'] = Stubs::ByteMatchTuples.stub(stub[:byte_match_tuples]) unless stub[:byte_match_tuples].nil?
        data
      end
    end

    # List Stubber for ByteMatchTuples
    class ByteMatchTuples
      def self.default(visited=[])
        return nil if visited.include?('ByteMatchTuples')
        visited = visited + ['ByteMatchTuples']
        [
          Stubs::ByteMatchTuple.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ByteMatchTuple.stub(element) unless element.nil?
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
          field_to_match: Stubs::FieldToMatch.default(visited),
          target_string: 'target_string',
          text_transformation: 'text_transformation',
          positional_constraint: 'positional_constraint',
        }
      end

      def self.stub(stub)
        stub ||= Types::ByteMatchTuple.new
        data = {}
        data['FieldToMatch'] = Stubs::FieldToMatch.stub(stub[:field_to_match]) unless stub[:field_to_match].nil?
        data['TargetString'] = Base64::encode64(stub[:target_string]) unless stub[:target_string].nil?
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
          geo_match_set: Stubs::GeoMatchSet.default(visited),
          change_token: 'change_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GeoMatchSet'] = Stubs::GeoMatchSet.stub(stub[:geo_match_set]) unless stub[:geo_match_set].nil?
        data['ChangeToken'] = stub[:change_token] unless stub[:change_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
          geo_match_constraints: Stubs::GeoMatchConstraints.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::GeoMatchSet.new
        data = {}
        data['GeoMatchSetId'] = stub[:geo_match_set_id] unless stub[:geo_match_set_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['GeoMatchConstraints'] = Stubs::GeoMatchConstraints.stub(stub[:geo_match_constraints]) unless stub[:geo_match_constraints].nil?
        data
      end
    end

    # List Stubber for GeoMatchConstraints
    class GeoMatchConstraints
      def self.default(visited=[])
        return nil if visited.include?('GeoMatchConstraints')
        visited = visited + ['GeoMatchConstraints']
        [
          Stubs::GeoMatchConstraint.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::GeoMatchConstraint.stub(element) unless element.nil?
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
          ip_set: Stubs::IPSet.default(visited),
          change_token: 'change_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['IPSet'] = Stubs::IPSet.stub(stub[:ip_set]) unless stub[:ip_set].nil?
        data['ChangeToken'] = stub[:change_token] unless stub[:change_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
          ip_set_descriptors: Stubs::IPSetDescriptors.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::IPSet.new
        data = {}
        data['IPSetId'] = stub[:ip_set_id] unless stub[:ip_set_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['IPSetDescriptors'] = Stubs::IPSetDescriptors.stub(stub[:ip_set_descriptors]) unless stub[:ip_set_descriptors].nil?
        data
      end
    end

    # List Stubber for IPSetDescriptors
    class IPSetDescriptors
      def self.default(visited=[])
        return nil if visited.include?('IPSetDescriptors')
        visited = visited + ['IPSetDescriptors']
        [
          Stubs::IPSetDescriptor.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::IPSetDescriptor.stub(element) unless element.nil?
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
          rule: Stubs::RateBasedRule.default(visited),
          change_token: 'change_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Rule'] = Stubs::RateBasedRule.stub(stub[:rule]) unless stub[:rule].nil?
        data['ChangeToken'] = stub[:change_token] unless stub[:change_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
          match_predicates: Stubs::Predicates.default(visited),
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
        data['MatchPredicates'] = Stubs::Predicates.stub(stub[:match_predicates]) unless stub[:match_predicates].nil?
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
          Stubs::Predicate.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Predicate.stub(element) unless element.nil?
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
          regex_match_set: Stubs::RegexMatchSet.default(visited),
          change_token: 'change_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['RegexMatchSet'] = Stubs::RegexMatchSet.stub(stub[:regex_match_set]) unless stub[:regex_match_set].nil?
        data['ChangeToken'] = stub[:change_token] unless stub[:change_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
          regex_match_tuples: Stubs::RegexMatchTuples.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RegexMatchSet.new
        data = {}
        data['RegexMatchSetId'] = stub[:regex_match_set_id] unless stub[:regex_match_set_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['RegexMatchTuples'] = Stubs::RegexMatchTuples.stub(stub[:regex_match_tuples]) unless stub[:regex_match_tuples].nil?
        data
      end
    end

    # List Stubber for RegexMatchTuples
    class RegexMatchTuples
      def self.default(visited=[])
        return nil if visited.include?('RegexMatchTuples')
        visited = visited + ['RegexMatchTuples']
        [
          Stubs::RegexMatchTuple.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::RegexMatchTuple.stub(element) unless element.nil?
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
          field_to_match: Stubs::FieldToMatch.default(visited),
          text_transformation: 'text_transformation',
          regex_pattern_set_id: 'regex_pattern_set_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::RegexMatchTuple.new
        data = {}
        data['FieldToMatch'] = Stubs::FieldToMatch.stub(stub[:field_to_match]) unless stub[:field_to_match].nil?
        data['TextTransformation'] = stub[:text_transformation] unless stub[:text_transformation].nil?
        data['RegexPatternSetId'] = stub[:regex_pattern_set_id] unless stub[:regex_pattern_set_id].nil?
        data
      end
    end

    # Operation Stubber for CreateRegexPatternSet
    class CreateRegexPatternSet
      def self.default(visited=[])
        {
          regex_pattern_set: Stubs::RegexPatternSet.default(visited),
          change_token: 'change_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['RegexPatternSet'] = Stubs::RegexPatternSet.stub(stub[:regex_pattern_set]) unless stub[:regex_pattern_set].nil?
        data['ChangeToken'] = stub[:change_token] unless stub[:change_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
          regex_pattern_strings: Stubs::RegexPatternStrings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RegexPatternSet.new
        data = {}
        data['RegexPatternSetId'] = stub[:regex_pattern_set_id] unless stub[:regex_pattern_set_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['RegexPatternStrings'] = Stubs::RegexPatternStrings.stub(stub[:regex_pattern_strings]) unless stub[:regex_pattern_strings].nil?
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
          rule: Stubs::Rule.default(visited),
          change_token: 'change_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Rule'] = Stubs::Rule.stub(stub[:rule]) unless stub[:rule].nil?
        data['ChangeToken'] = stub[:change_token] unless stub[:change_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
          predicates: Stubs::Predicates.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Rule.new
        data = {}
        data['RuleId'] = stub[:rule_id] unless stub[:rule_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['MetricName'] = stub[:metric_name] unless stub[:metric_name].nil?
        data['Predicates'] = Stubs::Predicates.stub(stub[:predicates]) unless stub[:predicates].nil?
        data
      end
    end

    # Operation Stubber for CreateRuleGroup
    class CreateRuleGroup
      def self.default(visited=[])
        {
          rule_group: Stubs::RuleGroup.default(visited),
          change_token: 'change_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['RuleGroup'] = Stubs::RuleGroup.stub(stub[:rule_group]) unless stub[:rule_group].nil?
        data['ChangeToken'] = stub[:change_token] unless stub[:change_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
          size_constraint_set: Stubs::SizeConstraintSet.default(visited),
          change_token: 'change_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['SizeConstraintSet'] = Stubs::SizeConstraintSet.stub(stub[:size_constraint_set]) unless stub[:size_constraint_set].nil?
        data['ChangeToken'] = stub[:change_token] unless stub[:change_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
          size_constraints: Stubs::SizeConstraints.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SizeConstraintSet.new
        data = {}
        data['SizeConstraintSetId'] = stub[:size_constraint_set_id] unless stub[:size_constraint_set_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['SizeConstraints'] = Stubs::SizeConstraints.stub(stub[:size_constraints]) unless stub[:size_constraints].nil?
        data
      end
    end

    # List Stubber for SizeConstraints
    class SizeConstraints
      def self.default(visited=[])
        return nil if visited.include?('SizeConstraints')
        visited = visited + ['SizeConstraints']
        [
          Stubs::SizeConstraint.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SizeConstraint.stub(element) unless element.nil?
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
          field_to_match: Stubs::FieldToMatch.default(visited),
          text_transformation: 'text_transformation',
          comparison_operator: 'comparison_operator',
          size: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::SizeConstraint.new
        data = {}
        data['FieldToMatch'] = Stubs::FieldToMatch.stub(stub[:field_to_match]) unless stub[:field_to_match].nil?
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
          sql_injection_match_set: Stubs::SqlInjectionMatchSet.default(visited),
          change_token: 'change_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['SqlInjectionMatchSet'] = Stubs::SqlInjectionMatchSet.stub(stub[:sql_injection_match_set]) unless stub[:sql_injection_match_set].nil?
        data['ChangeToken'] = stub[:change_token] unless stub[:change_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
          sql_injection_match_tuples: Stubs::SqlInjectionMatchTuples.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SqlInjectionMatchSet.new
        data = {}
        data['SqlInjectionMatchSetId'] = stub[:sql_injection_match_set_id] unless stub[:sql_injection_match_set_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['SqlInjectionMatchTuples'] = Stubs::SqlInjectionMatchTuples.stub(stub[:sql_injection_match_tuples]) unless stub[:sql_injection_match_tuples].nil?
        data
      end
    end

    # List Stubber for SqlInjectionMatchTuples
    class SqlInjectionMatchTuples
      def self.default(visited=[])
        return nil if visited.include?('SqlInjectionMatchTuples')
        visited = visited + ['SqlInjectionMatchTuples']
        [
          Stubs::SqlInjectionMatchTuple.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SqlInjectionMatchTuple.stub(element) unless element.nil?
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
          field_to_match: Stubs::FieldToMatch.default(visited),
          text_transformation: 'text_transformation',
        }
      end

      def self.stub(stub)
        stub ||= Types::SqlInjectionMatchTuple.new
        data = {}
        data['FieldToMatch'] = Stubs::FieldToMatch.stub(stub[:field_to_match]) unless stub[:field_to_match].nil?
        data['TextTransformation'] = stub[:text_transformation] unless stub[:text_transformation].nil?
        data
      end
    end

    # Operation Stubber for CreateWebACL
    class CreateWebACL
      def self.default(visited=[])
        {
          web_acl: Stubs::WebACL.default(visited),
          change_token: 'change_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['WebACL'] = Stubs::WebACL.stub(stub[:web_acl]) unless stub[:web_acl].nil?
        data['ChangeToken'] = stub[:change_token] unless stub[:change_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
          default_action: Stubs::WafAction.default(visited),
          rules: Stubs::ActivatedRules.default(visited),
          web_acl_arn: 'web_acl_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::WebACL.new
        data = {}
        data['WebACLId'] = stub[:web_acl_id] unless stub[:web_acl_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['MetricName'] = stub[:metric_name] unless stub[:metric_name].nil?
        data['DefaultAction'] = Stubs::WafAction.stub(stub[:default_action]) unless stub[:default_action].nil?
        data['Rules'] = Stubs::ActivatedRules.stub(stub[:rules]) unless stub[:rules].nil?
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
          Stubs::ActivatedRule.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ActivatedRule.stub(element) unless element.nil?
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
          action: Stubs::WafAction.default(visited),
          override_action: Stubs::WafOverrideAction.default(visited),
          type: 'type',
          excluded_rules: Stubs::ExcludedRules.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ActivatedRule.new
        data = {}
        data['Priority'] = stub[:priority] unless stub[:priority].nil?
        data['RuleId'] = stub[:rule_id] unless stub[:rule_id].nil?
        data['Action'] = Stubs::WafAction.stub(stub[:action]) unless stub[:action].nil?
        data['OverrideAction'] = Stubs::WafOverrideAction.stub(stub[:override_action]) unless stub[:override_action].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['ExcludedRules'] = Stubs::ExcludedRules.stub(stub[:excluded_rules]) unless stub[:excluded_rules].nil?
        data
      end
    end

    # List Stubber for ExcludedRules
    class ExcludedRules
      def self.default(visited=[])
        return nil if visited.include?('ExcludedRules')
        visited = visited + ['ExcludedRules']
        [
          Stubs::ExcludedRule.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ExcludedRule.stub(element) unless element.nil?
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
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateXssMatchSet
    class CreateXssMatchSet
      def self.default(visited=[])
        {
          xss_match_set: Stubs::XssMatchSet.default(visited),
          change_token: 'change_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['XssMatchSet'] = Stubs::XssMatchSet.stub(stub[:xss_match_set]) unless stub[:xss_match_set].nil?
        data['ChangeToken'] = stub[:change_token] unless stub[:change_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
          xss_match_tuples: Stubs::XssMatchTuples.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::XssMatchSet.new
        data = {}
        data['XssMatchSetId'] = stub[:xss_match_set_id] unless stub[:xss_match_set_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['XssMatchTuples'] = Stubs::XssMatchTuples.stub(stub[:xss_match_tuples]) unless stub[:xss_match_tuples].nil?
        data
      end
    end

    # List Stubber for XssMatchTuples
    class XssMatchTuples
      def self.default(visited=[])
        return nil if visited.include?('XssMatchTuples')
        visited = visited + ['XssMatchTuples']
        [
          Stubs::XssMatchTuple.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::XssMatchTuple.stub(element) unless element.nil?
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
          field_to_match: Stubs::FieldToMatch.default(visited),
          text_transformation: 'text_transformation',
        }
      end

      def self.stub(stub)
        stub ||= Types::XssMatchTuple.new
        data = {}
        data['FieldToMatch'] = Stubs::FieldToMatch.stub(stub[:field_to_match]) unless stub[:field_to_match].nil?
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
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetByteMatchSet
    class GetByteMatchSet
      def self.default(visited=[])
        {
          byte_match_set: Stubs::ByteMatchSet.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ByteMatchSet'] = Stubs::ByteMatchSet.stub(stub[:byte_match_set]) unless stub[:byte_match_set].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetGeoMatchSet
    class GetGeoMatchSet
      def self.default(visited=[])
        {
          geo_match_set: Stubs::GeoMatchSet.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GeoMatchSet'] = Stubs::GeoMatchSet.stub(stub[:geo_match_set]) unless stub[:geo_match_set].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetIPSet
    class GetIPSet
      def self.default(visited=[])
        {
          ip_set: Stubs::IPSet.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['IPSet'] = Stubs::IPSet.stub(stub[:ip_set]) unless stub[:ip_set].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetLoggingConfiguration
    class GetLoggingConfiguration
      def self.default(visited=[])
        {
          logging_configuration: Stubs::LoggingConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['LoggingConfiguration'] = Stubs::LoggingConfiguration.stub(stub[:logging_configuration]) unless stub[:logging_configuration].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
          log_destination_configs: Stubs::LogDestinationConfigs.default(visited),
          redacted_fields: Stubs::RedactedFields.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::LoggingConfiguration.new
        data = {}
        data['ResourceArn'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data['LogDestinationConfigs'] = Stubs::LogDestinationConfigs.stub(stub[:log_destination_configs]) unless stub[:log_destination_configs].nil?
        data['RedactedFields'] = Stubs::RedactedFields.stub(stub[:redacted_fields]) unless stub[:redacted_fields].nil?
        data
      end
    end

    # List Stubber for RedactedFields
    class RedactedFields
      def self.default(visited=[])
        return nil if visited.include?('RedactedFields')
        visited = visited + ['RedactedFields']
        [
          Stubs::FieldToMatch.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::FieldToMatch.stub(element) unless element.nil?
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
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetRateBasedRule
    class GetRateBasedRule
      def self.default(visited=[])
        {
          rule: Stubs::RateBasedRule.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Rule'] = Stubs::RateBasedRule.stub(stub[:rule]) unless stub[:rule].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetRateBasedRuleManagedKeys
    class GetRateBasedRuleManagedKeys
      def self.default(visited=[])
        {
          managed_keys: Stubs::ManagedKeys.default(visited),
          next_marker: 'next_marker',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ManagedKeys'] = Stubs::ManagedKeys.stub(stub[:managed_keys]) unless stub[:managed_keys].nil?
        data['NextMarker'] = stub[:next_marker] unless stub[:next_marker].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
          regex_match_set: Stubs::RegexMatchSet.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['RegexMatchSet'] = Stubs::RegexMatchSet.stub(stub[:regex_match_set]) unless stub[:regex_match_set].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetRegexPatternSet
    class GetRegexPatternSet
      def self.default(visited=[])
        {
          regex_pattern_set: Stubs::RegexPatternSet.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['RegexPatternSet'] = Stubs::RegexPatternSet.stub(stub[:regex_pattern_set]) unless stub[:regex_pattern_set].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetRule
    class GetRule
      def self.default(visited=[])
        {
          rule: Stubs::Rule.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Rule'] = Stubs::Rule.stub(stub[:rule]) unless stub[:rule].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetRuleGroup
    class GetRuleGroup
      def self.default(visited=[])
        {
          rule_group: Stubs::RuleGroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['RuleGroup'] = Stubs::RuleGroup.stub(stub[:rule_group]) unless stub[:rule_group].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetSampledRequests
    class GetSampledRequests
      def self.default(visited=[])
        {
          sampled_requests: Stubs::SampledHTTPRequests.default(visited),
          population_size: 1,
          time_window: Stubs::TimeWindow.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['SampledRequests'] = Stubs::SampledHTTPRequests.stub(stub[:sampled_requests]) unless stub[:sampled_requests].nil?
        data['PopulationSize'] = stub[:population_size] unless stub[:population_size].nil?
        data['TimeWindow'] = Stubs::TimeWindow.stub(stub[:time_window]) unless stub[:time_window].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
          Stubs::SampledHTTPRequest.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SampledHTTPRequest.stub(element) unless element.nil?
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
          request: Stubs::HTTPRequest.default(visited),
          weight: 1,
          timestamp: Time.now,
          action: 'action',
          rule_within_rule_group: 'rule_within_rule_group',
        }
      end

      def self.stub(stub)
        stub ||= Types::SampledHTTPRequest.new
        data = {}
        data['Request'] = Stubs::HTTPRequest.stub(stub[:request]) unless stub[:request].nil?
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
          headers: Stubs::HTTPHeaders.default(visited),
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
        data['Headers'] = Stubs::HTTPHeaders.stub(stub[:headers]) unless stub[:headers].nil?
        data
      end
    end

    # List Stubber for HTTPHeaders
    class HTTPHeaders
      def self.default(visited=[])
        return nil if visited.include?('HTTPHeaders')
        visited = visited + ['HTTPHeaders']
        [
          Stubs::HTTPHeader.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::HTTPHeader.stub(element) unless element.nil?
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
          size_constraint_set: Stubs::SizeConstraintSet.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['SizeConstraintSet'] = Stubs::SizeConstraintSet.stub(stub[:size_constraint_set]) unless stub[:size_constraint_set].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetSqlInjectionMatchSet
    class GetSqlInjectionMatchSet
      def self.default(visited=[])
        {
          sql_injection_match_set: Stubs::SqlInjectionMatchSet.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['SqlInjectionMatchSet'] = Stubs::SqlInjectionMatchSet.stub(stub[:sql_injection_match_set]) unless stub[:sql_injection_match_set].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetWebACL
    class GetWebACL
      def self.default(visited=[])
        {
          web_acl: Stubs::WebACL.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['WebACL'] = Stubs::WebACL.stub(stub[:web_acl]) unless stub[:web_acl].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetWebACLForResource
    class GetWebACLForResource
      def self.default(visited=[])
        {
          web_acl_summary: Stubs::WebACLSummary.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['WebACLSummary'] = Stubs::WebACLSummary.stub(stub[:web_acl_summary]) unless stub[:web_acl_summary].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
          xss_match_set: Stubs::XssMatchSet.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['XssMatchSet'] = Stubs::XssMatchSet.stub(stub[:xss_match_set]) unless stub[:xss_match_set].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListActivatedRulesInRuleGroup
    class ListActivatedRulesInRuleGroup
      def self.default(visited=[])
        {
          next_marker: 'next_marker',
          activated_rules: Stubs::ActivatedRules.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextMarker'] = stub[:next_marker] unless stub[:next_marker].nil?
        data['ActivatedRules'] = Stubs::ActivatedRules.stub(stub[:activated_rules]) unless stub[:activated_rules].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListByteMatchSets
    class ListByteMatchSets
      def self.default(visited=[])
        {
          next_marker: 'next_marker',
          byte_match_sets: Stubs::ByteMatchSetSummaries.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextMarker'] = stub[:next_marker] unless stub[:next_marker].nil?
        data['ByteMatchSets'] = Stubs::ByteMatchSetSummaries.stub(stub[:byte_match_sets]) unless stub[:byte_match_sets].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ByteMatchSetSummaries
    class ByteMatchSetSummaries
      def self.default(visited=[])
        return nil if visited.include?('ByteMatchSetSummaries')
        visited = visited + ['ByteMatchSetSummaries']
        [
          Stubs::ByteMatchSetSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ByteMatchSetSummary.stub(element) unless element.nil?
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
          geo_match_sets: Stubs::GeoMatchSetSummaries.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextMarker'] = stub[:next_marker] unless stub[:next_marker].nil?
        data['GeoMatchSets'] = Stubs::GeoMatchSetSummaries.stub(stub[:geo_match_sets]) unless stub[:geo_match_sets].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for GeoMatchSetSummaries
    class GeoMatchSetSummaries
      def self.default(visited=[])
        return nil if visited.include?('GeoMatchSetSummaries')
        visited = visited + ['GeoMatchSetSummaries']
        [
          Stubs::GeoMatchSetSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::GeoMatchSetSummary.stub(element) unless element.nil?
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
          ip_sets: Stubs::IPSetSummaries.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextMarker'] = stub[:next_marker] unless stub[:next_marker].nil?
        data['IPSets'] = Stubs::IPSetSummaries.stub(stub[:ip_sets]) unless stub[:ip_sets].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for IPSetSummaries
    class IPSetSummaries
      def self.default(visited=[])
        return nil if visited.include?('IPSetSummaries')
        visited = visited + ['IPSetSummaries']
        [
          Stubs::IPSetSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::IPSetSummary.stub(element) unless element.nil?
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
          logging_configurations: Stubs::LoggingConfigurations.default(visited),
          next_marker: 'next_marker',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['LoggingConfigurations'] = Stubs::LoggingConfigurations.stub(stub[:logging_configurations]) unless stub[:logging_configurations].nil?
        data['NextMarker'] = stub[:next_marker] unless stub[:next_marker].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for LoggingConfigurations
    class LoggingConfigurations
      def self.default(visited=[])
        return nil if visited.include?('LoggingConfigurations')
        visited = visited + ['LoggingConfigurations']
        [
          Stubs::LoggingConfiguration.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::LoggingConfiguration.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListRateBasedRules
    class ListRateBasedRules
      def self.default(visited=[])
        {
          next_marker: 'next_marker',
          rules: Stubs::RuleSummaries.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextMarker'] = stub[:next_marker] unless stub[:next_marker].nil?
        data['Rules'] = Stubs::RuleSummaries.stub(stub[:rules]) unless stub[:rules].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for RuleSummaries
    class RuleSummaries
      def self.default(visited=[])
        return nil if visited.include?('RuleSummaries')
        visited = visited + ['RuleSummaries']
        [
          Stubs::RuleSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::RuleSummary.stub(element) unless element.nil?
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
          regex_match_sets: Stubs::RegexMatchSetSummaries.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextMarker'] = stub[:next_marker] unless stub[:next_marker].nil?
        data['RegexMatchSets'] = Stubs::RegexMatchSetSummaries.stub(stub[:regex_match_sets]) unless stub[:regex_match_sets].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for RegexMatchSetSummaries
    class RegexMatchSetSummaries
      def self.default(visited=[])
        return nil if visited.include?('RegexMatchSetSummaries')
        visited = visited + ['RegexMatchSetSummaries']
        [
          Stubs::RegexMatchSetSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::RegexMatchSetSummary.stub(element) unless element.nil?
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
          regex_pattern_sets: Stubs::RegexPatternSetSummaries.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextMarker'] = stub[:next_marker] unless stub[:next_marker].nil?
        data['RegexPatternSets'] = Stubs::RegexPatternSetSummaries.stub(stub[:regex_pattern_sets]) unless stub[:regex_pattern_sets].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for RegexPatternSetSummaries
    class RegexPatternSetSummaries
      def self.default(visited=[])
        return nil if visited.include?('RegexPatternSetSummaries')
        visited = visited + ['RegexPatternSetSummaries']
        [
          Stubs::RegexPatternSetSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::RegexPatternSetSummary.stub(element) unless element.nil?
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
          resource_arns: Stubs::ResourceArns.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ResourceArns'] = Stubs::ResourceArns.stub(stub[:resource_arns]) unless stub[:resource_arns].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
          rule_groups: Stubs::RuleGroupSummaries.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextMarker'] = stub[:next_marker] unless stub[:next_marker].nil?
        data['RuleGroups'] = Stubs::RuleGroupSummaries.stub(stub[:rule_groups]) unless stub[:rule_groups].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for RuleGroupSummaries
    class RuleGroupSummaries
      def self.default(visited=[])
        return nil if visited.include?('RuleGroupSummaries')
        visited = visited + ['RuleGroupSummaries']
        [
          Stubs::RuleGroupSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::RuleGroupSummary.stub(element) unless element.nil?
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
          rules: Stubs::RuleSummaries.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextMarker'] = stub[:next_marker] unless stub[:next_marker].nil?
        data['Rules'] = Stubs::RuleSummaries.stub(stub[:rules]) unless stub[:rules].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListSizeConstraintSets
    class ListSizeConstraintSets
      def self.default(visited=[])
        {
          next_marker: 'next_marker',
          size_constraint_sets: Stubs::SizeConstraintSetSummaries.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextMarker'] = stub[:next_marker] unless stub[:next_marker].nil?
        data['SizeConstraintSets'] = Stubs::SizeConstraintSetSummaries.stub(stub[:size_constraint_sets]) unless stub[:size_constraint_sets].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for SizeConstraintSetSummaries
    class SizeConstraintSetSummaries
      def self.default(visited=[])
        return nil if visited.include?('SizeConstraintSetSummaries')
        visited = visited + ['SizeConstraintSetSummaries']
        [
          Stubs::SizeConstraintSetSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SizeConstraintSetSummary.stub(element) unless element.nil?
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
          sql_injection_match_sets: Stubs::SqlInjectionMatchSetSummaries.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextMarker'] = stub[:next_marker] unless stub[:next_marker].nil?
        data['SqlInjectionMatchSets'] = Stubs::SqlInjectionMatchSetSummaries.stub(stub[:sql_injection_match_sets]) unless stub[:sql_injection_match_sets].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for SqlInjectionMatchSetSummaries
    class SqlInjectionMatchSetSummaries
      def self.default(visited=[])
        return nil if visited.include?('SqlInjectionMatchSetSummaries')
        visited = visited + ['SqlInjectionMatchSetSummaries']
        [
          Stubs::SqlInjectionMatchSetSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SqlInjectionMatchSetSummary.stub(element) unless element.nil?
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
          rule_groups: Stubs::SubscribedRuleGroupSummaries.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextMarker'] = stub[:next_marker] unless stub[:next_marker].nil?
        data['RuleGroups'] = Stubs::SubscribedRuleGroupSummaries.stub(stub[:rule_groups]) unless stub[:rule_groups].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for SubscribedRuleGroupSummaries
    class SubscribedRuleGroupSummaries
      def self.default(visited=[])
        return nil if visited.include?('SubscribedRuleGroupSummaries')
        visited = visited + ['SubscribedRuleGroupSummaries']
        [
          Stubs::SubscribedRuleGroupSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SubscribedRuleGroupSummary.stub(element) unless element.nil?
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
          tag_info_for_resource: Stubs::TagInfoForResource.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextMarker'] = stub[:next_marker] unless stub[:next_marker].nil?
        data['TagInfoForResource'] = Stubs::TagInfoForResource.stub(stub[:tag_info_for_resource]) unless stub[:tag_info_for_resource].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
          tag_list: Stubs::TagList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TagInfoForResource.new
        data = {}
        data['ResourceARN'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data['TagList'] = Stubs::TagList.stub(stub[:tag_list]) unless stub[:tag_list].nil?
        data
      end
    end

    # List Stubber for TagList
    class TagList
      def self.default(visited=[])
        return nil if visited.include?('TagList')
        visited = visited + ['TagList']
        [
          Stubs::Tag.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Tag.stub(element) unless element.nil?
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
          web_ac_ls: Stubs::WebACLSummaries.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextMarker'] = stub[:next_marker] unless stub[:next_marker].nil?
        data['WebACLs'] = Stubs::WebACLSummaries.stub(stub[:web_ac_ls]) unless stub[:web_ac_ls].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for WebACLSummaries
    class WebACLSummaries
      def self.default(visited=[])
        return nil if visited.include?('WebACLSummaries')
        visited = visited + ['WebACLSummaries']
        [
          Stubs::WebACLSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::WebACLSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListXssMatchSets
    class ListXssMatchSets
      def self.default(visited=[])
        {
          next_marker: 'next_marker',
          xss_match_sets: Stubs::XssMatchSetSummaries.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextMarker'] = stub[:next_marker] unless stub[:next_marker].nil?
        data['XssMatchSets'] = Stubs::XssMatchSetSummaries.stub(stub[:xss_match_sets]) unless stub[:xss_match_sets].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for XssMatchSetSummaries
    class XssMatchSetSummaries
      def self.default(visited=[])
        return nil if visited.include?('XssMatchSetSummaries')
        visited = visited + ['XssMatchSetSummaries']
        [
          Stubs::XssMatchSetSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::XssMatchSetSummary.stub(element) unless element.nil?
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
          logging_configuration: Stubs::LoggingConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['LoggingConfiguration'] = Stubs::LoggingConfiguration.stub(stub[:logging_configuration]) unless stub[:logging_configuration].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end