# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::Route53RecoveryReadiness
  module Parsers

    # Operation Parser for CreateCell
    class CreateCell
      def self.parse(http_resp)
        data = Types::CreateCellOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.cell_arn = map['cellArn']
        data.cell_name = map['cellName']
        data.cells = (Parsers::List____listOf__string.parse(map['cells']) unless map['cells'].nil?)
        data.parent_readiness_scopes = (Parsers::List____listOf__string.parse(map['parentReadinessScopes']) unless map['parentReadinessScopes'].nil?)
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    class Tags
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class List____listOf__string
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Error Parser for InternalServerException
    class InternalServerException
      def self.parse(http_resp)
        data = Types::InternalServerException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ThrottlingException
    class ThrottlingException
      def self.parse(http_resp)
        data = Types::ThrottlingException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for CreateCrossAccountAuthorization
    class CreateCrossAccountAuthorization
      def self.parse(http_resp)
        data = Types::CreateCrossAccountAuthorizationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.cross_account_authorization = map['crossAccountAuthorization']
        data
      end
    end

    # Operation Parser for CreateReadinessCheck
    class CreateReadinessCheck
      def self.parse(http_resp)
        data = Types::CreateReadinessCheckOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.readiness_check_arn = map['readinessCheckArn']
        data.readiness_check_name = map['readinessCheckName']
        data.resource_set = map['resourceSet']
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for CreateRecoveryGroup
    class CreateRecoveryGroup
      def self.parse(http_resp)
        data = Types::CreateRecoveryGroupOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.cells = (Parsers::List____listOf__string.parse(map['cells']) unless map['cells'].nil?)
        data.recovery_group_arn = map['recoveryGroupArn']
        data.recovery_group_name = map['recoveryGroupName']
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for CreateResourceSet
    class CreateResourceSet
      def self.parse(http_resp)
        data = Types::CreateResourceSetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.resource_set_arn = map['resourceSetArn']
        data.resource_set_name = map['resourceSetName']
        data.resource_set_type = map['resourceSetType']
        data.resources = (Parsers::List____listOfResource.parse(map['resources']) unless map['resources'].nil?)
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    class List____listOfResource
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Resource.parse(value) unless value.nil?
        end
        data
      end
    end

    class Resource
      def self.parse(map)
        data = Types::Resource.new
        data.component_id = map['componentId']
        data.dns_target_resource = (Parsers::DNSTargetResource.parse(map['dnsTargetResource']) unless map['dnsTargetResource'].nil?)
        data.readiness_scopes = (Parsers::List____listOf__string.parse(map['readinessScopes']) unless map['readinessScopes'].nil?)
        data.resource_arn = map['resourceArn']
        return data
      end
    end

    class DNSTargetResource
      def self.parse(map)
        data = Types::DNSTargetResource.new
        data.domain_name = map['domainName']
        data.hosted_zone_arn = map['hostedZoneArn']
        data.record_set_id = map['recordSetId']
        data.record_type = map['recordType']
        data.target_resource = (Parsers::TargetResource.parse(map['targetResource']) unless map['targetResource'].nil?)
        return data
      end
    end

    class TargetResource
      def self.parse(map)
        data = Types::TargetResource.new
        data.nlb_resource = (Parsers::NLBResource.parse(map['nLBResource']) unless map['nLBResource'].nil?)
        data.r53_resource = (Parsers::R53ResourceRecord.parse(map['r53Resource']) unless map['r53Resource'].nil?)
        return data
      end
    end

    class R53ResourceRecord
      def self.parse(map)
        data = Types::R53ResourceRecord.new
        data.domain_name = map['domainName']
        data.record_set_id = map['recordSetId']
        return data
      end
    end

    class NLBResource
      def self.parse(map)
        data = Types::NLBResource.new
        data.arn = map['arn']
        return data
      end
    end

    # Operation Parser for DeleteCell
    class DeleteCell
      def self.parse(http_resp)
        data = Types::DeleteCellOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for DeleteCrossAccountAuthorization
    class DeleteCrossAccountAuthorization
      def self.parse(http_resp)
        data = Types::DeleteCrossAccountAuthorizationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteReadinessCheck
    class DeleteReadinessCheck
      def self.parse(http_resp)
        data = Types::DeleteReadinessCheckOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteRecoveryGroup
    class DeleteRecoveryGroup
      def self.parse(http_resp)
        data = Types::DeleteRecoveryGroupOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteResourceSet
    class DeleteResourceSet
      def self.parse(http_resp)
        data = Types::DeleteResourceSetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for GetArchitectureRecommendations
    class GetArchitectureRecommendations
      def self.parse(http_resp)
        data = Types::GetArchitectureRecommendationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.last_audit_timestamp = Time.parse(map['lastAuditTimestamp']) if map['lastAuditTimestamp']
        data.next_token = map['nextToken']
        data.recommendations = (Parsers::List____listOfRecommendation.parse(map['recommendations']) unless map['recommendations'].nil?)
        data
      end
    end

    class List____listOfRecommendation
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Recommendation.parse(value) unless value.nil?
        end
        data
      end
    end

    class Recommendation
      def self.parse(map)
        data = Types::Recommendation.new
        data.recommendation_text = map['recommendationText']
        return data
      end
    end

    # Operation Parser for GetCell
    class GetCell
      def self.parse(http_resp)
        data = Types::GetCellOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.cell_arn = map['cellArn']
        data.cell_name = map['cellName']
        data.cells = (Parsers::List____listOf__string.parse(map['cells']) unless map['cells'].nil?)
        data.parent_readiness_scopes = (Parsers::List____listOf__string.parse(map['parentReadinessScopes']) unless map['parentReadinessScopes'].nil?)
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for GetCellReadinessSummary
    class GetCellReadinessSummary
      def self.parse(http_resp)
        data = Types::GetCellReadinessSummaryOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['nextToken']
        data.readiness = map['readiness']
        data.readiness_checks = (Parsers::List____listOfReadinessCheckSummary.parse(map['readinessChecks']) unless map['readinessChecks'].nil?)
        data
      end
    end

    class List____listOfReadinessCheckSummary
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ReadinessCheckSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class ReadinessCheckSummary
      def self.parse(map)
        data = Types::ReadinessCheckSummary.new
        data.readiness = map['readiness']
        data.readiness_check_name = map['readinessCheckName']
        return data
      end
    end

    # Operation Parser for GetReadinessCheck
    class GetReadinessCheck
      def self.parse(http_resp)
        data = Types::GetReadinessCheckOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.readiness_check_arn = map['readinessCheckArn']
        data.readiness_check_name = map['readinessCheckName']
        data.resource_set = map['resourceSet']
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for GetReadinessCheckResourceStatus
    class GetReadinessCheckResourceStatus
      def self.parse(http_resp)
        data = Types::GetReadinessCheckResourceStatusOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['nextToken']
        data.readiness = map['readiness']
        data.rules = (Parsers::List____listOfRuleResult.parse(map['rules']) unless map['rules'].nil?)
        data
      end
    end

    class List____listOfRuleResult
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::RuleResult.parse(value) unless value.nil?
        end
        data
      end
    end

    class RuleResult
      def self.parse(map)
        data = Types::RuleResult.new
        data.last_checked_timestamp = Time.parse(map['lastCheckedTimestamp']) if map['lastCheckedTimestamp']
        data.messages = (Parsers::List____listOfMessage.parse(map['messages']) unless map['messages'].nil?)
        data.readiness = map['readiness']
        data.rule_id = map['ruleId']
        return data
      end
    end

    class List____listOfMessage
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Message.parse(value) unless value.nil?
        end
        data
      end
    end

    class Message
      def self.parse(map)
        data = Types::Message.new
        data.message_text = map['messageText']
        return data
      end
    end

    # Operation Parser for GetReadinessCheckStatus
    class GetReadinessCheckStatus
      def self.parse(http_resp)
        data = Types::GetReadinessCheckStatusOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.messages = (Parsers::List____listOfMessage.parse(map['messages']) unless map['messages'].nil?)
        data.next_token = map['nextToken']
        data.readiness = map['readiness']
        data.resources = (Parsers::List____listOfResourceResult.parse(map['resources']) unless map['resources'].nil?)
        data
      end
    end

    class List____listOfResourceResult
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ResourceResult.parse(value) unless value.nil?
        end
        data
      end
    end

    class ResourceResult
      def self.parse(map)
        data = Types::ResourceResult.new
        data.component_id = map['componentId']
        data.last_checked_timestamp = Time.parse(map['lastCheckedTimestamp']) if map['lastCheckedTimestamp']
        data.readiness = map['readiness']
        data.resource_arn = map['resourceArn']
        return data
      end
    end

    # Operation Parser for GetRecoveryGroup
    class GetRecoveryGroup
      def self.parse(http_resp)
        data = Types::GetRecoveryGroupOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.cells = (Parsers::List____listOf__string.parse(map['cells']) unless map['cells'].nil?)
        data.recovery_group_arn = map['recoveryGroupArn']
        data.recovery_group_name = map['recoveryGroupName']
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for GetRecoveryGroupReadinessSummary
    class GetRecoveryGroupReadinessSummary
      def self.parse(http_resp)
        data = Types::GetRecoveryGroupReadinessSummaryOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['nextToken']
        data.readiness = map['readiness']
        data.readiness_checks = (Parsers::List____listOfReadinessCheckSummary.parse(map['readinessChecks']) unless map['readinessChecks'].nil?)
        data
      end
    end

    # Operation Parser for GetResourceSet
    class GetResourceSet
      def self.parse(http_resp)
        data = Types::GetResourceSetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.resource_set_arn = map['resourceSetArn']
        data.resource_set_name = map['resourceSetName']
        data.resource_set_type = map['resourceSetType']
        data.resources = (Parsers::List____listOfResource.parse(map['resources']) unless map['resources'].nil?)
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for ListCells
    class ListCells
      def self.parse(http_resp)
        data = Types::ListCellsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.cells = (Parsers::List____listOfCellOutput.parse(map['cells']) unless map['cells'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class List____listOfCellOutput
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::CellOutput.parse(value) unless value.nil?
        end
        data
      end
    end

    class CellOutput
      def self.parse(map)
        data = Types::CellOutput.new
        data.cell_arn = map['cellArn']
        data.cell_name = map['cellName']
        data.cells = (Parsers::List____listOf__string.parse(map['cells']) unless map['cells'].nil?)
        data.parent_readiness_scopes = (Parsers::List____listOf__string.parse(map['parentReadinessScopes']) unless map['parentReadinessScopes'].nil?)
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    # Operation Parser for ListCrossAccountAuthorizations
    class ListCrossAccountAuthorizations
      def self.parse(http_resp)
        data = Types::ListCrossAccountAuthorizationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.cross_account_authorizations = (Parsers::List____listOfCrossAccountAuthorization.parse(map['crossAccountAuthorizations']) unless map['crossAccountAuthorizations'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class List____listOfCrossAccountAuthorization
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListReadinessChecks
    class ListReadinessChecks
      def self.parse(http_resp)
        data = Types::ListReadinessChecksOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['nextToken']
        data.readiness_checks = (Parsers::List____listOfReadinessCheckOutput.parse(map['readinessChecks']) unless map['readinessChecks'].nil?)
        data
      end
    end

    class List____listOfReadinessCheckOutput
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ReadinessCheckOutput.parse(value) unless value.nil?
        end
        data
      end
    end

    class ReadinessCheckOutput
      def self.parse(map)
        data = Types::ReadinessCheckOutput.new
        data.readiness_check_arn = map['readinessCheckArn']
        data.readiness_check_name = map['readinessCheckName']
        data.resource_set = map['resourceSet']
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    # Operation Parser for ListRecoveryGroups
    class ListRecoveryGroups
      def self.parse(http_resp)
        data = Types::ListRecoveryGroupsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['nextToken']
        data.recovery_groups = (Parsers::List____listOfRecoveryGroupOutput.parse(map['recoveryGroups']) unless map['recoveryGroups'].nil?)
        data
      end
    end

    class List____listOfRecoveryGroupOutput
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::RecoveryGroupOutput.parse(value) unless value.nil?
        end
        data
      end
    end

    class RecoveryGroupOutput
      def self.parse(map)
        data = Types::RecoveryGroupOutput.new
        data.cells = (Parsers::List____listOf__string.parse(map['cells']) unless map['cells'].nil?)
        data.recovery_group_arn = map['recoveryGroupArn']
        data.recovery_group_name = map['recoveryGroupName']
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    # Operation Parser for ListResourceSets
    class ListResourceSets
      def self.parse(http_resp)
        data = Types::ListResourceSetsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['nextToken']
        data.resource_sets = (Parsers::List____listOfResourceSetOutput.parse(map['resourceSets']) unless map['resourceSets'].nil?)
        data
      end
    end

    class List____listOfResourceSetOutput
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ResourceSetOutput.parse(value) unless value.nil?
        end
        data
      end
    end

    class ResourceSetOutput
      def self.parse(map)
        data = Types::ResourceSetOutput.new
        data.resource_set_arn = map['resourceSetArn']
        data.resource_set_name = map['resourceSetName']
        data.resource_set_type = map['resourceSetType']
        data.resources = (Parsers::List____listOfResource.parse(map['resources']) unless map['resources'].nil?)
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    # Operation Parser for ListRules
    class ListRules
      def self.parse(http_resp)
        data = Types::ListRulesOperationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['nextToken']
        data.rules = (Parsers::List____listOfListRulesOutput.parse(map['rules']) unless map['rules'].nil?)
        data
      end
    end

    class List____listOfListRulesOutput
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ListRulesOutput.parse(value) unless value.nil?
        end
        data
      end
    end

    class ListRulesOutput
      def self.parse(map)
        data = Types::ListRulesOutput.new
        data.resource_type = map['resourceType']
        data.rule_description = map['ruleDescription']
        data.rule_id = map['ruleId']
        return data
      end
    end

    # Operation Parser for ListTagsForResources
    class ListTagsForResources
      def self.parse(http_resp)
        data = Types::ListTagsForResourcesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateCell
    class UpdateCell
      def self.parse(http_resp)
        data = Types::UpdateCellOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.cell_arn = map['cellArn']
        data.cell_name = map['cellName']
        data.cells = (Parsers::List____listOf__string.parse(map['cells']) unless map['cells'].nil?)
        data.parent_readiness_scopes = (Parsers::List____listOf__string.parse(map['parentReadinessScopes']) unless map['parentReadinessScopes'].nil?)
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for UpdateReadinessCheck
    class UpdateReadinessCheck
      def self.parse(http_resp)
        data = Types::UpdateReadinessCheckOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.readiness_check_arn = map['readinessCheckArn']
        data.readiness_check_name = map['readinessCheckName']
        data.resource_set = map['resourceSet']
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for UpdateRecoveryGroup
    class UpdateRecoveryGroup
      def self.parse(http_resp)
        data = Types::UpdateRecoveryGroupOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.cells = (Parsers::List____listOf__string.parse(map['cells']) unless map['cells'].nil?)
        data.recovery_group_arn = map['recoveryGroupArn']
        data.recovery_group_name = map['recoveryGroupName']
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for UpdateResourceSet
    class UpdateResourceSet
      def self.parse(http_resp)
        data = Types::UpdateResourceSetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.resource_set_arn = map['resourceSetArn']
        data.resource_set_name = map['resourceSetName']
        data.resource_set_type = map['resourceSetType']
        data.resources = (Parsers::List____listOfResource.parse(map['resources']) unless map['resources'].nil?)
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end
  end
end
