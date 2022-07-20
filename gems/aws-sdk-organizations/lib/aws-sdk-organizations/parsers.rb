# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Organizations
  module Parsers

    # Operation Parser for AcceptHandshake
    class AcceptHandshake
      def self.parse(http_resp)
        data = Types::AcceptHandshakeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.handshake = (Parsers::Handshake.parse(map['Handshake']) unless map['Handshake'].nil?)
        data
      end
    end

    class Handshake
      def self.parse(map)
        data = Types::Handshake.new
        data.id = map['Id']
        data.arn = map['Arn']
        data.parties = (Parsers::HandshakeParties.parse(map['Parties']) unless map['Parties'].nil?)
        data.state = map['State']
        data.requested_timestamp = Time.at(map['RequestedTimestamp'].to_i) if map['RequestedTimestamp']
        data.expiration_timestamp = Time.at(map['ExpirationTimestamp'].to_i) if map['ExpirationTimestamp']
        data.action = map['Action']
        data.resources = (Parsers::HandshakeResources.parse(map['Resources']) unless map['Resources'].nil?)
        return data
      end
    end

    class HandshakeResources
      def self.parse(list)
        list.map do |value|
          Parsers::HandshakeResource.parse(value) unless value.nil?
        end
      end
    end

    class HandshakeResource
      def self.parse(map)
        data = Types::HandshakeResource.new
        data.value = map['Value']
        data.type = map['Type']
        data.resources = (Parsers::HandshakeResources.parse(map['Resources']) unless map['Resources'].nil?)
        return data
      end
    end

    class HandshakeParties
      def self.parse(list)
        list.map do |value|
          Parsers::HandshakeParty.parse(value) unless value.nil?
        end
      end
    end

    class HandshakeParty
      def self.parse(map)
        data = Types::HandshakeParty.new
        data.id = map['Id']
        data.type = map['Type']
        return data
      end
    end

    # Error Parser for HandshakeNotFoundException
    class HandshakeNotFoundException
      def self.parse(http_resp)
        data = Types::HandshakeNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for AccessDeniedForDependencyException
    class AccessDeniedForDependencyException
      def self.parse(http_resp)
        data = Types::AccessDeniedForDependencyException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.reason = map['Reason']
        data
      end
    end

    # Error Parser for HandshakeConstraintViolationException
    class HandshakeConstraintViolationException
      def self.parse(http_resp)
        data = Types::HandshakeConstraintViolationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.reason = map['Reason']
        data
      end
    end

    # Error Parser for HandshakeAlreadyInStateException
    class HandshakeAlreadyInStateException
      def self.parse(http_resp)
        data = Types::HandshakeAlreadyInStateException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidInputException
    class InvalidInputException
      def self.parse(http_resp)
        data = Types::InvalidInputException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.reason = map['Reason']
        data
      end
    end

    # Error Parser for AWSOrganizationsNotInUseException
    class AWSOrganizationsNotInUseException
      def self.parse(http_resp)
        data = Types::AWSOrganizationsNotInUseException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ConcurrentModificationException
    class ConcurrentModificationException
      def self.parse(http_resp)
        data = Types::ConcurrentModificationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ServiceException
    class ServiceException
      def self.parse(http_resp)
        data = Types::ServiceException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for TooManyRequestsException
    class TooManyRequestsException
      def self.parse(http_resp)
        data = Types::TooManyRequestsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.type = map['Type']
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidHandshakeTransitionException
    class InvalidHandshakeTransitionException
      def self.parse(http_resp)
        data = Types::InvalidHandshakeTransitionException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for AttachPolicy
    class AttachPolicy
      def self.parse(http_resp)
        data = Types::AttachPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for DuplicatePolicyAttachmentException
    class DuplicatePolicyAttachmentException
      def self.parse(http_resp)
        data = Types::DuplicatePolicyAttachmentException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ConstraintViolationException
    class ConstraintViolationException
      def self.parse(http_resp)
        data = Types::ConstraintViolationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.reason = map['Reason']
        data
      end
    end

    # Error Parser for PolicyTypeNotEnabledException
    class PolicyTypeNotEnabledException
      def self.parse(http_resp)
        data = Types::PolicyTypeNotEnabledException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for TargetNotFoundException
    class TargetNotFoundException
      def self.parse(http_resp)
        data = Types::TargetNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for UnsupportedAPIEndpointException
    class UnsupportedAPIEndpointException
      def self.parse(http_resp)
        data = Types::UnsupportedAPIEndpointException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for PolicyChangesInProgressException
    class PolicyChangesInProgressException
      def self.parse(http_resp)
        data = Types::PolicyChangesInProgressException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for PolicyNotFoundException
    class PolicyNotFoundException
      def self.parse(http_resp)
        data = Types::PolicyNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CancelHandshake
    class CancelHandshake
      def self.parse(http_resp)
        data = Types::CancelHandshakeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.handshake = (Parsers::Handshake.parse(map['Handshake']) unless map['Handshake'].nil?)
        data
      end
    end

    # Operation Parser for CloseAccount
    class CloseAccount
      def self.parse(http_resp)
        data = Types::CloseAccountOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for AccountAlreadyClosedException
    class AccountAlreadyClosedException
      def self.parse(http_resp)
        data = Types::AccountAlreadyClosedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for AccountNotFoundException
    class AccountNotFoundException
      def self.parse(http_resp)
        data = Types::AccountNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateAccount
    class CreateAccount
      def self.parse(http_resp)
        data = Types::CreateAccountOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.create_account_status = (Parsers::CreateAccountStatus.parse(map['CreateAccountStatus']) unless map['CreateAccountStatus'].nil?)
        data
      end
    end

    class CreateAccountStatus
      def self.parse(map)
        data = Types::CreateAccountStatus.new
        data.id = map['Id']
        data.account_name = map['AccountName']
        data.state = map['State']
        data.requested_timestamp = Time.at(map['RequestedTimestamp'].to_i) if map['RequestedTimestamp']
        data.completed_timestamp = Time.at(map['CompletedTimestamp'].to_i) if map['CompletedTimestamp']
        data.account_id = map['AccountId']
        data.gov_cloud_account_id = map['GovCloudAccountId']
        data.failure_reason = map['FailureReason']
        return data
      end
    end

    # Error Parser for FinalizingOrganizationException
    class FinalizingOrganizationException
      def self.parse(http_resp)
        data = Types::FinalizingOrganizationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateGovCloudAccount
    class CreateGovCloudAccount
      def self.parse(http_resp)
        data = Types::CreateGovCloudAccountOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.create_account_status = (Parsers::CreateAccountStatus.parse(map['CreateAccountStatus']) unless map['CreateAccountStatus'].nil?)
        data
      end
    end

    # Operation Parser for CreateOrganization
    class CreateOrganization
      def self.parse(http_resp)
        data = Types::CreateOrganizationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.organization = (Parsers::Organization.parse(map['Organization']) unless map['Organization'].nil?)
        data
      end
    end

    class Organization
      def self.parse(map)
        data = Types::Organization.new
        data.id = map['Id']
        data.arn = map['Arn']
        data.feature_set = map['FeatureSet']
        data.master_account_arn = map['MasterAccountArn']
        data.master_account_id = map['MasterAccountId']
        data.master_account_email = map['MasterAccountEmail']
        data.available_policy_types = (Parsers::PolicyTypes.parse(map['AvailablePolicyTypes']) unless map['AvailablePolicyTypes'].nil?)
        return data
      end
    end

    class PolicyTypes
      def self.parse(list)
        list.map do |value|
          Parsers::PolicyTypeSummary.parse(value) unless value.nil?
        end
      end
    end

    class PolicyTypeSummary
      def self.parse(map)
        data = Types::PolicyTypeSummary.new
        data.type = map['Type']
        data.status = map['Status']
        return data
      end
    end

    # Error Parser for AlreadyInOrganizationException
    class AlreadyInOrganizationException
      def self.parse(http_resp)
        data = Types::AlreadyInOrganizationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateOrganizationalUnit
    class CreateOrganizationalUnit
      def self.parse(http_resp)
        data = Types::CreateOrganizationalUnitOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.organizational_unit = (Parsers::OrganizationalUnit.parse(map['OrganizationalUnit']) unless map['OrganizationalUnit'].nil?)
        data
      end
    end

    class OrganizationalUnit
      def self.parse(map)
        data = Types::OrganizationalUnit.new
        data.id = map['Id']
        data.arn = map['Arn']
        data.name = map['Name']
        return data
      end
    end

    # Error Parser for DuplicateOrganizationalUnitException
    class DuplicateOrganizationalUnitException
      def self.parse(http_resp)
        data = Types::DuplicateOrganizationalUnitException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ParentNotFoundException
    class ParentNotFoundException
      def self.parse(http_resp)
        data = Types::ParentNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreatePolicy
    class CreatePolicy
      def self.parse(http_resp)
        data = Types::CreatePolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.policy = (Parsers::Policy.parse(map['Policy']) unless map['Policy'].nil?)
        data
      end
    end

    class Policy
      def self.parse(map)
        data = Types::Policy.new
        data.policy_summary = (Parsers::PolicySummary.parse(map['PolicySummary']) unless map['PolicySummary'].nil?)
        data.content = map['Content']
        return data
      end
    end

    class PolicySummary
      def self.parse(map)
        data = Types::PolicySummary.new
        data.id = map['Id']
        data.arn = map['Arn']
        data.name = map['Name']
        data.description = map['Description']
        data.type = map['Type']
        data.aws_managed = map['AwsManaged']
        return data
      end
    end

    # Error Parser for PolicyTypeNotAvailableForOrganizationException
    class PolicyTypeNotAvailableForOrganizationException
      def self.parse(http_resp)
        data = Types::PolicyTypeNotAvailableForOrganizationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for DuplicatePolicyException
    class DuplicatePolicyException
      def self.parse(http_resp)
        data = Types::DuplicatePolicyException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for MalformedPolicyDocumentException
    class MalformedPolicyDocumentException
      def self.parse(http_resp)
        data = Types::MalformedPolicyDocumentException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DeclineHandshake
    class DeclineHandshake
      def self.parse(http_resp)
        data = Types::DeclineHandshakeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.handshake = (Parsers::Handshake.parse(map['Handshake']) unless map['Handshake'].nil?)
        data
      end
    end

    # Operation Parser for DeleteOrganization
    class DeleteOrganization
      def self.parse(http_resp)
        data = Types::DeleteOrganizationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for OrganizationNotEmptyException
    class OrganizationNotEmptyException
      def self.parse(http_resp)
        data = Types::OrganizationNotEmptyException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DeleteOrganizationalUnit
    class DeleteOrganizationalUnit
      def self.parse(http_resp)
        data = Types::DeleteOrganizationalUnitOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for OrganizationalUnitNotEmptyException
    class OrganizationalUnitNotEmptyException
      def self.parse(http_resp)
        data = Types::OrganizationalUnitNotEmptyException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for OrganizationalUnitNotFoundException
    class OrganizationalUnitNotFoundException
      def self.parse(http_resp)
        data = Types::OrganizationalUnitNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DeletePolicy
    class DeletePolicy
      def self.parse(http_resp)
        data = Types::DeletePolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for PolicyInUseException
    class PolicyInUseException
      def self.parse(http_resp)
        data = Types::PolicyInUseException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DeregisterDelegatedAdministrator
    class DeregisterDelegatedAdministrator
      def self.parse(http_resp)
        data = Types::DeregisterDelegatedAdministratorOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for AccountNotRegisteredException
    class AccountNotRegisteredException
      def self.parse(http_resp)
        data = Types::AccountNotRegisteredException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DescribeAccount
    class DescribeAccount
      def self.parse(http_resp)
        data = Types::DescribeAccountOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.account = (Parsers::Account.parse(map['Account']) unless map['Account'].nil?)
        data
      end
    end

    class Account
      def self.parse(map)
        data = Types::Account.new
        data.id = map['Id']
        data.arn = map['Arn']
        data.email = map['Email']
        data.name = map['Name']
        data.status = map['Status']
        data.joined_method = map['JoinedMethod']
        data.joined_timestamp = Time.at(map['JoinedTimestamp'].to_i) if map['JoinedTimestamp']
        return data
      end
    end

    # Operation Parser for DescribeCreateAccountStatus
    class DescribeCreateAccountStatus
      def self.parse(http_resp)
        data = Types::DescribeCreateAccountStatusOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.create_account_status = (Parsers::CreateAccountStatus.parse(map['CreateAccountStatus']) unless map['CreateAccountStatus'].nil?)
        data
      end
    end

    # Error Parser for CreateAccountStatusNotFoundException
    class CreateAccountStatusNotFoundException
      def self.parse(http_resp)
        data = Types::CreateAccountStatusNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DescribeEffectivePolicy
    class DescribeEffectivePolicy
      def self.parse(http_resp)
        data = Types::DescribeEffectivePolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.effective_policy = (Parsers::EffectivePolicy.parse(map['EffectivePolicy']) unless map['EffectivePolicy'].nil?)
        data
      end
    end

    class EffectivePolicy
      def self.parse(map)
        data = Types::EffectivePolicy.new
        data.policy_content = map['PolicyContent']
        data.last_updated_timestamp = Time.at(map['LastUpdatedTimestamp'].to_i) if map['LastUpdatedTimestamp']
        data.target_id = map['TargetId']
        data.policy_type = map['PolicyType']
        return data
      end
    end

    # Error Parser for EffectivePolicyNotFoundException
    class EffectivePolicyNotFoundException
      def self.parse(http_resp)
        data = Types::EffectivePolicyNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DescribeHandshake
    class DescribeHandshake
      def self.parse(http_resp)
        data = Types::DescribeHandshakeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.handshake = (Parsers::Handshake.parse(map['Handshake']) unless map['Handshake'].nil?)
        data
      end
    end

    # Operation Parser for DescribeOrganization
    class DescribeOrganization
      def self.parse(http_resp)
        data = Types::DescribeOrganizationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.organization = (Parsers::Organization.parse(map['Organization']) unless map['Organization'].nil?)
        data
      end
    end

    # Operation Parser for DescribeOrganizationalUnit
    class DescribeOrganizationalUnit
      def self.parse(http_resp)
        data = Types::DescribeOrganizationalUnitOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.organizational_unit = (Parsers::OrganizationalUnit.parse(map['OrganizationalUnit']) unless map['OrganizationalUnit'].nil?)
        data
      end
    end

    # Operation Parser for DescribePolicy
    class DescribePolicy
      def self.parse(http_resp)
        data = Types::DescribePolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.policy = (Parsers::Policy.parse(map['Policy']) unless map['Policy'].nil?)
        data
      end
    end

    # Operation Parser for DetachPolicy
    class DetachPolicy
      def self.parse(http_resp)
        data = Types::DetachPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for PolicyNotAttachedException
    class PolicyNotAttachedException
      def self.parse(http_resp)
        data = Types::PolicyNotAttachedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DisableAWSServiceAccess
    class DisableAWSServiceAccess
      def self.parse(http_resp)
        data = Types::DisableAWSServiceAccessOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DisablePolicyType
    class DisablePolicyType
      def self.parse(http_resp)
        data = Types::DisablePolicyTypeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.root = (Parsers::Root.parse(map['Root']) unless map['Root'].nil?)
        data
      end
    end

    class Root
      def self.parse(map)
        data = Types::Root.new
        data.id = map['Id']
        data.arn = map['Arn']
        data.name = map['Name']
        data.policy_types = (Parsers::PolicyTypes.parse(map['PolicyTypes']) unless map['PolicyTypes'].nil?)
        return data
      end
    end

    # Error Parser for RootNotFoundException
    class RootNotFoundException
      def self.parse(http_resp)
        data = Types::RootNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for EnableAWSServiceAccess
    class EnableAWSServiceAccess
      def self.parse(http_resp)
        data = Types::EnableAWSServiceAccessOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for EnableAllFeatures
    class EnableAllFeatures
      def self.parse(http_resp)
        data = Types::EnableAllFeaturesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.handshake = (Parsers::Handshake.parse(map['Handshake']) unless map['Handshake'].nil?)
        data
      end
    end

    # Operation Parser for EnablePolicyType
    class EnablePolicyType
      def self.parse(http_resp)
        data = Types::EnablePolicyTypeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.root = (Parsers::Root.parse(map['Root']) unless map['Root'].nil?)
        data
      end
    end

    # Error Parser for PolicyTypeAlreadyEnabledException
    class PolicyTypeAlreadyEnabledException
      def self.parse(http_resp)
        data = Types::PolicyTypeAlreadyEnabledException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for InviteAccountToOrganization
    class InviteAccountToOrganization
      def self.parse(http_resp)
        data = Types::InviteAccountToOrganizationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.handshake = (Parsers::Handshake.parse(map['Handshake']) unless map['Handshake'].nil?)
        data
      end
    end

    # Error Parser for DuplicateHandshakeException
    class DuplicateHandshakeException
      def self.parse(http_resp)
        data = Types::DuplicateHandshakeException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for AccountOwnerNotVerifiedException
    class AccountOwnerNotVerifiedException
      def self.parse(http_resp)
        data = Types::AccountOwnerNotVerifiedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for LeaveOrganization
    class LeaveOrganization
      def self.parse(http_resp)
        data = Types::LeaveOrganizationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for MasterCannotLeaveOrganizationException
    class MasterCannotLeaveOrganizationException
      def self.parse(http_resp)
        data = Types::MasterCannotLeaveOrganizationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for ListAWSServiceAccessForOrganization
    class ListAWSServiceAccessForOrganization
      def self.parse(http_resp)
        data = Types::ListAWSServiceAccessForOrganizationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.enabled_service_principals = (Parsers::EnabledServicePrincipals.parse(map['EnabledServicePrincipals']) unless map['EnabledServicePrincipals'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class EnabledServicePrincipals
      def self.parse(list)
        list.map do |value|
          Parsers::EnabledServicePrincipal.parse(value) unless value.nil?
        end
      end
    end

    class EnabledServicePrincipal
      def self.parse(map)
        data = Types::EnabledServicePrincipal.new
        data.service_principal = map['ServicePrincipal']
        data.date_enabled = Time.at(map['DateEnabled'].to_i) if map['DateEnabled']
        return data
      end
    end

    # Operation Parser for ListAccounts
    class ListAccounts
      def self.parse(http_resp)
        data = Types::ListAccountsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.accounts = (Parsers::Accounts.parse(map['Accounts']) unless map['Accounts'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class Accounts
      def self.parse(list)
        list.map do |value|
          Parsers::Account.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListAccountsForParent
    class ListAccountsForParent
      def self.parse(http_resp)
        data = Types::ListAccountsForParentOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.accounts = (Parsers::Accounts.parse(map['Accounts']) unless map['Accounts'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    # Operation Parser for ListChildren
    class ListChildren
      def self.parse(http_resp)
        data = Types::ListChildrenOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.children = (Parsers::Children.parse(map['Children']) unless map['Children'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class Children
      def self.parse(list)
        list.map do |value|
          Parsers::Child.parse(value) unless value.nil?
        end
      end
    end

    class Child
      def self.parse(map)
        data = Types::Child.new
        data.id = map['Id']
        data.type = map['Type']
        return data
      end
    end

    # Operation Parser for ListCreateAccountStatus
    class ListCreateAccountStatus
      def self.parse(http_resp)
        data = Types::ListCreateAccountStatusOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.create_account_statuses = (Parsers::CreateAccountStatuses.parse(map['CreateAccountStatuses']) unless map['CreateAccountStatuses'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class CreateAccountStatuses
      def self.parse(list)
        list.map do |value|
          Parsers::CreateAccountStatus.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListDelegatedAdministrators
    class ListDelegatedAdministrators
      def self.parse(http_resp)
        data = Types::ListDelegatedAdministratorsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.delegated_administrators = (Parsers::DelegatedAdministrators.parse(map['DelegatedAdministrators']) unless map['DelegatedAdministrators'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class DelegatedAdministrators
      def self.parse(list)
        list.map do |value|
          Parsers::DelegatedAdministrator.parse(value) unless value.nil?
        end
      end
    end

    class DelegatedAdministrator
      def self.parse(map)
        data = Types::DelegatedAdministrator.new
        data.id = map['Id']
        data.arn = map['Arn']
        data.email = map['Email']
        data.name = map['Name']
        data.status = map['Status']
        data.joined_method = map['JoinedMethod']
        data.joined_timestamp = Time.at(map['JoinedTimestamp'].to_i) if map['JoinedTimestamp']
        data.delegation_enabled_date = Time.at(map['DelegationEnabledDate'].to_i) if map['DelegationEnabledDate']
        return data
      end
    end

    # Operation Parser for ListDelegatedServicesForAccount
    class ListDelegatedServicesForAccount
      def self.parse(http_resp)
        data = Types::ListDelegatedServicesForAccountOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.delegated_services = (Parsers::DelegatedServices.parse(map['DelegatedServices']) unless map['DelegatedServices'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class DelegatedServices
      def self.parse(list)
        list.map do |value|
          Parsers::DelegatedService.parse(value) unless value.nil?
        end
      end
    end

    class DelegatedService
      def self.parse(map)
        data = Types::DelegatedService.new
        data.service_principal = map['ServicePrincipal']
        data.delegation_enabled_date = Time.at(map['DelegationEnabledDate'].to_i) if map['DelegationEnabledDate']
        return data
      end
    end

    # Operation Parser for ListHandshakesForAccount
    class ListHandshakesForAccount
      def self.parse(http_resp)
        data = Types::ListHandshakesForAccountOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.handshakes = (Parsers::Handshakes.parse(map['Handshakes']) unless map['Handshakes'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class Handshakes
      def self.parse(list)
        list.map do |value|
          Parsers::Handshake.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListHandshakesForOrganization
    class ListHandshakesForOrganization
      def self.parse(http_resp)
        data = Types::ListHandshakesForOrganizationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.handshakes = (Parsers::Handshakes.parse(map['Handshakes']) unless map['Handshakes'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    # Operation Parser for ListOrganizationalUnitsForParent
    class ListOrganizationalUnitsForParent
      def self.parse(http_resp)
        data = Types::ListOrganizationalUnitsForParentOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.organizational_units = (Parsers::OrganizationalUnits.parse(map['OrganizationalUnits']) unless map['OrganizationalUnits'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class OrganizationalUnits
      def self.parse(list)
        list.map do |value|
          Parsers::OrganizationalUnit.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListParents
    class ListParents
      def self.parse(http_resp)
        data = Types::ListParentsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.parents = (Parsers::Parents.parse(map['Parents']) unless map['Parents'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class Parents
      def self.parse(list)
        list.map do |value|
          Parsers::Parent.parse(value) unless value.nil?
        end
      end
    end

    class Parent
      def self.parse(map)
        data = Types::Parent.new
        data.id = map['Id']
        data.type = map['Type']
        return data
      end
    end

    # Error Parser for ChildNotFoundException
    class ChildNotFoundException
      def self.parse(http_resp)
        data = Types::ChildNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for ListPolicies
    class ListPolicies
      def self.parse(http_resp)
        data = Types::ListPoliciesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.policies = (Parsers::Policies.parse(map['Policies']) unless map['Policies'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class Policies
      def self.parse(list)
        list.map do |value|
          Parsers::PolicySummary.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListPoliciesForTarget
    class ListPoliciesForTarget
      def self.parse(http_resp)
        data = Types::ListPoliciesForTargetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.policies = (Parsers::Policies.parse(map['Policies']) unless map['Policies'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    # Operation Parser for ListRoots
    class ListRoots
      def self.parse(http_resp)
        data = Types::ListRootsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.roots = (Parsers::Roots.parse(map['Roots']) unless map['Roots'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class Roots
      def self.parse(list)
        list.map do |value|
          Parsers::Root.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tags = (Parsers::Tags.parse(map['Tags']) unless map['Tags'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class Tags
      def self.parse(list)
        list.map do |value|
          Parsers::Tag.parse(value) unless value.nil?
        end
      end
    end

    class Tag
      def self.parse(map)
        data = Types::Tag.new
        data.key = map['Key']
        data.value = map['Value']
        return data
      end
    end

    # Operation Parser for ListTargetsForPolicy
    class ListTargetsForPolicy
      def self.parse(http_resp)
        data = Types::ListTargetsForPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.targets = (Parsers::PolicyTargets.parse(map['Targets']) unless map['Targets'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class PolicyTargets
      def self.parse(list)
        list.map do |value|
          Parsers::PolicyTargetSummary.parse(value) unless value.nil?
        end
      end
    end

    class PolicyTargetSummary
      def self.parse(map)
        data = Types::PolicyTargetSummary.new
        data.target_id = map['TargetId']
        data.arn = map['Arn']
        data.name = map['Name']
        data.type = map['Type']
        return data
      end
    end

    # Operation Parser for MoveAccount
    class MoveAccount
      def self.parse(http_resp)
        data = Types::MoveAccountOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for SourceParentNotFoundException
    class SourceParentNotFoundException
      def self.parse(http_resp)
        data = Types::SourceParentNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for DestinationParentNotFoundException
    class DestinationParentNotFoundException
      def self.parse(http_resp)
        data = Types::DestinationParentNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for DuplicateAccountException
    class DuplicateAccountException
      def self.parse(http_resp)
        data = Types::DuplicateAccountException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for RegisterDelegatedAdministrator
    class RegisterDelegatedAdministrator
      def self.parse(http_resp)
        data = Types::RegisterDelegatedAdministratorOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for AccountAlreadyRegisteredException
    class AccountAlreadyRegisteredException
      def self.parse(http_resp)
        data = Types::AccountAlreadyRegisteredException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for RemoveAccountFromOrganization
    class RemoveAccountFromOrganization
      def self.parse(http_resp)
        data = Types::RemoveAccountFromOrganizationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateOrganizationalUnit
    class UpdateOrganizationalUnit
      def self.parse(http_resp)
        data = Types::UpdateOrganizationalUnitOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.organizational_unit = (Parsers::OrganizationalUnit.parse(map['OrganizationalUnit']) unless map['OrganizationalUnit'].nil?)
        data
      end
    end

    # Operation Parser for UpdatePolicy
    class UpdatePolicy
      def self.parse(http_resp)
        data = Types::UpdatePolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.policy = (Parsers::Policy.parse(map['Policy']) unless map['Policy'].nil?)
        data
      end
    end
  end
end
