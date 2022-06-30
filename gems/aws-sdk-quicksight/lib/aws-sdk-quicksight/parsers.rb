# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::QuickSight
  module Parsers

    # Operation Parser for CancelIngestion
    class CancelIngestion
      def self.parse(http_resp)
        data = Types::CancelIngestionOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.ingestion_id = map['IngestionId']
        data.request_id = map['RequestId']
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.resource_type = map['ResourceType']
        data.request_id = map['RequestId']
        data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.request_id = map['RequestId']
        data
      end
    end

    # Error Parser for ResourceExistsException
    class ResourceExistsException
      def self.parse(http_resp)
        data = Types::ResourceExistsException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.resource_type = map['ResourceType']
        data.request_id = map['RequestId']
        data
      end
    end

    # Error Parser for ThrottlingException
    class ThrottlingException
      def self.parse(http_resp)
        data = Types::ThrottlingException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.request_id = map['RequestId']
        data
      end
    end

    # Error Parser for InvalidParameterValueException
    class InvalidParameterValueException
      def self.parse(http_resp)
        data = Types::InvalidParameterValueException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.request_id = map['RequestId']
        data
      end
    end

    # Error Parser for InternalFailureException
    class InternalFailureException
      def self.parse(http_resp)
        data = Types::InternalFailureException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for CreateAccountCustomization
    class CreateAccountCustomization
      def self.parse(http_resp)
        data = Types::CreateAccountCustomizationOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.aws_account_id = map['AwsAccountId']
        data.namespace = map['Namespace']
        data.account_customization = (Parsers::AccountCustomization.parse(map['AccountCustomization']) unless map['AccountCustomization'].nil?)
        data.request_id = map['RequestId']
        data
      end
    end

    class AccountCustomization
      def self.parse(map)
        data = Types::AccountCustomization.new
        data.default_theme = map['DefaultTheme']
        data.default_email_customization_template = map['DefaultEmailCustomizationTemplate']
        return data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.request_id = map['RequestId']
        data
      end
    end

    # Error Parser for ResourceUnavailableException
    class ResourceUnavailableException
      def self.parse(http_resp)
        data = Types::ResourceUnavailableException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.resource_type = map['ResourceType']
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for CreateAnalysis
    class CreateAnalysis
      def self.parse(http_resp)
        data = Types::CreateAnalysisOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.analysis_id = map['AnalysisId']
        data.creation_status = map['CreationStatus']
        data.request_id = map['RequestId']
        data
      end
    end

    # Error Parser for UnsupportedUserEditionException
    class UnsupportedUserEditionException
      def self.parse(http_resp)
        data = Types::UnsupportedUserEditionException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for CreateDashboard
    class CreateDashboard
      def self.parse(http_resp)
        data = Types::CreateDashboardOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.version_arn = map['VersionArn']
        data.dashboard_id = map['DashboardId']
        data.creation_status = map['CreationStatus']
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for CreateDataSet
    class CreateDataSet
      def self.parse(http_resp)
        data = Types::CreateDataSetOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.data_set_id = map['DataSetId']
        data.ingestion_arn = map['IngestionArn']
        data.ingestion_id = map['IngestionId']
        data.request_id = map['RequestId']
        data
      end
    end

    # Error Parser for LimitExceededException
    class LimitExceededException
      def self.parse(http_resp)
        data = Types::LimitExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.resource_type = map['ResourceType']
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for CreateDataSource
    class CreateDataSource
      def self.parse(http_resp)
        data = Types::CreateDataSourceOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.data_source_id = map['DataSourceId']
        data.creation_status = map['CreationStatus']
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for CreateFolder
    class CreateFolder
      def self.parse(http_resp)
        data = Types::CreateFolderOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.folder_id = map['FolderId']
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for CreateFolderMembership
    class CreateFolderMembership
      def self.parse(http_resp)
        data = Types::CreateFolderMembershipOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.status = map['Status']
        data.folder_member = (Parsers::FolderMember.parse(map['FolderMember']) unless map['FolderMember'].nil?)
        data.request_id = map['RequestId']
        data
      end
    end

    class FolderMember
      def self.parse(map)
        data = Types::FolderMember.new
        data.member_id = map['MemberId']
        data.member_type = map['MemberType']
        return data
      end
    end

    # Operation Parser for CreateGroup
    class CreateGroup
      def self.parse(http_resp)
        data = Types::CreateGroupOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.group = (Parsers::Group.parse(map['Group']) unless map['Group'].nil?)
        data.request_id = map['RequestId']
        data
      end
    end

    class Group
      def self.parse(map)
        data = Types::Group.new
        data.arn = map['Arn']
        data.group_name = map['GroupName']
        data.description = map['Description']
        data.principal_id = map['PrincipalId']
        return data
      end
    end

    # Error Parser for PreconditionNotMetException
    class PreconditionNotMetException
      def self.parse(http_resp)
        data = Types::PreconditionNotMetException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for CreateGroupMembership
    class CreateGroupMembership
      def self.parse(http_resp)
        data = Types::CreateGroupMembershipOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.group_member = (Parsers::GroupMember.parse(map['GroupMember']) unless map['GroupMember'].nil?)
        data.request_id = map['RequestId']
        data
      end
    end

    class GroupMember
      def self.parse(map)
        data = Types::GroupMember.new
        data.arn = map['Arn']
        data.member_name = map['MemberName']
        return data
      end
    end

    # Operation Parser for CreateIAMPolicyAssignment
    class CreateIAMPolicyAssignment
      def self.parse(http_resp)
        data = Types::CreateIAMPolicyAssignmentOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.assignment_name = map['AssignmentName']
        data.assignment_id = map['AssignmentId']
        data.assignment_status = map['AssignmentStatus']
        data.policy_arn = map['PolicyArn']
        data.identities = (Parsers::IdentityMap.parse(map['Identities']) unless map['Identities'].nil?)
        data.request_id = map['RequestId']
        data
      end
    end

    class IdentityMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Parsers::IdentityNameList.parse(value) unless value.nil?
        end
        data
      end
    end

    class IdentityNameList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Error Parser for ConcurrentUpdatingException
    class ConcurrentUpdatingException
      def self.parse(http_resp)
        data = Types::ConcurrentUpdatingException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for CreateIngestion
    class CreateIngestion
      def self.parse(http_resp)
        data = Types::CreateIngestionOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.ingestion_id = map['IngestionId']
        data.ingestion_status = map['IngestionStatus']
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for CreateNamespace
    class CreateNamespace
      def self.parse(http_resp)
        data = Types::CreateNamespaceOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.name = map['Name']
        data.capacity_region = map['CapacityRegion']
        data.creation_status = map['CreationStatus']
        data.identity_store = map['IdentityStore']
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for CreateTemplate
    class CreateTemplate
      def self.parse(http_resp)
        data = Types::CreateTemplateOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.version_arn = map['VersionArn']
        data.template_id = map['TemplateId']
        data.creation_status = map['CreationStatus']
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for CreateTemplateAlias
    class CreateTemplateAlias
      def self.parse(http_resp)
        data = Types::CreateTemplateAliasOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.template_alias = (Parsers::TemplateAlias.parse(map['TemplateAlias']) unless map['TemplateAlias'].nil?)
        data.request_id = map['RequestId']
        data
      end
    end

    class TemplateAlias
      def self.parse(map)
        data = Types::TemplateAlias.new
        data.alias_name = map['AliasName']
        data.arn = map['Arn']
        data.template_version_number = map['TemplateVersionNumber']
        return data
      end
    end

    # Operation Parser for CreateTheme
    class CreateTheme
      def self.parse(http_resp)
        data = Types::CreateThemeOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.version_arn = map['VersionArn']
        data.theme_id = map['ThemeId']
        data.creation_status = map['CreationStatus']
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for CreateThemeAlias
    class CreateThemeAlias
      def self.parse(http_resp)
        data = Types::CreateThemeAliasOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.theme_alias = (Parsers::ThemeAlias.parse(map['ThemeAlias']) unless map['ThemeAlias'].nil?)
        data.request_id = map['RequestId']
        data
      end
    end

    class ThemeAlias
      def self.parse(map)
        data = Types::ThemeAlias.new
        data.arn = map['Arn']
        data.alias_name = map['AliasName']
        data.theme_version_number = map['ThemeVersionNumber']
        return data
      end
    end

    # Operation Parser for DeleteAccountCustomization
    class DeleteAccountCustomization
      def self.parse(http_resp)
        data = Types::DeleteAccountCustomizationOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for DeleteAnalysis
    class DeleteAnalysis
      def self.parse(http_resp)
        data = Types::DeleteAnalysisOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.analysis_id = map['AnalysisId']
        data.deletion_time = Time.at(map['DeletionTime'].to_i) if map['DeletionTime']
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for DeleteDashboard
    class DeleteDashboard
      def self.parse(http_resp)
        data = Types::DeleteDashboardOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.dashboard_id = map['DashboardId']
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for DeleteDataSet
    class DeleteDataSet
      def self.parse(http_resp)
        data = Types::DeleteDataSetOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.data_set_id = map['DataSetId']
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for DeleteDataSource
    class DeleteDataSource
      def self.parse(http_resp)
        data = Types::DeleteDataSourceOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.data_source_id = map['DataSourceId']
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for DeleteFolder
    class DeleteFolder
      def self.parse(http_resp)
        data = Types::DeleteFolderOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.folder_id = map['FolderId']
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for DeleteFolderMembership
    class DeleteFolderMembership
      def self.parse(http_resp)
        data = Types::DeleteFolderMembershipOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.status = map['Status']
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for DeleteGroup
    class DeleteGroup
      def self.parse(http_resp)
        data = Types::DeleteGroupOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for DeleteGroupMembership
    class DeleteGroupMembership
      def self.parse(http_resp)
        data = Types::DeleteGroupMembershipOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for DeleteIAMPolicyAssignment
    class DeleteIAMPolicyAssignment
      def self.parse(http_resp)
        data = Types::DeleteIAMPolicyAssignmentOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.assignment_name = map['AssignmentName']
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for DeleteNamespace
    class DeleteNamespace
      def self.parse(http_resp)
        data = Types::DeleteNamespaceOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for DeleteTemplate
    class DeleteTemplate
      def self.parse(http_resp)
        data = Types::DeleteTemplateOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.request_id = map['RequestId']
        data.arn = map['Arn']
        data.template_id = map['TemplateId']
        data
      end
    end

    # Operation Parser for DeleteTemplateAlias
    class DeleteTemplateAlias
      def self.parse(http_resp)
        data = Types::DeleteTemplateAliasOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.template_id = map['TemplateId']
        data.alias_name = map['AliasName']
        data.arn = map['Arn']
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for DeleteTheme
    class DeleteTheme
      def self.parse(http_resp)
        data = Types::DeleteThemeOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.request_id = map['RequestId']
        data.theme_id = map['ThemeId']
        data
      end
    end

    # Operation Parser for DeleteThemeAlias
    class DeleteThemeAlias
      def self.parse(http_resp)
        data = Types::DeleteThemeAliasOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.alias_name = map['AliasName']
        data.arn = map['Arn']
        data.request_id = map['RequestId']
        data.theme_id = map['ThemeId']
        data
      end
    end

    # Operation Parser for DeleteUser
    class DeleteUser
      def self.parse(http_resp)
        data = Types::DeleteUserOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for DeleteUserByPrincipalId
    class DeleteUserByPrincipalId
      def self.parse(http_resp)
        data = Types::DeleteUserByPrincipalIdOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for DescribeAccountCustomization
    class DescribeAccountCustomization
      def self.parse(http_resp)
        data = Types::DescribeAccountCustomizationOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.aws_account_id = map['AwsAccountId']
        data.namespace = map['Namespace']
        data.account_customization = (Parsers::AccountCustomization.parse(map['AccountCustomization']) unless map['AccountCustomization'].nil?)
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for DescribeAccountSettings
    class DescribeAccountSettings
      def self.parse(http_resp)
        data = Types::DescribeAccountSettingsOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.account_settings = (Parsers::AccountSettings.parse(map['AccountSettings']) unless map['AccountSettings'].nil?)
        data.request_id = map['RequestId']
        data
      end
    end

    class AccountSettings
      def self.parse(map)
        data = Types::AccountSettings.new
        data.account_name = map['AccountName']
        data.edition = map['Edition']
        data.default_namespace = map['DefaultNamespace']
        data.notification_email = map['NotificationEmail']
        data.public_sharing_enabled = map['PublicSharingEnabled']
        return data
      end
    end

    # Operation Parser for DescribeAnalysis
    class DescribeAnalysis
      def self.parse(http_resp)
        data = Types::DescribeAnalysisOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.analysis = (Parsers::Analysis.parse(map['Analysis']) unless map['Analysis'].nil?)
        data.request_id = map['RequestId']
        data
      end
    end

    class Analysis
      def self.parse(map)
        data = Types::Analysis.new
        data.analysis_id = map['AnalysisId']
        data.arn = map['Arn']
        data.name = map['Name']
        data.status = map['Status']
        data.errors = (Parsers::AnalysisErrorList.parse(map['Errors']) unless map['Errors'].nil?)
        data.data_set_arns = (Parsers::DataSetArnsList.parse(map['DataSetArns']) unless map['DataSetArns'].nil?)
        data.theme_arn = map['ThemeArn']
        data.created_time = Time.at(map['CreatedTime'].to_i) if map['CreatedTime']
        data.last_updated_time = Time.at(map['LastUpdatedTime'].to_i) if map['LastUpdatedTime']
        data.sheets = (Parsers::SheetList.parse(map['Sheets']) unless map['Sheets'].nil?)
        return data
      end
    end

    class SheetList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Sheet.parse(value) unless value.nil?
        end
        data
      end
    end

    class Sheet
      def self.parse(map)
        data = Types::Sheet.new
        data.sheet_id = map['SheetId']
        data.name = map['Name']
        return data
      end
    end

    class DataSetArnsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class AnalysisErrorList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AnalysisError.parse(value) unless value.nil?
        end
        data
      end
    end

    class AnalysisError
      def self.parse(map)
        data = Types::AnalysisError.new
        data.type = map['Type']
        data.message = map['Message']
        return data
      end
    end

    # Operation Parser for DescribeAnalysisPermissions
    class DescribeAnalysisPermissions
      def self.parse(http_resp)
        data = Types::DescribeAnalysisPermissionsOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.analysis_id = map['AnalysisId']
        data.analysis_arn = map['AnalysisArn']
        data.permissions = (Parsers::ResourcePermissionList.parse(map['Permissions']) unless map['Permissions'].nil?)
        data.request_id = map['RequestId']
        data
      end
    end

    class ResourcePermissionList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ResourcePermission.parse(value) unless value.nil?
        end
        data
      end
    end

    class ResourcePermission
      def self.parse(map)
        data = Types::ResourcePermission.new
        data.principal = map['Principal']
        data.actions = (Parsers::ActionList.parse(map['Actions']) unless map['Actions'].nil?)
        return data
      end
    end

    class ActionList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for DescribeDashboard
    class DescribeDashboard
      def self.parse(http_resp)
        data = Types::DescribeDashboardOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.dashboard = (Parsers::Dashboard.parse(map['Dashboard']) unless map['Dashboard'].nil?)
        data.request_id = map['RequestId']
        data
      end
    end

    class Dashboard
      def self.parse(map)
        data = Types::Dashboard.new
        data.dashboard_id = map['DashboardId']
        data.arn = map['Arn']
        data.name = map['Name']
        data.version = (Parsers::DashboardVersion.parse(map['Version']) unless map['Version'].nil?)
        data.created_time = Time.at(map['CreatedTime'].to_i) if map['CreatedTime']
        data.last_published_time = Time.at(map['LastPublishedTime'].to_i) if map['LastPublishedTime']
        data.last_updated_time = Time.at(map['LastUpdatedTime'].to_i) if map['LastUpdatedTime']
        return data
      end
    end

    class DashboardVersion
      def self.parse(map)
        data = Types::DashboardVersion.new
        data.created_time = Time.at(map['CreatedTime'].to_i) if map['CreatedTime']
        data.errors = (Parsers::DashboardErrorList.parse(map['Errors']) unless map['Errors'].nil?)
        data.version_number = map['VersionNumber']
        data.status = map['Status']
        data.arn = map['Arn']
        data.source_entity_arn = map['SourceEntityArn']
        data.data_set_arns = (Parsers::DataSetArnsList.parse(map['DataSetArns']) unless map['DataSetArns'].nil?)
        data.description = map['Description']
        data.theme_arn = map['ThemeArn']
        data.sheets = (Parsers::SheetList.parse(map['Sheets']) unless map['Sheets'].nil?)
        return data
      end
    end

    class DashboardErrorList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::DashboardError.parse(value) unless value.nil?
        end
        data
      end
    end

    class DashboardError
      def self.parse(map)
        data = Types::DashboardError.new
        data.type = map['Type']
        data.message = map['Message']
        return data
      end
    end

    # Operation Parser for DescribeDashboardPermissions
    class DescribeDashboardPermissions
      def self.parse(http_resp)
        data = Types::DescribeDashboardPermissionsOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.dashboard_id = map['DashboardId']
        data.dashboard_arn = map['DashboardArn']
        data.permissions = (Parsers::ResourcePermissionList.parse(map['Permissions']) unless map['Permissions'].nil?)
        data.request_id = map['RequestId']
        data.link_sharing_configuration = (Parsers::LinkSharingConfiguration.parse(map['LinkSharingConfiguration']) unless map['LinkSharingConfiguration'].nil?)
        data
      end
    end

    class LinkSharingConfiguration
      def self.parse(map)
        data = Types::LinkSharingConfiguration.new
        data.permissions = (Parsers::ResourcePermissionList.parse(map['Permissions']) unless map['Permissions'].nil?)
        return data
      end
    end

    # Operation Parser for DescribeDataSet
    class DescribeDataSet
      def self.parse(http_resp)
        data = Types::DescribeDataSetOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.data_set = (Parsers::DataSet.parse(map['DataSet']) unless map['DataSet'].nil?)
        data.request_id = map['RequestId']
        data
      end
    end

    class DataSet
      def self.parse(map)
        data = Types::DataSet.new
        data.arn = map['Arn']
        data.data_set_id = map['DataSetId']
        data.name = map['Name']
        data.created_time = Time.at(map['CreatedTime'].to_i) if map['CreatedTime']
        data.last_updated_time = Time.at(map['LastUpdatedTime'].to_i) if map['LastUpdatedTime']
        data.physical_table_map = (Parsers::PhysicalTableMap.parse(map['PhysicalTableMap']) unless map['PhysicalTableMap'].nil?)
        data.logical_table_map = (Parsers::LogicalTableMap.parse(map['LogicalTableMap']) unless map['LogicalTableMap'].nil?)
        data.output_columns = (Parsers::OutputColumnList.parse(map['OutputColumns']) unless map['OutputColumns'].nil?)
        data.import_mode = map['ImportMode']
        data.consumed_spice_capacity_in_bytes = map['ConsumedSpiceCapacityInBytes']
        data.column_groups = (Parsers::ColumnGroupList.parse(map['ColumnGroups']) unless map['ColumnGroups'].nil?)
        data.field_folders = (Parsers::FieldFolderMap.parse(map['FieldFolders']) unless map['FieldFolders'].nil?)
        data.row_level_permission_data_set = (Parsers::RowLevelPermissionDataSet.parse(map['RowLevelPermissionDataSet']) unless map['RowLevelPermissionDataSet'].nil?)
        data.row_level_permission_tag_configuration = (Parsers::RowLevelPermissionTagConfiguration.parse(map['RowLevelPermissionTagConfiguration']) unless map['RowLevelPermissionTagConfiguration'].nil?)
        data.column_level_permission_rules = (Parsers::ColumnLevelPermissionRuleList.parse(map['ColumnLevelPermissionRules']) unless map['ColumnLevelPermissionRules'].nil?)
        data.data_set_usage_configuration = (Parsers::DataSetUsageConfiguration.parse(map['DataSetUsageConfiguration']) unless map['DataSetUsageConfiguration'].nil?)
        return data
      end
    end

    class DataSetUsageConfiguration
      def self.parse(map)
        data = Types::DataSetUsageConfiguration.new
        data.disable_use_as_direct_query_source = map['DisableUseAsDirectQuerySource']
        data.disable_use_as_imported_source = map['DisableUseAsImportedSource']
        return data
      end
    end

    class ColumnLevelPermissionRuleList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ColumnLevelPermissionRule.parse(value) unless value.nil?
        end
        data
      end
    end

    class ColumnLevelPermissionRule
      def self.parse(map)
        data = Types::ColumnLevelPermissionRule.new
        data.principals = (Parsers::PrincipalList.parse(map['Principals']) unless map['Principals'].nil?)
        data.column_names = (Parsers::ColumnNameList.parse(map['ColumnNames']) unless map['ColumnNames'].nil?)
        return data
      end
    end

    class ColumnNameList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class PrincipalList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class RowLevelPermissionTagConfiguration
      def self.parse(map)
        data = Types::RowLevelPermissionTagConfiguration.new
        data.status = map['Status']
        data.tag_rules = (Parsers::RowLevelPermissionTagRuleList.parse(map['TagRules']) unless map['TagRules'].nil?)
        return data
      end
    end

    class RowLevelPermissionTagRuleList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::RowLevelPermissionTagRule.parse(value) unless value.nil?
        end
        data
      end
    end

    class RowLevelPermissionTagRule
      def self.parse(map)
        data = Types::RowLevelPermissionTagRule.new
        data.tag_key = map['TagKey']
        data.column_name = map['ColumnName']
        data.tag_multi_value_delimiter = map['TagMultiValueDelimiter']
        data.match_all_value = map['MatchAllValue']
        return data
      end
    end

    class RowLevelPermissionDataSet
      def self.parse(map)
        data = Types::RowLevelPermissionDataSet.new
        data.namespace = map['Namespace']
        data.arn = map['Arn']
        data.permission_policy = map['PermissionPolicy']
        data.format_version = map['FormatVersion']
        data.status = map['Status']
        return data
      end
    end

    class FieldFolderMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Parsers::FieldFolder.parse(value) unless value.nil?
        end
        data
      end
    end

    class FieldFolder
      def self.parse(map)
        data = Types::FieldFolder.new
        data.description = map['description']
        data.columns = (Parsers::FolderColumnList.parse(map['columns']) unless map['columns'].nil?)
        return data
      end
    end

    class FolderColumnList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class ColumnGroupList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ColumnGroup.parse(value) unless value.nil?
        end
        data
      end
    end

    class ColumnGroup
      def self.parse(map)
        data = Types::ColumnGroup.new
        data.geo_spatial_column_group = (Parsers::GeoSpatialColumnGroup.parse(map['GeoSpatialColumnGroup']) unless map['GeoSpatialColumnGroup'].nil?)
        return data
      end
    end

    class GeoSpatialColumnGroup
      def self.parse(map)
        data = Types::GeoSpatialColumnGroup.new
        data.name = map['Name']
        data.country_code = map['CountryCode']
        data.columns = (Parsers::ColumnList.parse(map['Columns']) unless map['Columns'].nil?)
        return data
      end
    end

    class ColumnList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class OutputColumnList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::OutputColumn.parse(value) unless value.nil?
        end
        data
      end
    end

    class OutputColumn
      def self.parse(map)
        data = Types::OutputColumn.new
        data.name = map['Name']
        data.description = map['Description']
        data.type = map['Type']
        return data
      end
    end

    class LogicalTableMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Parsers::LogicalTable.parse(value) unless value.nil?
        end
        data
      end
    end

    class LogicalTable
      def self.parse(map)
        data = Types::LogicalTable.new
        data.alias = map['Alias']
        data.data_transforms = (Parsers::TransformOperationList.parse(map['DataTransforms']) unless map['DataTransforms'].nil?)
        data.source = (Parsers::LogicalTableSource.parse(map['Source']) unless map['Source'].nil?)
        return data
      end
    end

    class LogicalTableSource
      def self.parse(map)
        data = Types::LogicalTableSource.new
        data.join_instruction = (Parsers::JoinInstruction.parse(map['JoinInstruction']) unless map['JoinInstruction'].nil?)
        data.physical_table_id = map['PhysicalTableId']
        data.data_set_arn = map['DataSetArn']
        return data
      end
    end

    class JoinInstruction
      def self.parse(map)
        data = Types::JoinInstruction.new
        data.left_operand = map['LeftOperand']
        data.right_operand = map['RightOperand']
        data.left_join_key_properties = (Parsers::JoinKeyProperties.parse(map['LeftJoinKeyProperties']) unless map['LeftJoinKeyProperties'].nil?)
        data.right_join_key_properties = (Parsers::JoinKeyProperties.parse(map['RightJoinKeyProperties']) unless map['RightJoinKeyProperties'].nil?)
        data.type = map['Type']
        data.on_clause = map['OnClause']
        return data
      end
    end

    class JoinKeyProperties
      def self.parse(map)
        data = Types::JoinKeyProperties.new
        data.unique_key = map['UniqueKey']
        return data
      end
    end

    class TransformOperationList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::TransformOperation.parse(value) unless value.nil?
        end
        data
      end
    end

    class TransformOperation
      def self.parse(map)
        key, value = map.flatten
        case key
        when 'ProjectOperation'
          value = (Parsers::ProjectOperation.parse(value) unless value.nil?)
          Types::TransformOperation::ProjectOperation.new(value) if value
        when 'FilterOperation'
          value = (Parsers::FilterOperation.parse(value) unless value.nil?)
          Types::TransformOperation::FilterOperation.new(value) if value
        when 'CreateColumnsOperation'
          value = (Parsers::CreateColumnsOperation.parse(value) unless value.nil?)
          Types::TransformOperation::CreateColumnsOperation.new(value) if value
        when 'RenameColumnOperation'
          value = (Parsers::RenameColumnOperation.parse(value) unless value.nil?)
          Types::TransformOperation::RenameColumnOperation.new(value) if value
        when 'CastColumnTypeOperation'
          value = (Parsers::CastColumnTypeOperation.parse(value) unless value.nil?)
          Types::TransformOperation::CastColumnTypeOperation.new(value) if value
        when 'TagColumnOperation'
          value = (Parsers::TagColumnOperation.parse(value) unless value.nil?)
          Types::TransformOperation::TagColumnOperation.new(value) if value
        when 'UntagColumnOperation'
          value = (Parsers::UntagColumnOperation.parse(value) unless value.nil?)
          Types::TransformOperation::UntagColumnOperation.new(value) if value
        else
          Types::TransformOperation::Unknown.new({name: key, value: value})
        end
      end
    end

    class UntagColumnOperation
      def self.parse(map)
        data = Types::UntagColumnOperation.new
        data.column_name = map['ColumnName']
        data.tag_names = (Parsers::ColumnTagNames.parse(map['TagNames']) unless map['TagNames'].nil?)
        return data
      end
    end

    class ColumnTagNames
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class TagColumnOperation
      def self.parse(map)
        data = Types::TagColumnOperation.new
        data.column_name = map['ColumnName']
        data.tags = (Parsers::ColumnTagList.parse(map['Tags']) unless map['Tags'].nil?)
        return data
      end
    end

    class ColumnTagList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ColumnTag.parse(value) unless value.nil?
        end
        data
      end
    end

    class ColumnTag
      def self.parse(map)
        data = Types::ColumnTag.new
        data.column_geographic_role = map['ColumnGeographicRole']
        data.column_description = (Parsers::ColumnDescription.parse(map['ColumnDescription']) unless map['ColumnDescription'].nil?)
        return data
      end
    end

    class ColumnDescription
      def self.parse(map)
        data = Types::ColumnDescription.new
        data.text = map['Text']
        return data
      end
    end

    class CastColumnTypeOperation
      def self.parse(map)
        data = Types::CastColumnTypeOperation.new
        data.column_name = map['ColumnName']
        data.new_column_type = map['NewColumnType']
        data.format = map['Format']
        return data
      end
    end

    class RenameColumnOperation
      def self.parse(map)
        data = Types::RenameColumnOperation.new
        data.column_name = map['ColumnName']
        data.new_column_name = map['NewColumnName']
        return data
      end
    end

    class CreateColumnsOperation
      def self.parse(map)
        data = Types::CreateColumnsOperation.new
        data.columns = (Parsers::CalculatedColumnList.parse(map['Columns']) unless map['Columns'].nil?)
        return data
      end
    end

    class CalculatedColumnList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::CalculatedColumn.parse(value) unless value.nil?
        end
        data
      end
    end

    class CalculatedColumn
      def self.parse(map)
        data = Types::CalculatedColumn.new
        data.column_name = map['ColumnName']
        data.column_id = map['ColumnId']
        data.expression = map['Expression']
        return data
      end
    end

    class FilterOperation
      def self.parse(map)
        data = Types::FilterOperation.new
        data.condition_expression = map['ConditionExpression']
        return data
      end
    end

    class ProjectOperation
      def self.parse(map)
        data = Types::ProjectOperation.new
        data.projected_columns = (Parsers::ProjectedColumnList.parse(map['ProjectedColumns']) unless map['ProjectedColumns'].nil?)
        return data
      end
    end

    class ProjectedColumnList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class PhysicalTableMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Parsers::PhysicalTable.parse(value) unless value.nil?
        end
        data
      end
    end

    class PhysicalTable
      def self.parse(map)
        key, value = map.flatten
        case key
        when 'RelationalTable'
          value = (Parsers::RelationalTable.parse(value) unless value.nil?)
          Types::PhysicalTable::RelationalTable.new(value) if value
        when 'CustomSql'
          value = (Parsers::CustomSql.parse(value) unless value.nil?)
          Types::PhysicalTable::CustomSql.new(value) if value
        when 'S3Source'
          value = (Parsers::S3Source.parse(value) unless value.nil?)
          Types::PhysicalTable::S3Source.new(value) if value
        else
          Types::PhysicalTable::Unknown.new({name: key, value: value})
        end
      end
    end

    class S3Source
      def self.parse(map)
        data = Types::S3Source.new
        data.data_source_arn = map['DataSourceArn']
        data.upload_settings = (Parsers::UploadSettings.parse(map['UploadSettings']) unless map['UploadSettings'].nil?)
        data.input_columns = (Parsers::InputColumnList.parse(map['InputColumns']) unless map['InputColumns'].nil?)
        return data
      end
    end

    class InputColumnList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::InputColumn.parse(value) unless value.nil?
        end
        data
      end
    end

    class InputColumn
      def self.parse(map)
        data = Types::InputColumn.new
        data.name = map['Name']
        data.type = map['Type']
        return data
      end
    end

    class UploadSettings
      def self.parse(map)
        data = Types::UploadSettings.new
        data.format = map['Format']
        data.start_from_row = map['StartFromRow']
        data.contains_header = map['ContainsHeader']
        data.text_qualifier = map['TextQualifier']
        data.delimiter = map['Delimiter']
        return data
      end
    end

    class CustomSql
      def self.parse(map)
        data = Types::CustomSql.new
        data.data_source_arn = map['DataSourceArn']
        data.name = map['Name']
        data.sql_query = map['SqlQuery']
        data.columns = (Parsers::InputColumnList.parse(map['Columns']) unless map['Columns'].nil?)
        return data
      end
    end

    class RelationalTable
      def self.parse(map)
        data = Types::RelationalTable.new
        data.data_source_arn = map['DataSourceArn']
        data.catalog = map['Catalog']
        data.schema = map['Schema']
        data.name = map['Name']
        data.input_columns = (Parsers::InputColumnList.parse(map['InputColumns']) unless map['InputColumns'].nil?)
        return data
      end
    end

    # Operation Parser for DescribeDataSetPermissions
    class DescribeDataSetPermissions
      def self.parse(http_resp)
        data = Types::DescribeDataSetPermissionsOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.data_set_arn = map['DataSetArn']
        data.data_set_id = map['DataSetId']
        data.permissions = (Parsers::ResourcePermissionList.parse(map['Permissions']) unless map['Permissions'].nil?)
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for DescribeDataSource
    class DescribeDataSource
      def self.parse(http_resp)
        data = Types::DescribeDataSourceOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.data_source = (Parsers::DataSource.parse(map['DataSource']) unless map['DataSource'].nil?)
        data.request_id = map['RequestId']
        data
      end
    end

    class DataSource
      def self.parse(map)
        data = Types::DataSource.new
        data.arn = map['Arn']
        data.data_source_id = map['DataSourceId']
        data.name = map['Name']
        data.type = map['Type']
        data.status = map['Status']
        data.created_time = Time.at(map['CreatedTime'].to_i) if map['CreatedTime']
        data.last_updated_time = Time.at(map['LastUpdatedTime'].to_i) if map['LastUpdatedTime']
        data.data_source_parameters = (Parsers::DataSourceParameters.parse(map['DataSourceParameters']) unless map['DataSourceParameters'].nil?)
        data.alternate_data_source_parameters = (Parsers::DataSourceParametersList.parse(map['AlternateDataSourceParameters']) unless map['AlternateDataSourceParameters'].nil?)
        data.vpc_connection_properties = (Parsers::VpcConnectionProperties.parse(map['VpcConnectionProperties']) unless map['VpcConnectionProperties'].nil?)
        data.ssl_properties = (Parsers::SslProperties.parse(map['SslProperties']) unless map['SslProperties'].nil?)
        data.error_info = (Parsers::DataSourceErrorInfo.parse(map['ErrorInfo']) unless map['ErrorInfo'].nil?)
        return data
      end
    end

    class DataSourceErrorInfo
      def self.parse(map)
        data = Types::DataSourceErrorInfo.new
        data.type = map['Type']
        data.message = map['Message']
        return data
      end
    end

    class SslProperties
      def self.parse(map)
        data = Types::SslProperties.new
        data.disable_ssl = map['DisableSsl']
        return data
      end
    end

    class VpcConnectionProperties
      def self.parse(map)
        data = Types::VpcConnectionProperties.new
        data.vpc_connection_arn = map['VpcConnectionArn']
        return data
      end
    end

    class DataSourceParametersList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::DataSourceParameters.parse(value) unless value.nil?
        end
        data
      end
    end

    class DataSourceParameters
      def self.parse(map)
        key, value = map.flatten
        case key
        when 'AmazonElasticsearchParameters'
          value = (Parsers::AmazonElasticsearchParameters.parse(value) unless value.nil?)
          Types::DataSourceParameters::AmazonElasticsearchParameters.new(value) if value
        when 'AthenaParameters'
          value = (Parsers::AthenaParameters.parse(value) unless value.nil?)
          Types::DataSourceParameters::AthenaParameters.new(value) if value
        when 'AuroraParameters'
          value = (Parsers::AuroraParameters.parse(value) unless value.nil?)
          Types::DataSourceParameters::AuroraParameters.new(value) if value
        when 'AuroraPostgreSqlParameters'
          value = (Parsers::AuroraPostgreSqlParameters.parse(value) unless value.nil?)
          Types::DataSourceParameters::AuroraPostgreSqlParameters.new(value) if value
        when 'AwsIotAnalyticsParameters'
          value = (Parsers::AwsIotAnalyticsParameters.parse(value) unless value.nil?)
          Types::DataSourceParameters::AwsIotAnalyticsParameters.new(value) if value
        when 'JiraParameters'
          value = (Parsers::JiraParameters.parse(value) unless value.nil?)
          Types::DataSourceParameters::JiraParameters.new(value) if value
        when 'MariaDbParameters'
          value = (Parsers::MariaDbParameters.parse(value) unless value.nil?)
          Types::DataSourceParameters::MariaDbParameters.new(value) if value
        when 'MySqlParameters'
          value = (Parsers::MySqlParameters.parse(value) unless value.nil?)
          Types::DataSourceParameters::MySqlParameters.new(value) if value
        when 'OracleParameters'
          value = (Parsers::OracleParameters.parse(value) unless value.nil?)
          Types::DataSourceParameters::OracleParameters.new(value) if value
        when 'PostgreSqlParameters'
          value = (Parsers::PostgreSqlParameters.parse(value) unless value.nil?)
          Types::DataSourceParameters::PostgreSqlParameters.new(value) if value
        when 'PrestoParameters'
          value = (Parsers::PrestoParameters.parse(value) unless value.nil?)
          Types::DataSourceParameters::PrestoParameters.new(value) if value
        when 'RdsParameters'
          value = (Parsers::RdsParameters.parse(value) unless value.nil?)
          Types::DataSourceParameters::RdsParameters.new(value) if value
        when 'RedshiftParameters'
          value = (Parsers::RedshiftParameters.parse(value) unless value.nil?)
          Types::DataSourceParameters::RedshiftParameters.new(value) if value
        when 'S3Parameters'
          value = (Parsers::S3Parameters.parse(value) unless value.nil?)
          Types::DataSourceParameters::S3Parameters.new(value) if value
        when 'ServiceNowParameters'
          value = (Parsers::ServiceNowParameters.parse(value) unless value.nil?)
          Types::DataSourceParameters::ServiceNowParameters.new(value) if value
        when 'SnowflakeParameters'
          value = (Parsers::SnowflakeParameters.parse(value) unless value.nil?)
          Types::DataSourceParameters::SnowflakeParameters.new(value) if value
        when 'SparkParameters'
          value = (Parsers::SparkParameters.parse(value) unless value.nil?)
          Types::DataSourceParameters::SparkParameters.new(value) if value
        when 'SqlServerParameters'
          value = (Parsers::SqlServerParameters.parse(value) unless value.nil?)
          Types::DataSourceParameters::SqlServerParameters.new(value) if value
        when 'TeradataParameters'
          value = (Parsers::TeradataParameters.parse(value) unless value.nil?)
          Types::DataSourceParameters::TeradataParameters.new(value) if value
        when 'TwitterParameters'
          value = (Parsers::TwitterParameters.parse(value) unless value.nil?)
          Types::DataSourceParameters::TwitterParameters.new(value) if value
        when 'AmazonOpenSearchParameters'
          value = (Parsers::AmazonOpenSearchParameters.parse(value) unless value.nil?)
          Types::DataSourceParameters::AmazonOpenSearchParameters.new(value) if value
        when 'ExasolParameters'
          value = (Parsers::ExasolParameters.parse(value) unless value.nil?)
          Types::DataSourceParameters::ExasolParameters.new(value) if value
        else
          Types::DataSourceParameters::Unknown.new({name: key, value: value})
        end
      end
    end

    class ExasolParameters
      def self.parse(map)
        data = Types::ExasolParameters.new
        data.host = map['Host']
        data.port = map['Port']
        return data
      end
    end

    class AmazonOpenSearchParameters
      def self.parse(map)
        data = Types::AmazonOpenSearchParameters.new
        data.domain = map['Domain']
        return data
      end
    end

    class TwitterParameters
      def self.parse(map)
        data = Types::TwitterParameters.new
        data.query = map['Query']
        data.max_rows = map['MaxRows']
        return data
      end
    end

    class TeradataParameters
      def self.parse(map)
        data = Types::TeradataParameters.new
        data.host = map['Host']
        data.port = map['Port']
        data.database = map['Database']
        return data
      end
    end

    class SqlServerParameters
      def self.parse(map)
        data = Types::SqlServerParameters.new
        data.host = map['Host']
        data.port = map['Port']
        data.database = map['Database']
        return data
      end
    end

    class SparkParameters
      def self.parse(map)
        data = Types::SparkParameters.new
        data.host = map['Host']
        data.port = map['Port']
        return data
      end
    end

    class SnowflakeParameters
      def self.parse(map)
        data = Types::SnowflakeParameters.new
        data.host = map['Host']
        data.database = map['Database']
        data.warehouse = map['Warehouse']
        return data
      end
    end

    class ServiceNowParameters
      def self.parse(map)
        data = Types::ServiceNowParameters.new
        data.site_base_url = map['SiteBaseUrl']
        return data
      end
    end

    class S3Parameters
      def self.parse(map)
        data = Types::S3Parameters.new
        data.manifest_file_location = (Parsers::ManifestFileLocation.parse(map['ManifestFileLocation']) unless map['ManifestFileLocation'].nil?)
        return data
      end
    end

    class ManifestFileLocation
      def self.parse(map)
        data = Types::ManifestFileLocation.new
        data.bucket = map['Bucket']
        data.key = map['Key']
        return data
      end
    end

    class RedshiftParameters
      def self.parse(map)
        data = Types::RedshiftParameters.new
        data.host = map['Host']
        data.port = map['Port']
        data.database = map['Database']
        data.cluster_id = map['ClusterId']
        return data
      end
    end

    class RdsParameters
      def self.parse(map)
        data = Types::RdsParameters.new
        data.instance_id = map['InstanceId']
        data.database = map['Database']
        return data
      end
    end

    class PrestoParameters
      def self.parse(map)
        data = Types::PrestoParameters.new
        data.host = map['Host']
        data.port = map['Port']
        data.catalog = map['Catalog']
        return data
      end
    end

    class PostgreSqlParameters
      def self.parse(map)
        data = Types::PostgreSqlParameters.new
        data.host = map['Host']
        data.port = map['Port']
        data.database = map['Database']
        return data
      end
    end

    class OracleParameters
      def self.parse(map)
        data = Types::OracleParameters.new
        data.host = map['Host']
        data.port = map['Port']
        data.database = map['Database']
        return data
      end
    end

    class MySqlParameters
      def self.parse(map)
        data = Types::MySqlParameters.new
        data.host = map['Host']
        data.port = map['Port']
        data.database = map['Database']
        return data
      end
    end

    class MariaDbParameters
      def self.parse(map)
        data = Types::MariaDbParameters.new
        data.host = map['Host']
        data.port = map['Port']
        data.database = map['Database']
        return data
      end
    end

    class JiraParameters
      def self.parse(map)
        data = Types::JiraParameters.new
        data.site_base_url = map['SiteBaseUrl']
        return data
      end
    end

    class AwsIotAnalyticsParameters
      def self.parse(map)
        data = Types::AwsIotAnalyticsParameters.new
        data.data_set_name = map['DataSetName']
        return data
      end
    end

    class AuroraPostgreSqlParameters
      def self.parse(map)
        data = Types::AuroraPostgreSqlParameters.new
        data.host = map['Host']
        data.port = map['Port']
        data.database = map['Database']
        return data
      end
    end

    class AuroraParameters
      def self.parse(map)
        data = Types::AuroraParameters.new
        data.host = map['Host']
        data.port = map['Port']
        data.database = map['Database']
        return data
      end
    end

    class AthenaParameters
      def self.parse(map)
        data = Types::AthenaParameters.new
        data.work_group = map['WorkGroup']
        return data
      end
    end

    class AmazonElasticsearchParameters
      def self.parse(map)
        data = Types::AmazonElasticsearchParameters.new
        data.domain = map['Domain']
        return data
      end
    end

    # Operation Parser for DescribeDataSourcePermissions
    class DescribeDataSourcePermissions
      def self.parse(http_resp)
        data = Types::DescribeDataSourcePermissionsOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.data_source_arn = map['DataSourceArn']
        data.data_source_id = map['DataSourceId']
        data.permissions = (Parsers::ResourcePermissionList.parse(map['Permissions']) unless map['Permissions'].nil?)
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for DescribeFolder
    class DescribeFolder
      def self.parse(http_resp)
        data = Types::DescribeFolderOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.folder = (Parsers::Folder.parse(map['Folder']) unless map['Folder'].nil?)
        data.request_id = map['RequestId']
        data
      end
    end

    class Folder
      def self.parse(map)
        data = Types::Folder.new
        data.folder_id = map['FolderId']
        data.arn = map['Arn']
        data.name = map['Name']
        data.folder_type = map['FolderType']
        data.folder_path = (Parsers::Path.parse(map['FolderPath']) unless map['FolderPath'].nil?)
        data.created_time = Time.at(map['CreatedTime'].to_i) if map['CreatedTime']
        data.last_updated_time = Time.at(map['LastUpdatedTime'].to_i) if map['LastUpdatedTime']
        return data
      end
    end

    class Path
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for DescribeFolderPermissions
    class DescribeFolderPermissions
      def self.parse(http_resp)
        data = Types::DescribeFolderPermissionsOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.folder_id = map['FolderId']
        data.arn = map['Arn']
        data.permissions = (Parsers::ResourcePermissionList.parse(map['Permissions']) unless map['Permissions'].nil?)
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for DescribeFolderResolvedPermissions
    class DescribeFolderResolvedPermissions
      def self.parse(http_resp)
        data = Types::DescribeFolderResolvedPermissionsOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.folder_id = map['FolderId']
        data.arn = map['Arn']
        data.permissions = (Parsers::ResourcePermissionList.parse(map['Permissions']) unless map['Permissions'].nil?)
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for DescribeGroup
    class DescribeGroup
      def self.parse(http_resp)
        data = Types::DescribeGroupOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.group = (Parsers::Group.parse(map['Group']) unless map['Group'].nil?)
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for DescribeGroupMembership
    class DescribeGroupMembership
      def self.parse(http_resp)
        data = Types::DescribeGroupMembershipOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.group_member = (Parsers::GroupMember.parse(map['GroupMember']) unless map['GroupMember'].nil?)
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for DescribeIAMPolicyAssignment
    class DescribeIAMPolicyAssignment
      def self.parse(http_resp)
        data = Types::DescribeIAMPolicyAssignmentOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.iam_policy_assignment = (Parsers::IAMPolicyAssignment.parse(map['IAMPolicyAssignment']) unless map['IAMPolicyAssignment'].nil?)
        data.request_id = map['RequestId']
        data
      end
    end

    class IAMPolicyAssignment
      def self.parse(map)
        data = Types::IAMPolicyAssignment.new
        data.aws_account_id = map['AwsAccountId']
        data.assignment_id = map['AssignmentId']
        data.assignment_name = map['AssignmentName']
        data.policy_arn = map['PolicyArn']
        data.identities = (Parsers::IdentityMap.parse(map['Identities']) unless map['Identities'].nil?)
        data.assignment_status = map['AssignmentStatus']
        return data
      end
    end

    # Error Parser for InvalidNextTokenException
    class InvalidNextTokenException
      def self.parse(http_resp)
        data = Types::InvalidNextTokenException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for DescribeIngestion
    class DescribeIngestion
      def self.parse(http_resp)
        data = Types::DescribeIngestionOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.ingestion = (Parsers::Ingestion.parse(map['Ingestion']) unless map['Ingestion'].nil?)
        data.request_id = map['RequestId']
        data
      end
    end

    class Ingestion
      def self.parse(map)
        data = Types::Ingestion.new
        data.arn = map['Arn']
        data.ingestion_id = map['IngestionId']
        data.ingestion_status = map['IngestionStatus']
        data.error_info = (Parsers::ErrorInfo.parse(map['ErrorInfo']) unless map['ErrorInfo'].nil?)
        data.row_info = (Parsers::RowInfo.parse(map['RowInfo']) unless map['RowInfo'].nil?)
        data.queue_info = (Parsers::QueueInfo.parse(map['QueueInfo']) unless map['QueueInfo'].nil?)
        data.created_time = Time.at(map['CreatedTime'].to_i) if map['CreatedTime']
        data.ingestion_time_in_seconds = map['IngestionTimeInSeconds']
        data.ingestion_size_in_bytes = map['IngestionSizeInBytes']
        data.request_source = map['RequestSource']
        data.request_type = map['RequestType']
        return data
      end
    end

    class QueueInfo
      def self.parse(map)
        data = Types::QueueInfo.new
        data.waiting_on_ingestion = map['WaitingOnIngestion']
        data.queued_ingestion = map['QueuedIngestion']
        return data
      end
    end

    class RowInfo
      def self.parse(map)
        data = Types::RowInfo.new
        data.rows_ingested = map['RowsIngested']
        data.rows_dropped = map['RowsDropped']
        data.total_rows_in_dataset = map['TotalRowsInDataset']
        return data
      end
    end

    class ErrorInfo
      def self.parse(map)
        data = Types::ErrorInfo.new
        data.type = map['Type']
        data.message = map['Message']
        return data
      end
    end

    # Operation Parser for DescribeIpRestriction
    class DescribeIpRestriction
      def self.parse(http_resp)
        data = Types::DescribeIpRestrictionOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.aws_account_id = map['AwsAccountId']
        data.ip_restriction_rule_map = (Parsers::IpRestrictionRuleMap.parse(map['IpRestrictionRuleMap']) unless map['IpRestrictionRuleMap'].nil?)
        data.enabled = map['Enabled']
        data.request_id = map['RequestId']
        data
      end
    end

    class IpRestrictionRuleMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for DescribeNamespace
    class DescribeNamespace
      def self.parse(http_resp)
        data = Types::DescribeNamespaceOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.namespace = (Parsers::NamespaceInfoV2.parse(map['Namespace']) unless map['Namespace'].nil?)
        data.request_id = map['RequestId']
        data
      end
    end

    class NamespaceInfoV2
      def self.parse(map)
        data = Types::NamespaceInfoV2.new
        data.name = map['Name']
        data.arn = map['Arn']
        data.capacity_region = map['CapacityRegion']
        data.creation_status = map['CreationStatus']
        data.identity_store = map['IdentityStore']
        data.namespace_error = (Parsers::NamespaceError.parse(map['NamespaceError']) unless map['NamespaceError'].nil?)
        return data
      end
    end

    class NamespaceError
      def self.parse(map)
        data = Types::NamespaceError.new
        data.type = map['Type']
        data.message = map['Message']
        return data
      end
    end

    # Operation Parser for DescribeTemplate
    class DescribeTemplate
      def self.parse(http_resp)
        data = Types::DescribeTemplateOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.template = (Parsers::Template.parse(map['Template']) unless map['Template'].nil?)
        data.request_id = map['RequestId']
        data
      end
    end

    class Template
      def self.parse(map)
        data = Types::Template.new
        data.arn = map['Arn']
        data.name = map['Name']
        data.version = (Parsers::TemplateVersion.parse(map['Version']) unless map['Version'].nil?)
        data.template_id = map['TemplateId']
        data.last_updated_time = Time.at(map['LastUpdatedTime'].to_i) if map['LastUpdatedTime']
        data.created_time = Time.at(map['CreatedTime'].to_i) if map['CreatedTime']
        return data
      end
    end

    class TemplateVersion
      def self.parse(map)
        data = Types::TemplateVersion.new
        data.created_time = Time.at(map['CreatedTime'].to_i) if map['CreatedTime']
        data.errors = (Parsers::TemplateErrorList.parse(map['Errors']) unless map['Errors'].nil?)
        data.version_number = map['VersionNumber']
        data.status = map['Status']
        data.data_set_configurations = (Parsers::DataSetConfigurationList.parse(map['DataSetConfigurations']) unless map['DataSetConfigurations'].nil?)
        data.description = map['Description']
        data.source_entity_arn = map['SourceEntityArn']
        data.theme_arn = map['ThemeArn']
        data.sheets = (Parsers::SheetList.parse(map['Sheets']) unless map['Sheets'].nil?)
        return data
      end
    end

    class DataSetConfigurationList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::DataSetConfiguration.parse(value) unless value.nil?
        end
        data
      end
    end

    class DataSetConfiguration
      def self.parse(map)
        data = Types::DataSetConfiguration.new
        data.placeholder = map['Placeholder']
        data.data_set_schema = (Parsers::DataSetSchema.parse(map['DataSetSchema']) unless map['DataSetSchema'].nil?)
        data.column_group_schema_list = (Parsers::ColumnGroupSchemaList.parse(map['ColumnGroupSchemaList']) unless map['ColumnGroupSchemaList'].nil?)
        return data
      end
    end

    class ColumnGroupSchemaList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ColumnGroupSchema.parse(value) unless value.nil?
        end
        data
      end
    end

    class ColumnGroupSchema
      def self.parse(map)
        data = Types::ColumnGroupSchema.new
        data.name = map['Name']
        data.column_group_column_schema_list = (Parsers::ColumnGroupColumnSchemaList.parse(map['ColumnGroupColumnSchemaList']) unless map['ColumnGroupColumnSchemaList'].nil?)
        return data
      end
    end

    class ColumnGroupColumnSchemaList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ColumnGroupColumnSchema.parse(value) unless value.nil?
        end
        data
      end
    end

    class ColumnGroupColumnSchema
      def self.parse(map)
        data = Types::ColumnGroupColumnSchema.new
        data.name = map['Name']
        return data
      end
    end

    class DataSetSchema
      def self.parse(map)
        data = Types::DataSetSchema.new
        data.column_schema_list = (Parsers::ColumnSchemaList.parse(map['ColumnSchemaList']) unless map['ColumnSchemaList'].nil?)
        return data
      end
    end

    class ColumnSchemaList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ColumnSchema.parse(value) unless value.nil?
        end
        data
      end
    end

    class ColumnSchema
      def self.parse(map)
        data = Types::ColumnSchema.new
        data.name = map['Name']
        data.data_type = map['DataType']
        data.geographic_role = map['GeographicRole']
        return data
      end
    end

    class TemplateErrorList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::TemplateError.parse(value) unless value.nil?
        end
        data
      end
    end

    class TemplateError
      def self.parse(map)
        data = Types::TemplateError.new
        data.type = map['Type']
        data.message = map['Message']
        return data
      end
    end

    # Operation Parser for DescribeTemplateAlias
    class DescribeTemplateAlias
      def self.parse(http_resp)
        data = Types::DescribeTemplateAliasOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.template_alias = (Parsers::TemplateAlias.parse(map['TemplateAlias']) unless map['TemplateAlias'].nil?)
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for DescribeTemplatePermissions
    class DescribeTemplatePermissions
      def self.parse(http_resp)
        data = Types::DescribeTemplatePermissionsOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.template_id = map['TemplateId']
        data.template_arn = map['TemplateArn']
        data.permissions = (Parsers::ResourcePermissionList.parse(map['Permissions']) unless map['Permissions'].nil?)
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for DescribeTheme
    class DescribeTheme
      def self.parse(http_resp)
        data = Types::DescribeThemeOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.theme = (Parsers::Theme.parse(map['Theme']) unless map['Theme'].nil?)
        data.request_id = map['RequestId']
        data
      end
    end

    class Theme
      def self.parse(map)
        data = Types::Theme.new
        data.arn = map['Arn']
        data.name = map['Name']
        data.theme_id = map['ThemeId']
        data.version = (Parsers::ThemeVersion.parse(map['Version']) unless map['Version'].nil?)
        data.created_time = Time.at(map['CreatedTime'].to_i) if map['CreatedTime']
        data.last_updated_time = Time.at(map['LastUpdatedTime'].to_i) if map['LastUpdatedTime']
        data.type = map['Type']
        return data
      end
    end

    class ThemeVersion
      def self.parse(map)
        data = Types::ThemeVersion.new
        data.version_number = map['VersionNumber']
        data.arn = map['Arn']
        data.description = map['Description']
        data.base_theme_id = map['BaseThemeId']
        data.created_time = Time.at(map['CreatedTime'].to_i) if map['CreatedTime']
        data.configuration = (Parsers::ThemeConfiguration.parse(map['Configuration']) unless map['Configuration'].nil?)
        data.errors = (Parsers::ThemeErrorList.parse(map['Errors']) unless map['Errors'].nil?)
        data.status = map['Status']
        return data
      end
    end

    class ThemeErrorList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ThemeError.parse(value) unless value.nil?
        end
        data
      end
    end

    class ThemeError
      def self.parse(map)
        data = Types::ThemeError.new
        data.type = map['Type']
        data.message = map['Message']
        return data
      end
    end

    class ThemeConfiguration
      def self.parse(map)
        data = Types::ThemeConfiguration.new
        data.data_color_palette = (Parsers::DataColorPalette.parse(map['DataColorPalette']) unless map['DataColorPalette'].nil?)
        data.ui_color_palette = (Parsers::UIColorPalette.parse(map['UIColorPalette']) unless map['UIColorPalette'].nil?)
        data.sheet = (Parsers::SheetStyle.parse(map['Sheet']) unless map['Sheet'].nil?)
        return data
      end
    end

    class SheetStyle
      def self.parse(map)
        data = Types::SheetStyle.new
        data.tile = (Parsers::TileStyle.parse(map['Tile']) unless map['Tile'].nil?)
        data.tile_layout = (Parsers::TileLayoutStyle.parse(map['TileLayout']) unless map['TileLayout'].nil?)
        return data
      end
    end

    class TileLayoutStyle
      def self.parse(map)
        data = Types::TileLayoutStyle.new
        data.gutter = (Parsers::GutterStyle.parse(map['Gutter']) unless map['Gutter'].nil?)
        data.margin = (Parsers::MarginStyle.parse(map['Margin']) unless map['Margin'].nil?)
        return data
      end
    end

    class MarginStyle
      def self.parse(map)
        data = Types::MarginStyle.new
        data.show = map['Show']
        return data
      end
    end

    class GutterStyle
      def self.parse(map)
        data = Types::GutterStyle.new
        data.show = map['Show']
        return data
      end
    end

    class TileStyle
      def self.parse(map)
        data = Types::TileStyle.new
        data.border = (Parsers::BorderStyle.parse(map['Border']) unless map['Border'].nil?)
        return data
      end
    end

    class BorderStyle
      def self.parse(map)
        data = Types::BorderStyle.new
        data.show = map['Show']
        return data
      end
    end

    class UIColorPalette
      def self.parse(map)
        data = Types::UIColorPalette.new
        data.primary_foreground = map['PrimaryForeground']
        data.primary_background = map['PrimaryBackground']
        data.secondary_foreground = map['SecondaryForeground']
        data.secondary_background = map['SecondaryBackground']
        data.accent = map['Accent']
        data.accent_foreground = map['AccentForeground']
        data.danger = map['Danger']
        data.danger_foreground = map['DangerForeground']
        data.warning = map['Warning']
        data.warning_foreground = map['WarningForeground']
        data.success = map['Success']
        data.success_foreground = map['SuccessForeground']
        data.dimension = map['Dimension']
        data.dimension_foreground = map['DimensionForeground']
        data.measure = map['Measure']
        data.measure_foreground = map['MeasureForeground']
        return data
      end
    end

    class DataColorPalette
      def self.parse(map)
        data = Types::DataColorPalette.new
        data.colors = (Parsers::ColorList.parse(map['Colors']) unless map['Colors'].nil?)
        data.min_max_gradient = (Parsers::ColorList.parse(map['MinMaxGradient']) unless map['MinMaxGradient'].nil?)
        data.empty_fill_color = map['EmptyFillColor']
        return data
      end
    end

    class ColorList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for DescribeThemeAlias
    class DescribeThemeAlias
      def self.parse(http_resp)
        data = Types::DescribeThemeAliasOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.theme_alias = (Parsers::ThemeAlias.parse(map['ThemeAlias']) unless map['ThemeAlias'].nil?)
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for DescribeThemePermissions
    class DescribeThemePermissions
      def self.parse(http_resp)
        data = Types::DescribeThemePermissionsOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.theme_id = map['ThemeId']
        data.theme_arn = map['ThemeArn']
        data.permissions = (Parsers::ResourcePermissionList.parse(map['Permissions']) unless map['Permissions'].nil?)
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for DescribeUser
    class DescribeUser
      def self.parse(http_resp)
        data = Types::DescribeUserOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.user = (Parsers::User.parse(map['User']) unless map['User'].nil?)
        data.request_id = map['RequestId']
        data
      end
    end

    class User
      def self.parse(map)
        data = Types::User.new
        data.arn = map['Arn']
        data.user_name = map['UserName']
        data.email = map['Email']
        data.role = map['Role']
        data.identity_type = map['IdentityType']
        data.active = map['Active']
        data.principal_id = map['PrincipalId']
        data.custom_permissions_name = map['CustomPermissionsName']
        data.external_login_federation_provider_type = map['ExternalLoginFederationProviderType']
        data.external_login_federation_provider_url = map['ExternalLoginFederationProviderUrl']
        data.external_login_id = map['ExternalLoginId']
        return data
      end
    end

    # Operation Parser for GenerateEmbedUrlForAnonymousUser
    class GenerateEmbedUrlForAnonymousUser
      def self.parse(http_resp)
        data = Types::GenerateEmbedUrlForAnonymousUserOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.embed_url = map['EmbedUrl']
        data.request_id = map['RequestId']
        data
      end
    end

    # Error Parser for SessionLifetimeInMinutesInvalidException
    class SessionLifetimeInMinutesInvalidException
      def self.parse(http_resp)
        data = Types::SessionLifetimeInMinutesInvalidException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.request_id = map['RequestId']
        data
      end
    end

    # Error Parser for UnsupportedPricingPlanException
    class UnsupportedPricingPlanException
      def self.parse(http_resp)
        data = Types::UnsupportedPricingPlanException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for GenerateEmbedUrlForRegisteredUser
    class GenerateEmbedUrlForRegisteredUser
      def self.parse(http_resp)
        data = Types::GenerateEmbedUrlForRegisteredUserOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.embed_url = map['EmbedUrl']
        data.request_id = map['RequestId']
        data
      end
    end

    # Error Parser for QuickSightUserNotFoundException
    class QuickSightUserNotFoundException
      def self.parse(http_resp)
        data = Types::QuickSightUserNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for GetDashboardEmbedUrl
    class GetDashboardEmbedUrl
      def self.parse(http_resp)
        data = Types::GetDashboardEmbedUrlOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.embed_url = map['EmbedUrl']
        data.request_id = map['RequestId']
        data
      end
    end

    # Error Parser for IdentityTypeNotSupportedException
    class IdentityTypeNotSupportedException
      def self.parse(http_resp)
        data = Types::IdentityTypeNotSupportedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.request_id = map['RequestId']
        data
      end
    end

    # Error Parser for DomainNotWhitelistedException
    class DomainNotWhitelistedException
      def self.parse(http_resp)
        data = Types::DomainNotWhitelistedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for GetSessionEmbedUrl
    class GetSessionEmbedUrl
      def self.parse(http_resp)
        data = Types::GetSessionEmbedUrlOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.embed_url = map['EmbedUrl']
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for ListAnalyses
    class ListAnalyses
      def self.parse(http_resp)
        data = Types::ListAnalysesOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.analysis_summary_list = (Parsers::AnalysisSummaryList.parse(map['AnalysisSummaryList']) unless map['AnalysisSummaryList'].nil?)
        data.next_token = map['NextToken']
        data.request_id = map['RequestId']
        data
      end
    end

    class AnalysisSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AnalysisSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class AnalysisSummary
      def self.parse(map)
        data = Types::AnalysisSummary.new
        data.arn = map['Arn']
        data.analysis_id = map['AnalysisId']
        data.name = map['Name']
        data.status = map['Status']
        data.created_time = Time.at(map['CreatedTime'].to_i) if map['CreatedTime']
        data.last_updated_time = Time.at(map['LastUpdatedTime'].to_i) if map['LastUpdatedTime']
        return data
      end
    end

    # Operation Parser for ListDashboardVersions
    class ListDashboardVersions
      def self.parse(http_resp)
        data = Types::ListDashboardVersionsOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.dashboard_version_summary_list = (Parsers::DashboardVersionSummaryList.parse(map['DashboardVersionSummaryList']) unless map['DashboardVersionSummaryList'].nil?)
        data.next_token = map['NextToken']
        data.request_id = map['RequestId']
        data
      end
    end

    class DashboardVersionSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::DashboardVersionSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class DashboardVersionSummary
      def self.parse(map)
        data = Types::DashboardVersionSummary.new
        data.arn = map['Arn']
        data.created_time = Time.at(map['CreatedTime'].to_i) if map['CreatedTime']
        data.version_number = map['VersionNumber']
        data.status = map['Status']
        data.source_entity_arn = map['SourceEntityArn']
        data.description = map['Description']
        return data
      end
    end

    # Operation Parser for ListDashboards
    class ListDashboards
      def self.parse(http_resp)
        data = Types::ListDashboardsOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.dashboard_summary_list = (Parsers::DashboardSummaryList.parse(map['DashboardSummaryList']) unless map['DashboardSummaryList'].nil?)
        data.next_token = map['NextToken']
        data.request_id = map['RequestId']
        data
      end
    end

    class DashboardSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::DashboardSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class DashboardSummary
      def self.parse(map)
        data = Types::DashboardSummary.new
        data.arn = map['Arn']
        data.dashboard_id = map['DashboardId']
        data.name = map['Name']
        data.created_time = Time.at(map['CreatedTime'].to_i) if map['CreatedTime']
        data.last_updated_time = Time.at(map['LastUpdatedTime'].to_i) if map['LastUpdatedTime']
        data.published_version_number = map['PublishedVersionNumber']
        data.last_published_time = Time.at(map['LastPublishedTime'].to_i) if map['LastPublishedTime']
        return data
      end
    end

    # Operation Parser for ListDataSets
    class ListDataSets
      def self.parse(http_resp)
        data = Types::ListDataSetsOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.data_set_summaries = (Parsers::DataSetSummaryList.parse(map['DataSetSummaries']) unless map['DataSetSummaries'].nil?)
        data.next_token = map['NextToken']
        data.request_id = map['RequestId']
        data
      end
    end

    class DataSetSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::DataSetSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class DataSetSummary
      def self.parse(map)
        data = Types::DataSetSummary.new
        data.arn = map['Arn']
        data.data_set_id = map['DataSetId']
        data.name = map['Name']
        data.created_time = Time.at(map['CreatedTime'].to_i) if map['CreatedTime']
        data.last_updated_time = Time.at(map['LastUpdatedTime'].to_i) if map['LastUpdatedTime']
        data.import_mode = map['ImportMode']
        data.row_level_permission_data_set = (Parsers::RowLevelPermissionDataSet.parse(map['RowLevelPermissionDataSet']) unless map['RowLevelPermissionDataSet'].nil?)
        data.row_level_permission_tag_configuration_applied = map['RowLevelPermissionTagConfigurationApplied']
        data.column_level_permission_rules_applied = map['ColumnLevelPermissionRulesApplied']
        return data
      end
    end

    # Operation Parser for ListDataSources
    class ListDataSources
      def self.parse(http_resp)
        data = Types::ListDataSourcesOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.data_sources = (Parsers::DataSourceList.parse(map['DataSources']) unless map['DataSources'].nil?)
        data.next_token = map['NextToken']
        data.request_id = map['RequestId']
        data
      end
    end

    class DataSourceList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::DataSource.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListFolderMembers
    class ListFolderMembers
      def self.parse(http_resp)
        data = Types::ListFolderMembersOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.folder_member_list = (Parsers::FolderMemberList.parse(map['FolderMemberList']) unless map['FolderMemberList'].nil?)
        data.next_token = map['NextToken']
        data.request_id = map['RequestId']
        data
      end
    end

    class FolderMemberList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::MemberIdArnPair.parse(value) unless value.nil?
        end
        data
      end
    end

    class MemberIdArnPair
      def self.parse(map)
        data = Types::MemberIdArnPair.new
        data.member_id = map['MemberId']
        data.member_arn = map['MemberArn']
        return data
      end
    end

    # Operation Parser for ListFolders
    class ListFolders
      def self.parse(http_resp)
        data = Types::ListFoldersOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.folder_summary_list = (Parsers::FolderSummaryList.parse(map['FolderSummaryList']) unless map['FolderSummaryList'].nil?)
        data.next_token = map['NextToken']
        data.request_id = map['RequestId']
        data
      end
    end

    class FolderSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::FolderSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class FolderSummary
      def self.parse(map)
        data = Types::FolderSummary.new
        data.arn = map['Arn']
        data.folder_id = map['FolderId']
        data.name = map['Name']
        data.folder_type = map['FolderType']
        data.created_time = Time.at(map['CreatedTime'].to_i) if map['CreatedTime']
        data.last_updated_time = Time.at(map['LastUpdatedTime'].to_i) if map['LastUpdatedTime']
        return data
      end
    end

    # Operation Parser for ListGroupMemberships
    class ListGroupMemberships
      def self.parse(http_resp)
        data = Types::ListGroupMembershipsOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.group_member_list = (Parsers::GroupMemberList.parse(map['GroupMemberList']) unless map['GroupMemberList'].nil?)
        data.next_token = map['NextToken']
        data.request_id = map['RequestId']
        data
      end
    end

    class GroupMemberList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::GroupMember.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListGroups
    class ListGroups
      def self.parse(http_resp)
        data = Types::ListGroupsOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.group_list = (Parsers::GroupList.parse(map['GroupList']) unless map['GroupList'].nil?)
        data.next_token = map['NextToken']
        data.request_id = map['RequestId']
        data
      end
    end

    class GroupList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Group.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListIAMPolicyAssignments
    class ListIAMPolicyAssignments
      def self.parse(http_resp)
        data = Types::ListIAMPolicyAssignmentsOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.iam_policy_assignments = (Parsers::IAMPolicyAssignmentSummaryList.parse(map['IAMPolicyAssignments']) unless map['IAMPolicyAssignments'].nil?)
        data.next_token = map['NextToken']
        data.request_id = map['RequestId']
        data
      end
    end

    class IAMPolicyAssignmentSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::IAMPolicyAssignmentSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class IAMPolicyAssignmentSummary
      def self.parse(map)
        data = Types::IAMPolicyAssignmentSummary.new
        data.assignment_name = map['AssignmentName']
        data.assignment_status = map['AssignmentStatus']
        return data
      end
    end

    # Operation Parser for ListIAMPolicyAssignmentsForUser
    class ListIAMPolicyAssignmentsForUser
      def self.parse(http_resp)
        data = Types::ListIAMPolicyAssignmentsForUserOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.active_assignments = (Parsers::ActiveIAMPolicyAssignmentList.parse(map['ActiveAssignments']) unless map['ActiveAssignments'].nil?)
        data.request_id = map['RequestId']
        data.next_token = map['NextToken']
        data
      end
    end

    class ActiveIAMPolicyAssignmentList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ActiveIAMPolicyAssignment.parse(value) unless value.nil?
        end
        data
      end
    end

    class ActiveIAMPolicyAssignment
      def self.parse(map)
        data = Types::ActiveIAMPolicyAssignment.new
        data.assignment_name = map['AssignmentName']
        data.policy_arn = map['PolicyArn']
        return data
      end
    end

    # Operation Parser for ListIngestions
    class ListIngestions
      def self.parse(http_resp)
        data = Types::ListIngestionsOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.ingestions = (Parsers::Ingestions.parse(map['Ingestions']) unless map['Ingestions'].nil?)
        data.next_token = map['NextToken']
        data.request_id = map['RequestId']
        data
      end
    end

    class Ingestions
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Ingestion.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListNamespaces
    class ListNamespaces
      def self.parse(http_resp)
        data = Types::ListNamespacesOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.namespaces = (Parsers::Namespaces.parse(map['Namespaces']) unless map['Namespaces'].nil?)
        data.next_token = map['NextToken']
        data.request_id = map['RequestId']
        data
      end
    end

    class Namespaces
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::NamespaceInfoV2.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (Parsers::TagList.parse(map['Tags']) unless map['Tags'].nil?)
        data.request_id = map['RequestId']
        data
      end
    end

    class TagList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Tag.parse(value) unless value.nil?
        end
        data
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

    # Operation Parser for ListTemplateAliases
    class ListTemplateAliases
      def self.parse(http_resp)
        data = Types::ListTemplateAliasesOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.template_alias_list = (Parsers::TemplateAliasList.parse(map['TemplateAliasList']) unless map['TemplateAliasList'].nil?)
        data.request_id = map['RequestId']
        data.next_token = map['NextToken']
        data
      end
    end

    class TemplateAliasList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::TemplateAlias.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListTemplateVersions
    class ListTemplateVersions
      def self.parse(http_resp)
        data = Types::ListTemplateVersionsOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.template_version_summary_list = (Parsers::TemplateVersionSummaryList.parse(map['TemplateVersionSummaryList']) unless map['TemplateVersionSummaryList'].nil?)
        data.next_token = map['NextToken']
        data.request_id = map['RequestId']
        data
      end
    end

    class TemplateVersionSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::TemplateVersionSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class TemplateVersionSummary
      def self.parse(map)
        data = Types::TemplateVersionSummary.new
        data.arn = map['Arn']
        data.version_number = map['VersionNumber']
        data.created_time = Time.at(map['CreatedTime'].to_i) if map['CreatedTime']
        data.status = map['Status']
        data.description = map['Description']
        return data
      end
    end

    # Operation Parser for ListTemplates
    class ListTemplates
      def self.parse(http_resp)
        data = Types::ListTemplatesOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.template_summary_list = (Parsers::TemplateSummaryList.parse(map['TemplateSummaryList']) unless map['TemplateSummaryList'].nil?)
        data.next_token = map['NextToken']
        data.request_id = map['RequestId']
        data
      end
    end

    class TemplateSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::TemplateSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class TemplateSummary
      def self.parse(map)
        data = Types::TemplateSummary.new
        data.arn = map['Arn']
        data.template_id = map['TemplateId']
        data.name = map['Name']
        data.latest_version_number = map['LatestVersionNumber']
        data.created_time = Time.at(map['CreatedTime'].to_i) if map['CreatedTime']
        data.last_updated_time = Time.at(map['LastUpdatedTime'].to_i) if map['LastUpdatedTime']
        return data
      end
    end

    # Operation Parser for ListThemeAliases
    class ListThemeAliases
      def self.parse(http_resp)
        data = Types::ListThemeAliasesOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.theme_alias_list = (Parsers::ThemeAliasList.parse(map['ThemeAliasList']) unless map['ThemeAliasList'].nil?)
        data.request_id = map['RequestId']
        data.next_token = map['NextToken']
        data
      end
    end

    class ThemeAliasList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ThemeAlias.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListThemeVersions
    class ListThemeVersions
      def self.parse(http_resp)
        data = Types::ListThemeVersionsOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.theme_version_summary_list = (Parsers::ThemeVersionSummaryList.parse(map['ThemeVersionSummaryList']) unless map['ThemeVersionSummaryList'].nil?)
        data.next_token = map['NextToken']
        data.request_id = map['RequestId']
        data
      end
    end

    class ThemeVersionSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ThemeVersionSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class ThemeVersionSummary
      def self.parse(map)
        data = Types::ThemeVersionSummary.new
        data.version_number = map['VersionNumber']
        data.arn = map['Arn']
        data.description = map['Description']
        data.created_time = Time.at(map['CreatedTime'].to_i) if map['CreatedTime']
        data.status = map['Status']
        return data
      end
    end

    # Operation Parser for ListThemes
    class ListThemes
      def self.parse(http_resp)
        data = Types::ListThemesOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.theme_summary_list = (Parsers::ThemeSummaryList.parse(map['ThemeSummaryList']) unless map['ThemeSummaryList'].nil?)
        data.next_token = map['NextToken']
        data.request_id = map['RequestId']
        data
      end
    end

    class ThemeSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ThemeSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class ThemeSummary
      def self.parse(map)
        data = Types::ThemeSummary.new
        data.arn = map['Arn']
        data.name = map['Name']
        data.theme_id = map['ThemeId']
        data.latest_version_number = map['LatestVersionNumber']
        data.created_time = Time.at(map['CreatedTime'].to_i) if map['CreatedTime']
        data.last_updated_time = Time.at(map['LastUpdatedTime'].to_i) if map['LastUpdatedTime']
        return data
      end
    end

    # Operation Parser for ListUserGroups
    class ListUserGroups
      def self.parse(http_resp)
        data = Types::ListUserGroupsOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.group_list = (Parsers::GroupList.parse(map['GroupList']) unless map['GroupList'].nil?)
        data.next_token = map['NextToken']
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for ListUsers
    class ListUsers
      def self.parse(http_resp)
        data = Types::ListUsersOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.user_list = (Parsers::UserList.parse(map['UserList']) unless map['UserList'].nil?)
        data.next_token = map['NextToken']
        data.request_id = map['RequestId']
        data
      end
    end

    class UserList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::User.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for RegisterUser
    class RegisterUser
      def self.parse(http_resp)
        data = Types::RegisterUserOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.user = (Parsers::User.parse(map['User']) unless map['User'].nil?)
        data.user_invitation_url = map['UserInvitationUrl']
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for RestoreAnalysis
    class RestoreAnalysis
      def self.parse(http_resp)
        data = Types::RestoreAnalysisOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.analysis_id = map['AnalysisId']
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for SearchAnalyses
    class SearchAnalyses
      def self.parse(http_resp)
        data = Types::SearchAnalysesOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.analysis_summary_list = (Parsers::AnalysisSummaryList.parse(map['AnalysisSummaryList']) unless map['AnalysisSummaryList'].nil?)
        data.next_token = map['NextToken']
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for SearchDashboards
    class SearchDashboards
      def self.parse(http_resp)
        data = Types::SearchDashboardsOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.dashboard_summary_list = (Parsers::DashboardSummaryList.parse(map['DashboardSummaryList']) unless map['DashboardSummaryList'].nil?)
        data.next_token = map['NextToken']
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for SearchFolders
    class SearchFolders
      def self.parse(http_resp)
        data = Types::SearchFoldersOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.folder_summary_list = (Parsers::FolderSummaryList.parse(map['FolderSummaryList']) unless map['FolderSummaryList'].nil?)
        data.next_token = map['NextToken']
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for SearchGroups
    class SearchGroups
      def self.parse(http_resp)
        data = Types::SearchGroupsOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.group_list = (Parsers::GroupList.parse(map['GroupList']) unless map['GroupList'].nil?)
        data.next_token = map['NextToken']
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for UpdateAccountCustomization
    class UpdateAccountCustomization
      def self.parse(http_resp)
        data = Types::UpdateAccountCustomizationOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.aws_account_id = map['AwsAccountId']
        data.namespace = map['Namespace']
        data.account_customization = (Parsers::AccountCustomization.parse(map['AccountCustomization']) unless map['AccountCustomization'].nil?)
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for UpdateAccountSettings
    class UpdateAccountSettings
      def self.parse(http_resp)
        data = Types::UpdateAccountSettingsOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for UpdateAnalysis
    class UpdateAnalysis
      def self.parse(http_resp)
        data = Types::UpdateAnalysisOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.analysis_id = map['AnalysisId']
        data.update_status = map['UpdateStatus']
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for UpdateAnalysisPermissions
    class UpdateAnalysisPermissions
      def self.parse(http_resp)
        data = Types::UpdateAnalysisPermissionsOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.analysis_arn = map['AnalysisArn']
        data.analysis_id = map['AnalysisId']
        data.permissions = (Parsers::ResourcePermissionList.parse(map['Permissions']) unless map['Permissions'].nil?)
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for UpdateDashboard
    class UpdateDashboard
      def self.parse(http_resp)
        data = Types::UpdateDashboardOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.version_arn = map['VersionArn']
        data.dashboard_id = map['DashboardId']
        data.creation_status = map['CreationStatus']
        data.status = map['Status']
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for UpdateDashboardPermissions
    class UpdateDashboardPermissions
      def self.parse(http_resp)
        data = Types::UpdateDashboardPermissionsOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.dashboard_arn = map['DashboardArn']
        data.dashboard_id = map['DashboardId']
        data.permissions = (Parsers::ResourcePermissionList.parse(map['Permissions']) unless map['Permissions'].nil?)
        data.request_id = map['RequestId']
        data.link_sharing_configuration = (Parsers::LinkSharingConfiguration.parse(map['LinkSharingConfiguration']) unless map['LinkSharingConfiguration'].nil?)
        data
      end
    end

    # Operation Parser for UpdateDashboardPublishedVersion
    class UpdateDashboardPublishedVersion
      def self.parse(http_resp)
        data = Types::UpdateDashboardPublishedVersionOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.dashboard_id = map['DashboardId']
        data.dashboard_arn = map['DashboardArn']
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for UpdateDataSet
    class UpdateDataSet
      def self.parse(http_resp)
        data = Types::UpdateDataSetOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.data_set_id = map['DataSetId']
        data.ingestion_arn = map['IngestionArn']
        data.ingestion_id = map['IngestionId']
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for UpdateDataSetPermissions
    class UpdateDataSetPermissions
      def self.parse(http_resp)
        data = Types::UpdateDataSetPermissionsOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.data_set_arn = map['DataSetArn']
        data.data_set_id = map['DataSetId']
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for UpdateDataSource
    class UpdateDataSource
      def self.parse(http_resp)
        data = Types::UpdateDataSourceOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.data_source_id = map['DataSourceId']
        data.update_status = map['UpdateStatus']
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for UpdateDataSourcePermissions
    class UpdateDataSourcePermissions
      def self.parse(http_resp)
        data = Types::UpdateDataSourcePermissionsOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.data_source_arn = map['DataSourceArn']
        data.data_source_id = map['DataSourceId']
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for UpdateFolder
    class UpdateFolder
      def self.parse(http_resp)
        data = Types::UpdateFolderOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.folder_id = map['FolderId']
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for UpdateFolderPermissions
    class UpdateFolderPermissions
      def self.parse(http_resp)
        data = Types::UpdateFolderPermissionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.status = map['Status']
        data.arn = map['Arn']
        data.folder_id = map['FolderId']
        data.permissions = (Parsers::ResourcePermissionList.parse(map['Permissions']) unless map['Permissions'].nil?)
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for UpdateGroup
    class UpdateGroup
      def self.parse(http_resp)
        data = Types::UpdateGroupOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.group = (Parsers::Group.parse(map['Group']) unless map['Group'].nil?)
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for UpdateIAMPolicyAssignment
    class UpdateIAMPolicyAssignment
      def self.parse(http_resp)
        data = Types::UpdateIAMPolicyAssignmentOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.assignment_name = map['AssignmentName']
        data.assignment_id = map['AssignmentId']
        data.policy_arn = map['PolicyArn']
        data.identities = (Parsers::IdentityMap.parse(map['Identities']) unless map['Identities'].nil?)
        data.assignment_status = map['AssignmentStatus']
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for UpdateIpRestriction
    class UpdateIpRestriction
      def self.parse(http_resp)
        data = Types::UpdateIpRestrictionOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.aws_account_id = map['AwsAccountId']
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for UpdatePublicSharingSettings
    class UpdatePublicSharingSettings
      def self.parse(http_resp)
        data = Types::UpdatePublicSharingSettingsOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for UpdateTemplate
    class UpdateTemplate
      def self.parse(http_resp)
        data = Types::UpdateTemplateOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.template_id = map['TemplateId']
        data.arn = map['Arn']
        data.version_arn = map['VersionArn']
        data.creation_status = map['CreationStatus']
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for UpdateTemplateAlias
    class UpdateTemplateAlias
      def self.parse(http_resp)
        data = Types::UpdateTemplateAliasOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.template_alias = (Parsers::TemplateAlias.parse(map['TemplateAlias']) unless map['TemplateAlias'].nil?)
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for UpdateTemplatePermissions
    class UpdateTemplatePermissions
      def self.parse(http_resp)
        data = Types::UpdateTemplatePermissionsOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.template_id = map['TemplateId']
        data.template_arn = map['TemplateArn']
        data.permissions = (Parsers::ResourcePermissionList.parse(map['Permissions']) unless map['Permissions'].nil?)
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for UpdateTheme
    class UpdateTheme
      def self.parse(http_resp)
        data = Types::UpdateThemeOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.theme_id = map['ThemeId']
        data.arn = map['Arn']
        data.version_arn = map['VersionArn']
        data.creation_status = map['CreationStatus']
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for UpdateThemeAlias
    class UpdateThemeAlias
      def self.parse(http_resp)
        data = Types::UpdateThemeAliasOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.theme_alias = (Parsers::ThemeAlias.parse(map['ThemeAlias']) unless map['ThemeAlias'].nil?)
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for UpdateThemePermissions
    class UpdateThemePermissions
      def self.parse(http_resp)
        data = Types::UpdateThemePermissionsOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.theme_id = map['ThemeId']
        data.theme_arn = map['ThemeArn']
        data.permissions = (Parsers::ResourcePermissionList.parse(map['Permissions']) unless map['Permissions'].nil?)
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for UpdateUser
    class UpdateUser
      def self.parse(http_resp)
        data = Types::UpdateUserOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data.user = (Parsers::User.parse(map['User']) unless map['User'].nil?)
        data.request_id = map['RequestId']
        data
      end
    end
  end
end
