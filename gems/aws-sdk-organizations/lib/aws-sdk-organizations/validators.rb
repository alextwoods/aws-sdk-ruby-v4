# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Organizations
  module Validators

    class AWSOrganizationsNotInUseException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AWSOrganizationsNotInUseException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AcceptHandshakeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AcceptHandshakeInput, context: context)
        Hearth::Validator.validate!(input[:handshake_id], ::String, context: "#{context}[:handshake_id]")
      end
    end

    class AcceptHandshakeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AcceptHandshakeOutput, context: context)
        Validators::Handshake.validate!(input[:handshake], context: "#{context}[:handshake]") unless input[:handshake].nil?
      end
    end

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AccessDeniedForDependencyException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedForDependencyException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
      end
    end

    class Account
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Account, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:email], ::String, context: "#{context}[:email]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:joined_method], ::String, context: "#{context}[:joined_method]")
        Hearth::Validator.validate!(input[:joined_timestamp], ::Time, context: "#{context}[:joined_timestamp]")
      end
    end

    class AccountAlreadyClosedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccountAlreadyClosedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AccountAlreadyRegisteredException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccountAlreadyRegisteredException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AccountNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccountNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AccountNotRegisteredException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccountNotRegisteredException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AccountOwnerNotVerifiedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccountOwnerNotVerifiedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Accounts
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Account.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AlreadyInOrganizationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AlreadyInOrganizationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AttachPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttachPolicyInput, context: context)
        Hearth::Validator.validate!(input[:policy_id], ::String, context: "#{context}[:policy_id]")
        Hearth::Validator.validate!(input[:target_id], ::String, context: "#{context}[:target_id]")
      end
    end

    class AttachPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttachPolicyOutput, context: context)
      end
    end

    class CancelHandshakeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelHandshakeInput, context: context)
        Hearth::Validator.validate!(input[:handshake_id], ::String, context: "#{context}[:handshake_id]")
      end
    end

    class CancelHandshakeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelHandshakeOutput, context: context)
        Validators::Handshake.validate!(input[:handshake], context: "#{context}[:handshake]") unless input[:handshake].nil?
      end
    end

    class Child
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Child, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class ChildNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ChildNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Children
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Child.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CloseAccountInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CloseAccountInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
      end
    end

    class CloseAccountOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CloseAccountOutput, context: context)
      end
    end

    class ConcurrentModificationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConcurrentModificationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ConstraintViolationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConstraintViolationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
      end
    end

    class CreateAccountInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAccountInput, context: context)
        Hearth::Validator.validate!(input[:email], ::String, context: "#{context}[:email]")
        Hearth::Validator.validate!(input[:account_name], ::String, context: "#{context}[:account_name]")
        Hearth::Validator.validate!(input[:role_name], ::String, context: "#{context}[:role_name]")
        Hearth::Validator.validate!(input[:iam_user_access_to_billing], ::String, context: "#{context}[:iam_user_access_to_billing]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateAccountOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAccountOutput, context: context)
        Validators::CreateAccountStatus.validate!(input[:create_account_status], context: "#{context}[:create_account_status]") unless input[:create_account_status].nil?
      end
    end

    class CreateAccountStates
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CreateAccountStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAccountStatus, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:account_name], ::String, context: "#{context}[:account_name]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:requested_timestamp], ::Time, context: "#{context}[:requested_timestamp]")
        Hearth::Validator.validate!(input[:completed_timestamp], ::Time, context: "#{context}[:completed_timestamp]")
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:gov_cloud_account_id], ::String, context: "#{context}[:gov_cloud_account_id]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
      end
    end

    class CreateAccountStatusNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAccountStatusNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CreateAccountStatuses
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::CreateAccountStatus.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CreateGovCloudAccountInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateGovCloudAccountInput, context: context)
        Hearth::Validator.validate!(input[:email], ::String, context: "#{context}[:email]")
        Hearth::Validator.validate!(input[:account_name], ::String, context: "#{context}[:account_name]")
        Hearth::Validator.validate!(input[:role_name], ::String, context: "#{context}[:role_name]")
        Hearth::Validator.validate!(input[:iam_user_access_to_billing], ::String, context: "#{context}[:iam_user_access_to_billing]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateGovCloudAccountOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateGovCloudAccountOutput, context: context)
        Validators::CreateAccountStatus.validate!(input[:create_account_status], context: "#{context}[:create_account_status]") unless input[:create_account_status].nil?
      end
    end

    class CreateOrganizationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateOrganizationInput, context: context)
        Hearth::Validator.validate!(input[:feature_set], ::String, context: "#{context}[:feature_set]")
      end
    end

    class CreateOrganizationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateOrganizationOutput, context: context)
        Validators::Organization.validate!(input[:organization], context: "#{context}[:organization]") unless input[:organization].nil?
      end
    end

    class CreateOrganizationalUnitInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateOrganizationalUnitInput, context: context)
        Hearth::Validator.validate!(input[:parent_id], ::String, context: "#{context}[:parent_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateOrganizationalUnitOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateOrganizationalUnitOutput, context: context)
        Validators::OrganizationalUnit.validate!(input[:organizational_unit], context: "#{context}[:organizational_unit]") unless input[:organizational_unit].nil?
      end
    end

    class CreatePolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePolicyInput, context: context)
        Hearth::Validator.validate!(input[:content], ::String, context: "#{context}[:content]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreatePolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePolicyOutput, context: context)
        Validators::Policy.validate!(input[:policy], context: "#{context}[:policy]") unless input[:policy].nil?
      end
    end

    class DeclineHandshakeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeclineHandshakeInput, context: context)
        Hearth::Validator.validate!(input[:handshake_id], ::String, context: "#{context}[:handshake_id]")
      end
    end

    class DeclineHandshakeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeclineHandshakeOutput, context: context)
        Validators::Handshake.validate!(input[:handshake], context: "#{context}[:handshake]") unless input[:handshake].nil?
      end
    end

    class DelegatedAdministrator
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DelegatedAdministrator, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:email], ::String, context: "#{context}[:email]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:joined_method], ::String, context: "#{context}[:joined_method]")
        Hearth::Validator.validate!(input[:joined_timestamp], ::Time, context: "#{context}[:joined_timestamp]")
        Hearth::Validator.validate!(input[:delegation_enabled_date], ::Time, context: "#{context}[:delegation_enabled_date]")
      end
    end

    class DelegatedAdministrators
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DelegatedAdministrator.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DelegatedService
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DelegatedService, context: context)
        Hearth::Validator.validate!(input[:service_principal], ::String, context: "#{context}[:service_principal]")
        Hearth::Validator.validate!(input[:delegation_enabled_date], ::Time, context: "#{context}[:delegation_enabled_date]")
      end
    end

    class DelegatedServices
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DelegatedService.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DeleteOrganizationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteOrganizationInput, context: context)
      end
    end

    class DeleteOrganizationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteOrganizationOutput, context: context)
      end
    end

    class DeleteOrganizationalUnitInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteOrganizationalUnitInput, context: context)
        Hearth::Validator.validate!(input[:organizational_unit_id], ::String, context: "#{context}[:organizational_unit_id]")
      end
    end

    class DeleteOrganizationalUnitOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteOrganizationalUnitOutput, context: context)
      end
    end

    class DeletePolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePolicyInput, context: context)
        Hearth::Validator.validate!(input[:policy_id], ::String, context: "#{context}[:policy_id]")
      end
    end

    class DeletePolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePolicyOutput, context: context)
      end
    end

    class DeregisterDelegatedAdministratorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeregisterDelegatedAdministratorInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:service_principal], ::String, context: "#{context}[:service_principal]")
      end
    end

    class DeregisterDelegatedAdministratorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeregisterDelegatedAdministratorOutput, context: context)
      end
    end

    class DescribeAccountInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAccountInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
      end
    end

    class DescribeAccountOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAccountOutput, context: context)
        Validators::Account.validate!(input[:account], context: "#{context}[:account]") unless input[:account].nil?
      end
    end

    class DescribeCreateAccountStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCreateAccountStatusInput, context: context)
        Hearth::Validator.validate!(input[:create_account_request_id], ::String, context: "#{context}[:create_account_request_id]")
      end
    end

    class DescribeCreateAccountStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCreateAccountStatusOutput, context: context)
        Validators::CreateAccountStatus.validate!(input[:create_account_status], context: "#{context}[:create_account_status]") unless input[:create_account_status].nil?
      end
    end

    class DescribeEffectivePolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEffectivePolicyInput, context: context)
        Hearth::Validator.validate!(input[:policy_type], ::String, context: "#{context}[:policy_type]")
        Hearth::Validator.validate!(input[:target_id], ::String, context: "#{context}[:target_id]")
      end
    end

    class DescribeEffectivePolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEffectivePolicyOutput, context: context)
        Validators::EffectivePolicy.validate!(input[:effective_policy], context: "#{context}[:effective_policy]") unless input[:effective_policy].nil?
      end
    end

    class DescribeHandshakeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeHandshakeInput, context: context)
        Hearth::Validator.validate!(input[:handshake_id], ::String, context: "#{context}[:handshake_id]")
      end
    end

    class DescribeHandshakeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeHandshakeOutput, context: context)
        Validators::Handshake.validate!(input[:handshake], context: "#{context}[:handshake]") unless input[:handshake].nil?
      end
    end

    class DescribeOrganizationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeOrganizationInput, context: context)
      end
    end

    class DescribeOrganizationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeOrganizationOutput, context: context)
        Validators::Organization.validate!(input[:organization], context: "#{context}[:organization]") unless input[:organization].nil?
      end
    end

    class DescribeOrganizationalUnitInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeOrganizationalUnitInput, context: context)
        Hearth::Validator.validate!(input[:organizational_unit_id], ::String, context: "#{context}[:organizational_unit_id]")
      end
    end

    class DescribeOrganizationalUnitOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeOrganizationalUnitOutput, context: context)
        Validators::OrganizationalUnit.validate!(input[:organizational_unit], context: "#{context}[:organizational_unit]") unless input[:organizational_unit].nil?
      end
    end

    class DescribePolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePolicyInput, context: context)
        Hearth::Validator.validate!(input[:policy_id], ::String, context: "#{context}[:policy_id]")
      end
    end

    class DescribePolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePolicyOutput, context: context)
        Validators::Policy.validate!(input[:policy], context: "#{context}[:policy]") unless input[:policy].nil?
      end
    end

    class DestinationParentNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DestinationParentNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DetachPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetachPolicyInput, context: context)
        Hearth::Validator.validate!(input[:policy_id], ::String, context: "#{context}[:policy_id]")
        Hearth::Validator.validate!(input[:target_id], ::String, context: "#{context}[:target_id]")
      end
    end

    class DetachPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetachPolicyOutput, context: context)
      end
    end

    class DisableAWSServiceAccessInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisableAWSServiceAccessInput, context: context)
        Hearth::Validator.validate!(input[:service_principal], ::String, context: "#{context}[:service_principal]")
      end
    end

    class DisableAWSServiceAccessOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisableAWSServiceAccessOutput, context: context)
      end
    end

    class DisablePolicyTypeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisablePolicyTypeInput, context: context)
        Hearth::Validator.validate!(input[:root_id], ::String, context: "#{context}[:root_id]")
        Hearth::Validator.validate!(input[:policy_type], ::String, context: "#{context}[:policy_type]")
      end
    end

    class DisablePolicyTypeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisablePolicyTypeOutput, context: context)
        Validators::Root.validate!(input[:root], context: "#{context}[:root]") unless input[:root].nil?
      end
    end

    class DuplicateAccountException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DuplicateAccountException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DuplicateHandshakeException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DuplicateHandshakeException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DuplicateOrganizationalUnitException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DuplicateOrganizationalUnitException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DuplicatePolicyAttachmentException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DuplicatePolicyAttachmentException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DuplicatePolicyException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DuplicatePolicyException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class EffectivePolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EffectivePolicy, context: context)
        Hearth::Validator.validate!(input[:policy_content], ::String, context: "#{context}[:policy_content]")
        Hearth::Validator.validate!(input[:last_updated_timestamp], ::Time, context: "#{context}[:last_updated_timestamp]")
        Hearth::Validator.validate!(input[:target_id], ::String, context: "#{context}[:target_id]")
        Hearth::Validator.validate!(input[:policy_type], ::String, context: "#{context}[:policy_type]")
      end
    end

    class EffectivePolicyNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EffectivePolicyNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class EnableAWSServiceAccessInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableAWSServiceAccessInput, context: context)
        Hearth::Validator.validate!(input[:service_principal], ::String, context: "#{context}[:service_principal]")
      end
    end

    class EnableAWSServiceAccessOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableAWSServiceAccessOutput, context: context)
      end
    end

    class EnableAllFeaturesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableAllFeaturesInput, context: context)
      end
    end

    class EnableAllFeaturesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableAllFeaturesOutput, context: context)
        Validators::Handshake.validate!(input[:handshake], context: "#{context}[:handshake]") unless input[:handshake].nil?
      end
    end

    class EnablePolicyTypeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnablePolicyTypeInput, context: context)
        Hearth::Validator.validate!(input[:root_id], ::String, context: "#{context}[:root_id]")
        Hearth::Validator.validate!(input[:policy_type], ::String, context: "#{context}[:policy_type]")
      end
    end

    class EnablePolicyTypeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnablePolicyTypeOutput, context: context)
        Validators::Root.validate!(input[:root], context: "#{context}[:root]") unless input[:root].nil?
      end
    end

    class EnabledServicePrincipal
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnabledServicePrincipal, context: context)
        Hearth::Validator.validate!(input[:service_principal], ::String, context: "#{context}[:service_principal]")
        Hearth::Validator.validate!(input[:date_enabled], ::Time, context: "#{context}[:date_enabled]")
      end
    end

    class EnabledServicePrincipals
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::EnabledServicePrincipal.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FinalizingOrganizationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FinalizingOrganizationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Handshake
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Handshake, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Validators::HandshakeParties.validate!(input[:parties], context: "#{context}[:parties]") unless input[:parties].nil?
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:requested_timestamp], ::Time, context: "#{context}[:requested_timestamp]")
        Hearth::Validator.validate!(input[:expiration_timestamp], ::Time, context: "#{context}[:expiration_timestamp]")
        Hearth::Validator.validate!(input[:action], ::String, context: "#{context}[:action]")
        Validators::HandshakeResources.validate!(input[:resources], context: "#{context}[:resources]") unless input[:resources].nil?
      end
    end

    class HandshakeAlreadyInStateException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HandshakeAlreadyInStateException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class HandshakeConstraintViolationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HandshakeConstraintViolationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
      end
    end

    class HandshakeFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HandshakeFilter, context: context)
        Hearth::Validator.validate!(input[:action_type], ::String, context: "#{context}[:action_type]")
        Hearth::Validator.validate!(input[:parent_handshake_id], ::String, context: "#{context}[:parent_handshake_id]")
      end
    end

    class HandshakeNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HandshakeNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class HandshakeParties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::HandshakeParty.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class HandshakeParty
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HandshakeParty, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class HandshakeResource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HandshakeResource, context: context)
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Validators::HandshakeResources.validate!(input[:resources], context: "#{context}[:resources]") unless input[:resources].nil?
      end
    end

    class HandshakeResources
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::HandshakeResource.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Handshakes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Handshake.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InvalidHandshakeTransitionException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidHandshakeTransitionException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidInputException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidInputException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
      end
    end

    class InviteAccountToOrganizationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InviteAccountToOrganizationInput, context: context)
        Validators::HandshakeParty.validate!(input[:target], context: "#{context}[:target]") unless input[:target].nil?
        Hearth::Validator.validate!(input[:notes], ::String, context: "#{context}[:notes]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class InviteAccountToOrganizationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InviteAccountToOrganizationOutput, context: context)
        Validators::Handshake.validate!(input[:handshake], context: "#{context}[:handshake]") unless input[:handshake].nil?
      end
    end

    class LeaveOrganizationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LeaveOrganizationInput, context: context)
      end
    end

    class LeaveOrganizationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LeaveOrganizationOutput, context: context)
      end
    end

    class ListAWSServiceAccessForOrganizationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAWSServiceAccessForOrganizationInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListAWSServiceAccessForOrganizationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAWSServiceAccessForOrganizationOutput, context: context)
        Validators::EnabledServicePrincipals.validate!(input[:enabled_service_principals], context: "#{context}[:enabled_service_principals]") unless input[:enabled_service_principals].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAccountsForParentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAccountsForParentInput, context: context)
        Hearth::Validator.validate!(input[:parent_id], ::String, context: "#{context}[:parent_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListAccountsForParentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAccountsForParentOutput, context: context)
        Validators::Accounts.validate!(input[:accounts], context: "#{context}[:accounts]") unless input[:accounts].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAccountsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAccountsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListAccountsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAccountsOutput, context: context)
        Validators::Accounts.validate!(input[:accounts], context: "#{context}[:accounts]") unless input[:accounts].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListChildrenInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListChildrenInput, context: context)
        Hearth::Validator.validate!(input[:parent_id], ::String, context: "#{context}[:parent_id]")
        Hearth::Validator.validate!(input[:child_type], ::String, context: "#{context}[:child_type]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListChildrenOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListChildrenOutput, context: context)
        Validators::Children.validate!(input[:children], context: "#{context}[:children]") unless input[:children].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListCreateAccountStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCreateAccountStatusInput, context: context)
        Validators::CreateAccountStates.validate!(input[:states], context: "#{context}[:states]") unless input[:states].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListCreateAccountStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCreateAccountStatusOutput, context: context)
        Validators::CreateAccountStatuses.validate!(input[:create_account_statuses], context: "#{context}[:create_account_statuses]") unless input[:create_account_statuses].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDelegatedAdministratorsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDelegatedAdministratorsInput, context: context)
        Hearth::Validator.validate!(input[:service_principal], ::String, context: "#{context}[:service_principal]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListDelegatedAdministratorsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDelegatedAdministratorsOutput, context: context)
        Validators::DelegatedAdministrators.validate!(input[:delegated_administrators], context: "#{context}[:delegated_administrators]") unless input[:delegated_administrators].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDelegatedServicesForAccountInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDelegatedServicesForAccountInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListDelegatedServicesForAccountOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDelegatedServicesForAccountOutput, context: context)
        Validators::DelegatedServices.validate!(input[:delegated_services], context: "#{context}[:delegated_services]") unless input[:delegated_services].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListHandshakesForAccountInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListHandshakesForAccountInput, context: context)
        Validators::HandshakeFilter.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListHandshakesForAccountOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListHandshakesForAccountOutput, context: context)
        Validators::Handshakes.validate!(input[:handshakes], context: "#{context}[:handshakes]") unless input[:handshakes].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListHandshakesForOrganizationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListHandshakesForOrganizationInput, context: context)
        Validators::HandshakeFilter.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListHandshakesForOrganizationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListHandshakesForOrganizationOutput, context: context)
        Validators::Handshakes.validate!(input[:handshakes], context: "#{context}[:handshakes]") unless input[:handshakes].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListOrganizationalUnitsForParentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListOrganizationalUnitsForParentInput, context: context)
        Hearth::Validator.validate!(input[:parent_id], ::String, context: "#{context}[:parent_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListOrganizationalUnitsForParentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListOrganizationalUnitsForParentOutput, context: context)
        Validators::OrganizationalUnits.validate!(input[:organizational_units], context: "#{context}[:organizational_units]") unless input[:organizational_units].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListParentsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListParentsInput, context: context)
        Hearth::Validator.validate!(input[:child_id], ::String, context: "#{context}[:child_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListParentsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListParentsOutput, context: context)
        Validators::Parents.validate!(input[:parents], context: "#{context}[:parents]") unless input[:parents].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListPoliciesForTargetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPoliciesForTargetInput, context: context)
        Hearth::Validator.validate!(input[:target_id], ::String, context: "#{context}[:target_id]")
        Hearth::Validator.validate!(input[:filter], ::String, context: "#{context}[:filter]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListPoliciesForTargetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPoliciesForTargetOutput, context: context)
        Validators::Policies.validate!(input[:policies], context: "#{context}[:policies]") unless input[:policies].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListPoliciesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPoliciesInput, context: context)
        Hearth::Validator.validate!(input[:filter], ::String, context: "#{context}[:filter]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListPoliciesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPoliciesOutput, context: context)
        Validators::Policies.validate!(input[:policies], context: "#{context}[:policies]") unless input[:policies].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListRootsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRootsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListRootsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRootsOutput, context: context)
        Validators::Roots.validate!(input[:roots], context: "#{context}[:roots]") unless input[:roots].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTargetsForPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTargetsForPolicyInput, context: context)
        Hearth::Validator.validate!(input[:policy_id], ::String, context: "#{context}[:policy_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListTargetsForPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTargetsForPolicyOutput, context: context)
        Validators::PolicyTargets.validate!(input[:targets], context: "#{context}[:targets]") unless input[:targets].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class MalformedPolicyDocumentException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MalformedPolicyDocumentException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class MasterCannotLeaveOrganizationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MasterCannotLeaveOrganizationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class MoveAccountInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MoveAccountInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:source_parent_id], ::String, context: "#{context}[:source_parent_id]")
        Hearth::Validator.validate!(input[:destination_parent_id], ::String, context: "#{context}[:destination_parent_id]")
      end
    end

    class MoveAccountOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MoveAccountOutput, context: context)
      end
    end

    class Organization
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Organization, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:feature_set], ::String, context: "#{context}[:feature_set]")
        Hearth::Validator.validate!(input[:master_account_arn], ::String, context: "#{context}[:master_account_arn]")
        Hearth::Validator.validate!(input[:master_account_id], ::String, context: "#{context}[:master_account_id]")
        Hearth::Validator.validate!(input[:master_account_email], ::String, context: "#{context}[:master_account_email]")
        Validators::PolicyTypes.validate!(input[:available_policy_types], context: "#{context}[:available_policy_types]") unless input[:available_policy_types].nil?
      end
    end

    class OrganizationNotEmptyException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OrganizationNotEmptyException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class OrganizationalUnit
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OrganizationalUnit, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class OrganizationalUnitNotEmptyException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OrganizationalUnitNotEmptyException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class OrganizationalUnitNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OrganizationalUnitNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class OrganizationalUnits
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::OrganizationalUnit.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Parent
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Parent, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class ParentNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ParentNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Parents
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Parent.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Policies
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::PolicySummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Policy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Policy, context: context)
        Validators::PolicySummary.validate!(input[:policy_summary], context: "#{context}[:policy_summary]") unless input[:policy_summary].nil?
        Hearth::Validator.validate!(input[:content], ::String, context: "#{context}[:content]")
      end
    end

    class PolicyChangesInProgressException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PolicyChangesInProgressException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PolicyInUseException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PolicyInUseException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PolicyNotAttachedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PolicyNotAttachedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PolicyNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PolicyNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PolicySummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PolicySummary, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:aws_managed], ::TrueClass, ::FalseClass, context: "#{context}[:aws_managed]")
      end
    end

    class PolicyTargetSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PolicyTargetSummary, context: context)
        Hearth::Validator.validate!(input[:target_id], ::String, context: "#{context}[:target_id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class PolicyTargets
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::PolicyTargetSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PolicyTypeAlreadyEnabledException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PolicyTypeAlreadyEnabledException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PolicyTypeNotAvailableForOrganizationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PolicyTypeNotAvailableForOrganizationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PolicyTypeNotEnabledException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PolicyTypeNotEnabledException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PolicyTypeSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PolicyTypeSummary, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class PolicyTypes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::PolicyTypeSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RegisterDelegatedAdministratorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterDelegatedAdministratorInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:service_principal], ::String, context: "#{context}[:service_principal]")
      end
    end

    class RegisterDelegatedAdministratorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterDelegatedAdministratorOutput, context: context)
      end
    end

    class RemoveAccountFromOrganizationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveAccountFromOrganizationInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
      end
    end

    class RemoveAccountFromOrganizationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveAccountFromOrganizationOutput, context: context)
      end
    end

    class Root
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Root, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::PolicyTypes.validate!(input[:policy_types], context: "#{context}[:policy_types]") unless input[:policy_types].nil?
      end
    end

    class RootNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RootNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Roots
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Root.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ServiceException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SourceParentNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SourceParentNotFoundException, context: context)
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

    class TagKeys
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class Tags
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TargetNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TargetNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyRequestsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyRequestsException, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UnsupportedAPIEndpointException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnsupportedAPIEndpointException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Validators::TagKeys.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateOrganizationalUnitInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateOrganizationalUnitInput, context: context)
        Hearth::Validator.validate!(input[:organizational_unit_id], ::String, context: "#{context}[:organizational_unit_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class UpdateOrganizationalUnitOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateOrganizationalUnitOutput, context: context)
        Validators::OrganizationalUnit.validate!(input[:organizational_unit], context: "#{context}[:organizational_unit]") unless input[:organizational_unit].nil?
      end
    end

    class UpdatePolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePolicyInput, context: context)
        Hearth::Validator.validate!(input[:policy_id], ::String, context: "#{context}[:policy_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:content], ::String, context: "#{context}[:content]")
      end
    end

    class UpdatePolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePolicyOutput, context: context)
        Validators::Policy.validate!(input[:policy], context: "#{context}[:policy]") unless input[:policy].nil?
      end
    end

  end
end
