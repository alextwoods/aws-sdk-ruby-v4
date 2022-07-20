# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::Organizations
  module Stubs

    # Operation Stubber for AcceptHandshake
    class AcceptHandshake
      def self.default(visited=[])
        {
          handshake: Handshake.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Handshake'] = Handshake.stub(stub[:handshake]) unless stub[:handshake].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Handshake
    class Handshake
      def self.default(visited=[])
        return nil if visited.include?('Handshake')
        visited = visited + ['Handshake']
        {
          id: 'id',
          arn: 'arn',
          parties: HandshakeParties.default(visited),
          state: 'state',
          requested_timestamp: Time.now,
          expiration_timestamp: Time.now,
          action: 'action',
          resources: HandshakeResources.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Handshake.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Parties'] = HandshakeParties.stub(stub[:parties]) unless stub[:parties].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['RequestedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:requested_timestamp]).to_i unless stub[:requested_timestamp].nil?
        data['ExpirationTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:expiration_timestamp]).to_i unless stub[:expiration_timestamp].nil?
        data['Action'] = stub[:action] unless stub[:action].nil?
        data['Resources'] = HandshakeResources.stub(stub[:resources]) unless stub[:resources].nil?
        data
      end
    end

    # List Stubber for HandshakeResources
    class HandshakeResources
      def self.default(visited=[])
        return nil if visited.include?('HandshakeResources')
        visited = visited + ['HandshakeResources']
        [
          HandshakeResource.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << HandshakeResource.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for HandshakeResource
    class HandshakeResource
      def self.default(visited=[])
        return nil if visited.include?('HandshakeResource')
        visited = visited + ['HandshakeResource']
        {
          value: 'value',
          type: 'type',
          resources: HandshakeResources.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::HandshakeResource.new
        data = {}
        data['Value'] = stub[:value] unless stub[:value].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Resources'] = HandshakeResources.stub(stub[:resources]) unless stub[:resources].nil?
        data
      end
    end

    # List Stubber for HandshakeParties
    class HandshakeParties
      def self.default(visited=[])
        return nil if visited.include?('HandshakeParties')
        visited = visited + ['HandshakeParties']
        [
          HandshakeParty.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << HandshakeParty.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for HandshakeParty
    class HandshakeParty
      def self.default(visited=[])
        return nil if visited.include?('HandshakeParty')
        visited = visited + ['HandshakeParty']
        {
          id: 'id',
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::HandshakeParty.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # Operation Stubber for AttachPolicy
    class AttachPolicy
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CancelHandshake
    class CancelHandshake
      def self.default(visited=[])
        {
          handshake: Handshake.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Handshake'] = Handshake.stub(stub[:handshake]) unless stub[:handshake].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CloseAccount
    class CloseAccount
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateAccount
    class CreateAccount
      def self.default(visited=[])
        {
          create_account_status: CreateAccountStatus.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['CreateAccountStatus'] = CreateAccountStatus.stub(stub[:create_account_status]) unless stub[:create_account_status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for CreateAccountStatus
    class CreateAccountStatus
      def self.default(visited=[])
        return nil if visited.include?('CreateAccountStatus')
        visited = visited + ['CreateAccountStatus']
        {
          id: 'id',
          account_name: 'account_name',
          state: 'state',
          requested_timestamp: Time.now,
          completed_timestamp: Time.now,
          account_id: 'account_id',
          gov_cloud_account_id: 'gov_cloud_account_id',
          failure_reason: 'failure_reason',
        }
      end

      def self.stub(stub)
        stub ||= Types::CreateAccountStatus.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['AccountName'] = stub[:account_name] unless stub[:account_name].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['RequestedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:requested_timestamp]).to_i unless stub[:requested_timestamp].nil?
        data['CompletedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:completed_timestamp]).to_i unless stub[:completed_timestamp].nil?
        data['AccountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['GovCloudAccountId'] = stub[:gov_cloud_account_id] unless stub[:gov_cloud_account_id].nil?
        data['FailureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data
      end
    end

    # Operation Stubber for CreateGovCloudAccount
    class CreateGovCloudAccount
      def self.default(visited=[])
        {
          create_account_status: CreateAccountStatus.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['CreateAccountStatus'] = CreateAccountStatus.stub(stub[:create_account_status]) unless stub[:create_account_status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateOrganization
    class CreateOrganization
      def self.default(visited=[])
        {
          organization: Organization.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Organization'] = Organization.stub(stub[:organization]) unless stub[:organization].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Organization
    class Organization
      def self.default(visited=[])
        return nil if visited.include?('Organization')
        visited = visited + ['Organization']
        {
          id: 'id',
          arn: 'arn',
          feature_set: 'feature_set',
          master_account_arn: 'master_account_arn',
          master_account_id: 'master_account_id',
          master_account_email: 'master_account_email',
          available_policy_types: PolicyTypes.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Organization.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['FeatureSet'] = stub[:feature_set] unless stub[:feature_set].nil?
        data['MasterAccountArn'] = stub[:master_account_arn] unless stub[:master_account_arn].nil?
        data['MasterAccountId'] = stub[:master_account_id] unless stub[:master_account_id].nil?
        data['MasterAccountEmail'] = stub[:master_account_email] unless stub[:master_account_email].nil?
        data['AvailablePolicyTypes'] = PolicyTypes.stub(stub[:available_policy_types]) unless stub[:available_policy_types].nil?
        data
      end
    end

    # List Stubber for PolicyTypes
    class PolicyTypes
      def self.default(visited=[])
        return nil if visited.include?('PolicyTypes')
        visited = visited + ['PolicyTypes']
        [
          PolicyTypeSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << PolicyTypeSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PolicyTypeSummary
    class PolicyTypeSummary
      def self.default(visited=[])
        return nil if visited.include?('PolicyTypeSummary')
        visited = visited + ['PolicyTypeSummary']
        {
          type: 'type',
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::PolicyTypeSummary.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # Operation Stubber for CreateOrganizationalUnit
    class CreateOrganizationalUnit
      def self.default(visited=[])
        {
          organizational_unit: OrganizationalUnit.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['OrganizationalUnit'] = OrganizationalUnit.stub(stub[:organizational_unit]) unless stub[:organizational_unit].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for OrganizationalUnit
    class OrganizationalUnit
      def self.default(visited=[])
        return nil if visited.include?('OrganizationalUnit')
        visited = visited + ['OrganizationalUnit']
        {
          id: 'id',
          arn: 'arn',
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::OrganizationalUnit.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # Operation Stubber for CreatePolicy
    class CreatePolicy
      def self.default(visited=[])
        {
          policy: Policy.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Policy'] = Policy.stub(stub[:policy]) unless stub[:policy].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Policy
    class Policy
      def self.default(visited=[])
        return nil if visited.include?('Policy')
        visited = visited + ['Policy']
        {
          policy_summary: PolicySummary.default(visited),
          content: 'content',
        }
      end

      def self.stub(stub)
        stub ||= Types::Policy.new
        data = {}
        data['PolicySummary'] = PolicySummary.stub(stub[:policy_summary]) unless stub[:policy_summary].nil?
        data['Content'] = stub[:content] unless stub[:content].nil?
        data
      end
    end

    # Structure Stubber for PolicySummary
    class PolicySummary
      def self.default(visited=[])
        return nil if visited.include?('PolicySummary')
        visited = visited + ['PolicySummary']
        {
          id: 'id',
          arn: 'arn',
          name: 'name',
          description: 'description',
          type: 'type',
          aws_managed: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::PolicySummary.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['AwsManaged'] = stub[:aws_managed] unless stub[:aws_managed].nil?
        data
      end
    end

    # Operation Stubber for DeclineHandshake
    class DeclineHandshake
      def self.default(visited=[])
        {
          handshake: Handshake.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Handshake'] = Handshake.stub(stub[:handshake]) unless stub[:handshake].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteOrganization
    class DeleteOrganization
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteOrganizationalUnit
    class DeleteOrganizationalUnit
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeletePolicy
    class DeletePolicy
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeregisterDelegatedAdministrator
    class DeregisterDelegatedAdministrator
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeAccount
    class DescribeAccount
      def self.default(visited=[])
        {
          account: Account.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Account'] = Account.stub(stub[:account]) unless stub[:account].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Account
    class Account
      def self.default(visited=[])
        return nil if visited.include?('Account')
        visited = visited + ['Account']
        {
          id: 'id',
          arn: 'arn',
          email: 'email',
          name: 'name',
          status: 'status',
          joined_method: 'joined_method',
          joined_timestamp: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::Account.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Email'] = stub[:email] unless stub[:email].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['JoinedMethod'] = stub[:joined_method] unless stub[:joined_method].nil?
        data['JoinedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:joined_timestamp]).to_i unless stub[:joined_timestamp].nil?
        data
      end
    end

    # Operation Stubber for DescribeCreateAccountStatus
    class DescribeCreateAccountStatus
      def self.default(visited=[])
        {
          create_account_status: CreateAccountStatus.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['CreateAccountStatus'] = CreateAccountStatus.stub(stub[:create_account_status]) unless stub[:create_account_status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeEffectivePolicy
    class DescribeEffectivePolicy
      def self.default(visited=[])
        {
          effective_policy: EffectivePolicy.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['EffectivePolicy'] = EffectivePolicy.stub(stub[:effective_policy]) unless stub[:effective_policy].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for EffectivePolicy
    class EffectivePolicy
      def self.default(visited=[])
        return nil if visited.include?('EffectivePolicy')
        visited = visited + ['EffectivePolicy']
        {
          policy_content: 'policy_content',
          last_updated_timestamp: Time.now,
          target_id: 'target_id',
          policy_type: 'policy_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::EffectivePolicy.new
        data = {}
        data['PolicyContent'] = stub[:policy_content] unless stub[:policy_content].nil?
        data['LastUpdatedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_timestamp]).to_i unless stub[:last_updated_timestamp].nil?
        data['TargetId'] = stub[:target_id] unless stub[:target_id].nil?
        data['PolicyType'] = stub[:policy_type] unless stub[:policy_type].nil?
        data
      end
    end

    # Operation Stubber for DescribeHandshake
    class DescribeHandshake
      def self.default(visited=[])
        {
          handshake: Handshake.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Handshake'] = Handshake.stub(stub[:handshake]) unless stub[:handshake].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeOrganization
    class DescribeOrganization
      def self.default(visited=[])
        {
          organization: Organization.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Organization'] = Organization.stub(stub[:organization]) unless stub[:organization].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeOrganizationalUnit
    class DescribeOrganizationalUnit
      def self.default(visited=[])
        {
          organizational_unit: OrganizationalUnit.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['OrganizationalUnit'] = OrganizationalUnit.stub(stub[:organizational_unit]) unless stub[:organizational_unit].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribePolicy
    class DescribePolicy
      def self.default(visited=[])
        {
          policy: Policy.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Policy'] = Policy.stub(stub[:policy]) unless stub[:policy].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DetachPolicy
    class DetachPolicy
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DisableAWSServiceAccess
    class DisableAWSServiceAccess
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DisablePolicyType
    class DisablePolicyType
      def self.default(visited=[])
        {
          root: Root.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Root'] = Root.stub(stub[:root]) unless stub[:root].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Root
    class Root
      def self.default(visited=[])
        return nil if visited.include?('Root')
        visited = visited + ['Root']
        {
          id: 'id',
          arn: 'arn',
          name: 'name',
          policy_types: PolicyTypes.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Root.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['PolicyTypes'] = PolicyTypes.stub(stub[:policy_types]) unless stub[:policy_types].nil?
        data
      end
    end

    # Operation Stubber for EnableAWSServiceAccess
    class EnableAWSServiceAccess
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for EnableAllFeatures
    class EnableAllFeatures
      def self.default(visited=[])
        {
          handshake: Handshake.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Handshake'] = Handshake.stub(stub[:handshake]) unless stub[:handshake].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for EnablePolicyType
    class EnablePolicyType
      def self.default(visited=[])
        {
          root: Root.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Root'] = Root.stub(stub[:root]) unless stub[:root].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for InviteAccountToOrganization
    class InviteAccountToOrganization
      def self.default(visited=[])
        {
          handshake: Handshake.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Handshake'] = Handshake.stub(stub[:handshake]) unless stub[:handshake].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for LeaveOrganization
    class LeaveOrganization
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListAWSServiceAccessForOrganization
    class ListAWSServiceAccessForOrganization
      def self.default(visited=[])
        {
          enabled_service_principals: EnabledServicePrincipals.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['EnabledServicePrincipals'] = EnabledServicePrincipals.stub(stub[:enabled_service_principals]) unless stub[:enabled_service_principals].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for EnabledServicePrincipals
    class EnabledServicePrincipals
      def self.default(visited=[])
        return nil if visited.include?('EnabledServicePrincipals')
        visited = visited + ['EnabledServicePrincipals']
        [
          EnabledServicePrincipal.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << EnabledServicePrincipal.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EnabledServicePrincipal
    class EnabledServicePrincipal
      def self.default(visited=[])
        return nil if visited.include?('EnabledServicePrincipal')
        visited = visited + ['EnabledServicePrincipal']
        {
          service_principal: 'service_principal',
          date_enabled: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::EnabledServicePrincipal.new
        data = {}
        data['ServicePrincipal'] = stub[:service_principal] unless stub[:service_principal].nil?
        data['DateEnabled'] = Hearth::TimeHelper.to_epoch_seconds(stub[:date_enabled]).to_i unless stub[:date_enabled].nil?
        data
      end
    end

    # Operation Stubber for ListAccounts
    class ListAccounts
      def self.default(visited=[])
        {
          accounts: Accounts.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Accounts'] = Accounts.stub(stub[:accounts]) unless stub[:accounts].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Accounts
    class Accounts
      def self.default(visited=[])
        return nil if visited.include?('Accounts')
        visited = visited + ['Accounts']
        [
          Account.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Account.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListAccountsForParent
    class ListAccountsForParent
      def self.default(visited=[])
        {
          accounts: Accounts.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Accounts'] = Accounts.stub(stub[:accounts]) unless stub[:accounts].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListChildren
    class ListChildren
      def self.default(visited=[])
        {
          children: Children.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Children'] = Children.stub(stub[:children]) unless stub[:children].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Children
    class Children
      def self.default(visited=[])
        return nil if visited.include?('Children')
        visited = visited + ['Children']
        [
          Child.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Child.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Child
    class Child
      def self.default(visited=[])
        return nil if visited.include?('Child')
        visited = visited + ['Child']
        {
          id: 'id',
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::Child.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # Operation Stubber for ListCreateAccountStatus
    class ListCreateAccountStatus
      def self.default(visited=[])
        {
          create_account_statuses: CreateAccountStatuses.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['CreateAccountStatuses'] = CreateAccountStatuses.stub(stub[:create_account_statuses]) unless stub[:create_account_statuses].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for CreateAccountStatuses
    class CreateAccountStatuses
      def self.default(visited=[])
        return nil if visited.include?('CreateAccountStatuses')
        visited = visited + ['CreateAccountStatuses']
        [
          CreateAccountStatus.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << CreateAccountStatus.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListDelegatedAdministrators
    class ListDelegatedAdministrators
      def self.default(visited=[])
        {
          delegated_administrators: DelegatedAdministrators.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DelegatedAdministrators'] = DelegatedAdministrators.stub(stub[:delegated_administrators]) unless stub[:delegated_administrators].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for DelegatedAdministrators
    class DelegatedAdministrators
      def self.default(visited=[])
        return nil if visited.include?('DelegatedAdministrators')
        visited = visited + ['DelegatedAdministrators']
        [
          DelegatedAdministrator.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DelegatedAdministrator.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DelegatedAdministrator
    class DelegatedAdministrator
      def self.default(visited=[])
        return nil if visited.include?('DelegatedAdministrator')
        visited = visited + ['DelegatedAdministrator']
        {
          id: 'id',
          arn: 'arn',
          email: 'email',
          name: 'name',
          status: 'status',
          joined_method: 'joined_method',
          joined_timestamp: Time.now,
          delegation_enabled_date: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::DelegatedAdministrator.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Email'] = stub[:email] unless stub[:email].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['JoinedMethod'] = stub[:joined_method] unless stub[:joined_method].nil?
        data['JoinedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:joined_timestamp]).to_i unless stub[:joined_timestamp].nil?
        data['DelegationEnabledDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:delegation_enabled_date]).to_i unless stub[:delegation_enabled_date].nil?
        data
      end
    end

    # Operation Stubber for ListDelegatedServicesForAccount
    class ListDelegatedServicesForAccount
      def self.default(visited=[])
        {
          delegated_services: DelegatedServices.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DelegatedServices'] = DelegatedServices.stub(stub[:delegated_services]) unless stub[:delegated_services].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for DelegatedServices
    class DelegatedServices
      def self.default(visited=[])
        return nil if visited.include?('DelegatedServices')
        visited = visited + ['DelegatedServices']
        [
          DelegatedService.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DelegatedService.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DelegatedService
    class DelegatedService
      def self.default(visited=[])
        return nil if visited.include?('DelegatedService')
        visited = visited + ['DelegatedService']
        {
          service_principal: 'service_principal',
          delegation_enabled_date: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::DelegatedService.new
        data = {}
        data['ServicePrincipal'] = stub[:service_principal] unless stub[:service_principal].nil?
        data['DelegationEnabledDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:delegation_enabled_date]).to_i unless stub[:delegation_enabled_date].nil?
        data
      end
    end

    # Operation Stubber for ListHandshakesForAccount
    class ListHandshakesForAccount
      def self.default(visited=[])
        {
          handshakes: Handshakes.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Handshakes'] = Handshakes.stub(stub[:handshakes]) unless stub[:handshakes].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Handshakes
    class Handshakes
      def self.default(visited=[])
        return nil if visited.include?('Handshakes')
        visited = visited + ['Handshakes']
        [
          Handshake.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Handshake.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListHandshakesForOrganization
    class ListHandshakesForOrganization
      def self.default(visited=[])
        {
          handshakes: Handshakes.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Handshakes'] = Handshakes.stub(stub[:handshakes]) unless stub[:handshakes].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListOrganizationalUnitsForParent
    class ListOrganizationalUnitsForParent
      def self.default(visited=[])
        {
          organizational_units: OrganizationalUnits.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['OrganizationalUnits'] = OrganizationalUnits.stub(stub[:organizational_units]) unless stub[:organizational_units].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for OrganizationalUnits
    class OrganizationalUnits
      def self.default(visited=[])
        return nil if visited.include?('OrganizationalUnits')
        visited = visited + ['OrganizationalUnits']
        [
          OrganizationalUnit.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << OrganizationalUnit.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListParents
    class ListParents
      def self.default(visited=[])
        {
          parents: Parents.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Parents'] = Parents.stub(stub[:parents]) unless stub[:parents].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Parents
    class Parents
      def self.default(visited=[])
        return nil if visited.include?('Parents')
        visited = visited + ['Parents']
        [
          Parent.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Parent.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Parent
    class Parent
      def self.default(visited=[])
        return nil if visited.include?('Parent')
        visited = visited + ['Parent']
        {
          id: 'id',
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::Parent.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # Operation Stubber for ListPolicies
    class ListPolicies
      def self.default(visited=[])
        {
          policies: Policies.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Policies'] = Policies.stub(stub[:policies]) unless stub[:policies].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Policies
    class Policies
      def self.default(visited=[])
        return nil if visited.include?('Policies')
        visited = visited + ['Policies']
        [
          PolicySummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << PolicySummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListPoliciesForTarget
    class ListPoliciesForTarget
      def self.default(visited=[])
        {
          policies: Policies.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Policies'] = Policies.stub(stub[:policies]) unless stub[:policies].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListRoots
    class ListRoots
      def self.default(visited=[])
        {
          roots: Roots.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Roots'] = Roots.stub(stub[:roots]) unless stub[:roots].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Roots
    class Roots
      def self.default(visited=[])
        return nil if visited.include?('Roots')
        visited = visited + ['Roots']
        [
          Root.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Root.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: Tags.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Tags'] = Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Tags
    class Tags
      def self.default(visited=[])
        return nil if visited.include?('Tags')
        visited = visited + ['Tags']
        [
          Tag.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Tag.stub(element) unless element.nil?
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

    # Operation Stubber for ListTargetsForPolicy
    class ListTargetsForPolicy
      def self.default(visited=[])
        {
          targets: PolicyTargets.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Targets'] = PolicyTargets.stub(stub[:targets]) unless stub[:targets].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for PolicyTargets
    class PolicyTargets
      def self.default(visited=[])
        return nil if visited.include?('PolicyTargets')
        visited = visited + ['PolicyTargets']
        [
          PolicyTargetSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << PolicyTargetSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PolicyTargetSummary
    class PolicyTargetSummary
      def self.default(visited=[])
        return nil if visited.include?('PolicyTargetSummary')
        visited = visited + ['PolicyTargetSummary']
        {
          target_id: 'target_id',
          arn: 'arn',
          name: 'name',
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::PolicyTargetSummary.new
        data = {}
        data['TargetId'] = stub[:target_id] unless stub[:target_id].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # Operation Stubber for MoveAccount
    class MoveAccount
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for RegisterDelegatedAdministrator
    class RegisterDelegatedAdministrator
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for RemoveAccountFromOrganization
    class RemoveAccountFromOrganization
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateOrganizationalUnit
    class UpdateOrganizationalUnit
      def self.default(visited=[])
        {
          organizational_unit: OrganizationalUnit.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['OrganizationalUnit'] = OrganizationalUnit.stub(stub[:organizational_unit]) unless stub[:organizational_unit].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdatePolicy
    class UpdatePolicy
      def self.default(visited=[])
        {
          policy: Policy.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Policy'] = Policy.stub(stub[:policy]) unless stub[:policy].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
