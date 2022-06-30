# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Route53RecoveryReadiness
  module Stubs

    # Operation Stubber for CreateCell
    class CreateCell
      def self.default(visited=[])
        {
          cell_arn: 'cell_arn',
          cell_name: 'cell_name',
          cells: Stubs::List____listOf__string.default(visited),
          parent_readiness_scopes: Stubs::List____listOf__string.default(visited),
          tags: Stubs::Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['cellArn'] = stub[:cell_arn] unless stub[:cell_arn].nil?
        data['cellName'] = stub[:cell_name] unless stub[:cell_name].nil?
        data['cells'] = Stubs::List____listOf__string.stub(stub[:cells]) unless stub[:cells].nil?
        data['parentReadinessScopes'] = Stubs::List____listOf__string.stub(stub[:parent_readiness_scopes]) unless stub[:parent_readiness_scopes].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Stubber for Tags
    class Tags
      def self.default(visited=[])
        return nil if visited.include?('Tags')
        visited = visited + ['Tags']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # List Stubber for __listOf__string
    class List____listOf__string
      def self.default(visited=[])
        return nil if visited.include?('List____listOf__string')
        visited = visited + ['List____listOf__string']
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

    # Operation Stubber for CreateCrossAccountAuthorization
    class CreateCrossAccountAuthorization
      def self.default(visited=[])
        {
          cross_account_authorization: 'cross_account_authorization',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['crossAccountAuthorization'] = stub[:cross_account_authorization] unless stub[:cross_account_authorization].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateReadinessCheck
    class CreateReadinessCheck
      def self.default(visited=[])
        {
          readiness_check_arn: 'readiness_check_arn',
          readiness_check_name: 'readiness_check_name',
          resource_set: 'resource_set',
          tags: Stubs::Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['readinessCheckArn'] = stub[:readiness_check_arn] unless stub[:readiness_check_arn].nil?
        data['readinessCheckName'] = stub[:readiness_check_name] unless stub[:readiness_check_name].nil?
        data['resourceSet'] = stub[:resource_set] unless stub[:resource_set].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateRecoveryGroup
    class CreateRecoveryGroup
      def self.default(visited=[])
        {
          cells: Stubs::List____listOf__string.default(visited),
          recovery_group_arn: 'recovery_group_arn',
          recovery_group_name: 'recovery_group_name',
          tags: Stubs::Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['cells'] = Stubs::List____listOf__string.stub(stub[:cells]) unless stub[:cells].nil?
        data['recoveryGroupArn'] = stub[:recovery_group_arn] unless stub[:recovery_group_arn].nil?
        data['recoveryGroupName'] = stub[:recovery_group_name] unless stub[:recovery_group_name].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateResourceSet
    class CreateResourceSet
      def self.default(visited=[])
        {
          resource_set_arn: 'resource_set_arn',
          resource_set_name: 'resource_set_name',
          resource_set_type: 'resource_set_type',
          resources: Stubs::List____listOfResource.default(visited),
          tags: Stubs::Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['resourceSetArn'] = stub[:resource_set_arn] unless stub[:resource_set_arn].nil?
        data['resourceSetName'] = stub[:resource_set_name] unless stub[:resource_set_name].nil?
        data['resourceSetType'] = stub[:resource_set_type] unless stub[:resource_set_type].nil?
        data['resources'] = Stubs::List____listOfResource.stub(stub[:resources]) unless stub[:resources].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfResource
    class List____listOfResource
      def self.default(visited=[])
        return nil if visited.include?('List____listOfResource')
        visited = visited + ['List____listOfResource']
        [
          Stubs::Resource.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Resource.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Resource
    class Resource
      def self.default(visited=[])
        return nil if visited.include?('Resource')
        visited = visited + ['Resource']
        {
          component_id: 'component_id',
          dns_target_resource: Stubs::DNSTargetResource.default(visited),
          readiness_scopes: Stubs::List____listOf__string.default(visited),
          resource_arn: 'resource_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::Resource.new
        data = {}
        data['componentId'] = stub[:component_id] unless stub[:component_id].nil?
        data['dnsTargetResource'] = Stubs::DNSTargetResource.stub(stub[:dns_target_resource]) unless stub[:dns_target_resource].nil?
        data['readinessScopes'] = Stubs::List____listOf__string.stub(stub[:readiness_scopes]) unless stub[:readiness_scopes].nil?
        data['resourceArn'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data
      end
    end

    # Structure Stubber for DNSTargetResource
    class DNSTargetResource
      def self.default(visited=[])
        return nil if visited.include?('DNSTargetResource')
        visited = visited + ['DNSTargetResource']
        {
          domain_name: 'domain_name',
          hosted_zone_arn: 'hosted_zone_arn',
          record_set_id: 'record_set_id',
          record_type: 'record_type',
          target_resource: Stubs::TargetResource.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DNSTargetResource.new
        data = {}
        data['domainName'] = stub[:domain_name] unless stub[:domain_name].nil?
        data['hostedZoneArn'] = stub[:hosted_zone_arn] unless stub[:hosted_zone_arn].nil?
        data['recordSetId'] = stub[:record_set_id] unless stub[:record_set_id].nil?
        data['recordType'] = stub[:record_type] unless stub[:record_type].nil?
        data['targetResource'] = Stubs::TargetResource.stub(stub[:target_resource]) unless stub[:target_resource].nil?
        data
      end
    end

    # Structure Stubber for TargetResource
    class TargetResource
      def self.default(visited=[])
        return nil if visited.include?('TargetResource')
        visited = visited + ['TargetResource']
        {
          nlb_resource: Stubs::NLBResource.default(visited),
          r53_resource: Stubs::R53ResourceRecord.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TargetResource.new
        data = {}
        data['nLBResource'] = Stubs::NLBResource.stub(stub[:nlb_resource]) unless stub[:nlb_resource].nil?
        data['r53Resource'] = Stubs::R53ResourceRecord.stub(stub[:r53_resource]) unless stub[:r53_resource].nil?
        data
      end
    end

    # Structure Stubber for R53ResourceRecord
    class R53ResourceRecord
      def self.default(visited=[])
        return nil if visited.include?('R53ResourceRecord')
        visited = visited + ['R53ResourceRecord']
        {
          domain_name: 'domain_name',
          record_set_id: 'record_set_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::R53ResourceRecord.new
        data = {}
        data['domainName'] = stub[:domain_name] unless stub[:domain_name].nil?
        data['recordSetId'] = stub[:record_set_id] unless stub[:record_set_id].nil?
        data
      end
    end

    # Structure Stubber for NLBResource
    class NLBResource
      def self.default(visited=[])
        return nil if visited.include?('NLBResource')
        visited = visited + ['NLBResource']
        {
          arn: 'arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::NLBResource.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data
      end
    end

    # Operation Stubber for DeleteCell
    class DeleteCell
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteCrossAccountAuthorization
    class DeleteCrossAccountAuthorization
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteReadinessCheck
    class DeleteReadinessCheck
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteRecoveryGroup
    class DeleteRecoveryGroup
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteResourceSet
    class DeleteResourceSet
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for GetArchitectureRecommendations
    class GetArchitectureRecommendations
      def self.default(visited=[])
        {
          last_audit_timestamp: Time.now,
          next_token: 'next_token',
          recommendations: Stubs::List____listOfRecommendation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['lastAuditTimestamp'] = Hearth::TimeHelper.to_date_time(stub[:last_audit_timestamp]) unless stub[:last_audit_timestamp].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['recommendations'] = Stubs::List____listOfRecommendation.stub(stub[:recommendations]) unless stub[:recommendations].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfRecommendation
    class List____listOfRecommendation
      def self.default(visited=[])
        return nil if visited.include?('List____listOfRecommendation')
        visited = visited + ['List____listOfRecommendation']
        [
          Stubs::Recommendation.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Recommendation.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Recommendation
    class Recommendation
      def self.default(visited=[])
        return nil if visited.include?('Recommendation')
        visited = visited + ['Recommendation']
        {
          recommendation_text: 'recommendation_text',
        }
      end

      def self.stub(stub)
        stub ||= Types::Recommendation.new
        data = {}
        data['recommendationText'] = stub[:recommendation_text] unless stub[:recommendation_text].nil?
        data
      end
    end

    # Operation Stubber for GetCell
    class GetCell
      def self.default(visited=[])
        {
          cell_arn: 'cell_arn',
          cell_name: 'cell_name',
          cells: Stubs::List____listOf__string.default(visited),
          parent_readiness_scopes: Stubs::List____listOf__string.default(visited),
          tags: Stubs::Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['cellArn'] = stub[:cell_arn] unless stub[:cell_arn].nil?
        data['cellName'] = stub[:cell_name] unless stub[:cell_name].nil?
        data['cells'] = Stubs::List____listOf__string.stub(stub[:cells]) unless stub[:cells].nil?
        data['parentReadinessScopes'] = Stubs::List____listOf__string.stub(stub[:parent_readiness_scopes]) unless stub[:parent_readiness_scopes].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetCellReadinessSummary
    class GetCellReadinessSummary
      def self.default(visited=[])
        {
          next_token: 'next_token',
          readiness: 'readiness',
          readiness_checks: Stubs::List____listOfReadinessCheckSummary.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['readiness'] = stub[:readiness] unless stub[:readiness].nil?
        data['readinessChecks'] = Stubs::List____listOfReadinessCheckSummary.stub(stub[:readiness_checks]) unless stub[:readiness_checks].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfReadinessCheckSummary
    class List____listOfReadinessCheckSummary
      def self.default(visited=[])
        return nil if visited.include?('List____listOfReadinessCheckSummary')
        visited = visited + ['List____listOfReadinessCheckSummary']
        [
          Stubs::ReadinessCheckSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ReadinessCheckSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ReadinessCheckSummary
    class ReadinessCheckSummary
      def self.default(visited=[])
        return nil if visited.include?('ReadinessCheckSummary')
        visited = visited + ['ReadinessCheckSummary']
        {
          readiness: 'readiness',
          readiness_check_name: 'readiness_check_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::ReadinessCheckSummary.new
        data = {}
        data['readiness'] = stub[:readiness] unless stub[:readiness].nil?
        data['readinessCheckName'] = stub[:readiness_check_name] unless stub[:readiness_check_name].nil?
        data
      end
    end

    # Operation Stubber for GetReadinessCheck
    class GetReadinessCheck
      def self.default(visited=[])
        {
          readiness_check_arn: 'readiness_check_arn',
          readiness_check_name: 'readiness_check_name',
          resource_set: 'resource_set',
          tags: Stubs::Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['readinessCheckArn'] = stub[:readiness_check_arn] unless stub[:readiness_check_arn].nil?
        data['readinessCheckName'] = stub[:readiness_check_name] unless stub[:readiness_check_name].nil?
        data['resourceSet'] = stub[:resource_set] unless stub[:resource_set].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetReadinessCheckResourceStatus
    class GetReadinessCheckResourceStatus
      def self.default(visited=[])
        {
          next_token: 'next_token',
          readiness: 'readiness',
          rules: Stubs::List____listOfRuleResult.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['readiness'] = stub[:readiness] unless stub[:readiness].nil?
        data['rules'] = Stubs::List____listOfRuleResult.stub(stub[:rules]) unless stub[:rules].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfRuleResult
    class List____listOfRuleResult
      def self.default(visited=[])
        return nil if visited.include?('List____listOfRuleResult')
        visited = visited + ['List____listOfRuleResult']
        [
          Stubs::RuleResult.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::RuleResult.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RuleResult
    class RuleResult
      def self.default(visited=[])
        return nil if visited.include?('RuleResult')
        visited = visited + ['RuleResult']
        {
          last_checked_timestamp: Time.now,
          messages: Stubs::List____listOfMessage.default(visited),
          readiness: 'readiness',
          rule_id: 'rule_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::RuleResult.new
        data = {}
        data['lastCheckedTimestamp'] = Hearth::TimeHelper.to_date_time(stub[:last_checked_timestamp]) unless stub[:last_checked_timestamp].nil?
        data['messages'] = Stubs::List____listOfMessage.stub(stub[:messages]) unless stub[:messages].nil?
        data['readiness'] = stub[:readiness] unless stub[:readiness].nil?
        data['ruleId'] = stub[:rule_id] unless stub[:rule_id].nil?
        data
      end
    end

    # List Stubber for __listOfMessage
    class List____listOfMessage
      def self.default(visited=[])
        return nil if visited.include?('List____listOfMessage')
        visited = visited + ['List____listOfMessage']
        [
          Stubs::Message.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Message.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Message
    class Message
      def self.default(visited=[])
        return nil if visited.include?('Message')
        visited = visited + ['Message']
        {
          message_text: 'message_text',
        }
      end

      def self.stub(stub)
        stub ||= Types::Message.new
        data = {}
        data['messageText'] = stub[:message_text] unless stub[:message_text].nil?
        data
      end
    end

    # Operation Stubber for GetReadinessCheckStatus
    class GetReadinessCheckStatus
      def self.default(visited=[])
        {
          messages: Stubs::List____listOfMessage.default(visited),
          next_token: 'next_token',
          readiness: 'readiness',
          resources: Stubs::List____listOfResourceResult.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['messages'] = Stubs::List____listOfMessage.stub(stub[:messages]) unless stub[:messages].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['readiness'] = stub[:readiness] unless stub[:readiness].nil?
        data['resources'] = Stubs::List____listOfResourceResult.stub(stub[:resources]) unless stub[:resources].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfResourceResult
    class List____listOfResourceResult
      def self.default(visited=[])
        return nil if visited.include?('List____listOfResourceResult')
        visited = visited + ['List____listOfResourceResult']
        [
          Stubs::ResourceResult.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ResourceResult.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ResourceResult
    class ResourceResult
      def self.default(visited=[])
        return nil if visited.include?('ResourceResult')
        visited = visited + ['ResourceResult']
        {
          component_id: 'component_id',
          last_checked_timestamp: Time.now,
          readiness: 'readiness',
          resource_arn: 'resource_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourceResult.new
        data = {}
        data['componentId'] = stub[:component_id] unless stub[:component_id].nil?
        data['lastCheckedTimestamp'] = Hearth::TimeHelper.to_date_time(stub[:last_checked_timestamp]) unless stub[:last_checked_timestamp].nil?
        data['readiness'] = stub[:readiness] unless stub[:readiness].nil?
        data['resourceArn'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data
      end
    end

    # Operation Stubber for GetRecoveryGroup
    class GetRecoveryGroup
      def self.default(visited=[])
        {
          cells: Stubs::List____listOf__string.default(visited),
          recovery_group_arn: 'recovery_group_arn',
          recovery_group_name: 'recovery_group_name',
          tags: Stubs::Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['cells'] = Stubs::List____listOf__string.stub(stub[:cells]) unless stub[:cells].nil?
        data['recoveryGroupArn'] = stub[:recovery_group_arn] unless stub[:recovery_group_arn].nil?
        data['recoveryGroupName'] = stub[:recovery_group_name] unless stub[:recovery_group_name].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetRecoveryGroupReadinessSummary
    class GetRecoveryGroupReadinessSummary
      def self.default(visited=[])
        {
          next_token: 'next_token',
          readiness: 'readiness',
          readiness_checks: Stubs::List____listOfReadinessCheckSummary.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['readiness'] = stub[:readiness] unless stub[:readiness].nil?
        data['readinessChecks'] = Stubs::List____listOfReadinessCheckSummary.stub(stub[:readiness_checks]) unless stub[:readiness_checks].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetResourceSet
    class GetResourceSet
      def self.default(visited=[])
        {
          resource_set_arn: 'resource_set_arn',
          resource_set_name: 'resource_set_name',
          resource_set_type: 'resource_set_type',
          resources: Stubs::List____listOfResource.default(visited),
          tags: Stubs::Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['resourceSetArn'] = stub[:resource_set_arn] unless stub[:resource_set_arn].nil?
        data['resourceSetName'] = stub[:resource_set_name] unless stub[:resource_set_name].nil?
        data['resourceSetType'] = stub[:resource_set_type] unless stub[:resource_set_type].nil?
        data['resources'] = Stubs::List____listOfResource.stub(stub[:resources]) unless stub[:resources].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListCells
    class ListCells
      def self.default(visited=[])
        {
          cells: Stubs::List____listOfCellOutput.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['cells'] = Stubs::List____listOfCellOutput.stub(stub[:cells]) unless stub[:cells].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfCellOutput
    class List____listOfCellOutput
      def self.default(visited=[])
        return nil if visited.include?('List____listOfCellOutput')
        visited = visited + ['List____listOfCellOutput']
        [
          Stubs::CellOutput.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::CellOutput.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CellOutput
    class CellOutput
      def self.default(visited=[])
        return nil if visited.include?('CellOutput')
        visited = visited + ['CellOutput']
        {
          cell_arn: 'cell_arn',
          cell_name: 'cell_name',
          cells: Stubs::List____listOf__string.default(visited),
          parent_readiness_scopes: Stubs::List____listOf__string.default(visited),
          tags: Stubs::Tags.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CellOutput.new
        data = {}
        data['cellArn'] = stub[:cell_arn] unless stub[:cell_arn].nil?
        data['cellName'] = stub[:cell_name] unless stub[:cell_name].nil?
        data['cells'] = Stubs::List____listOf__string.stub(stub[:cells]) unless stub[:cells].nil?
        data['parentReadinessScopes'] = Stubs::List____listOf__string.stub(stub[:parent_readiness_scopes]) unless stub[:parent_readiness_scopes].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Operation Stubber for ListCrossAccountAuthorizations
    class ListCrossAccountAuthorizations
      def self.default(visited=[])
        {
          cross_account_authorizations: Stubs::List____listOfCrossAccountAuthorization.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['crossAccountAuthorizations'] = Stubs::List____listOfCrossAccountAuthorization.stub(stub[:cross_account_authorizations]) unless stub[:cross_account_authorizations].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfCrossAccountAuthorization
    class List____listOfCrossAccountAuthorization
      def self.default(visited=[])
        return nil if visited.include?('List____listOfCrossAccountAuthorization')
        visited = visited + ['List____listOfCrossAccountAuthorization']
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

    # Operation Stubber for ListReadinessChecks
    class ListReadinessChecks
      def self.default(visited=[])
        {
          next_token: 'next_token',
          readiness_checks: Stubs::List____listOfReadinessCheckOutput.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['readinessChecks'] = Stubs::List____listOfReadinessCheckOutput.stub(stub[:readiness_checks]) unless stub[:readiness_checks].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfReadinessCheckOutput
    class List____listOfReadinessCheckOutput
      def self.default(visited=[])
        return nil if visited.include?('List____listOfReadinessCheckOutput')
        visited = visited + ['List____listOfReadinessCheckOutput']
        [
          Stubs::ReadinessCheckOutput.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ReadinessCheckOutput.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ReadinessCheckOutput
    class ReadinessCheckOutput
      def self.default(visited=[])
        return nil if visited.include?('ReadinessCheckOutput')
        visited = visited + ['ReadinessCheckOutput']
        {
          readiness_check_arn: 'readiness_check_arn',
          readiness_check_name: 'readiness_check_name',
          resource_set: 'resource_set',
          tags: Stubs::Tags.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ReadinessCheckOutput.new
        data = {}
        data['readinessCheckArn'] = stub[:readiness_check_arn] unless stub[:readiness_check_arn].nil?
        data['readinessCheckName'] = stub[:readiness_check_name] unless stub[:readiness_check_name].nil?
        data['resourceSet'] = stub[:resource_set] unless stub[:resource_set].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Operation Stubber for ListRecoveryGroups
    class ListRecoveryGroups
      def self.default(visited=[])
        {
          next_token: 'next_token',
          recovery_groups: Stubs::List____listOfRecoveryGroupOutput.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['recoveryGroups'] = Stubs::List____listOfRecoveryGroupOutput.stub(stub[:recovery_groups]) unless stub[:recovery_groups].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfRecoveryGroupOutput
    class List____listOfRecoveryGroupOutput
      def self.default(visited=[])
        return nil if visited.include?('List____listOfRecoveryGroupOutput')
        visited = visited + ['List____listOfRecoveryGroupOutput']
        [
          Stubs::RecoveryGroupOutput.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::RecoveryGroupOutput.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RecoveryGroupOutput
    class RecoveryGroupOutput
      def self.default(visited=[])
        return nil if visited.include?('RecoveryGroupOutput')
        visited = visited + ['RecoveryGroupOutput']
        {
          cells: Stubs::List____listOf__string.default(visited),
          recovery_group_arn: 'recovery_group_arn',
          recovery_group_name: 'recovery_group_name',
          tags: Stubs::Tags.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RecoveryGroupOutput.new
        data = {}
        data['cells'] = Stubs::List____listOf__string.stub(stub[:cells]) unless stub[:cells].nil?
        data['recoveryGroupArn'] = stub[:recovery_group_arn] unless stub[:recovery_group_arn].nil?
        data['recoveryGroupName'] = stub[:recovery_group_name] unless stub[:recovery_group_name].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Operation Stubber for ListResourceSets
    class ListResourceSets
      def self.default(visited=[])
        {
          next_token: 'next_token',
          resource_sets: Stubs::List____listOfResourceSetOutput.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['resourceSets'] = Stubs::List____listOfResourceSetOutput.stub(stub[:resource_sets]) unless stub[:resource_sets].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfResourceSetOutput
    class List____listOfResourceSetOutput
      def self.default(visited=[])
        return nil if visited.include?('List____listOfResourceSetOutput')
        visited = visited + ['List____listOfResourceSetOutput']
        [
          Stubs::ResourceSetOutput.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ResourceSetOutput.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ResourceSetOutput
    class ResourceSetOutput
      def self.default(visited=[])
        return nil if visited.include?('ResourceSetOutput')
        visited = visited + ['ResourceSetOutput']
        {
          resource_set_arn: 'resource_set_arn',
          resource_set_name: 'resource_set_name',
          resource_set_type: 'resource_set_type',
          resources: Stubs::List____listOfResource.default(visited),
          tags: Stubs::Tags.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourceSetOutput.new
        data = {}
        data['resourceSetArn'] = stub[:resource_set_arn] unless stub[:resource_set_arn].nil?
        data['resourceSetName'] = stub[:resource_set_name] unless stub[:resource_set_name].nil?
        data['resourceSetType'] = stub[:resource_set_type] unless stub[:resource_set_type].nil?
        data['resources'] = Stubs::List____listOfResource.stub(stub[:resources]) unless stub[:resources].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Operation Stubber for ListRules
    class ListRules
      def self.default(visited=[])
        {
          next_token: 'next_token',
          rules: Stubs::List____listOfListRulesOutput.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['rules'] = Stubs::List____listOfListRulesOutput.stub(stub[:rules]) unless stub[:rules].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfListRulesOutput
    class List____listOfListRulesOutput
      def self.default(visited=[])
        return nil if visited.include?('List____listOfListRulesOutput')
        visited = visited + ['List____listOfListRulesOutput']
        [
          Stubs::ListRulesOutput.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ListRulesOutput.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ListRulesOutput
    class ListRulesOutput
      def self.default(visited=[])
        return nil if visited.include?('ListRulesOutput')
        visited = visited + ['ListRulesOutput']
        {
          resource_type: 'resource_type',
          rule_description: 'rule_description',
          rule_id: 'rule_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::ListRulesOutput.new
        data = {}
        data['resourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['ruleDescription'] = stub[:rule_description] unless stub[:rule_description].nil?
        data['ruleId'] = stub[:rule_id] unless stub[:rule_id].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForResources
    class ListTagsForResources
      def self.default(visited=[])
        {
          tags: Stubs::Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.status = 204
      end
    end

    # Operation Stubber for UpdateCell
    class UpdateCell
      def self.default(visited=[])
        {
          cell_arn: 'cell_arn',
          cell_name: 'cell_name',
          cells: Stubs::List____listOf__string.default(visited),
          parent_readiness_scopes: Stubs::List____listOf__string.default(visited),
          tags: Stubs::Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['cellArn'] = stub[:cell_arn] unless stub[:cell_arn].nil?
        data['cellName'] = stub[:cell_name] unless stub[:cell_name].nil?
        data['cells'] = Stubs::List____listOf__string.stub(stub[:cells]) unless stub[:cells].nil?
        data['parentReadinessScopes'] = Stubs::List____listOf__string.stub(stub[:parent_readiness_scopes]) unless stub[:parent_readiness_scopes].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateReadinessCheck
    class UpdateReadinessCheck
      def self.default(visited=[])
        {
          readiness_check_arn: 'readiness_check_arn',
          readiness_check_name: 'readiness_check_name',
          resource_set: 'resource_set',
          tags: Stubs::Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['readinessCheckArn'] = stub[:readiness_check_arn] unless stub[:readiness_check_arn].nil?
        data['readinessCheckName'] = stub[:readiness_check_name] unless stub[:readiness_check_name].nil?
        data['resourceSet'] = stub[:resource_set] unless stub[:resource_set].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateRecoveryGroup
    class UpdateRecoveryGroup
      def self.default(visited=[])
        {
          cells: Stubs::List____listOf__string.default(visited),
          recovery_group_arn: 'recovery_group_arn',
          recovery_group_name: 'recovery_group_name',
          tags: Stubs::Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['cells'] = Stubs::List____listOf__string.stub(stub[:cells]) unless stub[:cells].nil?
        data['recoveryGroupArn'] = stub[:recovery_group_arn] unless stub[:recovery_group_arn].nil?
        data['recoveryGroupName'] = stub[:recovery_group_name] unless stub[:recovery_group_name].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateResourceSet
    class UpdateResourceSet
      def self.default(visited=[])
        {
          resource_set_arn: 'resource_set_arn',
          resource_set_name: 'resource_set_name',
          resource_set_type: 'resource_set_type',
          resources: Stubs::List____listOfResource.default(visited),
          tags: Stubs::Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['resourceSetArn'] = stub[:resource_set_arn] unless stub[:resource_set_arn].nil?
        data['resourceSetName'] = stub[:resource_set_name] unless stub[:resource_set_name].nil?
        data['resourceSetType'] = stub[:resource_set_type] unless stub[:resource_set_type].nil?
        data['resources'] = Stubs::List____listOfResource.stub(stub[:resources]) unless stub[:resources].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
