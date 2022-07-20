# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::RAM
  module Parsers

    # Operation Parser for AcceptResourceShareInvitation
    class AcceptResourceShareInvitation
      def self.parse(http_resp)
        data = Types::AcceptResourceShareInvitationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.resource_share_invitation = (ResourceShareInvitation.parse(map['resourceShareInvitation']) unless map['resourceShareInvitation'].nil?)
        data.client_token = map['clientToken']
        data
      end
    end

    class ResourceShareInvitation
      def self.parse(map)
        data = Types::ResourceShareInvitation.new
        data.resource_share_invitation_arn = map['resourceShareInvitationArn']
        data.resource_share_name = map['resourceShareName']
        data.resource_share_arn = map['resourceShareArn']
        data.sender_account_id = map['senderAccountId']
        data.receiver_account_id = map['receiverAccountId']
        data.invitation_timestamp = Time.at(map['invitationTimestamp'].to_i) if map['invitationTimestamp']
        data.status = map['status']
        data.resource_share_associations = (ResourceShareAssociationList.parse(map['resourceShareAssociations']) unless map['resourceShareAssociations'].nil?)
        data.receiver_arn = map['receiverArn']
        return data
      end
    end

    class ResourceShareAssociationList
      def self.parse(list)
        data = []
        list.map do |value|
          data << ResourceShareAssociation.parse(value) unless value.nil?
        end
        data
      end
    end

    class ResourceShareAssociation
      def self.parse(map)
        data = Types::ResourceShareAssociation.new
        data.resource_share_arn = map['resourceShareArn']
        data.resource_share_name = map['resourceShareName']
        data.associated_entity = map['associatedEntity']
        data.association_type = map['associationType']
        data.status = map['status']
        data.status_message = map['statusMessage']
        data.creation_time = Time.at(map['creationTime'].to_i) if map['creationTime']
        data.last_updated_time = Time.at(map['lastUpdatedTime'].to_i) if map['lastUpdatedTime']
        data.external = map['external']
        return data
      end
    end

    # Error Parser for IdempotentParameterMismatchException
    class IdempotentParameterMismatchException
      def self.parse(http_resp)
        data = Types::IdempotentParameterMismatchException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for MalformedArnException
    class MalformedArnException
      def self.parse(http_resp)
        data = Types::MalformedArnException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ResourceShareInvitationAlreadyAcceptedException
    class ResourceShareInvitationAlreadyAcceptedException
      def self.parse(http_resp)
        data = Types::ResourceShareInvitationAlreadyAcceptedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for OperationNotPermittedException
    class OperationNotPermittedException
      def self.parse(http_resp)
        data = Types::OperationNotPermittedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ResourceShareInvitationArnNotFoundException
    class ResourceShareInvitationArnNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceShareInvitationArnNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ResourceShareInvitationAlreadyRejectedException
    class ResourceShareInvitationAlreadyRejectedException
      def self.parse(http_resp)
        data = Types::ResourceShareInvitationAlreadyRejectedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ResourceShareInvitationExpiredException
    class ResourceShareInvitationExpiredException
      def self.parse(http_resp)
        data = Types::ResourceShareInvitationExpiredException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ServerInternalException
    class ServerInternalException
      def self.parse(http_resp)
        data = Types::ServerInternalException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for InvalidClientTokenException
    class InvalidClientTokenException
      def self.parse(http_resp)
        data = Types::InvalidClientTokenException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ServiceUnavailableException
    class ServiceUnavailableException
      def self.parse(http_resp)
        data = Types::ServiceUnavailableException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for AssociateResourceShare
    class AssociateResourceShare
      def self.parse(http_resp)
        data = Types::AssociateResourceShareOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.resource_share_associations = (ResourceShareAssociationList.parse(map['resourceShareAssociations']) unless map['resourceShareAssociations'].nil?)
        data.client_token = map['clientToken']
        data
      end
    end

    # Error Parser for ResourceShareLimitExceededException
    class ResourceShareLimitExceededException
      def self.parse(http_resp)
        data = Types::ResourceShareLimitExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for UnknownResourceException
    class UnknownResourceException
      def self.parse(http_resp)
        data = Types::UnknownResourceException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for InvalidStateTransitionException
    class InvalidStateTransitionException
      def self.parse(http_resp)
        data = Types::InvalidStateTransitionException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for InvalidParameterException
    class InvalidParameterException
      def self.parse(http_resp)
        data = Types::InvalidParameterException.new
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

    # Operation Parser for AssociateResourceSharePermission
    class AssociateResourceSharePermission
      def self.parse(http_resp)
        data = Types::AssociateResourceSharePermissionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.return_value = map['returnValue']
        data.client_token = map['clientToken']
        data
      end
    end

    # Operation Parser for CreateResourceShare
    class CreateResourceShare
      def self.parse(http_resp)
        data = Types::CreateResourceShareOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.resource_share = (ResourceShare.parse(map['resourceShare']) unless map['resourceShare'].nil?)
        data.client_token = map['clientToken']
        data
      end
    end

    class ResourceShare
      def self.parse(map)
        data = Types::ResourceShare.new
        data.resource_share_arn = map['resourceShareArn']
        data.name = map['name']
        data.owning_account_id = map['owningAccountId']
        data.allow_external_principals = map['allowExternalPrincipals']
        data.status = map['status']
        data.status_message = map['statusMessage']
        data.tags = (TagList.parse(map['tags']) unless map['tags'].nil?)
        data.creation_time = Time.at(map['creationTime'].to_i) if map['creationTime']
        data.last_updated_time = Time.at(map['lastUpdatedTime'].to_i) if map['lastUpdatedTime']
        data.feature_set = map['featureSet']
        return data
      end
    end

    class TagList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Tag.parse(value) unless value.nil?
        end
        data
      end
    end

    class Tag
      def self.parse(map)
        data = Types::Tag.new
        data.key = map['key']
        data.value = map['value']
        return data
      end
    end

    # Error Parser for TagPolicyViolationException
    class TagPolicyViolationException
      def self.parse(http_resp)
        data = Types::TagPolicyViolationException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for DeleteResourceShare
    class DeleteResourceShare
      def self.parse(http_resp)
        data = Types::DeleteResourceShareOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.return_value = map['returnValue']
        data.client_token = map['clientToken']
        data
      end
    end

    # Operation Parser for DisassociateResourceShare
    class DisassociateResourceShare
      def self.parse(http_resp)
        data = Types::DisassociateResourceShareOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.resource_share_associations = (ResourceShareAssociationList.parse(map['resourceShareAssociations']) unless map['resourceShareAssociations'].nil?)
        data.client_token = map['clientToken']
        data
      end
    end

    # Operation Parser for DisassociateResourceSharePermission
    class DisassociateResourceSharePermission
      def self.parse(http_resp)
        data = Types::DisassociateResourceSharePermissionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.return_value = map['returnValue']
        data.client_token = map['clientToken']
        data
      end
    end

    # Operation Parser for EnableSharingWithAwsOrganization
    class EnableSharingWithAwsOrganization
      def self.parse(http_resp)
        data = Types::EnableSharingWithAwsOrganizationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.return_value = map['returnValue']
        data
      end
    end

    # Operation Parser for GetPermission
    class GetPermission
      def self.parse(http_resp)
        data = Types::GetPermissionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.permission = (ResourceSharePermissionDetail.parse(map['permission']) unless map['permission'].nil?)
        data
      end
    end

    class ResourceSharePermissionDetail
      def self.parse(map)
        data = Types::ResourceSharePermissionDetail.new
        data.arn = map['arn']
        data.version = map['version']
        data.default_version = map['defaultVersion']
        data.name = map['name']
        data.resource_type = map['resourceType']
        data.permission = map['permission']
        data.creation_time = Time.at(map['creationTime'].to_i) if map['creationTime']
        data.last_updated_time = Time.at(map['lastUpdatedTime'].to_i) if map['lastUpdatedTime']
        data.is_resource_type_default = map['isResourceTypeDefault']
        return data
      end
    end

    # Operation Parser for GetResourcePolicies
    class GetResourcePolicies
      def self.parse(http_resp)
        data = Types::GetResourcePoliciesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.policies = (PolicyList.parse(map['policies']) unless map['policies'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class PolicyList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Error Parser for InvalidNextTokenException
    class InvalidNextTokenException
      def self.parse(http_resp)
        data = Types::InvalidNextTokenException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ResourceArnNotFoundException
    class ResourceArnNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceArnNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for GetResourceShareAssociations
    class GetResourceShareAssociations
      def self.parse(http_resp)
        data = Types::GetResourceShareAssociationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.resource_share_associations = (ResourceShareAssociationList.parse(map['resourceShareAssociations']) unless map['resourceShareAssociations'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    # Operation Parser for GetResourceShareInvitations
    class GetResourceShareInvitations
      def self.parse(http_resp)
        data = Types::GetResourceShareInvitationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.resource_share_invitations = (ResourceShareInvitationList.parse(map['resourceShareInvitations']) unless map['resourceShareInvitations'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ResourceShareInvitationList
      def self.parse(list)
        data = []
        list.map do |value|
          data << ResourceShareInvitation.parse(value) unless value.nil?
        end
        data
      end
    end

    # Error Parser for InvalidMaxResultsException
    class InvalidMaxResultsException
      def self.parse(http_resp)
        data = Types::InvalidMaxResultsException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for GetResourceShares
    class GetResourceShares
      def self.parse(http_resp)
        data = Types::GetResourceSharesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.resource_shares = (ResourceShareList.parse(map['resourceShares']) unless map['resourceShares'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ResourceShareList
      def self.parse(list)
        data = []
        list.map do |value|
          data << ResourceShare.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListPendingInvitationResources
    class ListPendingInvitationResources
      def self.parse(http_resp)
        data = Types::ListPendingInvitationResourcesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.resources = (ResourceList.parse(map['resources']) unless map['resources'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ResourceList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Resource.parse(value) unless value.nil?
        end
        data
      end
    end

    class Resource
      def self.parse(map)
        data = Types::Resource.new
        data.arn = map['arn']
        data.type = map['type']
        data.resource_share_arn = map['resourceShareArn']
        data.resource_group_arn = map['resourceGroupArn']
        data.status = map['status']
        data.status_message = map['statusMessage']
        data.creation_time = Time.at(map['creationTime'].to_i) if map['creationTime']
        data.last_updated_time = Time.at(map['lastUpdatedTime'].to_i) if map['lastUpdatedTime']
        data.resource_region_scope = map['resourceRegionScope']
        return data
      end
    end

    # Error Parser for MissingRequiredParameterException
    class MissingRequiredParameterException
      def self.parse(http_resp)
        data = Types::MissingRequiredParameterException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for ListPermissionVersions
    class ListPermissionVersions
      def self.parse(http_resp)
        data = Types::ListPermissionVersionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.permissions = (ResourceSharePermissionList.parse(map['permissions']) unless map['permissions'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ResourceSharePermissionList
      def self.parse(list)
        data = []
        list.map do |value|
          data << ResourceSharePermissionSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class ResourceSharePermissionSummary
      def self.parse(map)
        data = Types::ResourceSharePermissionSummary.new
        data.arn = map['arn']
        data.version = map['version']
        data.default_version = map['defaultVersion']
        data.name = map['name']
        data.resource_type = map['resourceType']
        data.status = map['status']
        data.creation_time = Time.at(map['creationTime'].to_i) if map['creationTime']
        data.last_updated_time = Time.at(map['lastUpdatedTime'].to_i) if map['lastUpdatedTime']
        data.is_resource_type_default = map['isResourceTypeDefault']
        return data
      end
    end

    # Operation Parser for ListPermissions
    class ListPermissions
      def self.parse(http_resp)
        data = Types::ListPermissionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.permissions = (ResourceSharePermissionList.parse(map['permissions']) unless map['permissions'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    # Operation Parser for ListPrincipals
    class ListPrincipals
      def self.parse(http_resp)
        data = Types::ListPrincipalsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.principals = (PrincipalList.parse(map['principals']) unless map['principals'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class PrincipalList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Principal.parse(value) unless value.nil?
        end
        data
      end
    end

    class Principal
      def self.parse(map)
        data = Types::Principal.new
        data.id = map['id']
        data.resource_share_arn = map['resourceShareArn']
        data.creation_time = Time.at(map['creationTime'].to_i) if map['creationTime']
        data.last_updated_time = Time.at(map['lastUpdatedTime'].to_i) if map['lastUpdatedTime']
        data.external = map['external']
        return data
      end
    end

    # Operation Parser for ListResourceSharePermissions
    class ListResourceSharePermissions
      def self.parse(http_resp)
        data = Types::ListResourceSharePermissionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.permissions = (ResourceSharePermissionList.parse(map['permissions']) unless map['permissions'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    # Operation Parser for ListResourceTypes
    class ListResourceTypes
      def self.parse(http_resp)
        data = Types::ListResourceTypesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.resource_types = (ServiceNameAndResourceTypeList.parse(map['resourceTypes']) unless map['resourceTypes'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ServiceNameAndResourceTypeList
      def self.parse(list)
        data = []
        list.map do |value|
          data << ServiceNameAndResourceType.parse(value) unless value.nil?
        end
        data
      end
    end

    class ServiceNameAndResourceType
      def self.parse(map)
        data = Types::ServiceNameAndResourceType.new
        data.resource_type = map['resourceType']
        data.service_name = map['serviceName']
        data.resource_region_scope = map['resourceRegionScope']
        return data
      end
    end

    # Operation Parser for ListResources
    class ListResources
      def self.parse(http_resp)
        data = Types::ListResourcesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.resources = (ResourceList.parse(map['resources']) unless map['resources'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    # Error Parser for InvalidResourceTypeException
    class InvalidResourceTypeException
      def self.parse(http_resp)
        data = Types::InvalidResourceTypeException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for PromoteResourceShareCreatedFromPolicy
    class PromoteResourceShareCreatedFromPolicy
      def self.parse(http_resp)
        data = Types::PromoteResourceShareCreatedFromPolicyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.return_value = map['returnValue']
        data
      end
    end

    # Operation Parser for RejectResourceShareInvitation
    class RejectResourceShareInvitation
      def self.parse(http_resp)
        data = Types::RejectResourceShareInvitationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.resource_share_invitation = (ResourceShareInvitation.parse(map['resourceShareInvitation']) unless map['resourceShareInvitation'].nil?)
        data.client_token = map['clientToken']
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

    # Error Parser for TagLimitExceededException
    class TagLimitExceededException
      def self.parse(http_resp)
        data = Types::TagLimitExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
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

    # Operation Parser for UpdateResourceShare
    class UpdateResourceShare
      def self.parse(http_resp)
        data = Types::UpdateResourceShareOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.resource_share = (ResourceShare.parse(map['resourceShare']) unless map['resourceShare'].nil?)
        data.client_token = map['clientToken']
        data
      end
    end
  end
end
