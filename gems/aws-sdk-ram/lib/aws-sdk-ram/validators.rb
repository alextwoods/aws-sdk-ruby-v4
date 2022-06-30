# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::RAM
  module Validators

    class AcceptResourceShareInvitationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AcceptResourceShareInvitationInput, context: context)
        Hearth::Validator.validate!(input[:resource_share_invitation_arn], ::String, context: "#{context}[:resource_share_invitation_arn]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class AcceptResourceShareInvitationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AcceptResourceShareInvitationOutput, context: context)
        Validators::ResourceShareInvitation.validate!(input[:resource_share_invitation], context: "#{context}[:resource_share_invitation]") unless input[:resource_share_invitation].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class AssociateResourceShareInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateResourceShareInput, context: context)
        Hearth::Validator.validate!(input[:resource_share_arn], ::String, context: "#{context}[:resource_share_arn]")
        Validators::ResourceArnList.validate!(input[:resource_arns], context: "#{context}[:resource_arns]") unless input[:resource_arns].nil?
        Validators::PrincipalArnOrIdList.validate!(input[:principals], context: "#{context}[:principals]") unless input[:principals].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class AssociateResourceShareOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateResourceShareOutput, context: context)
        Validators::ResourceShareAssociationList.validate!(input[:resource_share_associations], context: "#{context}[:resource_share_associations]") unless input[:resource_share_associations].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class AssociateResourceSharePermissionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateResourceSharePermissionInput, context: context)
        Hearth::Validator.validate!(input[:resource_share_arn], ::String, context: "#{context}[:resource_share_arn]")
        Hearth::Validator.validate!(input[:permission_arn], ::String, context: "#{context}[:permission_arn]")
        Hearth::Validator.validate!(input[:replace], ::TrueClass, ::FalseClass, context: "#{context}[:replace]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:permission_version], ::Integer, context: "#{context}[:permission_version]")
      end
    end

    class AssociateResourceSharePermissionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateResourceSharePermissionOutput, context: context)
        Hearth::Validator.validate!(input[:return_value], ::TrueClass, ::FalseClass, context: "#{context}[:return_value]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class CreateResourceShareInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateResourceShareInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::ResourceArnList.validate!(input[:resource_arns], context: "#{context}[:resource_arns]") unless input[:resource_arns].nil?
        Validators::PrincipalArnOrIdList.validate!(input[:principals], context: "#{context}[:principals]") unless input[:principals].nil?
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:allow_external_principals], ::TrueClass, ::FalseClass, context: "#{context}[:allow_external_principals]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Validators::PermissionArnList.validate!(input[:permission_arns], context: "#{context}[:permission_arns]") unless input[:permission_arns].nil?
      end
    end

    class CreateResourceShareOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateResourceShareOutput, context: context)
        Validators::ResourceShare.validate!(input[:resource_share], context: "#{context}[:resource_share]") unless input[:resource_share].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class DeleteResourceShareInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteResourceShareInput, context: context)
        Hearth::Validator.validate!(input[:resource_share_arn], ::String, context: "#{context}[:resource_share_arn]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class DeleteResourceShareOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteResourceShareOutput, context: context)
        Hearth::Validator.validate!(input[:return_value], ::TrueClass, ::FalseClass, context: "#{context}[:return_value]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class DisassociateResourceShareInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateResourceShareInput, context: context)
        Hearth::Validator.validate!(input[:resource_share_arn], ::String, context: "#{context}[:resource_share_arn]")
        Validators::ResourceArnList.validate!(input[:resource_arns], context: "#{context}[:resource_arns]") unless input[:resource_arns].nil?
        Validators::PrincipalArnOrIdList.validate!(input[:principals], context: "#{context}[:principals]") unless input[:principals].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class DisassociateResourceShareOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateResourceShareOutput, context: context)
        Validators::ResourceShareAssociationList.validate!(input[:resource_share_associations], context: "#{context}[:resource_share_associations]") unless input[:resource_share_associations].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class DisassociateResourceSharePermissionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateResourceSharePermissionInput, context: context)
        Hearth::Validator.validate!(input[:resource_share_arn], ::String, context: "#{context}[:resource_share_arn]")
        Hearth::Validator.validate!(input[:permission_arn], ::String, context: "#{context}[:permission_arn]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class DisassociateResourceSharePermissionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateResourceSharePermissionOutput, context: context)
        Hearth::Validator.validate!(input[:return_value], ::TrueClass, ::FalseClass, context: "#{context}[:return_value]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class EnableSharingWithAwsOrganizationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableSharingWithAwsOrganizationInput, context: context)
      end
    end

    class EnableSharingWithAwsOrganizationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableSharingWithAwsOrganizationOutput, context: context)
        Hearth::Validator.validate!(input[:return_value], ::TrueClass, ::FalseClass, context: "#{context}[:return_value]")
      end
    end

    class GetPermissionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPermissionInput, context: context)
        Hearth::Validator.validate!(input[:permission_arn], ::String, context: "#{context}[:permission_arn]")
        Hearth::Validator.validate!(input[:permission_version], ::Integer, context: "#{context}[:permission_version]")
      end
    end

    class GetPermissionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPermissionOutput, context: context)
        Validators::ResourceSharePermissionDetail.validate!(input[:permission], context: "#{context}[:permission]") unless input[:permission].nil?
      end
    end

    class GetResourcePoliciesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetResourcePoliciesInput, context: context)
        Validators::ResourceArnList.validate!(input[:resource_arns], context: "#{context}[:resource_arns]") unless input[:resource_arns].nil?
        Hearth::Validator.validate!(input[:principal], ::String, context: "#{context}[:principal]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class GetResourcePoliciesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetResourcePoliciesOutput, context: context)
        Validators::PolicyList.validate!(input[:policies], context: "#{context}[:policies]") unless input[:policies].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetResourceShareAssociationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetResourceShareAssociationsInput, context: context)
        Hearth::Validator.validate!(input[:association_type], ::String, context: "#{context}[:association_type]")
        Validators::ResourceShareArnList.validate!(input[:resource_share_arns], context: "#{context}[:resource_share_arns]") unless input[:resource_share_arns].nil?
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:principal], ::String, context: "#{context}[:principal]")
        Hearth::Validator.validate!(input[:association_status], ::String, context: "#{context}[:association_status]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class GetResourceShareAssociationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetResourceShareAssociationsOutput, context: context)
        Validators::ResourceShareAssociationList.validate!(input[:resource_share_associations], context: "#{context}[:resource_share_associations]") unless input[:resource_share_associations].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetResourceShareInvitationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetResourceShareInvitationsInput, context: context)
        Validators::ResourceShareInvitationArnList.validate!(input[:resource_share_invitation_arns], context: "#{context}[:resource_share_invitation_arns]") unless input[:resource_share_invitation_arns].nil?
        Validators::ResourceShareArnList.validate!(input[:resource_share_arns], context: "#{context}[:resource_share_arns]") unless input[:resource_share_arns].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class GetResourceShareInvitationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetResourceShareInvitationsOutput, context: context)
        Validators::ResourceShareInvitationList.validate!(input[:resource_share_invitations], context: "#{context}[:resource_share_invitations]") unless input[:resource_share_invitations].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetResourceSharesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetResourceSharesInput, context: context)
        Validators::ResourceShareArnList.validate!(input[:resource_share_arns], context: "#{context}[:resource_share_arns]") unless input[:resource_share_arns].nil?
        Hearth::Validator.validate!(input[:resource_share_status], ::String, context: "#{context}[:resource_share_status]")
        Hearth::Validator.validate!(input[:resource_owner], ::String, context: "#{context}[:resource_owner]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::TagFilters.validate!(input[:tag_filters], context: "#{context}[:tag_filters]") unless input[:tag_filters].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:permission_arn], ::String, context: "#{context}[:permission_arn]")
      end
    end

    class GetResourceSharesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetResourceSharesOutput, context: context)
        Validators::ResourceShareList.validate!(input[:resource_shares], context: "#{context}[:resource_shares]") unless input[:resource_shares].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class IdempotentParameterMismatchException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IdempotentParameterMismatchException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidClientTokenException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidClientTokenException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidMaxResultsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidMaxResultsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidNextTokenException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidNextTokenException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidParameterException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidParameterException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidResourceTypeException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidResourceTypeException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidStateTransitionException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidStateTransitionException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListPendingInvitationResourcesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPendingInvitationResourcesInput, context: context)
        Hearth::Validator.validate!(input[:resource_share_invitation_arn], ::String, context: "#{context}[:resource_share_invitation_arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:resource_region_scope], ::String, context: "#{context}[:resource_region_scope]")
      end
    end

    class ListPendingInvitationResourcesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPendingInvitationResourcesOutput, context: context)
        Validators::ResourceList.validate!(input[:resources], context: "#{context}[:resources]") unless input[:resources].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListPermissionVersionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPermissionVersionsInput, context: context)
        Hearth::Validator.validate!(input[:permission_arn], ::String, context: "#{context}[:permission_arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListPermissionVersionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPermissionVersionsOutput, context: context)
        Validators::ResourceSharePermissionList.validate!(input[:permissions], context: "#{context}[:permissions]") unless input[:permissions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListPermissionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPermissionsInput, context: context)
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListPermissionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPermissionsOutput, context: context)
        Validators::ResourceSharePermissionList.validate!(input[:permissions], context: "#{context}[:permissions]") unless input[:permissions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListPrincipalsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPrincipalsInput, context: context)
        Hearth::Validator.validate!(input[:resource_owner], ::String, context: "#{context}[:resource_owner]")
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::PrincipalArnOrIdList.validate!(input[:principals], context: "#{context}[:principals]") unless input[:principals].nil?
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Validators::ResourceShareArnList.validate!(input[:resource_share_arns], context: "#{context}[:resource_share_arns]") unless input[:resource_share_arns].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListPrincipalsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPrincipalsOutput, context: context)
        Validators::PrincipalList.validate!(input[:principals], context: "#{context}[:principals]") unless input[:principals].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListResourceSharePermissionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListResourceSharePermissionsInput, context: context)
        Hearth::Validator.validate!(input[:resource_share_arn], ::String, context: "#{context}[:resource_share_arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListResourceSharePermissionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListResourceSharePermissionsOutput, context: context)
        Validators::ResourceSharePermissionList.validate!(input[:permissions], context: "#{context}[:permissions]") unless input[:permissions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListResourceTypesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListResourceTypesInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:resource_region_scope], ::String, context: "#{context}[:resource_region_scope]")
      end
    end

    class ListResourceTypesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListResourceTypesOutput, context: context)
        Validators::ServiceNameAndResourceTypeList.validate!(input[:resource_types], context: "#{context}[:resource_types]") unless input[:resource_types].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListResourcesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListResourcesInput, context: context)
        Hearth::Validator.validate!(input[:resource_owner], ::String, context: "#{context}[:resource_owner]")
        Hearth::Validator.validate!(input[:principal], ::String, context: "#{context}[:principal]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Validators::ResourceArnList.validate!(input[:resource_arns], context: "#{context}[:resource_arns]") unless input[:resource_arns].nil?
        Validators::ResourceShareArnList.validate!(input[:resource_share_arns], context: "#{context}[:resource_share_arns]") unless input[:resource_share_arns].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:resource_region_scope], ::String, context: "#{context}[:resource_region_scope]")
      end
    end

    class ListResourcesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListResourcesOutput, context: context)
        Validators::ResourceList.validate!(input[:resources], context: "#{context}[:resources]") unless input[:resources].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class MalformedArnException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MalformedArnException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class MissingRequiredParameterException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MissingRequiredParameterException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class OperationNotPermittedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OperationNotPermittedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PermissionArnList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class PolicyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Principal
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Principal, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:resource_share_arn], ::String, context: "#{context}[:resource_share_arn]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_updated_time], ::Time, context: "#{context}[:last_updated_time]")
        Hearth::Validator.validate!(input[:external], ::TrueClass, ::FalseClass, context: "#{context}[:external]")
      end
    end

    class PrincipalArnOrIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class PrincipalList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Principal.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PromoteResourceShareCreatedFromPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PromoteResourceShareCreatedFromPolicyInput, context: context)
        Hearth::Validator.validate!(input[:resource_share_arn], ::String, context: "#{context}[:resource_share_arn]")
      end
    end

    class PromoteResourceShareCreatedFromPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PromoteResourceShareCreatedFromPolicyOutput, context: context)
        Hearth::Validator.validate!(input[:return_value], ::TrueClass, ::FalseClass, context: "#{context}[:return_value]")
      end
    end

    class RejectResourceShareInvitationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RejectResourceShareInvitationInput, context: context)
        Hearth::Validator.validate!(input[:resource_share_invitation_arn], ::String, context: "#{context}[:resource_share_invitation_arn]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class RejectResourceShareInvitationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RejectResourceShareInvitationOutput, context: context)
        Validators::ResourceShareInvitation.validate!(input[:resource_share_invitation], context: "#{context}[:resource_share_invitation]") unless input[:resource_share_invitation].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class Resource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Resource, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:resource_share_arn], ::String, context: "#{context}[:resource_share_arn]")
        Hearth::Validator.validate!(input[:resource_group_arn], ::String, context: "#{context}[:resource_group_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_updated_time], ::Time, context: "#{context}[:last_updated_time]")
        Hearth::Validator.validate!(input[:resource_region_scope], ::String, context: "#{context}[:resource_region_scope]")
      end
    end

    class ResourceArnList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ResourceArnNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceArnNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Resource.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResourceShare
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceShare, context: context)
        Hearth::Validator.validate!(input[:resource_share_arn], ::String, context: "#{context}[:resource_share_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:owning_account_id], ::String, context: "#{context}[:owning_account_id]")
        Hearth::Validator.validate!(input[:allow_external_principals], ::TrueClass, ::FalseClass, context: "#{context}[:allow_external_principals]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_updated_time], ::Time, context: "#{context}[:last_updated_time]")
        Hearth::Validator.validate!(input[:feature_set], ::String, context: "#{context}[:feature_set]")
      end
    end

    class ResourceShareArnList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ResourceShareAssociation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceShareAssociation, context: context)
        Hearth::Validator.validate!(input[:resource_share_arn], ::String, context: "#{context}[:resource_share_arn]")
        Hearth::Validator.validate!(input[:resource_share_name], ::String, context: "#{context}[:resource_share_name]")
        Hearth::Validator.validate!(input[:associated_entity], ::String, context: "#{context}[:associated_entity]")
        Hearth::Validator.validate!(input[:association_type], ::String, context: "#{context}[:association_type]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_updated_time], ::Time, context: "#{context}[:last_updated_time]")
        Hearth::Validator.validate!(input[:external], ::TrueClass, ::FalseClass, context: "#{context}[:external]")
      end
    end

    class ResourceShareAssociationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ResourceShareAssociation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResourceShareInvitation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceShareInvitation, context: context)
        Hearth::Validator.validate!(input[:resource_share_invitation_arn], ::String, context: "#{context}[:resource_share_invitation_arn]")
        Hearth::Validator.validate!(input[:resource_share_name], ::String, context: "#{context}[:resource_share_name]")
        Hearth::Validator.validate!(input[:resource_share_arn], ::String, context: "#{context}[:resource_share_arn]")
        Hearth::Validator.validate!(input[:sender_account_id], ::String, context: "#{context}[:sender_account_id]")
        Hearth::Validator.validate!(input[:receiver_account_id], ::String, context: "#{context}[:receiver_account_id]")
        Hearth::Validator.validate!(input[:invitation_timestamp], ::Time, context: "#{context}[:invitation_timestamp]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Validators::ResourceShareAssociationList.validate!(input[:resource_share_associations], context: "#{context}[:resource_share_associations]") unless input[:resource_share_associations].nil?
        Hearth::Validator.validate!(input[:receiver_arn], ::String, context: "#{context}[:receiver_arn]")
      end
    end

    class ResourceShareInvitationAlreadyAcceptedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceShareInvitationAlreadyAcceptedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceShareInvitationAlreadyRejectedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceShareInvitationAlreadyRejectedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceShareInvitationArnList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ResourceShareInvitationArnNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceShareInvitationArnNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceShareInvitationExpiredException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceShareInvitationExpiredException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceShareInvitationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ResourceShareInvitation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResourceShareLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceShareLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceShareList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ResourceShare.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResourceSharePermissionDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceSharePermissionDetail, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:default_version], ::TrueClass, ::FalseClass, context: "#{context}[:default_version]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:permission], ::String, context: "#{context}[:permission]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_updated_time], ::Time, context: "#{context}[:last_updated_time]")
        Hearth::Validator.validate!(input[:is_resource_type_default], ::TrueClass, ::FalseClass, context: "#{context}[:is_resource_type_default]")
      end
    end

    class ResourceSharePermissionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ResourceSharePermissionSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResourceSharePermissionSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceSharePermissionSummary, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:default_version], ::TrueClass, ::FalseClass, context: "#{context}[:default_version]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_updated_time], ::Time, context: "#{context}[:last_updated_time]")
        Hearth::Validator.validate!(input[:is_resource_type_default], ::TrueClass, ::FalseClass, context: "#{context}[:is_resource_type_default]")
      end
    end

    class ServerInternalException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServerInternalException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ServiceNameAndResourceType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceNameAndResourceType, context: context)
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:service_name], ::String, context: "#{context}[:service_name]")
        Hearth::Validator.validate!(input[:resource_region_scope], ::String, context: "#{context}[:resource_region_scope]")
      end
    end

    class ServiceNameAndResourceTypeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ServiceNameAndResourceType.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ServiceUnavailableException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceUnavailableException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Tag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class TagFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagFilter, context: context)
        Hearth::Validator.validate!(input[:tag_key], ::String, context: "#{context}[:tag_key]")
        Validators::TagValueList.validate!(input[:tag_values], context: "#{context}[:tag_values]") unless input[:tag_values].nil?
      end
    end

    class TagFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::TagFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TagList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagPolicyViolationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagPolicyViolationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_share_arn], ::String, context: "#{context}[:resource_share_arn]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class TagValueList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottlingException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UnknownResourceException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnknownResourceException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_share_arn], ::String, context: "#{context}[:resource_share_arn]")
        Validators::TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateResourceShareInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateResourceShareInput, context: context)
        Hearth::Validator.validate!(input[:resource_share_arn], ::String, context: "#{context}[:resource_share_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:allow_external_principals], ::TrueClass, ::FalseClass, context: "#{context}[:allow_external_principals]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class UpdateResourceShareOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateResourceShareOutput, context: context)
        Validators::ResourceShare.validate!(input[:resource_share], context: "#{context}[:resource_share]") unless input[:resource_share].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

  end
end
