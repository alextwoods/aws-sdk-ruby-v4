# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Organizations
  module Builders

    # Operation Builder for AcceptHandshake
    class AcceptHandshake
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSOrganizationsV20161128.AcceptHandshake'
        data = {}
        data['HandshakeId'] = input[:handshake_id] unless input[:handshake_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for AttachPolicy
    class AttachPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSOrganizationsV20161128.AttachPolicy'
        data = {}
        data['PolicyId'] = input[:policy_id] unless input[:policy_id].nil?
        data['TargetId'] = input[:target_id] unless input[:target_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CancelHandshake
    class CancelHandshake
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSOrganizationsV20161128.CancelHandshake'
        data = {}
        data['HandshakeId'] = input[:handshake_id] unless input[:handshake_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CloseAccount
    class CloseAccount
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSOrganizationsV20161128.CloseAccount'
        data = {}
        data['AccountId'] = input[:account_id] unless input[:account_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateAccount
    class CreateAccount
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSOrganizationsV20161128.CreateAccount'
        data = {}
        data['Email'] = input[:email] unless input[:email].nil?
        data['AccountName'] = input[:account_name] unless input[:account_name].nil?
        data['RoleName'] = input[:role_name] unless input[:role_name].nil?
        data['IamUserAccessToBilling'] = input[:iam_user_access_to_billing] unless input[:iam_user_access_to_billing].nil?
        data['Tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for Tags
    class Tags
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Tag.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Tag
    class Tag
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for CreateGovCloudAccount
    class CreateGovCloudAccount
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSOrganizationsV20161128.CreateGovCloudAccount'
        data = {}
        data['Email'] = input[:email] unless input[:email].nil?
        data['AccountName'] = input[:account_name] unless input[:account_name].nil?
        data['RoleName'] = input[:role_name] unless input[:role_name].nil?
        data['IamUserAccessToBilling'] = input[:iam_user_access_to_billing] unless input[:iam_user_access_to_billing].nil?
        data['Tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateOrganization
    class CreateOrganization
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSOrganizationsV20161128.CreateOrganization'
        data = {}
        data['FeatureSet'] = input[:feature_set] unless input[:feature_set].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateOrganizationalUnit
    class CreateOrganizationalUnit
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSOrganizationsV20161128.CreateOrganizationalUnit'
        data = {}
        data['ParentId'] = input[:parent_id] unless input[:parent_id].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['Tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreatePolicy
    class CreatePolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSOrganizationsV20161128.CreatePolicy'
        data = {}
        data['Content'] = input[:content] unless input[:content].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data['Tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeclineHandshake
    class DeclineHandshake
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSOrganizationsV20161128.DeclineHandshake'
        data = {}
        data['HandshakeId'] = input[:handshake_id] unless input[:handshake_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteOrganization
    class DeleteOrganization
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSOrganizationsV20161128.DeleteOrganization'
        data = {}
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteOrganizationalUnit
    class DeleteOrganizationalUnit
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSOrganizationsV20161128.DeleteOrganizationalUnit'
        data = {}
        data['OrganizationalUnitId'] = input[:organizational_unit_id] unless input[:organizational_unit_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeletePolicy
    class DeletePolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSOrganizationsV20161128.DeletePolicy'
        data = {}
        data['PolicyId'] = input[:policy_id] unless input[:policy_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeregisterDelegatedAdministrator
    class DeregisterDelegatedAdministrator
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSOrganizationsV20161128.DeregisterDelegatedAdministrator'
        data = {}
        data['AccountId'] = input[:account_id] unless input[:account_id].nil?
        data['ServicePrincipal'] = input[:service_principal] unless input[:service_principal].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeAccount
    class DescribeAccount
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSOrganizationsV20161128.DescribeAccount'
        data = {}
        data['AccountId'] = input[:account_id] unless input[:account_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeCreateAccountStatus
    class DescribeCreateAccountStatus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSOrganizationsV20161128.DescribeCreateAccountStatus'
        data = {}
        data['CreateAccountRequestId'] = input[:create_account_request_id] unless input[:create_account_request_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeEffectivePolicy
    class DescribeEffectivePolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSOrganizationsV20161128.DescribeEffectivePolicy'
        data = {}
        data['PolicyType'] = input[:policy_type] unless input[:policy_type].nil?
        data['TargetId'] = input[:target_id] unless input[:target_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeHandshake
    class DescribeHandshake
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSOrganizationsV20161128.DescribeHandshake'
        data = {}
        data['HandshakeId'] = input[:handshake_id] unless input[:handshake_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeOrganization
    class DescribeOrganization
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSOrganizationsV20161128.DescribeOrganization'
        data = {}
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeOrganizationalUnit
    class DescribeOrganizationalUnit
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSOrganizationsV20161128.DescribeOrganizationalUnit'
        data = {}
        data['OrganizationalUnitId'] = input[:organizational_unit_id] unless input[:organizational_unit_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribePolicy
    class DescribePolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSOrganizationsV20161128.DescribePolicy'
        data = {}
        data['PolicyId'] = input[:policy_id] unless input[:policy_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DetachPolicy
    class DetachPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSOrganizationsV20161128.DetachPolicy'
        data = {}
        data['PolicyId'] = input[:policy_id] unless input[:policy_id].nil?
        data['TargetId'] = input[:target_id] unless input[:target_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DisableAWSServiceAccess
    class DisableAWSServiceAccess
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSOrganizationsV20161128.DisableAWSServiceAccess'
        data = {}
        data['ServicePrincipal'] = input[:service_principal] unless input[:service_principal].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DisablePolicyType
    class DisablePolicyType
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSOrganizationsV20161128.DisablePolicyType'
        data = {}
        data['RootId'] = input[:root_id] unless input[:root_id].nil?
        data['PolicyType'] = input[:policy_type] unless input[:policy_type].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for EnableAWSServiceAccess
    class EnableAWSServiceAccess
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSOrganizationsV20161128.EnableAWSServiceAccess'
        data = {}
        data['ServicePrincipal'] = input[:service_principal] unless input[:service_principal].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for EnableAllFeatures
    class EnableAllFeatures
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSOrganizationsV20161128.EnableAllFeatures'
        data = {}
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for EnablePolicyType
    class EnablePolicyType
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSOrganizationsV20161128.EnablePolicyType'
        data = {}
        data['RootId'] = input[:root_id] unless input[:root_id].nil?
        data['PolicyType'] = input[:policy_type] unless input[:policy_type].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for InviteAccountToOrganization
    class InviteAccountToOrganization
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSOrganizationsV20161128.InviteAccountToOrganization'
        data = {}
        data['Target'] = Builders::HandshakeParty.build(input[:target]) unless input[:target].nil?
        data['Notes'] = input[:notes] unless input[:notes].nil?
        data['Tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for HandshakeParty
    class HandshakeParty
      def self.build(input)
        data = {}
        data['Id'] = input[:id] unless input[:id].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data
      end
    end

    # Operation Builder for LeaveOrganization
    class LeaveOrganization
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSOrganizationsV20161128.LeaveOrganization'
        data = {}
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListAWSServiceAccessForOrganization
    class ListAWSServiceAccessForOrganization
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSOrganizationsV20161128.ListAWSServiceAccessForOrganization'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListAccounts
    class ListAccounts
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSOrganizationsV20161128.ListAccounts'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListAccountsForParent
    class ListAccountsForParent
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSOrganizationsV20161128.ListAccountsForParent'
        data = {}
        data['ParentId'] = input[:parent_id] unless input[:parent_id].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListChildren
    class ListChildren
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSOrganizationsV20161128.ListChildren'
        data = {}
        data['ParentId'] = input[:parent_id] unless input[:parent_id].nil?
        data['ChildType'] = input[:child_type] unless input[:child_type].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListCreateAccountStatus
    class ListCreateAccountStatus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSOrganizationsV20161128.ListCreateAccountStatus'
        data = {}
        data['States'] = Builders::CreateAccountStates.build(input[:states]) unless input[:states].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for CreateAccountStates
    class CreateAccountStates
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ListDelegatedAdministrators
    class ListDelegatedAdministrators
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSOrganizationsV20161128.ListDelegatedAdministrators'
        data = {}
        data['ServicePrincipal'] = input[:service_principal] unless input[:service_principal].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListDelegatedServicesForAccount
    class ListDelegatedServicesForAccount
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSOrganizationsV20161128.ListDelegatedServicesForAccount'
        data = {}
        data['AccountId'] = input[:account_id] unless input[:account_id].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListHandshakesForAccount
    class ListHandshakesForAccount
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSOrganizationsV20161128.ListHandshakesForAccount'
        data = {}
        data['Filter'] = Builders::HandshakeFilter.build(input[:filter]) unless input[:filter].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for HandshakeFilter
    class HandshakeFilter
      def self.build(input)
        data = {}
        data['ActionType'] = input[:action_type] unless input[:action_type].nil?
        data['ParentHandshakeId'] = input[:parent_handshake_id] unless input[:parent_handshake_id].nil?
        data
      end
    end

    # Operation Builder for ListHandshakesForOrganization
    class ListHandshakesForOrganization
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSOrganizationsV20161128.ListHandshakesForOrganization'
        data = {}
        data['Filter'] = Builders::HandshakeFilter.build(input[:filter]) unless input[:filter].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListOrganizationalUnitsForParent
    class ListOrganizationalUnitsForParent
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSOrganizationsV20161128.ListOrganizationalUnitsForParent'
        data = {}
        data['ParentId'] = input[:parent_id] unless input[:parent_id].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListParents
    class ListParents
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSOrganizationsV20161128.ListParents'
        data = {}
        data['ChildId'] = input[:child_id] unless input[:child_id].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListPolicies
    class ListPolicies
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSOrganizationsV20161128.ListPolicies'
        data = {}
        data['Filter'] = input[:filter] unless input[:filter].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListPoliciesForTarget
    class ListPoliciesForTarget
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSOrganizationsV20161128.ListPoliciesForTarget'
        data = {}
        data['TargetId'] = input[:target_id] unless input[:target_id].nil?
        data['Filter'] = input[:filter] unless input[:filter].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListRoots
    class ListRoots
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSOrganizationsV20161128.ListRoots'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSOrganizationsV20161128.ListTagsForResource'
        data = {}
        data['ResourceId'] = input[:resource_id] unless input[:resource_id].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTargetsForPolicy
    class ListTargetsForPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSOrganizationsV20161128.ListTargetsForPolicy'
        data = {}
        data['PolicyId'] = input[:policy_id] unless input[:policy_id].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for MoveAccount
    class MoveAccount
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSOrganizationsV20161128.MoveAccount'
        data = {}
        data['AccountId'] = input[:account_id] unless input[:account_id].nil?
        data['SourceParentId'] = input[:source_parent_id] unless input[:source_parent_id].nil?
        data['DestinationParentId'] = input[:destination_parent_id] unless input[:destination_parent_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RegisterDelegatedAdministrator
    class RegisterDelegatedAdministrator
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSOrganizationsV20161128.RegisterDelegatedAdministrator'
        data = {}
        data['AccountId'] = input[:account_id] unless input[:account_id].nil?
        data['ServicePrincipal'] = input[:service_principal] unless input[:service_principal].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RemoveAccountFromOrganization
    class RemoveAccountFromOrganization
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSOrganizationsV20161128.RemoveAccountFromOrganization'
        data = {}
        data['AccountId'] = input[:account_id] unless input[:account_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSOrganizationsV20161128.TagResource'
        data = {}
        data['ResourceId'] = input[:resource_id] unless input[:resource_id].nil?
        data['Tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSOrganizationsV20161128.UntagResource'
        data = {}
        data['ResourceId'] = input[:resource_id] unless input[:resource_id].nil?
        data['TagKeys'] = Builders::TagKeys.build(input[:tag_keys]) unless input[:tag_keys].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagKeys
    class TagKeys
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateOrganizationalUnit
    class UpdateOrganizationalUnit
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSOrganizationsV20161128.UpdateOrganizationalUnit'
        data = {}
        data['OrganizationalUnitId'] = input[:organizational_unit_id] unless input[:organizational_unit_id].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdatePolicy
    class UpdatePolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSOrganizationsV20161128.UpdatePolicy'
        data = {}
        data['PolicyId'] = input[:policy_id] unless input[:policy_id].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Content'] = input[:content] unless input[:content].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
