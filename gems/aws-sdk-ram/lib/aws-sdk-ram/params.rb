# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::RAM
  module Params

    module AcceptResourceShareInvitationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AcceptResourceShareInvitationInput, context: context)
        type = Types::AcceptResourceShareInvitationInput.new
        type.resource_share_invitation_arn = params[:resource_share_invitation_arn]
        type.client_token = params[:client_token]
        type
      end
    end

    module AcceptResourceShareInvitationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AcceptResourceShareInvitationOutput, context: context)
        type = Types::AcceptResourceShareInvitationOutput.new
        type.resource_share_invitation = ResourceShareInvitation.build(params[:resource_share_invitation], context: "#{context}[:resource_share_invitation]") unless params[:resource_share_invitation].nil?
        type.client_token = params[:client_token]
        type
      end
    end

    module AssociateResourceShareInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateResourceShareInput, context: context)
        type = Types::AssociateResourceShareInput.new
        type.resource_share_arn = params[:resource_share_arn]
        type.resource_arns = ResourceArnList.build(params[:resource_arns], context: "#{context}[:resource_arns]") unless params[:resource_arns].nil?
        type.principals = PrincipalArnOrIdList.build(params[:principals], context: "#{context}[:principals]") unless params[:principals].nil?
        type.client_token = params[:client_token]
        type
      end
    end

    module AssociateResourceShareOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateResourceShareOutput, context: context)
        type = Types::AssociateResourceShareOutput.new
        type.resource_share_associations = ResourceShareAssociationList.build(params[:resource_share_associations], context: "#{context}[:resource_share_associations]") unless params[:resource_share_associations].nil?
        type.client_token = params[:client_token]
        type
      end
    end

    module AssociateResourceSharePermissionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateResourceSharePermissionInput, context: context)
        type = Types::AssociateResourceSharePermissionInput.new
        type.resource_share_arn = params[:resource_share_arn]
        type.permission_arn = params[:permission_arn]
        type.replace = params[:replace]
        type.client_token = params[:client_token]
        type.permission_version = params[:permission_version]
        type
      end
    end

    module AssociateResourceSharePermissionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateResourceSharePermissionOutput, context: context)
        type = Types::AssociateResourceSharePermissionOutput.new
        type.return_value = params[:return_value]
        type.client_token = params[:client_token]
        type
      end
    end

    module CreateResourceShareInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateResourceShareInput, context: context)
        type = Types::CreateResourceShareInput.new
        type.name = params[:name]
        type.resource_arns = ResourceArnList.build(params[:resource_arns], context: "#{context}[:resource_arns]") unless params[:resource_arns].nil?
        type.principals = PrincipalArnOrIdList.build(params[:principals], context: "#{context}[:principals]") unless params[:principals].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.allow_external_principals = params[:allow_external_principals]
        type.client_token = params[:client_token]
        type.permission_arns = PermissionArnList.build(params[:permission_arns], context: "#{context}[:permission_arns]") unless params[:permission_arns].nil?
        type
      end
    end

    module CreateResourceShareOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateResourceShareOutput, context: context)
        type = Types::CreateResourceShareOutput.new
        type.resource_share = ResourceShare.build(params[:resource_share], context: "#{context}[:resource_share]") unless params[:resource_share].nil?
        type.client_token = params[:client_token]
        type
      end
    end

    module DeleteResourceShareInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteResourceShareInput, context: context)
        type = Types::DeleteResourceShareInput.new
        type.resource_share_arn = params[:resource_share_arn]
        type.client_token = params[:client_token]
        type
      end
    end

    module DeleteResourceShareOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteResourceShareOutput, context: context)
        type = Types::DeleteResourceShareOutput.new
        type.return_value = params[:return_value]
        type.client_token = params[:client_token]
        type
      end
    end

    module DisassociateResourceShareInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateResourceShareInput, context: context)
        type = Types::DisassociateResourceShareInput.new
        type.resource_share_arn = params[:resource_share_arn]
        type.resource_arns = ResourceArnList.build(params[:resource_arns], context: "#{context}[:resource_arns]") unless params[:resource_arns].nil?
        type.principals = PrincipalArnOrIdList.build(params[:principals], context: "#{context}[:principals]") unless params[:principals].nil?
        type.client_token = params[:client_token]
        type
      end
    end

    module DisassociateResourceShareOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateResourceShareOutput, context: context)
        type = Types::DisassociateResourceShareOutput.new
        type.resource_share_associations = ResourceShareAssociationList.build(params[:resource_share_associations], context: "#{context}[:resource_share_associations]") unless params[:resource_share_associations].nil?
        type.client_token = params[:client_token]
        type
      end
    end

    module DisassociateResourceSharePermissionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateResourceSharePermissionInput, context: context)
        type = Types::DisassociateResourceSharePermissionInput.new
        type.resource_share_arn = params[:resource_share_arn]
        type.permission_arn = params[:permission_arn]
        type.client_token = params[:client_token]
        type
      end
    end

    module DisassociateResourceSharePermissionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateResourceSharePermissionOutput, context: context)
        type = Types::DisassociateResourceSharePermissionOutput.new
        type.return_value = params[:return_value]
        type.client_token = params[:client_token]
        type
      end
    end

    module EnableSharingWithAwsOrganizationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableSharingWithAwsOrganizationInput, context: context)
        type = Types::EnableSharingWithAwsOrganizationInput.new
        type
      end
    end

    module EnableSharingWithAwsOrganizationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableSharingWithAwsOrganizationOutput, context: context)
        type = Types::EnableSharingWithAwsOrganizationOutput.new
        type.return_value = params[:return_value]
        type
      end
    end

    module GetPermissionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPermissionInput, context: context)
        type = Types::GetPermissionInput.new
        type.permission_arn = params[:permission_arn]
        type.permission_version = params[:permission_version]
        type
      end
    end

    module GetPermissionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPermissionOutput, context: context)
        type = Types::GetPermissionOutput.new
        type.permission = ResourceSharePermissionDetail.build(params[:permission], context: "#{context}[:permission]") unless params[:permission].nil?
        type
      end
    end

    module GetResourcePoliciesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetResourcePoliciesInput, context: context)
        type = Types::GetResourcePoliciesInput.new
        type.resource_arns = ResourceArnList.build(params[:resource_arns], context: "#{context}[:resource_arns]") unless params[:resource_arns].nil?
        type.principal = params[:principal]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module GetResourcePoliciesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetResourcePoliciesOutput, context: context)
        type = Types::GetResourcePoliciesOutput.new
        type.policies = PolicyList.build(params[:policies], context: "#{context}[:policies]") unless params[:policies].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetResourceShareAssociationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetResourceShareAssociationsInput, context: context)
        type = Types::GetResourceShareAssociationsInput.new
        type.association_type = params[:association_type]
        type.resource_share_arns = ResourceShareArnList.build(params[:resource_share_arns], context: "#{context}[:resource_share_arns]") unless params[:resource_share_arns].nil?
        type.resource_arn = params[:resource_arn]
        type.principal = params[:principal]
        type.association_status = params[:association_status]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module GetResourceShareAssociationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetResourceShareAssociationsOutput, context: context)
        type = Types::GetResourceShareAssociationsOutput.new
        type.resource_share_associations = ResourceShareAssociationList.build(params[:resource_share_associations], context: "#{context}[:resource_share_associations]") unless params[:resource_share_associations].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetResourceShareInvitationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetResourceShareInvitationsInput, context: context)
        type = Types::GetResourceShareInvitationsInput.new
        type.resource_share_invitation_arns = ResourceShareInvitationArnList.build(params[:resource_share_invitation_arns], context: "#{context}[:resource_share_invitation_arns]") unless params[:resource_share_invitation_arns].nil?
        type.resource_share_arns = ResourceShareArnList.build(params[:resource_share_arns], context: "#{context}[:resource_share_arns]") unless params[:resource_share_arns].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module GetResourceShareInvitationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetResourceShareInvitationsOutput, context: context)
        type = Types::GetResourceShareInvitationsOutput.new
        type.resource_share_invitations = ResourceShareInvitationList.build(params[:resource_share_invitations], context: "#{context}[:resource_share_invitations]") unless params[:resource_share_invitations].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetResourceSharesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetResourceSharesInput, context: context)
        type = Types::GetResourceSharesInput.new
        type.resource_share_arns = ResourceShareArnList.build(params[:resource_share_arns], context: "#{context}[:resource_share_arns]") unless params[:resource_share_arns].nil?
        type.resource_share_status = params[:resource_share_status]
        type.resource_owner = params[:resource_owner]
        type.name = params[:name]
        type.tag_filters = TagFilters.build(params[:tag_filters], context: "#{context}[:tag_filters]") unless params[:tag_filters].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.permission_arn = params[:permission_arn]
        type
      end
    end

    module GetResourceSharesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetResourceSharesOutput, context: context)
        type = Types::GetResourceSharesOutput.new
        type.resource_shares = ResourceShareList.build(params[:resource_shares], context: "#{context}[:resource_shares]") unless params[:resource_shares].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module IdempotentParameterMismatchException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IdempotentParameterMismatchException, context: context)
        type = Types::IdempotentParameterMismatchException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidClientTokenException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidClientTokenException, context: context)
        type = Types::InvalidClientTokenException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidMaxResultsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidMaxResultsException, context: context)
        type = Types::InvalidMaxResultsException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidNextTokenException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidNextTokenException, context: context)
        type = Types::InvalidNextTokenException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidParameterException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidParameterException, context: context)
        type = Types::InvalidParameterException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidResourceTypeException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidResourceTypeException, context: context)
        type = Types::InvalidResourceTypeException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidStateTransitionException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidStateTransitionException, context: context)
        type = Types::InvalidStateTransitionException.new
        type.message = params[:message]
        type
      end
    end

    module ListPendingInvitationResourcesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPendingInvitationResourcesInput, context: context)
        type = Types::ListPendingInvitationResourcesInput.new
        type.resource_share_invitation_arn = params[:resource_share_invitation_arn]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.resource_region_scope = params[:resource_region_scope]
        type
      end
    end

    module ListPendingInvitationResourcesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPendingInvitationResourcesOutput, context: context)
        type = Types::ListPendingInvitationResourcesOutput.new
        type.resources = ResourceList.build(params[:resources], context: "#{context}[:resources]") unless params[:resources].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListPermissionVersionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPermissionVersionsInput, context: context)
        type = Types::ListPermissionVersionsInput.new
        type.permission_arn = params[:permission_arn]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListPermissionVersionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPermissionVersionsOutput, context: context)
        type = Types::ListPermissionVersionsOutput.new
        type.permissions = ResourceSharePermissionList.build(params[:permissions], context: "#{context}[:permissions]") unless params[:permissions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListPermissionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPermissionsInput, context: context)
        type = Types::ListPermissionsInput.new
        type.resource_type = params[:resource_type]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListPermissionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPermissionsOutput, context: context)
        type = Types::ListPermissionsOutput.new
        type.permissions = ResourceSharePermissionList.build(params[:permissions], context: "#{context}[:permissions]") unless params[:permissions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListPrincipalsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPrincipalsInput, context: context)
        type = Types::ListPrincipalsInput.new
        type.resource_owner = params[:resource_owner]
        type.resource_arn = params[:resource_arn]
        type.principals = PrincipalArnOrIdList.build(params[:principals], context: "#{context}[:principals]") unless params[:principals].nil?
        type.resource_type = params[:resource_type]
        type.resource_share_arns = ResourceShareArnList.build(params[:resource_share_arns], context: "#{context}[:resource_share_arns]") unless params[:resource_share_arns].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListPrincipalsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPrincipalsOutput, context: context)
        type = Types::ListPrincipalsOutput.new
        type.principals = PrincipalList.build(params[:principals], context: "#{context}[:principals]") unless params[:principals].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListResourceSharePermissionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListResourceSharePermissionsInput, context: context)
        type = Types::ListResourceSharePermissionsInput.new
        type.resource_share_arn = params[:resource_share_arn]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListResourceSharePermissionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListResourceSharePermissionsOutput, context: context)
        type = Types::ListResourceSharePermissionsOutput.new
        type.permissions = ResourceSharePermissionList.build(params[:permissions], context: "#{context}[:permissions]") unless params[:permissions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListResourceTypesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListResourceTypesInput, context: context)
        type = Types::ListResourceTypesInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.resource_region_scope = params[:resource_region_scope]
        type
      end
    end

    module ListResourceTypesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListResourceTypesOutput, context: context)
        type = Types::ListResourceTypesOutput.new
        type.resource_types = ServiceNameAndResourceTypeList.build(params[:resource_types], context: "#{context}[:resource_types]") unless params[:resource_types].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListResourcesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListResourcesInput, context: context)
        type = Types::ListResourcesInput.new
        type.resource_owner = params[:resource_owner]
        type.principal = params[:principal]
        type.resource_type = params[:resource_type]
        type.resource_arns = ResourceArnList.build(params[:resource_arns], context: "#{context}[:resource_arns]") unless params[:resource_arns].nil?
        type.resource_share_arns = ResourceShareArnList.build(params[:resource_share_arns], context: "#{context}[:resource_share_arns]") unless params[:resource_share_arns].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.resource_region_scope = params[:resource_region_scope]
        type
      end
    end

    module ListResourcesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListResourcesOutput, context: context)
        type = Types::ListResourcesOutput.new
        type.resources = ResourceList.build(params[:resources], context: "#{context}[:resources]") unless params[:resources].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module MalformedArnException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MalformedArnException, context: context)
        type = Types::MalformedArnException.new
        type.message = params[:message]
        type
      end
    end

    module MissingRequiredParameterException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MissingRequiredParameterException, context: context)
        type = Types::MissingRequiredParameterException.new
        type.message = params[:message]
        type
      end
    end

    module OperationNotPermittedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OperationNotPermittedException, context: context)
        type = Types::OperationNotPermittedException.new
        type.message = params[:message]
        type
      end
    end

    module PermissionArnList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module PolicyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Principal
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Principal, context: context)
        type = Types::Principal.new
        type.id = params[:id]
        type.resource_share_arn = params[:resource_share_arn]
        type.creation_time = params[:creation_time]
        type.last_updated_time = params[:last_updated_time]
        type.external = params[:external]
        type
      end
    end

    module PrincipalArnOrIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module PrincipalList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Principal.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PromoteResourceShareCreatedFromPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PromoteResourceShareCreatedFromPolicyInput, context: context)
        type = Types::PromoteResourceShareCreatedFromPolicyInput.new
        type.resource_share_arn = params[:resource_share_arn]
        type
      end
    end

    module PromoteResourceShareCreatedFromPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PromoteResourceShareCreatedFromPolicyOutput, context: context)
        type = Types::PromoteResourceShareCreatedFromPolicyOutput.new
        type.return_value = params[:return_value]
        type
      end
    end

    module RejectResourceShareInvitationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RejectResourceShareInvitationInput, context: context)
        type = Types::RejectResourceShareInvitationInput.new
        type.resource_share_invitation_arn = params[:resource_share_invitation_arn]
        type.client_token = params[:client_token]
        type
      end
    end

    module RejectResourceShareInvitationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RejectResourceShareInvitationOutput, context: context)
        type = Types::RejectResourceShareInvitationOutput.new
        type.resource_share_invitation = ResourceShareInvitation.build(params[:resource_share_invitation], context: "#{context}[:resource_share_invitation]") unless params[:resource_share_invitation].nil?
        type.client_token = params[:client_token]
        type
      end
    end

    module Resource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Resource, context: context)
        type = Types::Resource.new
        type.arn = params[:arn]
        type.type = params[:type]
        type.resource_share_arn = params[:resource_share_arn]
        type.resource_group_arn = params[:resource_group_arn]
        type.status = params[:status]
        type.status_message = params[:status_message]
        type.creation_time = params[:creation_time]
        type.last_updated_time = params[:last_updated_time]
        type.resource_region_scope = params[:resource_region_scope]
        type
      end
    end

    module ResourceArnList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ResourceArnNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceArnNotFoundException, context: context)
        type = Types::ResourceArnNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module ResourceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Resource.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResourceShare
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceShare, context: context)
        type = Types::ResourceShare.new
        type.resource_share_arn = params[:resource_share_arn]
        type.name = params[:name]
        type.owning_account_id = params[:owning_account_id]
        type.allow_external_principals = params[:allow_external_principals]
        type.status = params[:status]
        type.status_message = params[:status_message]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.creation_time = params[:creation_time]
        type.last_updated_time = params[:last_updated_time]
        type.feature_set = params[:feature_set]
        type
      end
    end

    module ResourceShareArnList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ResourceShareAssociation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceShareAssociation, context: context)
        type = Types::ResourceShareAssociation.new
        type.resource_share_arn = params[:resource_share_arn]
        type.resource_share_name = params[:resource_share_name]
        type.associated_entity = params[:associated_entity]
        type.association_type = params[:association_type]
        type.status = params[:status]
        type.status_message = params[:status_message]
        type.creation_time = params[:creation_time]
        type.last_updated_time = params[:last_updated_time]
        type.external = params[:external]
        type
      end
    end

    module ResourceShareAssociationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ResourceShareAssociation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResourceShareInvitation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceShareInvitation, context: context)
        type = Types::ResourceShareInvitation.new
        type.resource_share_invitation_arn = params[:resource_share_invitation_arn]
        type.resource_share_name = params[:resource_share_name]
        type.resource_share_arn = params[:resource_share_arn]
        type.sender_account_id = params[:sender_account_id]
        type.receiver_account_id = params[:receiver_account_id]
        type.invitation_timestamp = params[:invitation_timestamp]
        type.status = params[:status]
        type.resource_share_associations = ResourceShareAssociationList.build(params[:resource_share_associations], context: "#{context}[:resource_share_associations]") unless params[:resource_share_associations].nil?
        type.receiver_arn = params[:receiver_arn]
        type
      end
    end

    module ResourceShareInvitationAlreadyAcceptedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceShareInvitationAlreadyAcceptedException, context: context)
        type = Types::ResourceShareInvitationAlreadyAcceptedException.new
        type.message = params[:message]
        type
      end
    end

    module ResourceShareInvitationAlreadyRejectedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceShareInvitationAlreadyRejectedException, context: context)
        type = Types::ResourceShareInvitationAlreadyRejectedException.new
        type.message = params[:message]
        type
      end
    end

    module ResourceShareInvitationArnList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ResourceShareInvitationArnNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceShareInvitationArnNotFoundException, context: context)
        type = Types::ResourceShareInvitationArnNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module ResourceShareInvitationExpiredException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceShareInvitationExpiredException, context: context)
        type = Types::ResourceShareInvitationExpiredException.new
        type.message = params[:message]
        type
      end
    end

    module ResourceShareInvitationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ResourceShareInvitation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResourceShareLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceShareLimitExceededException, context: context)
        type = Types::ResourceShareLimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module ResourceShareList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ResourceShare.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResourceSharePermissionDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceSharePermissionDetail, context: context)
        type = Types::ResourceSharePermissionDetail.new
        type.arn = params[:arn]
        type.version = params[:version]
        type.default_version = params[:default_version]
        type.name = params[:name]
        type.resource_type = params[:resource_type]
        type.permission = params[:permission]
        type.creation_time = params[:creation_time]
        type.last_updated_time = params[:last_updated_time]
        type.is_resource_type_default = params[:is_resource_type_default]
        type
      end
    end

    module ResourceSharePermissionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ResourceSharePermissionSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResourceSharePermissionSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceSharePermissionSummary, context: context)
        type = Types::ResourceSharePermissionSummary.new
        type.arn = params[:arn]
        type.version = params[:version]
        type.default_version = params[:default_version]
        type.name = params[:name]
        type.resource_type = params[:resource_type]
        type.status = params[:status]
        type.creation_time = params[:creation_time]
        type.last_updated_time = params[:last_updated_time]
        type.is_resource_type_default = params[:is_resource_type_default]
        type
      end
    end

    module ServerInternalException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServerInternalException, context: context)
        type = Types::ServerInternalException.new
        type.message = params[:message]
        type
      end
    end

    module ServiceNameAndResourceType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceNameAndResourceType, context: context)
        type = Types::ServiceNameAndResourceType.new
        type.resource_type = params[:resource_type]
        type.service_name = params[:service_name]
        type.resource_region_scope = params[:resource_region_scope]
        type
      end
    end

    module ServiceNameAndResourceTypeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ServiceNameAndResourceType.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ServiceUnavailableException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceUnavailableException, context: context)
        type = Types::ServiceUnavailableException.new
        type.message = params[:message]
        type
      end
    end

    module Tag
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Tag, context: context)
        type = Types::Tag.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module TagFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagFilter, context: context)
        type = Types::TagFilter.new
        type.tag_key = params[:tag_key]
        type.tag_values = TagValueList.build(params[:tag_values], context: "#{context}[:tag_values]") unless params[:tag_values].nil?
        type
      end
    end

    module TagFilters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TagFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TagKeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagLimitExceededException, context: context)
        type = Types::TagLimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module TagList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TagPolicyViolationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagPolicyViolationException, context: context)
        type = Types::TagPolicyViolationException.new
        type.message = params[:message]
        type
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_share_arn = params[:resource_share_arn]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module TagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceOutput, context: context)
        type = Types::TagResourceOutput.new
        type
      end
    end

    module TagValueList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ThrottlingException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThrottlingException, context: context)
        type = Types::ThrottlingException.new
        type.message = params[:message]
        type
      end
    end

    module UnknownResourceException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnknownResourceException, context: context)
        type = Types::UnknownResourceException.new
        type.message = params[:message]
        type
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_share_arn = params[:resource_share_arn]
        type.tag_keys = TagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module UntagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceOutput, context: context)
        type = Types::UntagResourceOutput.new
        type
      end
    end

    module UpdateResourceShareInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateResourceShareInput, context: context)
        type = Types::UpdateResourceShareInput.new
        type.resource_share_arn = params[:resource_share_arn]
        type.name = params[:name]
        type.allow_external_principals = params[:allow_external_principals]
        type.client_token = params[:client_token]
        type
      end
    end

    module UpdateResourceShareOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateResourceShareOutput, context: context)
        type = Types::UpdateResourceShareOutput.new
        type.resource_share = ResourceShare.build(params[:resource_share], context: "#{context}[:resource_share]") unless params[:resource_share].nil?
        type.client_token = params[:client_token]
        type
      end
    end

  end
end
