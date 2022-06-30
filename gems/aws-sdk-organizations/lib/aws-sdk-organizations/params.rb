# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::Organizations
  module Params

    module AWSOrganizationsNotInUseException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AWSOrganizationsNotInUseException, context: context)
        type = Types::AWSOrganizationsNotInUseException.new
        type.message = params[:message]
        type
      end
    end

    module AcceptHandshakeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AcceptHandshakeInput, context: context)
        type = Types::AcceptHandshakeInput.new
        type.handshake_id = params[:handshake_id]
        type
      end
    end

    module AcceptHandshakeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AcceptHandshakeOutput, context: context)
        type = Types::AcceptHandshakeOutput.new
        type.handshake = Handshake.build(params[:handshake], context: "#{context}[:handshake]") unless params[:handshake].nil?
        type
      end
    end

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module AccessDeniedForDependencyException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedForDependencyException, context: context)
        type = Types::AccessDeniedForDependencyException.new
        type.message = params[:message]
        type.reason = params[:reason]
        type
      end
    end

    module Account
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Account, context: context)
        type = Types::Account.new
        type.id = params[:id]
        type.arn = params[:arn]
        type.email = params[:email]
        type.name = params[:name]
        type.status = params[:status]
        type.joined_method = params[:joined_method]
        type.joined_timestamp = params[:joined_timestamp]
        type
      end
    end

    module AccountAlreadyClosedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccountAlreadyClosedException, context: context)
        type = Types::AccountAlreadyClosedException.new
        type.message = params[:message]
        type
      end
    end

    module AccountAlreadyRegisteredException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccountAlreadyRegisteredException, context: context)
        type = Types::AccountAlreadyRegisteredException.new
        type.message = params[:message]
        type
      end
    end

    module AccountNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccountNotFoundException, context: context)
        type = Types::AccountNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module AccountNotRegisteredException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccountNotRegisteredException, context: context)
        type = Types::AccountNotRegisteredException.new
        type.message = params[:message]
        type
      end
    end

    module AccountOwnerNotVerifiedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccountOwnerNotVerifiedException, context: context)
        type = Types::AccountOwnerNotVerifiedException.new
        type.message = params[:message]
        type
      end
    end

    module Accounts
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Account.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AlreadyInOrganizationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AlreadyInOrganizationException, context: context)
        type = Types::AlreadyInOrganizationException.new
        type.message = params[:message]
        type
      end
    end

    module AttachPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttachPolicyInput, context: context)
        type = Types::AttachPolicyInput.new
        type.policy_id = params[:policy_id]
        type.target_id = params[:target_id]
        type
      end
    end

    module AttachPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttachPolicyOutput, context: context)
        type = Types::AttachPolicyOutput.new
        type
      end
    end

    module CancelHandshakeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelHandshakeInput, context: context)
        type = Types::CancelHandshakeInput.new
        type.handshake_id = params[:handshake_id]
        type
      end
    end

    module CancelHandshakeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelHandshakeOutput, context: context)
        type = Types::CancelHandshakeOutput.new
        type.handshake = Handshake.build(params[:handshake], context: "#{context}[:handshake]") unless params[:handshake].nil?
        type
      end
    end

    module Child
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Child, context: context)
        type = Types::Child.new
        type.id = params[:id]
        type.type = params[:type]
        type
      end
    end

    module ChildNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ChildNotFoundException, context: context)
        type = Types::ChildNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module Children
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Child.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CloseAccountInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CloseAccountInput, context: context)
        type = Types::CloseAccountInput.new
        type.account_id = params[:account_id]
        type
      end
    end

    module CloseAccountOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CloseAccountOutput, context: context)
        type = Types::CloseAccountOutput.new
        type
      end
    end

    module ConcurrentModificationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConcurrentModificationException, context: context)
        type = Types::ConcurrentModificationException.new
        type.message = params[:message]
        type
      end
    end

    module ConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictException, context: context)
        type = Types::ConflictException.new
        type.message = params[:message]
        type
      end
    end

    module ConstraintViolationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConstraintViolationException, context: context)
        type = Types::ConstraintViolationException.new
        type.message = params[:message]
        type.reason = params[:reason]
        type
      end
    end

    module CreateAccountInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAccountInput, context: context)
        type = Types::CreateAccountInput.new
        type.email = params[:email]
        type.account_name = params[:account_name]
        type.role_name = params[:role_name]
        type.iam_user_access_to_billing = params[:iam_user_access_to_billing]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateAccountOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAccountOutput, context: context)
        type = Types::CreateAccountOutput.new
        type.create_account_status = CreateAccountStatus.build(params[:create_account_status], context: "#{context}[:create_account_status]") unless params[:create_account_status].nil?
        type
      end
    end

    module CreateAccountStates
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module CreateAccountStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAccountStatus, context: context)
        type = Types::CreateAccountStatus.new
        type.id = params[:id]
        type.account_name = params[:account_name]
        type.state = params[:state]
        type.requested_timestamp = params[:requested_timestamp]
        type.completed_timestamp = params[:completed_timestamp]
        type.account_id = params[:account_id]
        type.gov_cloud_account_id = params[:gov_cloud_account_id]
        type.failure_reason = params[:failure_reason]
        type
      end
    end

    module CreateAccountStatusNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAccountStatusNotFoundException, context: context)
        type = Types::CreateAccountStatusNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module CreateAccountStatuses
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CreateAccountStatus.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CreateGovCloudAccountInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateGovCloudAccountInput, context: context)
        type = Types::CreateGovCloudAccountInput.new
        type.email = params[:email]
        type.account_name = params[:account_name]
        type.role_name = params[:role_name]
        type.iam_user_access_to_billing = params[:iam_user_access_to_billing]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateGovCloudAccountOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateGovCloudAccountOutput, context: context)
        type = Types::CreateGovCloudAccountOutput.new
        type.create_account_status = CreateAccountStatus.build(params[:create_account_status], context: "#{context}[:create_account_status]") unless params[:create_account_status].nil?
        type
      end
    end

    module CreateOrganizationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateOrganizationInput, context: context)
        type = Types::CreateOrganizationInput.new
        type.feature_set = params[:feature_set]
        type
      end
    end

    module CreateOrganizationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateOrganizationOutput, context: context)
        type = Types::CreateOrganizationOutput.new
        type.organization = Organization.build(params[:organization], context: "#{context}[:organization]") unless params[:organization].nil?
        type
      end
    end

    module CreateOrganizationalUnitInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateOrganizationalUnitInput, context: context)
        type = Types::CreateOrganizationalUnitInput.new
        type.parent_id = params[:parent_id]
        type.name = params[:name]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateOrganizationalUnitOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateOrganizationalUnitOutput, context: context)
        type = Types::CreateOrganizationalUnitOutput.new
        type.organizational_unit = OrganizationalUnit.build(params[:organizational_unit], context: "#{context}[:organizational_unit]") unless params[:organizational_unit].nil?
        type
      end
    end

    module CreatePolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePolicyInput, context: context)
        type = Types::CreatePolicyInput.new
        type.content = params[:content]
        type.description = params[:description]
        type.name = params[:name]
        type.type = params[:type]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreatePolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePolicyOutput, context: context)
        type = Types::CreatePolicyOutput.new
        type.policy = Policy.build(params[:policy], context: "#{context}[:policy]") unless params[:policy].nil?
        type
      end
    end

    module DeclineHandshakeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeclineHandshakeInput, context: context)
        type = Types::DeclineHandshakeInput.new
        type.handshake_id = params[:handshake_id]
        type
      end
    end

    module DeclineHandshakeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeclineHandshakeOutput, context: context)
        type = Types::DeclineHandshakeOutput.new
        type.handshake = Handshake.build(params[:handshake], context: "#{context}[:handshake]") unless params[:handshake].nil?
        type
      end
    end

    module DelegatedAdministrator
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DelegatedAdministrator, context: context)
        type = Types::DelegatedAdministrator.new
        type.id = params[:id]
        type.arn = params[:arn]
        type.email = params[:email]
        type.name = params[:name]
        type.status = params[:status]
        type.joined_method = params[:joined_method]
        type.joined_timestamp = params[:joined_timestamp]
        type.delegation_enabled_date = params[:delegation_enabled_date]
        type
      end
    end

    module DelegatedAdministrators
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DelegatedAdministrator.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DelegatedService
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DelegatedService, context: context)
        type = Types::DelegatedService.new
        type.service_principal = params[:service_principal]
        type.delegation_enabled_date = params[:delegation_enabled_date]
        type
      end
    end

    module DelegatedServices
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DelegatedService.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DeleteOrganizationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteOrganizationInput, context: context)
        type = Types::DeleteOrganizationInput.new
        type
      end
    end

    module DeleteOrganizationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteOrganizationOutput, context: context)
        type = Types::DeleteOrganizationOutput.new
        type
      end
    end

    module DeleteOrganizationalUnitInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteOrganizationalUnitInput, context: context)
        type = Types::DeleteOrganizationalUnitInput.new
        type.organizational_unit_id = params[:organizational_unit_id]
        type
      end
    end

    module DeleteOrganizationalUnitOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteOrganizationalUnitOutput, context: context)
        type = Types::DeleteOrganizationalUnitOutput.new
        type
      end
    end

    module DeletePolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePolicyInput, context: context)
        type = Types::DeletePolicyInput.new
        type.policy_id = params[:policy_id]
        type
      end
    end

    module DeletePolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePolicyOutput, context: context)
        type = Types::DeletePolicyOutput.new
        type
      end
    end

    module DeregisterDelegatedAdministratorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeregisterDelegatedAdministratorInput, context: context)
        type = Types::DeregisterDelegatedAdministratorInput.new
        type.account_id = params[:account_id]
        type.service_principal = params[:service_principal]
        type
      end
    end

    module DeregisterDelegatedAdministratorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeregisterDelegatedAdministratorOutput, context: context)
        type = Types::DeregisterDelegatedAdministratorOutput.new
        type
      end
    end

    module DescribeAccountInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAccountInput, context: context)
        type = Types::DescribeAccountInput.new
        type.account_id = params[:account_id]
        type
      end
    end

    module DescribeAccountOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAccountOutput, context: context)
        type = Types::DescribeAccountOutput.new
        type.account = Account.build(params[:account], context: "#{context}[:account]") unless params[:account].nil?
        type
      end
    end

    module DescribeCreateAccountStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCreateAccountStatusInput, context: context)
        type = Types::DescribeCreateAccountStatusInput.new
        type.create_account_request_id = params[:create_account_request_id]
        type
      end
    end

    module DescribeCreateAccountStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCreateAccountStatusOutput, context: context)
        type = Types::DescribeCreateAccountStatusOutput.new
        type.create_account_status = CreateAccountStatus.build(params[:create_account_status], context: "#{context}[:create_account_status]") unless params[:create_account_status].nil?
        type
      end
    end

    module DescribeEffectivePolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEffectivePolicyInput, context: context)
        type = Types::DescribeEffectivePolicyInput.new
        type.policy_type = params[:policy_type]
        type.target_id = params[:target_id]
        type
      end
    end

    module DescribeEffectivePolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEffectivePolicyOutput, context: context)
        type = Types::DescribeEffectivePolicyOutput.new
        type.effective_policy = EffectivePolicy.build(params[:effective_policy], context: "#{context}[:effective_policy]") unless params[:effective_policy].nil?
        type
      end
    end

    module DescribeHandshakeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeHandshakeInput, context: context)
        type = Types::DescribeHandshakeInput.new
        type.handshake_id = params[:handshake_id]
        type
      end
    end

    module DescribeHandshakeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeHandshakeOutput, context: context)
        type = Types::DescribeHandshakeOutput.new
        type.handshake = Handshake.build(params[:handshake], context: "#{context}[:handshake]") unless params[:handshake].nil?
        type
      end
    end

    module DescribeOrganizationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeOrganizationInput, context: context)
        type = Types::DescribeOrganizationInput.new
        type
      end
    end

    module DescribeOrganizationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeOrganizationOutput, context: context)
        type = Types::DescribeOrganizationOutput.new
        type.organization = Organization.build(params[:organization], context: "#{context}[:organization]") unless params[:organization].nil?
        type
      end
    end

    module DescribeOrganizationalUnitInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeOrganizationalUnitInput, context: context)
        type = Types::DescribeOrganizationalUnitInput.new
        type.organizational_unit_id = params[:organizational_unit_id]
        type
      end
    end

    module DescribeOrganizationalUnitOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeOrganizationalUnitOutput, context: context)
        type = Types::DescribeOrganizationalUnitOutput.new
        type.organizational_unit = OrganizationalUnit.build(params[:organizational_unit], context: "#{context}[:organizational_unit]") unless params[:organizational_unit].nil?
        type
      end
    end

    module DescribePolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePolicyInput, context: context)
        type = Types::DescribePolicyInput.new
        type.policy_id = params[:policy_id]
        type
      end
    end

    module DescribePolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePolicyOutput, context: context)
        type = Types::DescribePolicyOutput.new
        type.policy = Policy.build(params[:policy], context: "#{context}[:policy]") unless params[:policy].nil?
        type
      end
    end

    module DestinationParentNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DestinationParentNotFoundException, context: context)
        type = Types::DestinationParentNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module DetachPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetachPolicyInput, context: context)
        type = Types::DetachPolicyInput.new
        type.policy_id = params[:policy_id]
        type.target_id = params[:target_id]
        type
      end
    end

    module DetachPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetachPolicyOutput, context: context)
        type = Types::DetachPolicyOutput.new
        type
      end
    end

    module DisableAWSServiceAccessInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisableAWSServiceAccessInput, context: context)
        type = Types::DisableAWSServiceAccessInput.new
        type.service_principal = params[:service_principal]
        type
      end
    end

    module DisableAWSServiceAccessOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisableAWSServiceAccessOutput, context: context)
        type = Types::DisableAWSServiceAccessOutput.new
        type
      end
    end

    module DisablePolicyTypeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisablePolicyTypeInput, context: context)
        type = Types::DisablePolicyTypeInput.new
        type.root_id = params[:root_id]
        type.policy_type = params[:policy_type]
        type
      end
    end

    module DisablePolicyTypeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisablePolicyTypeOutput, context: context)
        type = Types::DisablePolicyTypeOutput.new
        type.root = Root.build(params[:root], context: "#{context}[:root]") unless params[:root].nil?
        type
      end
    end

    module DuplicateAccountException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DuplicateAccountException, context: context)
        type = Types::DuplicateAccountException.new
        type.message = params[:message]
        type
      end
    end

    module DuplicateHandshakeException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DuplicateHandshakeException, context: context)
        type = Types::DuplicateHandshakeException.new
        type.message = params[:message]
        type
      end
    end

    module DuplicateOrganizationalUnitException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DuplicateOrganizationalUnitException, context: context)
        type = Types::DuplicateOrganizationalUnitException.new
        type.message = params[:message]
        type
      end
    end

    module DuplicatePolicyAttachmentException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DuplicatePolicyAttachmentException, context: context)
        type = Types::DuplicatePolicyAttachmentException.new
        type.message = params[:message]
        type
      end
    end

    module DuplicatePolicyException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DuplicatePolicyException, context: context)
        type = Types::DuplicatePolicyException.new
        type.message = params[:message]
        type
      end
    end

    module EffectivePolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EffectivePolicy, context: context)
        type = Types::EffectivePolicy.new
        type.policy_content = params[:policy_content]
        type.last_updated_timestamp = params[:last_updated_timestamp]
        type.target_id = params[:target_id]
        type.policy_type = params[:policy_type]
        type
      end
    end

    module EffectivePolicyNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EffectivePolicyNotFoundException, context: context)
        type = Types::EffectivePolicyNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module EnableAWSServiceAccessInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableAWSServiceAccessInput, context: context)
        type = Types::EnableAWSServiceAccessInput.new
        type.service_principal = params[:service_principal]
        type
      end
    end

    module EnableAWSServiceAccessOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableAWSServiceAccessOutput, context: context)
        type = Types::EnableAWSServiceAccessOutput.new
        type
      end
    end

    module EnableAllFeaturesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableAllFeaturesInput, context: context)
        type = Types::EnableAllFeaturesInput.new
        type
      end
    end

    module EnableAllFeaturesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableAllFeaturesOutput, context: context)
        type = Types::EnableAllFeaturesOutput.new
        type.handshake = Handshake.build(params[:handshake], context: "#{context}[:handshake]") unless params[:handshake].nil?
        type
      end
    end

    module EnablePolicyTypeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnablePolicyTypeInput, context: context)
        type = Types::EnablePolicyTypeInput.new
        type.root_id = params[:root_id]
        type.policy_type = params[:policy_type]
        type
      end
    end

    module EnablePolicyTypeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnablePolicyTypeOutput, context: context)
        type = Types::EnablePolicyTypeOutput.new
        type.root = Root.build(params[:root], context: "#{context}[:root]") unless params[:root].nil?
        type
      end
    end

    module EnabledServicePrincipal
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnabledServicePrincipal, context: context)
        type = Types::EnabledServicePrincipal.new
        type.service_principal = params[:service_principal]
        type.date_enabled = params[:date_enabled]
        type
      end
    end

    module EnabledServicePrincipals
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EnabledServicePrincipal.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FinalizingOrganizationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FinalizingOrganizationException, context: context)
        type = Types::FinalizingOrganizationException.new
        type.message = params[:message]
        type
      end
    end

    module Handshake
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Handshake, context: context)
        type = Types::Handshake.new
        type.id = params[:id]
        type.arn = params[:arn]
        type.parties = HandshakeParties.build(params[:parties], context: "#{context}[:parties]") unless params[:parties].nil?
        type.state = params[:state]
        type.requested_timestamp = params[:requested_timestamp]
        type.expiration_timestamp = params[:expiration_timestamp]
        type.action = params[:action]
        type.resources = HandshakeResources.build(params[:resources], context: "#{context}[:resources]") unless params[:resources].nil?
        type
      end
    end

    module HandshakeAlreadyInStateException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HandshakeAlreadyInStateException, context: context)
        type = Types::HandshakeAlreadyInStateException.new
        type.message = params[:message]
        type
      end
    end

    module HandshakeConstraintViolationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HandshakeConstraintViolationException, context: context)
        type = Types::HandshakeConstraintViolationException.new
        type.message = params[:message]
        type.reason = params[:reason]
        type
      end
    end

    module HandshakeFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HandshakeFilter, context: context)
        type = Types::HandshakeFilter.new
        type.action_type = params[:action_type]
        type.parent_handshake_id = params[:parent_handshake_id]
        type
      end
    end

    module HandshakeNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HandshakeNotFoundException, context: context)
        type = Types::HandshakeNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module HandshakeParties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << HandshakeParty.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module HandshakeParty
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HandshakeParty, context: context)
        type = Types::HandshakeParty.new
        type.id = params[:id]
        type.type = params[:type]
        type
      end
    end

    module HandshakeResource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HandshakeResource, context: context)
        type = Types::HandshakeResource.new
        type.value = params[:value]
        type.type = params[:type]
        type.resources = HandshakeResources.build(params[:resources], context: "#{context}[:resources]") unless params[:resources].nil?
        type
      end
    end

    module HandshakeResources
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << HandshakeResource.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Handshakes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Handshake.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InvalidHandshakeTransitionException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidHandshakeTransitionException, context: context)
        type = Types::InvalidHandshakeTransitionException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidInputException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidInputException, context: context)
        type = Types::InvalidInputException.new
        type.message = params[:message]
        type.reason = params[:reason]
        type
      end
    end

    module InviteAccountToOrganizationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InviteAccountToOrganizationInput, context: context)
        type = Types::InviteAccountToOrganizationInput.new
        type.target = HandshakeParty.build(params[:target], context: "#{context}[:target]") unless params[:target].nil?
        type.notes = params[:notes]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module InviteAccountToOrganizationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InviteAccountToOrganizationOutput, context: context)
        type = Types::InviteAccountToOrganizationOutput.new
        type.handshake = Handshake.build(params[:handshake], context: "#{context}[:handshake]") unless params[:handshake].nil?
        type
      end
    end

    module LeaveOrganizationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LeaveOrganizationInput, context: context)
        type = Types::LeaveOrganizationInput.new
        type
      end
    end

    module LeaveOrganizationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LeaveOrganizationOutput, context: context)
        type = Types::LeaveOrganizationOutput.new
        type
      end
    end

    module ListAWSServiceAccessForOrganizationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAWSServiceAccessForOrganizationInput, context: context)
        type = Types::ListAWSServiceAccessForOrganizationInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListAWSServiceAccessForOrganizationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAWSServiceAccessForOrganizationOutput, context: context)
        type = Types::ListAWSServiceAccessForOrganizationOutput.new
        type.enabled_service_principals = EnabledServicePrincipals.build(params[:enabled_service_principals], context: "#{context}[:enabled_service_principals]") unless params[:enabled_service_principals].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAccountsForParentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAccountsForParentInput, context: context)
        type = Types::ListAccountsForParentInput.new
        type.parent_id = params[:parent_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListAccountsForParentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAccountsForParentOutput, context: context)
        type = Types::ListAccountsForParentOutput.new
        type.accounts = Accounts.build(params[:accounts], context: "#{context}[:accounts]") unless params[:accounts].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAccountsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAccountsInput, context: context)
        type = Types::ListAccountsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListAccountsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAccountsOutput, context: context)
        type = Types::ListAccountsOutput.new
        type.accounts = Accounts.build(params[:accounts], context: "#{context}[:accounts]") unless params[:accounts].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListChildrenInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListChildrenInput, context: context)
        type = Types::ListChildrenInput.new
        type.parent_id = params[:parent_id]
        type.child_type = params[:child_type]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListChildrenOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListChildrenOutput, context: context)
        type = Types::ListChildrenOutput.new
        type.children = Children.build(params[:children], context: "#{context}[:children]") unless params[:children].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListCreateAccountStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCreateAccountStatusInput, context: context)
        type = Types::ListCreateAccountStatusInput.new
        type.states = CreateAccountStates.build(params[:states], context: "#{context}[:states]") unless params[:states].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListCreateAccountStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCreateAccountStatusOutput, context: context)
        type = Types::ListCreateAccountStatusOutput.new
        type.create_account_statuses = CreateAccountStatuses.build(params[:create_account_statuses], context: "#{context}[:create_account_statuses]") unless params[:create_account_statuses].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDelegatedAdministratorsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDelegatedAdministratorsInput, context: context)
        type = Types::ListDelegatedAdministratorsInput.new
        type.service_principal = params[:service_principal]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListDelegatedAdministratorsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDelegatedAdministratorsOutput, context: context)
        type = Types::ListDelegatedAdministratorsOutput.new
        type.delegated_administrators = DelegatedAdministrators.build(params[:delegated_administrators], context: "#{context}[:delegated_administrators]") unless params[:delegated_administrators].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDelegatedServicesForAccountInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDelegatedServicesForAccountInput, context: context)
        type = Types::ListDelegatedServicesForAccountInput.new
        type.account_id = params[:account_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListDelegatedServicesForAccountOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDelegatedServicesForAccountOutput, context: context)
        type = Types::ListDelegatedServicesForAccountOutput.new
        type.delegated_services = DelegatedServices.build(params[:delegated_services], context: "#{context}[:delegated_services]") unless params[:delegated_services].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListHandshakesForAccountInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListHandshakesForAccountInput, context: context)
        type = Types::ListHandshakesForAccountInput.new
        type.filter = HandshakeFilter.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListHandshakesForAccountOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListHandshakesForAccountOutput, context: context)
        type = Types::ListHandshakesForAccountOutput.new
        type.handshakes = Handshakes.build(params[:handshakes], context: "#{context}[:handshakes]") unless params[:handshakes].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListHandshakesForOrganizationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListHandshakesForOrganizationInput, context: context)
        type = Types::ListHandshakesForOrganizationInput.new
        type.filter = HandshakeFilter.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListHandshakesForOrganizationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListHandshakesForOrganizationOutput, context: context)
        type = Types::ListHandshakesForOrganizationOutput.new
        type.handshakes = Handshakes.build(params[:handshakes], context: "#{context}[:handshakes]") unless params[:handshakes].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListOrganizationalUnitsForParentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListOrganizationalUnitsForParentInput, context: context)
        type = Types::ListOrganizationalUnitsForParentInput.new
        type.parent_id = params[:parent_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListOrganizationalUnitsForParentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListOrganizationalUnitsForParentOutput, context: context)
        type = Types::ListOrganizationalUnitsForParentOutput.new
        type.organizational_units = OrganizationalUnits.build(params[:organizational_units], context: "#{context}[:organizational_units]") unless params[:organizational_units].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListParentsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListParentsInput, context: context)
        type = Types::ListParentsInput.new
        type.child_id = params[:child_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListParentsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListParentsOutput, context: context)
        type = Types::ListParentsOutput.new
        type.parents = Parents.build(params[:parents], context: "#{context}[:parents]") unless params[:parents].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListPoliciesForTargetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPoliciesForTargetInput, context: context)
        type = Types::ListPoliciesForTargetInput.new
        type.target_id = params[:target_id]
        type.filter = params[:filter]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListPoliciesForTargetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPoliciesForTargetOutput, context: context)
        type = Types::ListPoliciesForTargetOutput.new
        type.policies = Policies.build(params[:policies], context: "#{context}[:policies]") unless params[:policies].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListPoliciesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPoliciesInput, context: context)
        type = Types::ListPoliciesInput.new
        type.filter = params[:filter]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListPoliciesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPoliciesOutput, context: context)
        type = Types::ListPoliciesOutput.new
        type.policies = Policies.build(params[:policies], context: "#{context}[:policies]") unless params[:policies].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListRootsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRootsInput, context: context)
        type = Types::ListRootsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListRootsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRootsOutput, context: context)
        type = Types::ListRootsOutput.new
        type.roots = Roots.build(params[:roots], context: "#{context}[:roots]") unless params[:roots].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.resource_id = params[:resource_id]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTargetsForPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTargetsForPolicyInput, context: context)
        type = Types::ListTargetsForPolicyInput.new
        type.policy_id = params[:policy_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListTargetsForPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTargetsForPolicyOutput, context: context)
        type = Types::ListTargetsForPolicyOutput.new
        type.targets = PolicyTargets.build(params[:targets], context: "#{context}[:targets]") unless params[:targets].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module MalformedPolicyDocumentException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MalformedPolicyDocumentException, context: context)
        type = Types::MalformedPolicyDocumentException.new
        type.message = params[:message]
        type
      end
    end

    module MasterCannotLeaveOrganizationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MasterCannotLeaveOrganizationException, context: context)
        type = Types::MasterCannotLeaveOrganizationException.new
        type.message = params[:message]
        type
      end
    end

    module MoveAccountInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MoveAccountInput, context: context)
        type = Types::MoveAccountInput.new
        type.account_id = params[:account_id]
        type.source_parent_id = params[:source_parent_id]
        type.destination_parent_id = params[:destination_parent_id]
        type
      end
    end

    module MoveAccountOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MoveAccountOutput, context: context)
        type = Types::MoveAccountOutput.new
        type
      end
    end

    module Organization
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Organization, context: context)
        type = Types::Organization.new
        type.id = params[:id]
        type.arn = params[:arn]
        type.feature_set = params[:feature_set]
        type.master_account_arn = params[:master_account_arn]
        type.master_account_id = params[:master_account_id]
        type.master_account_email = params[:master_account_email]
        type.available_policy_types = PolicyTypes.build(params[:available_policy_types], context: "#{context}[:available_policy_types]") unless params[:available_policy_types].nil?
        type
      end
    end

    module OrganizationNotEmptyException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OrganizationNotEmptyException, context: context)
        type = Types::OrganizationNotEmptyException.new
        type.message = params[:message]
        type
      end
    end

    module OrganizationalUnit
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OrganizationalUnit, context: context)
        type = Types::OrganizationalUnit.new
        type.id = params[:id]
        type.arn = params[:arn]
        type.name = params[:name]
        type
      end
    end

    module OrganizationalUnitNotEmptyException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OrganizationalUnitNotEmptyException, context: context)
        type = Types::OrganizationalUnitNotEmptyException.new
        type.message = params[:message]
        type
      end
    end

    module OrganizationalUnitNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OrganizationalUnitNotFoundException, context: context)
        type = Types::OrganizationalUnitNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module OrganizationalUnits
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << OrganizationalUnit.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Parent
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Parent, context: context)
        type = Types::Parent.new
        type.id = params[:id]
        type.type = params[:type]
        type
      end
    end

    module ParentNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ParentNotFoundException, context: context)
        type = Types::ParentNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module Parents
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Parent.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Policies
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PolicySummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Policy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Policy, context: context)
        type = Types::Policy.new
        type.policy_summary = PolicySummary.build(params[:policy_summary], context: "#{context}[:policy_summary]") unless params[:policy_summary].nil?
        type.content = params[:content]
        type
      end
    end

    module PolicyChangesInProgressException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PolicyChangesInProgressException, context: context)
        type = Types::PolicyChangesInProgressException.new
        type.message = params[:message]
        type
      end
    end

    module PolicyInUseException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PolicyInUseException, context: context)
        type = Types::PolicyInUseException.new
        type.message = params[:message]
        type
      end
    end

    module PolicyNotAttachedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PolicyNotAttachedException, context: context)
        type = Types::PolicyNotAttachedException.new
        type.message = params[:message]
        type
      end
    end

    module PolicyNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PolicyNotFoundException, context: context)
        type = Types::PolicyNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module PolicySummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PolicySummary, context: context)
        type = Types::PolicySummary.new
        type.id = params[:id]
        type.arn = params[:arn]
        type.name = params[:name]
        type.description = params[:description]
        type.type = params[:type]
        type.aws_managed = params[:aws_managed]
        type
      end
    end

    module PolicyTargetSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PolicyTargetSummary, context: context)
        type = Types::PolicyTargetSummary.new
        type.target_id = params[:target_id]
        type.arn = params[:arn]
        type.name = params[:name]
        type.type = params[:type]
        type
      end
    end

    module PolicyTargets
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PolicyTargetSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PolicyTypeAlreadyEnabledException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PolicyTypeAlreadyEnabledException, context: context)
        type = Types::PolicyTypeAlreadyEnabledException.new
        type.message = params[:message]
        type
      end
    end

    module PolicyTypeNotAvailableForOrganizationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PolicyTypeNotAvailableForOrganizationException, context: context)
        type = Types::PolicyTypeNotAvailableForOrganizationException.new
        type.message = params[:message]
        type
      end
    end

    module PolicyTypeNotEnabledException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PolicyTypeNotEnabledException, context: context)
        type = Types::PolicyTypeNotEnabledException.new
        type.message = params[:message]
        type
      end
    end

    module PolicyTypeSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PolicyTypeSummary, context: context)
        type = Types::PolicyTypeSummary.new
        type.type = params[:type]
        type.status = params[:status]
        type
      end
    end

    module PolicyTypes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PolicyTypeSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RegisterDelegatedAdministratorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterDelegatedAdministratorInput, context: context)
        type = Types::RegisterDelegatedAdministratorInput.new
        type.account_id = params[:account_id]
        type.service_principal = params[:service_principal]
        type
      end
    end

    module RegisterDelegatedAdministratorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterDelegatedAdministratorOutput, context: context)
        type = Types::RegisterDelegatedAdministratorOutput.new
        type
      end
    end

    module RemoveAccountFromOrganizationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveAccountFromOrganizationInput, context: context)
        type = Types::RemoveAccountFromOrganizationInput.new
        type.account_id = params[:account_id]
        type
      end
    end

    module RemoveAccountFromOrganizationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveAccountFromOrganizationOutput, context: context)
        type = Types::RemoveAccountFromOrganizationOutput.new
        type
      end
    end

    module Root
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Root, context: context)
        type = Types::Root.new
        type.id = params[:id]
        type.arn = params[:arn]
        type.name = params[:name]
        type.policy_types = PolicyTypes.build(params[:policy_types], context: "#{context}[:policy_types]") unless params[:policy_types].nil?
        type
      end
    end

    module RootNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RootNotFoundException, context: context)
        type = Types::RootNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module Roots
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Root.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ServiceException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceException, context: context)
        type = Types::ServiceException.new
        type.message = params[:message]
        type
      end
    end

    module SourceParentNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SourceParentNotFoundException, context: context)
        type = Types::SourceParentNotFoundException.new
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

    module TagKeys
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_id = params[:resource_id]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
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

    module Tags
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TargetNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TargetNotFoundException, context: context)
        type = Types::TargetNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module TooManyRequestsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyRequestsException, context: context)
        type = Types::TooManyRequestsException.new
        type.type = params[:type]
        type.message = params[:message]
        type
      end
    end

    module UnsupportedAPIEndpointException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnsupportedAPIEndpointException, context: context)
        type = Types::UnsupportedAPIEndpointException.new
        type.message = params[:message]
        type
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_id = params[:resource_id]
        type.tag_keys = TagKeys.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
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

    module UpdateOrganizationalUnitInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateOrganizationalUnitInput, context: context)
        type = Types::UpdateOrganizationalUnitInput.new
        type.organizational_unit_id = params[:organizational_unit_id]
        type.name = params[:name]
        type
      end
    end

    module UpdateOrganizationalUnitOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateOrganizationalUnitOutput, context: context)
        type = Types::UpdateOrganizationalUnitOutput.new
        type.organizational_unit = OrganizationalUnit.build(params[:organizational_unit], context: "#{context}[:organizational_unit]") unless params[:organizational_unit].nil?
        type
      end
    end

    module UpdatePolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePolicyInput, context: context)
        type = Types::UpdatePolicyInput.new
        type.policy_id = params[:policy_id]
        type.name = params[:name]
        type.description = params[:description]
        type.content = params[:content]
        type
      end
    end

    module UpdatePolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePolicyOutput, context: context)
        type = Types::UpdatePolicyOutput.new
        type.policy = Policy.build(params[:policy], context: "#{context}[:policy]") unless params[:policy].nil?
        type
      end
    end

  end
end
