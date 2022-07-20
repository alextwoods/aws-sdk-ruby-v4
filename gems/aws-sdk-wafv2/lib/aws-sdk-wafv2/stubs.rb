# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::WAFV2
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

    # Operation Stubber for CheckCapacity
    class CheckCapacity
      def self.default(visited=[])
        {
          capacity: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Capacity'] = stub[:capacity] unless stub[:capacity].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateIPSet
    class CreateIPSet
      def self.default(visited=[])
        {
          summary: IPSetSummary.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Summary'] = Stubs::IPSetSummary.stub(stub[:summary]) unless stub[:summary].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for IPSetSummary
    class IPSetSummary
      def self.default(visited=[])
        return nil if visited.include?('IPSetSummary')
        visited = visited + ['IPSetSummary']
        {
          name: 'name',
          id: 'id',
          description: 'description',
          lock_token: 'lock_token',
          arn: 'arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::IPSetSummary.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['LockToken'] = stub[:lock_token] unless stub[:lock_token].nil?
        data['ARN'] = stub[:arn] unless stub[:arn].nil?
        data
      end
    end

    # Operation Stubber for CreateRegexPatternSet
    class CreateRegexPatternSet
      def self.default(visited=[])
        {
          summary: RegexPatternSetSummary.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Summary'] = Stubs::RegexPatternSetSummary.stub(stub[:summary]) unless stub[:summary].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for RegexPatternSetSummary
    class RegexPatternSetSummary
      def self.default(visited=[])
        return nil if visited.include?('RegexPatternSetSummary')
        visited = visited + ['RegexPatternSetSummary']
        {
          name: 'name',
          id: 'id',
          description: 'description',
          lock_token: 'lock_token',
          arn: 'arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::RegexPatternSetSummary.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['LockToken'] = stub[:lock_token] unless stub[:lock_token].nil?
        data['ARN'] = stub[:arn] unless stub[:arn].nil?
        data
      end
    end

    # Operation Stubber for CreateRuleGroup
    class CreateRuleGroup
      def self.default(visited=[])
        {
          summary: RuleGroupSummary.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Summary'] = Stubs::RuleGroupSummary.stub(stub[:summary]) unless stub[:summary].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for RuleGroupSummary
    class RuleGroupSummary
      def self.default(visited=[])
        return nil if visited.include?('RuleGroupSummary')
        visited = visited + ['RuleGroupSummary']
        {
          name: 'name',
          id: 'id',
          description: 'description',
          lock_token: 'lock_token',
          arn: 'arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::RuleGroupSummary.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['LockToken'] = stub[:lock_token] unless stub[:lock_token].nil?
        data['ARN'] = stub[:arn] unless stub[:arn].nil?
        data
      end
    end

    # Operation Stubber for CreateWebACL
    class CreateWebACL
      def self.default(visited=[])
        {
          summary: WebACLSummary.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Summary'] = Stubs::WebACLSummary.stub(stub[:summary]) unless stub[:summary].nil?
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
          name: 'name',
          id: 'id',
          description: 'description',
          lock_token: 'lock_token',
          arn: 'arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::WebACLSummary.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['LockToken'] = stub[:lock_token] unless stub[:lock_token].nil?
        data['ARN'] = stub[:arn] unless stub[:arn].nil?
        data
      end
    end

    # Operation Stubber for DeleteFirewallManagerRuleGroups
    class DeleteFirewallManagerRuleGroups
      def self.default(visited=[])
        {
          next_web_acl_lock_token: 'next_web_acl_lock_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextWebACLLockToken'] = stub[:next_web_acl_lock_token] unless stub[:next_web_acl_lock_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteIPSet
    class DeleteIPSet
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

    # Operation Stubber for DeleteRegexPatternSet
    class DeleteRegexPatternSet
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

    # Operation Stubber for DeleteRuleGroup
    class DeleteRuleGroup
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

    # Operation Stubber for DeleteWebACL
    class DeleteWebACL
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

    # Operation Stubber for DescribeManagedRuleGroup
    class DescribeManagedRuleGroup
      def self.default(visited=[])
        {
          version_name: 'version_name',
          sns_topic_arn: 'sns_topic_arn',
          capacity: 1,
          rules: RuleSummaries.default(visited),
          label_namespace: 'label_namespace',
          available_labels: LabelSummaries.default(visited),
          consumed_labels: LabelSummaries.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['VersionName'] = stub[:version_name] unless stub[:version_name].nil?
        data['SnsTopicArn'] = stub[:sns_topic_arn] unless stub[:sns_topic_arn].nil?
        data['Capacity'] = stub[:capacity] unless stub[:capacity].nil?
        data['Rules'] = Stubs::RuleSummaries.stub(stub[:rules]) unless stub[:rules].nil?
        data['LabelNamespace'] = stub[:label_namespace] unless stub[:label_namespace].nil?
        data['AvailableLabels'] = Stubs::LabelSummaries.stub(stub[:available_labels]) unless stub[:available_labels].nil?
        data['ConsumedLabels'] = Stubs::LabelSummaries.stub(stub[:consumed_labels]) unless stub[:consumed_labels].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for LabelSummaries
    class LabelSummaries
      def self.default(visited=[])
        return nil if visited.include?('LabelSummaries')
        visited = visited + ['LabelSummaries']
        [
          LabelSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::LabelSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for LabelSummary
    class LabelSummary
      def self.default(visited=[])
        return nil if visited.include?('LabelSummary')
        visited = visited + ['LabelSummary']
        {
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::LabelSummary.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data
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
          name: 'name',
          action: RuleAction.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RuleSummary.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Action'] = Stubs::RuleAction.stub(stub[:action]) unless stub[:action].nil?
        data
      end
    end

    # Structure Stubber for RuleAction
    class RuleAction
      def self.default(visited=[])
        return nil if visited.include?('RuleAction')
        visited = visited + ['RuleAction']
        {
          block: BlockAction.default(visited),
          allow: AllowAction.default(visited),
          count: CountAction.default(visited),
          captcha: CaptchaAction.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RuleAction.new
        data = {}
        data['Block'] = Stubs::BlockAction.stub(stub[:block]) unless stub[:block].nil?
        data['Allow'] = Stubs::AllowAction.stub(stub[:allow]) unless stub[:allow].nil?
        data['Count'] = Stubs::CountAction.stub(stub[:count]) unless stub[:count].nil?
        data['Captcha'] = Stubs::CaptchaAction.stub(stub[:captcha]) unless stub[:captcha].nil?
        data
      end
    end

    # Structure Stubber for CaptchaAction
    class CaptchaAction
      def self.default(visited=[])
        return nil if visited.include?('CaptchaAction')
        visited = visited + ['CaptchaAction']
        {
          custom_request_handling: CustomRequestHandling.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CaptchaAction.new
        data = {}
        data['CustomRequestHandling'] = Stubs::CustomRequestHandling.stub(stub[:custom_request_handling]) unless stub[:custom_request_handling].nil?
        data
      end
    end

    # Structure Stubber for CustomRequestHandling
    class CustomRequestHandling
      def self.default(visited=[])
        return nil if visited.include?('CustomRequestHandling')
        visited = visited + ['CustomRequestHandling']
        {
          insert_headers: CustomHTTPHeaders.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CustomRequestHandling.new
        data = {}
        data['InsertHeaders'] = Stubs::CustomHTTPHeaders.stub(stub[:insert_headers]) unless stub[:insert_headers].nil?
        data
      end
    end

    # List Stubber for CustomHTTPHeaders
    class CustomHTTPHeaders
      def self.default(visited=[])
        return nil if visited.include?('CustomHTTPHeaders')
        visited = visited + ['CustomHTTPHeaders']
        [
          CustomHTTPHeader.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::CustomHTTPHeader.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CustomHTTPHeader
    class CustomHTTPHeader
      def self.default(visited=[])
        return nil if visited.include?('CustomHTTPHeader')
        visited = visited + ['CustomHTTPHeader']
        {
          name: 'name',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::CustomHTTPHeader.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Structure Stubber for CountAction
    class CountAction
      def self.default(visited=[])
        return nil if visited.include?('CountAction')
        visited = visited + ['CountAction']
        {
          custom_request_handling: CustomRequestHandling.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CountAction.new
        data = {}
        data['CustomRequestHandling'] = Stubs::CustomRequestHandling.stub(stub[:custom_request_handling]) unless stub[:custom_request_handling].nil?
        data
      end
    end

    # Structure Stubber for AllowAction
    class AllowAction
      def self.default(visited=[])
        return nil if visited.include?('AllowAction')
        visited = visited + ['AllowAction']
        {
          custom_request_handling: CustomRequestHandling.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AllowAction.new
        data = {}
        data['CustomRequestHandling'] = Stubs::CustomRequestHandling.stub(stub[:custom_request_handling]) unless stub[:custom_request_handling].nil?
        data
      end
    end

    # Structure Stubber for BlockAction
    class BlockAction
      def self.default(visited=[])
        return nil if visited.include?('BlockAction')
        visited = visited + ['BlockAction']
        {
          custom_response: CustomResponse.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BlockAction.new
        data = {}
        data['CustomResponse'] = Stubs::CustomResponse.stub(stub[:custom_response]) unless stub[:custom_response].nil?
        data
      end
    end

    # Structure Stubber for CustomResponse
    class CustomResponse
      def self.default(visited=[])
        return nil if visited.include?('CustomResponse')
        visited = visited + ['CustomResponse']
        {
          response_code: 1,
          custom_response_body_key: 'custom_response_body_key',
          response_headers: CustomHTTPHeaders.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CustomResponse.new
        data = {}
        data['ResponseCode'] = stub[:response_code] unless stub[:response_code].nil?
        data['CustomResponseBodyKey'] = stub[:custom_response_body_key] unless stub[:custom_response_body_key].nil?
        data['ResponseHeaders'] = Stubs::CustomHTTPHeaders.stub(stub[:response_headers]) unless stub[:response_headers].nil?
        data
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

    # Operation Stubber for GenerateMobileSdkReleaseUrl
    class GenerateMobileSdkReleaseUrl
      def self.default(visited=[])
        {
          url: 'url',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Url'] = stub[:url] unless stub[:url].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetIPSet
    class GetIPSet
      def self.default(visited=[])
        {
          ip_set: IPSet.default(visited),
          lock_token: 'lock_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['IPSet'] = Stubs::IPSet.stub(stub[:ip_set]) unless stub[:ip_set].nil?
        data['LockToken'] = stub[:lock_token] unless stub[:lock_token].nil?
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
          name: 'name',
          id: 'id',
          arn: 'arn',
          description: 'description',
          ip_address_version: 'ip_address_version',
          addresses: IPAddresses.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::IPSet.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['ARN'] = stub[:arn] unless stub[:arn].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['IPAddressVersion'] = stub[:ip_address_version] unless stub[:ip_address_version].nil?
        data['Addresses'] = Stubs::IPAddresses.stub(stub[:addresses]) unless stub[:addresses].nil?
        data
      end
    end

    # List Stubber for IPAddresses
    class IPAddresses
      def self.default(visited=[])
        return nil if visited.include?('IPAddresses')
        visited = visited + ['IPAddresses']
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

    # Operation Stubber for GetLoggingConfiguration
    class GetLoggingConfiguration
      def self.default(visited=[])
        {
          logging_configuration: LoggingConfiguration.default(visited),
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
          log_destination_configs: LogDestinationConfigs.default(visited),
          redacted_fields: RedactedFields.default(visited),
          managed_by_firewall_manager: false,
          logging_filter: LoggingFilter.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::LoggingConfiguration.new
        data = {}
        data['ResourceArn'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data['LogDestinationConfigs'] = Stubs::LogDestinationConfigs.stub(stub[:log_destination_configs]) unless stub[:log_destination_configs].nil?
        data['RedactedFields'] = Stubs::RedactedFields.stub(stub[:redacted_fields]) unless stub[:redacted_fields].nil?
        data['ManagedByFirewallManager'] = stub[:managed_by_firewall_manager] unless stub[:managed_by_firewall_manager].nil?
        data['LoggingFilter'] = Stubs::LoggingFilter.stub(stub[:logging_filter]) unless stub[:logging_filter].nil?
        data
      end
    end

    # Structure Stubber for LoggingFilter
    class LoggingFilter
      def self.default(visited=[])
        return nil if visited.include?('LoggingFilter')
        visited = visited + ['LoggingFilter']
        {
          filters: Filters.default(visited),
          default_behavior: 'default_behavior',
        }
      end

      def self.stub(stub)
        stub ||= Types::LoggingFilter.new
        data = {}
        data['Filters'] = Stubs::Filters.stub(stub[:filters]) unless stub[:filters].nil?
        data['DefaultBehavior'] = stub[:default_behavior] unless stub[:default_behavior].nil?
        data
      end
    end

    # List Stubber for Filters
    class Filters
      def self.default(visited=[])
        return nil if visited.include?('Filters')
        visited = visited + ['Filters']
        [
          Filter.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Filter.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Filter
    class Filter
      def self.default(visited=[])
        return nil if visited.include?('Filter')
        visited = visited + ['Filter']
        {
          behavior: 'behavior',
          requirement: 'requirement',
          conditions: Conditions.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Filter.new
        data = {}
        data['Behavior'] = stub[:behavior] unless stub[:behavior].nil?
        data['Requirement'] = stub[:requirement] unless stub[:requirement].nil?
        data['Conditions'] = Stubs::Conditions.stub(stub[:conditions]) unless stub[:conditions].nil?
        data
      end
    end

    # List Stubber for Conditions
    class Conditions
      def self.default(visited=[])
        return nil if visited.include?('Conditions')
        visited = visited + ['Conditions']
        [
          Condition.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Condition.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Condition
    class Condition
      def self.default(visited=[])
        return nil if visited.include?('Condition')
        visited = visited + ['Condition']
        {
          action_condition: ActionCondition.default(visited),
          label_name_condition: LabelNameCondition.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Condition.new
        data = {}
        data['ActionCondition'] = Stubs::ActionCondition.stub(stub[:action_condition]) unless stub[:action_condition].nil?
        data['LabelNameCondition'] = Stubs::LabelNameCondition.stub(stub[:label_name_condition]) unless stub[:label_name_condition].nil?
        data
      end
    end

    # Structure Stubber for LabelNameCondition
    class LabelNameCondition
      def self.default(visited=[])
        return nil if visited.include?('LabelNameCondition')
        visited = visited + ['LabelNameCondition']
        {
          label_name: 'label_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::LabelNameCondition.new
        data = {}
        data['LabelName'] = stub[:label_name] unless stub[:label_name].nil?
        data
      end
    end

    # Structure Stubber for ActionCondition
    class ActionCondition
      def self.default(visited=[])
        return nil if visited.include?('ActionCondition')
        visited = visited + ['ActionCondition']
        {
          action: 'action',
        }
      end

      def self.stub(stub)
        stub ||= Types::ActionCondition.new
        data = {}
        data['Action'] = stub[:action] unless stub[:action].nil?
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
          data << Stubs::FieldToMatch.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for FieldToMatch
    class FieldToMatch
      def self.default(visited=[])
        return nil if visited.include?('FieldToMatch')
        visited = visited + ['FieldToMatch']
        {
          single_header: SingleHeader.default(visited),
          single_query_argument: SingleQueryArgument.default(visited),
          all_query_arguments: AllQueryArguments.default(visited),
          uri_path: UriPath.default(visited),
          query_string: QueryString.default(visited),
          body: Body.default(visited),
          member_method: Method.default(visited),
          json_body: JsonBody.default(visited),
          headers: Headers.default(visited),
          cookies: Cookies.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::FieldToMatch.new
        data = {}
        data['SingleHeader'] = Stubs::SingleHeader.stub(stub[:single_header]) unless stub[:single_header].nil?
        data['SingleQueryArgument'] = Stubs::SingleQueryArgument.stub(stub[:single_query_argument]) unless stub[:single_query_argument].nil?
        data['AllQueryArguments'] = Stubs::AllQueryArguments.stub(stub[:all_query_arguments]) unless stub[:all_query_arguments].nil?
        data['UriPath'] = Stubs::UriPath.stub(stub[:uri_path]) unless stub[:uri_path].nil?
        data['QueryString'] = Stubs::QueryString.stub(stub[:query_string]) unless stub[:query_string].nil?
        data['Body'] = Stubs::Body.stub(stub[:body]) unless stub[:body].nil?
        data['Method'] = Stubs::Method.stub(stub[:member_method]) unless stub[:member_method].nil?
        data['JsonBody'] = Stubs::JsonBody.stub(stub[:json_body]) unless stub[:json_body].nil?
        data['Headers'] = Stubs::Headers.stub(stub[:headers]) unless stub[:headers].nil?
        data['Cookies'] = Stubs::Cookies.stub(stub[:cookies]) unless stub[:cookies].nil?
        data
      end
    end

    # Structure Stubber for Cookies
    class Cookies
      def self.default(visited=[])
        return nil if visited.include?('Cookies')
        visited = visited + ['Cookies']
        {
          match_pattern: CookieMatchPattern.default(visited),
          match_scope: 'match_scope',
          oversize_handling: 'oversize_handling',
        }
      end

      def self.stub(stub)
        stub ||= Types::Cookies.new
        data = {}
        data['MatchPattern'] = Stubs::CookieMatchPattern.stub(stub[:match_pattern]) unless stub[:match_pattern].nil?
        data['MatchScope'] = stub[:match_scope] unless stub[:match_scope].nil?
        data['OversizeHandling'] = stub[:oversize_handling] unless stub[:oversize_handling].nil?
        data
      end
    end

    # Structure Stubber for CookieMatchPattern
    class CookieMatchPattern
      def self.default(visited=[])
        return nil if visited.include?('CookieMatchPattern')
        visited = visited + ['CookieMatchPattern']
        {
          all: All.default(visited),
          included_cookies: CookieNames.default(visited),
          excluded_cookies: CookieNames.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CookieMatchPattern.new
        data = {}
        data['All'] = Stubs::All.stub(stub[:all]) unless stub[:all].nil?
        data['IncludedCookies'] = Stubs::CookieNames.stub(stub[:included_cookies]) unless stub[:included_cookies].nil?
        data['ExcludedCookies'] = Stubs::CookieNames.stub(stub[:excluded_cookies]) unless stub[:excluded_cookies].nil?
        data
      end
    end

    # List Stubber for CookieNames
    class CookieNames
      def self.default(visited=[])
        return nil if visited.include?('CookieNames')
        visited = visited + ['CookieNames']
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

    # Structure Stubber for All
    class All
      def self.default(visited=[])
        return nil if visited.include?('All')
        visited = visited + ['All']
        {
        }
      end

      def self.stub(stub)
        stub ||= Types::All.new
        data = {}
        data
      end
    end

    # Structure Stubber for Headers
    class Headers
      def self.default(visited=[])
        return nil if visited.include?('Headers')
        visited = visited + ['Headers']
        {
          match_pattern: HeaderMatchPattern.default(visited),
          match_scope: 'match_scope',
          oversize_handling: 'oversize_handling',
        }
      end

      def self.stub(stub)
        stub ||= Types::Headers.new
        data = {}
        data['MatchPattern'] = Stubs::HeaderMatchPattern.stub(stub[:match_pattern]) unless stub[:match_pattern].nil?
        data['MatchScope'] = stub[:match_scope] unless stub[:match_scope].nil?
        data['OversizeHandling'] = stub[:oversize_handling] unless stub[:oversize_handling].nil?
        data
      end
    end

    # Structure Stubber for HeaderMatchPattern
    class HeaderMatchPattern
      def self.default(visited=[])
        return nil if visited.include?('HeaderMatchPattern')
        visited = visited + ['HeaderMatchPattern']
        {
          all: All.default(visited),
          included_headers: HeaderNames.default(visited),
          excluded_headers: HeaderNames.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::HeaderMatchPattern.new
        data = {}
        data['All'] = Stubs::All.stub(stub[:all]) unless stub[:all].nil?
        data['IncludedHeaders'] = Stubs::HeaderNames.stub(stub[:included_headers]) unless stub[:included_headers].nil?
        data['ExcludedHeaders'] = Stubs::HeaderNames.stub(stub[:excluded_headers]) unless stub[:excluded_headers].nil?
        data
      end
    end

    # List Stubber for HeaderNames
    class HeaderNames
      def self.default(visited=[])
        return nil if visited.include?('HeaderNames')
        visited = visited + ['HeaderNames']
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

    # Structure Stubber for JsonBody
    class JsonBody
      def self.default(visited=[])
        return nil if visited.include?('JsonBody')
        visited = visited + ['JsonBody']
        {
          match_pattern: JsonMatchPattern.default(visited),
          match_scope: 'match_scope',
          invalid_fallback_behavior: 'invalid_fallback_behavior',
          oversize_handling: 'oversize_handling',
        }
      end

      def self.stub(stub)
        stub ||= Types::JsonBody.new
        data = {}
        data['MatchPattern'] = Stubs::JsonMatchPattern.stub(stub[:match_pattern]) unless stub[:match_pattern].nil?
        data['MatchScope'] = stub[:match_scope] unless stub[:match_scope].nil?
        data['InvalidFallbackBehavior'] = stub[:invalid_fallback_behavior] unless stub[:invalid_fallback_behavior].nil?
        data['OversizeHandling'] = stub[:oversize_handling] unless stub[:oversize_handling].nil?
        data
      end
    end

    # Structure Stubber for JsonMatchPattern
    class JsonMatchPattern
      def self.default(visited=[])
        return nil if visited.include?('JsonMatchPattern')
        visited = visited + ['JsonMatchPattern']
        {
          all: All.default(visited),
          included_paths: JsonPointerPaths.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::JsonMatchPattern.new
        data = {}
        data['All'] = Stubs::All.stub(stub[:all]) unless stub[:all].nil?
        data['IncludedPaths'] = Stubs::JsonPointerPaths.stub(stub[:included_paths]) unless stub[:included_paths].nil?
        data
      end
    end

    # List Stubber for JsonPointerPaths
    class JsonPointerPaths
      def self.default(visited=[])
        return nil if visited.include?('JsonPointerPaths')
        visited = visited + ['JsonPointerPaths']
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

    # Structure Stubber for Method
    class Method
      def self.default(visited=[])
        return nil if visited.include?('Method')
        visited = visited + ['Method']
        {
        }
      end

      def self.stub(stub)
        stub ||= Types::Method.new
        data = {}
        data
      end
    end

    # Structure Stubber for Body
    class Body
      def self.default(visited=[])
        return nil if visited.include?('Body')
        visited = visited + ['Body']
        {
          oversize_handling: 'oversize_handling',
        }
      end

      def self.stub(stub)
        stub ||= Types::Body.new
        data = {}
        data['OversizeHandling'] = stub[:oversize_handling] unless stub[:oversize_handling].nil?
        data
      end
    end

    # Structure Stubber for QueryString
    class QueryString
      def self.default(visited=[])
        return nil if visited.include?('QueryString')
        visited = visited + ['QueryString']
        {
        }
      end

      def self.stub(stub)
        stub ||= Types::QueryString.new
        data = {}
        data
      end
    end

    # Structure Stubber for UriPath
    class UriPath
      def self.default(visited=[])
        return nil if visited.include?('UriPath')
        visited = visited + ['UriPath']
        {
        }
      end

      def self.stub(stub)
        stub ||= Types::UriPath.new
        data = {}
        data
      end
    end

    # Structure Stubber for AllQueryArguments
    class AllQueryArguments
      def self.default(visited=[])
        return nil if visited.include?('AllQueryArguments')
        visited = visited + ['AllQueryArguments']
        {
        }
      end

      def self.stub(stub)
        stub ||= Types::AllQueryArguments.new
        data = {}
        data
      end
    end

    # Structure Stubber for SingleQueryArgument
    class SingleQueryArgument
      def self.default(visited=[])
        return nil if visited.include?('SingleQueryArgument')
        visited = visited + ['SingleQueryArgument']
        {
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::SingleQueryArgument.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # Structure Stubber for SingleHeader
    class SingleHeader
      def self.default(visited=[])
        return nil if visited.include?('SingleHeader')
        visited = visited + ['SingleHeader']
        {
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::SingleHeader.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
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

    # Operation Stubber for GetManagedRuleSet
    class GetManagedRuleSet
      def self.default(visited=[])
        {
          managed_rule_set: ManagedRuleSet.default(visited),
          lock_token: 'lock_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ManagedRuleSet'] = Stubs::ManagedRuleSet.stub(stub[:managed_rule_set]) unless stub[:managed_rule_set].nil?
        data['LockToken'] = stub[:lock_token] unless stub[:lock_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for ManagedRuleSet
    class ManagedRuleSet
      def self.default(visited=[])
        return nil if visited.include?('ManagedRuleSet')
        visited = visited + ['ManagedRuleSet']
        {
          name: 'name',
          id: 'id',
          arn: 'arn',
          description: 'description',
          published_versions: PublishedVersions.default(visited),
          recommended_version: 'recommended_version',
          label_namespace: 'label_namespace',
        }
      end

      def self.stub(stub)
        stub ||= Types::ManagedRuleSet.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['ARN'] = stub[:arn] unless stub[:arn].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['PublishedVersions'] = Stubs::PublishedVersions.stub(stub[:published_versions]) unless stub[:published_versions].nil?
        data['RecommendedVersion'] = stub[:recommended_version] unless stub[:recommended_version].nil?
        data['LabelNamespace'] = stub[:label_namespace] unless stub[:label_namespace].nil?
        data
      end
    end

    # Map Stubber for PublishedVersions
    class PublishedVersions
      def self.default(visited=[])
        return nil if visited.include?('PublishedVersions')
        visited = visited + ['PublishedVersions']
        {
          test_key: ManagedRuleSetVersion.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::ManagedRuleSetVersion.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for ManagedRuleSetVersion
    class ManagedRuleSetVersion
      def self.default(visited=[])
        return nil if visited.include?('ManagedRuleSetVersion')
        visited = visited + ['ManagedRuleSetVersion']
        {
          associated_rule_group_arn: 'associated_rule_group_arn',
          capacity: 1,
          forecasted_lifetime: 1,
          publish_timestamp: Time.now,
          last_update_timestamp: Time.now,
          expiry_timestamp: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ManagedRuleSetVersion.new
        data = {}
        data['AssociatedRuleGroupArn'] = stub[:associated_rule_group_arn] unless stub[:associated_rule_group_arn].nil?
        data['Capacity'] = stub[:capacity] unless stub[:capacity].nil?
        data['ForecastedLifetime'] = stub[:forecasted_lifetime] unless stub[:forecasted_lifetime].nil?
        data['PublishTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:publish_timestamp]).to_i unless stub[:publish_timestamp].nil?
        data['LastUpdateTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_update_timestamp]).to_i unless stub[:last_update_timestamp].nil?
        data['ExpiryTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:expiry_timestamp]).to_i unless stub[:expiry_timestamp].nil?
        data
      end
    end

    # Operation Stubber for GetMobileSdkRelease
    class GetMobileSdkRelease
      def self.default(visited=[])
        {
          mobile_sdk_release: MobileSdkRelease.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['MobileSdkRelease'] = Stubs::MobileSdkRelease.stub(stub[:mobile_sdk_release]) unless stub[:mobile_sdk_release].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for MobileSdkRelease
    class MobileSdkRelease
      def self.default(visited=[])
        return nil if visited.include?('MobileSdkRelease')
        visited = visited + ['MobileSdkRelease']
        {
          release_version: 'release_version',
          timestamp: Time.now,
          release_notes: 'release_notes',
          tags: TagList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::MobileSdkRelease.new
        data = {}
        data['ReleaseVersion'] = stub[:release_version] unless stub[:release_version].nil?
        data['Timestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:timestamp]).to_i unless stub[:timestamp].nil?
        data['ReleaseNotes'] = stub[:release_notes] unless stub[:release_notes].nil?
        data['Tags'] = Stubs::TagList.stub(stub[:tags]) unless stub[:tags].nil?
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

    # Operation Stubber for GetRateBasedStatementManagedKeys
    class GetRateBasedStatementManagedKeys
      def self.default(visited=[])
        {
          managed_keys_ipv4: RateBasedStatementManagedKeysIPSet.default(visited),
          managed_keys_ipv6: RateBasedStatementManagedKeysIPSet.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ManagedKeysIPV4'] = Stubs::RateBasedStatementManagedKeysIPSet.stub(stub[:managed_keys_ipv4]) unless stub[:managed_keys_ipv4].nil?
        data['ManagedKeysIPV6'] = Stubs::RateBasedStatementManagedKeysIPSet.stub(stub[:managed_keys_ipv6]) unless stub[:managed_keys_ipv6].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for RateBasedStatementManagedKeysIPSet
    class RateBasedStatementManagedKeysIPSet
      def self.default(visited=[])
        return nil if visited.include?('RateBasedStatementManagedKeysIPSet')
        visited = visited + ['RateBasedStatementManagedKeysIPSet']
        {
          ip_address_version: 'ip_address_version',
          addresses: IPAddresses.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RateBasedStatementManagedKeysIPSet.new
        data = {}
        data['IPAddressVersion'] = stub[:ip_address_version] unless stub[:ip_address_version].nil?
        data['Addresses'] = Stubs::IPAddresses.stub(stub[:addresses]) unless stub[:addresses].nil?
        data
      end
    end

    # Operation Stubber for GetRegexPatternSet
    class GetRegexPatternSet
      def self.default(visited=[])
        {
          regex_pattern_set: RegexPatternSet.default(visited),
          lock_token: 'lock_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['RegexPatternSet'] = Stubs::RegexPatternSet.stub(stub[:regex_pattern_set]) unless stub[:regex_pattern_set].nil?
        data['LockToken'] = stub[:lock_token] unless stub[:lock_token].nil?
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
          name: 'name',
          id: 'id',
          arn: 'arn',
          description: 'description',
          regular_expression_list: RegularExpressionList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RegexPatternSet.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['ARN'] = stub[:arn] unless stub[:arn].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['RegularExpressionList'] = Stubs::RegularExpressionList.stub(stub[:regular_expression_list]) unless stub[:regular_expression_list].nil?
        data
      end
    end

    # List Stubber for RegularExpressionList
    class RegularExpressionList
      def self.default(visited=[])
        return nil if visited.include?('RegularExpressionList')
        visited = visited + ['RegularExpressionList']
        [
          Regex.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Regex.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Regex
    class Regex
      def self.default(visited=[])
        return nil if visited.include?('Regex')
        visited = visited + ['Regex']
        {
          regex_string: 'regex_string',
        }
      end

      def self.stub(stub)
        stub ||= Types::Regex.new
        data = {}
        data['RegexString'] = stub[:regex_string] unless stub[:regex_string].nil?
        data
      end
    end

    # Operation Stubber for GetRuleGroup
    class GetRuleGroup
      def self.default(visited=[])
        {
          rule_group: RuleGroup.default(visited),
          lock_token: 'lock_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['RuleGroup'] = Stubs::RuleGroup.stub(stub[:rule_group]) unless stub[:rule_group].nil?
        data['LockToken'] = stub[:lock_token] unless stub[:lock_token].nil?
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
          name: 'name',
          id: 'id',
          capacity: 1,
          arn: 'arn',
          description: 'description',
          rules: Rules.default(visited),
          visibility_config: VisibilityConfig.default(visited),
          label_namespace: 'label_namespace',
          custom_response_bodies: CustomResponseBodies.default(visited),
          available_labels: LabelSummaries.default(visited),
          consumed_labels: LabelSummaries.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RuleGroup.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Capacity'] = stub[:capacity] unless stub[:capacity].nil?
        data['ARN'] = stub[:arn] unless stub[:arn].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Rules'] = Stubs::Rules.stub(stub[:rules]) unless stub[:rules].nil?
        data['VisibilityConfig'] = Stubs::VisibilityConfig.stub(stub[:visibility_config]) unless stub[:visibility_config].nil?
        data['LabelNamespace'] = stub[:label_namespace] unless stub[:label_namespace].nil?
        data['CustomResponseBodies'] = Stubs::CustomResponseBodies.stub(stub[:custom_response_bodies]) unless stub[:custom_response_bodies].nil?
        data['AvailableLabels'] = Stubs::LabelSummaries.stub(stub[:available_labels]) unless stub[:available_labels].nil?
        data['ConsumedLabels'] = Stubs::LabelSummaries.stub(stub[:consumed_labels]) unless stub[:consumed_labels].nil?
        data
      end
    end

    # Map Stubber for CustomResponseBodies
    class CustomResponseBodies
      def self.default(visited=[])
        return nil if visited.include?('CustomResponseBodies')
        visited = visited + ['CustomResponseBodies']
        {
          test_key: CustomResponseBody.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::CustomResponseBody.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for CustomResponseBody
    class CustomResponseBody
      def self.default(visited=[])
        return nil if visited.include?('CustomResponseBody')
        visited = visited + ['CustomResponseBody']
        {
          content_type: 'content_type',
          content: 'content',
        }
      end

      def self.stub(stub)
        stub ||= Types::CustomResponseBody.new
        data = {}
        data['ContentType'] = stub[:content_type] unless stub[:content_type].nil?
        data['Content'] = stub[:content] unless stub[:content].nil?
        data
      end
    end

    # Structure Stubber for VisibilityConfig
    class VisibilityConfig
      def self.default(visited=[])
        return nil if visited.include?('VisibilityConfig')
        visited = visited + ['VisibilityConfig']
        {
          sampled_requests_enabled: false,
          cloud_watch_metrics_enabled: false,
          metric_name: 'metric_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::VisibilityConfig.new
        data = {}
        data['SampledRequestsEnabled'] = stub[:sampled_requests_enabled] unless stub[:sampled_requests_enabled].nil?
        data['CloudWatchMetricsEnabled'] = stub[:cloud_watch_metrics_enabled] unless stub[:cloud_watch_metrics_enabled].nil?
        data['MetricName'] = stub[:metric_name] unless stub[:metric_name].nil?
        data
      end
    end

    # List Stubber for Rules
    class Rules
      def self.default(visited=[])
        return nil if visited.include?('Rules')
        visited = visited + ['Rules']
        [
          Rule.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Rule.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Rule
    class Rule
      def self.default(visited=[])
        return nil if visited.include?('Rule')
        visited = visited + ['Rule']
        {
          name: 'name',
          priority: 1,
          statement: Statement.default(visited),
          action: RuleAction.default(visited),
          override_action: OverrideAction.default(visited),
          rule_labels: Labels.default(visited),
          visibility_config: VisibilityConfig.default(visited),
          captcha_config: CaptchaConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Rule.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Priority'] = stub[:priority] unless stub[:priority].nil?
        data['Statement'] = Stubs::Statement.stub(stub[:statement]) unless stub[:statement].nil?
        data['Action'] = Stubs::RuleAction.stub(stub[:action]) unless stub[:action].nil?
        data['OverrideAction'] = Stubs::OverrideAction.stub(stub[:override_action]) unless stub[:override_action].nil?
        data['RuleLabels'] = Stubs::Labels.stub(stub[:rule_labels]) unless stub[:rule_labels].nil?
        data['VisibilityConfig'] = Stubs::VisibilityConfig.stub(stub[:visibility_config]) unless stub[:visibility_config].nil?
        data['CaptchaConfig'] = Stubs::CaptchaConfig.stub(stub[:captcha_config]) unless stub[:captcha_config].nil?
        data
      end
    end

    # Structure Stubber for CaptchaConfig
    class CaptchaConfig
      def self.default(visited=[])
        return nil if visited.include?('CaptchaConfig')
        visited = visited + ['CaptchaConfig']
        {
          immunity_time_property: ImmunityTimeProperty.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CaptchaConfig.new
        data = {}
        data['ImmunityTimeProperty'] = Stubs::ImmunityTimeProperty.stub(stub[:immunity_time_property]) unless stub[:immunity_time_property].nil?
        data
      end
    end

    # Structure Stubber for ImmunityTimeProperty
    class ImmunityTimeProperty
      def self.default(visited=[])
        return nil if visited.include?('ImmunityTimeProperty')
        visited = visited + ['ImmunityTimeProperty']
        {
          immunity_time: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ImmunityTimeProperty.new
        data = {}
        data['ImmunityTime'] = stub[:immunity_time] unless stub[:immunity_time].nil?
        data
      end
    end

    # List Stubber for Labels
    class Labels
      def self.default(visited=[])
        return nil if visited.include?('Labels')
        visited = visited + ['Labels']
        [
          Label.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Label.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Label
    class Label
      def self.default(visited=[])
        return nil if visited.include?('Label')
        visited = visited + ['Label']
        {
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::Label.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # Structure Stubber for OverrideAction
    class OverrideAction
      def self.default(visited=[])
        return nil if visited.include?('OverrideAction')
        visited = visited + ['OverrideAction']
        {
          count: CountAction.default(visited),
          none: NoneAction.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::OverrideAction.new
        data = {}
        data['Count'] = Stubs::CountAction.stub(stub[:count]) unless stub[:count].nil?
        data['None'] = Stubs::NoneAction.stub(stub[:none]) unless stub[:none].nil?
        data
      end
    end

    # Structure Stubber for NoneAction
    class NoneAction
      def self.default(visited=[])
        return nil if visited.include?('NoneAction')
        visited = visited + ['NoneAction']
        {
        }
      end

      def self.stub(stub)
        stub ||= Types::NoneAction.new
        data = {}
        data
      end
    end

    # Structure Stubber for Statement
    class Statement
      def self.default(visited=[])
        return nil if visited.include?('Statement')
        visited = visited + ['Statement']
        {
          byte_match_statement: ByteMatchStatement.default(visited),
          sqli_match_statement: SqliMatchStatement.default(visited),
          xss_match_statement: XssMatchStatement.default(visited),
          size_constraint_statement: SizeConstraintStatement.default(visited),
          geo_match_statement: GeoMatchStatement.default(visited),
          rule_group_reference_statement: RuleGroupReferenceStatement.default(visited),
          ip_set_reference_statement: IPSetReferenceStatement.default(visited),
          regex_pattern_set_reference_statement: RegexPatternSetReferenceStatement.default(visited),
          rate_based_statement: RateBasedStatement.default(visited),
          and_statement: AndStatement.default(visited),
          or_statement: OrStatement.default(visited),
          not_statement: NotStatement.default(visited),
          managed_rule_group_statement: ManagedRuleGroupStatement.default(visited),
          label_match_statement: LabelMatchStatement.default(visited),
          regex_match_statement: RegexMatchStatement.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Statement.new
        data = {}
        data['ByteMatchStatement'] = Stubs::ByteMatchStatement.stub(stub[:byte_match_statement]) unless stub[:byte_match_statement].nil?
        data['SqliMatchStatement'] = Stubs::SqliMatchStatement.stub(stub[:sqli_match_statement]) unless stub[:sqli_match_statement].nil?
        data['XssMatchStatement'] = Stubs::XssMatchStatement.stub(stub[:xss_match_statement]) unless stub[:xss_match_statement].nil?
        data['SizeConstraintStatement'] = Stubs::SizeConstraintStatement.stub(stub[:size_constraint_statement]) unless stub[:size_constraint_statement].nil?
        data['GeoMatchStatement'] = Stubs::GeoMatchStatement.stub(stub[:geo_match_statement]) unless stub[:geo_match_statement].nil?
        data['RuleGroupReferenceStatement'] = Stubs::RuleGroupReferenceStatement.stub(stub[:rule_group_reference_statement]) unless stub[:rule_group_reference_statement].nil?
        data['IPSetReferenceStatement'] = Stubs::IPSetReferenceStatement.stub(stub[:ip_set_reference_statement]) unless stub[:ip_set_reference_statement].nil?
        data['RegexPatternSetReferenceStatement'] = Stubs::RegexPatternSetReferenceStatement.stub(stub[:regex_pattern_set_reference_statement]) unless stub[:regex_pattern_set_reference_statement].nil?
        data['RateBasedStatement'] = Stubs::RateBasedStatement.stub(stub[:rate_based_statement]) unless stub[:rate_based_statement].nil?
        data['AndStatement'] = Stubs::AndStatement.stub(stub[:and_statement]) unless stub[:and_statement].nil?
        data['OrStatement'] = Stubs::OrStatement.stub(stub[:or_statement]) unless stub[:or_statement].nil?
        data['NotStatement'] = Stubs::NotStatement.stub(stub[:not_statement]) unless stub[:not_statement].nil?
        data['ManagedRuleGroupStatement'] = Stubs::ManagedRuleGroupStatement.stub(stub[:managed_rule_group_statement]) unless stub[:managed_rule_group_statement].nil?
        data['LabelMatchStatement'] = Stubs::LabelMatchStatement.stub(stub[:label_match_statement]) unless stub[:label_match_statement].nil?
        data['RegexMatchStatement'] = Stubs::RegexMatchStatement.stub(stub[:regex_match_statement]) unless stub[:regex_match_statement].nil?
        data
      end
    end

    # Structure Stubber for RegexMatchStatement
    class RegexMatchStatement
      def self.default(visited=[])
        return nil if visited.include?('RegexMatchStatement')
        visited = visited + ['RegexMatchStatement']
        {
          regex_string: 'regex_string',
          field_to_match: FieldToMatch.default(visited),
          text_transformations: TextTransformations.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RegexMatchStatement.new
        data = {}
        data['RegexString'] = stub[:regex_string] unless stub[:regex_string].nil?
        data['FieldToMatch'] = Stubs::FieldToMatch.stub(stub[:field_to_match]) unless stub[:field_to_match].nil?
        data['TextTransformations'] = Stubs::TextTransformations.stub(stub[:text_transformations]) unless stub[:text_transformations].nil?
        data
      end
    end

    # List Stubber for TextTransformations
    class TextTransformations
      def self.default(visited=[])
        return nil if visited.include?('TextTransformations')
        visited = visited + ['TextTransformations']
        [
          TextTransformation.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::TextTransformation.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TextTransformation
    class TextTransformation
      def self.default(visited=[])
        return nil if visited.include?('TextTransformation')
        visited = visited + ['TextTransformation']
        {
          priority: 1,
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::TextTransformation.new
        data = {}
        data['Priority'] = stub[:priority] unless stub[:priority].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # Structure Stubber for LabelMatchStatement
    class LabelMatchStatement
      def self.default(visited=[])
        return nil if visited.include?('LabelMatchStatement')
        visited = visited + ['LabelMatchStatement']
        {
          scope: 'scope',
          key: 'key',
        }
      end

      def self.stub(stub)
        stub ||= Types::LabelMatchStatement.new
        data = {}
        data['Scope'] = stub[:scope] unless stub[:scope].nil?
        data['Key'] = stub[:key] unless stub[:key].nil?
        data
      end
    end

    # Structure Stubber for ManagedRuleGroupStatement
    class ManagedRuleGroupStatement
      def self.default(visited=[])
        return nil if visited.include?('ManagedRuleGroupStatement')
        visited = visited + ['ManagedRuleGroupStatement']
        {
          vendor_name: 'vendor_name',
          name: 'name',
          version: 'version',
          excluded_rules: ExcludedRules.default(visited),
          scope_down_statement: Statement.default(visited),
          managed_rule_group_configs: ManagedRuleGroupConfigs.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ManagedRuleGroupStatement.new
        data = {}
        data['VendorName'] = stub[:vendor_name] unless stub[:vendor_name].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        data['ExcludedRules'] = Stubs::ExcludedRules.stub(stub[:excluded_rules]) unless stub[:excluded_rules].nil?
        data['ScopeDownStatement'] = Stubs::Statement.stub(stub[:scope_down_statement]) unless stub[:scope_down_statement].nil?
        data['ManagedRuleGroupConfigs'] = Stubs::ManagedRuleGroupConfigs.stub(stub[:managed_rule_group_configs]) unless stub[:managed_rule_group_configs].nil?
        data
      end
    end

    # List Stubber for ManagedRuleGroupConfigs
    class ManagedRuleGroupConfigs
      def self.default(visited=[])
        return nil if visited.include?('ManagedRuleGroupConfigs')
        visited = visited + ['ManagedRuleGroupConfigs']
        [
          ManagedRuleGroupConfig.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ManagedRuleGroupConfig.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ManagedRuleGroupConfig
    class ManagedRuleGroupConfig
      def self.default(visited=[])
        return nil if visited.include?('ManagedRuleGroupConfig')
        visited = visited + ['ManagedRuleGroupConfig']
        {
          login_path: 'login_path',
          payload_type: 'payload_type',
          username_field: UsernameField.default(visited),
          password_field: PasswordField.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ManagedRuleGroupConfig.new
        data = {}
        data['LoginPath'] = stub[:login_path] unless stub[:login_path].nil?
        data['PayloadType'] = stub[:payload_type] unless stub[:payload_type].nil?
        data['UsernameField'] = Stubs::UsernameField.stub(stub[:username_field]) unless stub[:username_field].nil?
        data['PasswordField'] = Stubs::PasswordField.stub(stub[:password_field]) unless stub[:password_field].nil?
        data
      end
    end

    # Structure Stubber for PasswordField
    class PasswordField
      def self.default(visited=[])
        return nil if visited.include?('PasswordField')
        visited = visited + ['PasswordField']
        {
          identifier: 'identifier',
        }
      end

      def self.stub(stub)
        stub ||= Types::PasswordField.new
        data = {}
        data['Identifier'] = stub[:identifier] unless stub[:identifier].nil?
        data
      end
    end

    # Structure Stubber for UsernameField
    class UsernameField
      def self.default(visited=[])
        return nil if visited.include?('UsernameField')
        visited = visited + ['UsernameField']
        {
          identifier: 'identifier',
        }
      end

      def self.stub(stub)
        stub ||= Types::UsernameField.new
        data = {}
        data['Identifier'] = stub[:identifier] unless stub[:identifier].nil?
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
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::ExcludedRule.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # Structure Stubber for NotStatement
    class NotStatement
      def self.default(visited=[])
        return nil if visited.include?('NotStatement')
        visited = visited + ['NotStatement']
        {
          statement: Statement.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::NotStatement.new
        data = {}
        data['Statement'] = Stubs::Statement.stub(stub[:statement]) unless stub[:statement].nil?
        data
      end
    end

    # Structure Stubber for OrStatement
    class OrStatement
      def self.default(visited=[])
        return nil if visited.include?('OrStatement')
        visited = visited + ['OrStatement']
        {
          statements: Statements.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::OrStatement.new
        data = {}
        data['Statements'] = Stubs::Statements.stub(stub[:statements]) unless stub[:statements].nil?
        data
      end
    end

    # List Stubber for Statements
    class Statements
      def self.default(visited=[])
        return nil if visited.include?('Statements')
        visited = visited + ['Statements']
        [
          Statement.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Statement.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AndStatement
    class AndStatement
      def self.default(visited=[])
        return nil if visited.include?('AndStatement')
        visited = visited + ['AndStatement']
        {
          statements: Statements.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AndStatement.new
        data = {}
        data['Statements'] = Stubs::Statements.stub(stub[:statements]) unless stub[:statements].nil?
        data
      end
    end

    # Structure Stubber for RateBasedStatement
    class RateBasedStatement
      def self.default(visited=[])
        return nil if visited.include?('RateBasedStatement')
        visited = visited + ['RateBasedStatement']
        {
          limit: 1,
          aggregate_key_type: 'aggregate_key_type',
          scope_down_statement: Statement.default(visited),
          forwarded_ip_config: ForwardedIPConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RateBasedStatement.new
        data = {}
        data['Limit'] = stub[:limit] unless stub[:limit].nil?
        data['AggregateKeyType'] = stub[:aggregate_key_type] unless stub[:aggregate_key_type].nil?
        data['ScopeDownStatement'] = Stubs::Statement.stub(stub[:scope_down_statement]) unless stub[:scope_down_statement].nil?
        data['ForwardedIPConfig'] = Stubs::ForwardedIPConfig.stub(stub[:forwarded_ip_config]) unless stub[:forwarded_ip_config].nil?
        data
      end
    end

    # Structure Stubber for ForwardedIPConfig
    class ForwardedIPConfig
      def self.default(visited=[])
        return nil if visited.include?('ForwardedIPConfig')
        visited = visited + ['ForwardedIPConfig']
        {
          header_name: 'header_name',
          fallback_behavior: 'fallback_behavior',
        }
      end

      def self.stub(stub)
        stub ||= Types::ForwardedIPConfig.new
        data = {}
        data['HeaderName'] = stub[:header_name] unless stub[:header_name].nil?
        data['FallbackBehavior'] = stub[:fallback_behavior] unless stub[:fallback_behavior].nil?
        data
      end
    end

    # Structure Stubber for RegexPatternSetReferenceStatement
    class RegexPatternSetReferenceStatement
      def self.default(visited=[])
        return nil if visited.include?('RegexPatternSetReferenceStatement')
        visited = visited + ['RegexPatternSetReferenceStatement']
        {
          arn: 'arn',
          field_to_match: FieldToMatch.default(visited),
          text_transformations: TextTransformations.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RegexPatternSetReferenceStatement.new
        data = {}
        data['ARN'] = stub[:arn] unless stub[:arn].nil?
        data['FieldToMatch'] = Stubs::FieldToMatch.stub(stub[:field_to_match]) unless stub[:field_to_match].nil?
        data['TextTransformations'] = Stubs::TextTransformations.stub(stub[:text_transformations]) unless stub[:text_transformations].nil?
        data
      end
    end

    # Structure Stubber for IPSetReferenceStatement
    class IPSetReferenceStatement
      def self.default(visited=[])
        return nil if visited.include?('IPSetReferenceStatement')
        visited = visited + ['IPSetReferenceStatement']
        {
          arn: 'arn',
          ip_set_forwarded_ip_config: IPSetForwardedIPConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::IPSetReferenceStatement.new
        data = {}
        data['ARN'] = stub[:arn] unless stub[:arn].nil?
        data['IPSetForwardedIPConfig'] = Stubs::IPSetForwardedIPConfig.stub(stub[:ip_set_forwarded_ip_config]) unless stub[:ip_set_forwarded_ip_config].nil?
        data
      end
    end

    # Structure Stubber for IPSetForwardedIPConfig
    class IPSetForwardedIPConfig
      def self.default(visited=[])
        return nil if visited.include?('IPSetForwardedIPConfig')
        visited = visited + ['IPSetForwardedIPConfig']
        {
          header_name: 'header_name',
          fallback_behavior: 'fallback_behavior',
          position: 'position',
        }
      end

      def self.stub(stub)
        stub ||= Types::IPSetForwardedIPConfig.new
        data = {}
        data['HeaderName'] = stub[:header_name] unless stub[:header_name].nil?
        data['FallbackBehavior'] = stub[:fallback_behavior] unless stub[:fallback_behavior].nil?
        data['Position'] = stub[:position] unless stub[:position].nil?
        data
      end
    end

    # Structure Stubber for RuleGroupReferenceStatement
    class RuleGroupReferenceStatement
      def self.default(visited=[])
        return nil if visited.include?('RuleGroupReferenceStatement')
        visited = visited + ['RuleGroupReferenceStatement']
        {
          arn: 'arn',
          excluded_rules: ExcludedRules.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RuleGroupReferenceStatement.new
        data = {}
        data['ARN'] = stub[:arn] unless stub[:arn].nil?
        data['ExcludedRules'] = Stubs::ExcludedRules.stub(stub[:excluded_rules]) unless stub[:excluded_rules].nil?
        data
      end
    end

    # Structure Stubber for GeoMatchStatement
    class GeoMatchStatement
      def self.default(visited=[])
        return nil if visited.include?('GeoMatchStatement')
        visited = visited + ['GeoMatchStatement']
        {
          country_codes: CountryCodes.default(visited),
          forwarded_ip_config: ForwardedIPConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::GeoMatchStatement.new
        data = {}
        data['CountryCodes'] = Stubs::CountryCodes.stub(stub[:country_codes]) unless stub[:country_codes].nil?
        data['ForwardedIPConfig'] = Stubs::ForwardedIPConfig.stub(stub[:forwarded_ip_config]) unless stub[:forwarded_ip_config].nil?
        data
      end
    end

    # List Stubber for CountryCodes
    class CountryCodes
      def self.default(visited=[])
        return nil if visited.include?('CountryCodes')
        visited = visited + ['CountryCodes']
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

    # Structure Stubber for SizeConstraintStatement
    class SizeConstraintStatement
      def self.default(visited=[])
        return nil if visited.include?('SizeConstraintStatement')
        visited = visited + ['SizeConstraintStatement']
        {
          field_to_match: FieldToMatch.default(visited),
          comparison_operator: 'comparison_operator',
          size: 1,
          text_transformations: TextTransformations.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SizeConstraintStatement.new
        data = {}
        data['FieldToMatch'] = Stubs::FieldToMatch.stub(stub[:field_to_match]) unless stub[:field_to_match].nil?
        data['ComparisonOperator'] = stub[:comparison_operator] unless stub[:comparison_operator].nil?
        data['Size'] = stub[:size] unless stub[:size].nil?
        data['TextTransformations'] = Stubs::TextTransformations.stub(stub[:text_transformations]) unless stub[:text_transformations].nil?
        data
      end
    end

    # Structure Stubber for XssMatchStatement
    class XssMatchStatement
      def self.default(visited=[])
        return nil if visited.include?('XssMatchStatement')
        visited = visited + ['XssMatchStatement']
        {
          field_to_match: FieldToMatch.default(visited),
          text_transformations: TextTransformations.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::XssMatchStatement.new
        data = {}
        data['FieldToMatch'] = Stubs::FieldToMatch.stub(stub[:field_to_match]) unless stub[:field_to_match].nil?
        data['TextTransformations'] = Stubs::TextTransformations.stub(stub[:text_transformations]) unless stub[:text_transformations].nil?
        data
      end
    end

    # Structure Stubber for SqliMatchStatement
    class SqliMatchStatement
      def self.default(visited=[])
        return nil if visited.include?('SqliMatchStatement')
        visited = visited + ['SqliMatchStatement']
        {
          field_to_match: FieldToMatch.default(visited),
          text_transformations: TextTransformations.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SqliMatchStatement.new
        data = {}
        data['FieldToMatch'] = Stubs::FieldToMatch.stub(stub[:field_to_match]) unless stub[:field_to_match].nil?
        data['TextTransformations'] = Stubs::TextTransformations.stub(stub[:text_transformations]) unless stub[:text_transformations].nil?
        data
      end
    end

    # Structure Stubber for ByteMatchStatement
    class ByteMatchStatement
      def self.default(visited=[])
        return nil if visited.include?('ByteMatchStatement')
        visited = visited + ['ByteMatchStatement']
        {
          search_string: 'search_string',
          field_to_match: FieldToMatch.default(visited),
          text_transformations: TextTransformations.default(visited),
          positional_constraint: 'positional_constraint',
        }
      end

      def self.stub(stub)
        stub ||= Types::ByteMatchStatement.new
        data = {}
        data['SearchString'] = Base64::encode64(stub[:search_string]) unless stub[:search_string].nil?
        data['FieldToMatch'] = Stubs::FieldToMatch.stub(stub[:field_to_match]) unless stub[:field_to_match].nil?
        data['TextTransformations'] = Stubs::TextTransformations.stub(stub[:text_transformations]) unless stub[:text_transformations].nil?
        data['PositionalConstraint'] = stub[:positional_constraint] unless stub[:positional_constraint].nil?
        data
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
          SampledHTTPRequest.default(visited)
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
          request: HTTPRequest.default(visited),
          weight: 1,
          timestamp: Time.now,
          action: 'action',
          rule_name_within_rule_group: 'rule_name_within_rule_group',
          request_headers_inserted: HTTPHeaders.default(visited),
          response_code_sent: 1,
          labels: Labels.default(visited),
          captcha_response: CaptchaResponse.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SampledHTTPRequest.new
        data = {}
        data['Request'] = Stubs::HTTPRequest.stub(stub[:request]) unless stub[:request].nil?
        data['Weight'] = stub[:weight] unless stub[:weight].nil?
        data['Timestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:timestamp]).to_i unless stub[:timestamp].nil?
        data['Action'] = stub[:action] unless stub[:action].nil?
        data['RuleNameWithinRuleGroup'] = stub[:rule_name_within_rule_group] unless stub[:rule_name_within_rule_group].nil?
        data['RequestHeadersInserted'] = Stubs::HTTPHeaders.stub(stub[:request_headers_inserted]) unless stub[:request_headers_inserted].nil?
        data['ResponseCodeSent'] = stub[:response_code_sent] unless stub[:response_code_sent].nil?
        data['Labels'] = Stubs::Labels.stub(stub[:labels]) unless stub[:labels].nil?
        data['CaptchaResponse'] = Stubs::CaptchaResponse.stub(stub[:captcha_response]) unless stub[:captcha_response].nil?
        data
      end
    end

    # Structure Stubber for CaptchaResponse
    class CaptchaResponse
      def self.default(visited=[])
        return nil if visited.include?('CaptchaResponse')
        visited = visited + ['CaptchaResponse']
        {
          response_code: 1,
          solve_timestamp: 1,
          failure_reason: 'failure_reason',
        }
      end

      def self.stub(stub)
        stub ||= Types::CaptchaResponse.new
        data = {}
        data['ResponseCode'] = stub[:response_code] unless stub[:response_code].nil?
        data['SolveTimestamp'] = stub[:solve_timestamp] unless stub[:solve_timestamp].nil?
        data['FailureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
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
        data['Headers'] = Stubs::HTTPHeaders.stub(stub[:headers]) unless stub[:headers].nil?
        data
      end
    end

    # Operation Stubber for GetWebACL
    class GetWebACL
      def self.default(visited=[])
        {
          web_acl: WebACL.default(visited),
          lock_token: 'lock_token',
          application_integration_url: 'application_integration_url',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['WebACL'] = Stubs::WebACL.stub(stub[:web_acl]) unless stub[:web_acl].nil?
        data['LockToken'] = stub[:lock_token] unless stub[:lock_token].nil?
        data['ApplicationIntegrationURL'] = stub[:application_integration_url] unless stub[:application_integration_url].nil?
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
          name: 'name',
          id: 'id',
          arn: 'arn',
          default_action: DefaultAction.default(visited),
          description: 'description',
          rules: Rules.default(visited),
          visibility_config: VisibilityConfig.default(visited),
          capacity: 1,
          pre_process_firewall_manager_rule_groups: FirewallManagerRuleGroups.default(visited),
          post_process_firewall_manager_rule_groups: FirewallManagerRuleGroups.default(visited),
          managed_by_firewall_manager: false,
          label_namespace: 'label_namespace',
          custom_response_bodies: CustomResponseBodies.default(visited),
          captcha_config: CaptchaConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::WebACL.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['ARN'] = stub[:arn] unless stub[:arn].nil?
        data['DefaultAction'] = Stubs::DefaultAction.stub(stub[:default_action]) unless stub[:default_action].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Rules'] = Stubs::Rules.stub(stub[:rules]) unless stub[:rules].nil?
        data['VisibilityConfig'] = Stubs::VisibilityConfig.stub(stub[:visibility_config]) unless stub[:visibility_config].nil?
        data['Capacity'] = stub[:capacity] unless stub[:capacity].nil?
        data['PreProcessFirewallManagerRuleGroups'] = Stubs::FirewallManagerRuleGroups.stub(stub[:pre_process_firewall_manager_rule_groups]) unless stub[:pre_process_firewall_manager_rule_groups].nil?
        data['PostProcessFirewallManagerRuleGroups'] = Stubs::FirewallManagerRuleGroups.stub(stub[:post_process_firewall_manager_rule_groups]) unless stub[:post_process_firewall_manager_rule_groups].nil?
        data['ManagedByFirewallManager'] = stub[:managed_by_firewall_manager] unless stub[:managed_by_firewall_manager].nil?
        data['LabelNamespace'] = stub[:label_namespace] unless stub[:label_namespace].nil?
        data['CustomResponseBodies'] = Stubs::CustomResponseBodies.stub(stub[:custom_response_bodies]) unless stub[:custom_response_bodies].nil?
        data['CaptchaConfig'] = Stubs::CaptchaConfig.stub(stub[:captcha_config]) unless stub[:captcha_config].nil?
        data
      end
    end

    # List Stubber for FirewallManagerRuleGroups
    class FirewallManagerRuleGroups
      def self.default(visited=[])
        return nil if visited.include?('FirewallManagerRuleGroups')
        visited = visited + ['FirewallManagerRuleGroups']
        [
          FirewallManagerRuleGroup.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::FirewallManagerRuleGroup.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for FirewallManagerRuleGroup
    class FirewallManagerRuleGroup
      def self.default(visited=[])
        return nil if visited.include?('FirewallManagerRuleGroup')
        visited = visited + ['FirewallManagerRuleGroup']
        {
          name: 'name',
          priority: 1,
          firewall_manager_statement: FirewallManagerStatement.default(visited),
          override_action: OverrideAction.default(visited),
          visibility_config: VisibilityConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::FirewallManagerRuleGroup.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Priority'] = stub[:priority] unless stub[:priority].nil?
        data['FirewallManagerStatement'] = Stubs::FirewallManagerStatement.stub(stub[:firewall_manager_statement]) unless stub[:firewall_manager_statement].nil?
        data['OverrideAction'] = Stubs::OverrideAction.stub(stub[:override_action]) unless stub[:override_action].nil?
        data['VisibilityConfig'] = Stubs::VisibilityConfig.stub(stub[:visibility_config]) unless stub[:visibility_config].nil?
        data
      end
    end

    # Structure Stubber for FirewallManagerStatement
    class FirewallManagerStatement
      def self.default(visited=[])
        return nil if visited.include?('FirewallManagerStatement')
        visited = visited + ['FirewallManagerStatement']
        {
          managed_rule_group_statement: ManagedRuleGroupStatement.default(visited),
          rule_group_reference_statement: RuleGroupReferenceStatement.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::FirewallManagerStatement.new
        data = {}
        data['ManagedRuleGroupStatement'] = Stubs::ManagedRuleGroupStatement.stub(stub[:managed_rule_group_statement]) unless stub[:managed_rule_group_statement].nil?
        data['RuleGroupReferenceStatement'] = Stubs::RuleGroupReferenceStatement.stub(stub[:rule_group_reference_statement]) unless stub[:rule_group_reference_statement].nil?
        data
      end
    end

    # Structure Stubber for DefaultAction
    class DefaultAction
      def self.default(visited=[])
        return nil if visited.include?('DefaultAction')
        visited = visited + ['DefaultAction']
        {
          block: BlockAction.default(visited),
          allow: AllowAction.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DefaultAction.new
        data = {}
        data['Block'] = Stubs::BlockAction.stub(stub[:block]) unless stub[:block].nil?
        data['Allow'] = Stubs::AllowAction.stub(stub[:allow]) unless stub[:allow].nil?
        data
      end
    end

    # Operation Stubber for GetWebACLForResource
    class GetWebACLForResource
      def self.default(visited=[])
        {
          web_acl: WebACL.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['WebACL'] = Stubs::WebACL.stub(stub[:web_acl]) unless stub[:web_acl].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListAvailableManagedRuleGroupVersions
    class ListAvailableManagedRuleGroupVersions
      def self.default(visited=[])
        {
          next_marker: 'next_marker',
          versions: ManagedRuleGroupVersions.default(visited),
          current_default_version: 'current_default_version',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextMarker'] = stub[:next_marker] unless stub[:next_marker].nil?
        data['Versions'] = Stubs::ManagedRuleGroupVersions.stub(stub[:versions]) unless stub[:versions].nil?
        data['CurrentDefaultVersion'] = stub[:current_default_version] unless stub[:current_default_version].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ManagedRuleGroupVersions
    class ManagedRuleGroupVersions
      def self.default(visited=[])
        return nil if visited.include?('ManagedRuleGroupVersions')
        visited = visited + ['ManagedRuleGroupVersions']
        [
          ManagedRuleGroupVersion.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ManagedRuleGroupVersion.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ManagedRuleGroupVersion
    class ManagedRuleGroupVersion
      def self.default(visited=[])
        return nil if visited.include?('ManagedRuleGroupVersion')
        visited = visited + ['ManagedRuleGroupVersion']
        {
          name: 'name',
          last_update_timestamp: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ManagedRuleGroupVersion.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['LastUpdateTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_update_timestamp]).to_i unless stub[:last_update_timestamp].nil?
        data
      end
    end

    # Operation Stubber for ListAvailableManagedRuleGroups
    class ListAvailableManagedRuleGroups
      def self.default(visited=[])
        {
          next_marker: 'next_marker',
          managed_rule_groups: ManagedRuleGroupSummaries.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextMarker'] = stub[:next_marker] unless stub[:next_marker].nil?
        data['ManagedRuleGroups'] = Stubs::ManagedRuleGroupSummaries.stub(stub[:managed_rule_groups]) unless stub[:managed_rule_groups].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ManagedRuleGroupSummaries
    class ManagedRuleGroupSummaries
      def self.default(visited=[])
        return nil if visited.include?('ManagedRuleGroupSummaries')
        visited = visited + ['ManagedRuleGroupSummaries']
        [
          ManagedRuleGroupSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ManagedRuleGroupSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ManagedRuleGroupSummary
    class ManagedRuleGroupSummary
      def self.default(visited=[])
        return nil if visited.include?('ManagedRuleGroupSummary')
        visited = visited + ['ManagedRuleGroupSummary']
        {
          vendor_name: 'vendor_name',
          name: 'name',
          versioning_supported: false,
          description: 'description',
        }
      end

      def self.stub(stub)
        stub ||= Types::ManagedRuleGroupSummary.new
        data = {}
        data['VendorName'] = stub[:vendor_name] unless stub[:vendor_name].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['VersioningSupported'] = stub[:versioning_supported] unless stub[:versioning_supported].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
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
          IPSetSummary.default(visited)
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
          LoggingConfiguration.default(visited)
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

    # Operation Stubber for ListManagedRuleSets
    class ListManagedRuleSets
      def self.default(visited=[])
        {
          next_marker: 'next_marker',
          managed_rule_sets: ManagedRuleSetSummaries.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextMarker'] = stub[:next_marker] unless stub[:next_marker].nil?
        data['ManagedRuleSets'] = Stubs::ManagedRuleSetSummaries.stub(stub[:managed_rule_sets]) unless stub[:managed_rule_sets].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ManagedRuleSetSummaries
    class ManagedRuleSetSummaries
      def self.default(visited=[])
        return nil if visited.include?('ManagedRuleSetSummaries')
        visited = visited + ['ManagedRuleSetSummaries']
        [
          ManagedRuleSetSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ManagedRuleSetSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ManagedRuleSetSummary
    class ManagedRuleSetSummary
      def self.default(visited=[])
        return nil if visited.include?('ManagedRuleSetSummary')
        visited = visited + ['ManagedRuleSetSummary']
        {
          name: 'name',
          id: 'id',
          description: 'description',
          lock_token: 'lock_token',
          arn: 'arn',
          label_namespace: 'label_namespace',
        }
      end

      def self.stub(stub)
        stub ||= Types::ManagedRuleSetSummary.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['LockToken'] = stub[:lock_token] unless stub[:lock_token].nil?
        data['ARN'] = stub[:arn] unless stub[:arn].nil?
        data['LabelNamespace'] = stub[:label_namespace] unless stub[:label_namespace].nil?
        data
      end
    end

    # Operation Stubber for ListMobileSdkReleases
    class ListMobileSdkReleases
      def self.default(visited=[])
        {
          release_summaries: ReleaseSummaries.default(visited),
          next_marker: 'next_marker',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ReleaseSummaries'] = Stubs::ReleaseSummaries.stub(stub[:release_summaries]) unless stub[:release_summaries].nil?
        data['NextMarker'] = stub[:next_marker] unless stub[:next_marker].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ReleaseSummaries
    class ReleaseSummaries
      def self.default(visited=[])
        return nil if visited.include?('ReleaseSummaries')
        visited = visited + ['ReleaseSummaries']
        [
          ReleaseSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ReleaseSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ReleaseSummary
    class ReleaseSummary
      def self.default(visited=[])
        return nil if visited.include?('ReleaseSummary')
        visited = visited + ['ReleaseSummary']
        {
          release_version: 'release_version',
          timestamp: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ReleaseSummary.new
        data = {}
        data['ReleaseVersion'] = stub[:release_version] unless stub[:release_version].nil?
        data['Timestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:timestamp]).to_i unless stub[:timestamp].nil?
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
          RegexPatternSetSummary.default(visited)
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

    # Operation Stubber for ListResourcesForWebACL
    class ListResourcesForWebACL
      def self.default(visited=[])
        {
          resource_arns: ResourceArns.default(visited),
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
          rule_groups: RuleGroupSummaries.default(visited),
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
          RuleGroupSummary.default(visited)
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
          tag_list: TagList.default(visited),
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
          WebACLSummary.default(visited)
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

    # Operation Stubber for PutLoggingConfiguration
    class PutLoggingConfiguration
      def self.default(visited=[])
        {
          logging_configuration: LoggingConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['LoggingConfiguration'] = Stubs::LoggingConfiguration.stub(stub[:logging_configuration]) unless stub[:logging_configuration].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutManagedRuleSetVersions
    class PutManagedRuleSetVersions
      def self.default(visited=[])
        {
          next_lock_token: 'next_lock_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextLockToken'] = stub[:next_lock_token] unless stub[:next_lock_token].nil?
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

    # Operation Stubber for UpdateIPSet
    class UpdateIPSet
      def self.default(visited=[])
        {
          next_lock_token: 'next_lock_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextLockToken'] = stub[:next_lock_token] unless stub[:next_lock_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateManagedRuleSetVersionExpiryDate
    class UpdateManagedRuleSetVersionExpiryDate
      def self.default(visited=[])
        {
          expiring_version: 'expiring_version',
          expiry_timestamp: Time.now,
          next_lock_token: 'next_lock_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ExpiringVersion'] = stub[:expiring_version] unless stub[:expiring_version].nil?
        data['ExpiryTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:expiry_timestamp]).to_i unless stub[:expiry_timestamp].nil?
        data['NextLockToken'] = stub[:next_lock_token] unless stub[:next_lock_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateRegexPatternSet
    class UpdateRegexPatternSet
      def self.default(visited=[])
        {
          next_lock_token: 'next_lock_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextLockToken'] = stub[:next_lock_token] unless stub[:next_lock_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateRuleGroup
    class UpdateRuleGroup
      def self.default(visited=[])
        {
          next_lock_token: 'next_lock_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextLockToken'] = stub[:next_lock_token] unless stub[:next_lock_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateWebACL
    class UpdateWebACL
      def self.default(visited=[])
        {
          next_lock_token: 'next_lock_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextLockToken'] = stub[:next_lock_token] unless stub[:next_lock_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
