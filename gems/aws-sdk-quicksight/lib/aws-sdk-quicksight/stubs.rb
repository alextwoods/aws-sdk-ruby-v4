# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::QuickSight
  module Stubs

    # Operation Stubber for CancelIngestion
    class CancelIngestion
      def self.default(visited=[])
        {
          arn: 'arn',
          ingestion_id: 'ingestion_id',
          request_id: 'request_id',
          status: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['IngestionId'] = stub[:ingestion_id] unless stub[:ingestion_id].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateAccountCustomization
    class CreateAccountCustomization
      def self.default(visited=[])
        {
          arn: 'arn',
          aws_account_id: 'aws_account_id',
          namespace: 'namespace',
          account_customization: Stubs::AccountCustomization.default(visited),
          request_id: 'request_id',
          status: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['AwsAccountId'] = stub[:aws_account_id] unless stub[:aws_account_id].nil?
        data['Namespace'] = stub[:namespace] unless stub[:namespace].nil?
        data['AccountCustomization'] = Stubs::AccountCustomization.stub(stub[:account_customization]) unless stub[:account_customization].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for AccountCustomization
    class AccountCustomization
      def self.default(visited=[])
        return nil if visited.include?('AccountCustomization')
        visited = visited + ['AccountCustomization']
        {
          default_theme: 'default_theme',
          default_email_customization_template: 'default_email_customization_template',
        }
      end

      def self.stub(stub)
        stub ||= Types::AccountCustomization.new
        data = {}
        data['DefaultTheme'] = stub[:default_theme] unless stub[:default_theme].nil?
        data['DefaultEmailCustomizationTemplate'] = stub[:default_email_customization_template] unless stub[:default_email_customization_template].nil?
        data
      end
    end

    # Operation Stubber for CreateAnalysis
    class CreateAnalysis
      def self.default(visited=[])
        {
          arn: 'arn',
          analysis_id: 'analysis_id',
          creation_status: 'creation_status',
          status: 1,
          request_id: 'request_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['AnalysisId'] = stub[:analysis_id] unless stub[:analysis_id].nil?
        data['CreationStatus'] = stub[:creation_status] unless stub[:creation_status].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateDashboard
    class CreateDashboard
      def self.default(visited=[])
        {
          arn: 'arn',
          version_arn: 'version_arn',
          dashboard_id: 'dashboard_id',
          creation_status: 'creation_status',
          status: 1,
          request_id: 'request_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['VersionArn'] = stub[:version_arn] unless stub[:version_arn].nil?
        data['DashboardId'] = stub[:dashboard_id] unless stub[:dashboard_id].nil?
        data['CreationStatus'] = stub[:creation_status] unless stub[:creation_status].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateDataSet
    class CreateDataSet
      def self.default(visited=[])
        {
          arn: 'arn',
          data_set_id: 'data_set_id',
          ingestion_arn: 'ingestion_arn',
          ingestion_id: 'ingestion_id',
          request_id: 'request_id',
          status: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['DataSetId'] = stub[:data_set_id] unless stub[:data_set_id].nil?
        data['IngestionArn'] = stub[:ingestion_arn] unless stub[:ingestion_arn].nil?
        data['IngestionId'] = stub[:ingestion_id] unless stub[:ingestion_id].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateDataSource
    class CreateDataSource
      def self.default(visited=[])
        {
          arn: 'arn',
          data_source_id: 'data_source_id',
          creation_status: 'creation_status',
          request_id: 'request_id',
          status: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['DataSourceId'] = stub[:data_source_id] unless stub[:data_source_id].nil?
        data['CreationStatus'] = stub[:creation_status] unless stub[:creation_status].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateFolder
    class CreateFolder
      def self.default(visited=[])
        {
          status: 1,
          arn: 'arn',
          folder_id: 'folder_id',
          request_id: 'request_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['FolderId'] = stub[:folder_id] unless stub[:folder_id].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateFolderMembership
    class CreateFolderMembership
      def self.default(visited=[])
        {
          status: 1,
          folder_member: Stubs::FolderMember.default(visited),
          request_id: 'request_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['FolderMember'] = Stubs::FolderMember.stub(stub[:folder_member]) unless stub[:folder_member].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for FolderMember
    class FolderMember
      def self.default(visited=[])
        return nil if visited.include?('FolderMember')
        visited = visited + ['FolderMember']
        {
          member_id: 'member_id',
          member_type: 'member_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::FolderMember.new
        data = {}
        data['MemberId'] = stub[:member_id] unless stub[:member_id].nil?
        data['MemberType'] = stub[:member_type] unless stub[:member_type].nil?
        data
      end
    end

    # Operation Stubber for CreateGroup
    class CreateGroup
      def self.default(visited=[])
        {
          group: Stubs::Group.default(visited),
          request_id: 'request_id',
          status: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['Group'] = Stubs::Group.stub(stub[:group]) unless stub[:group].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Group
    class Group
      def self.default(visited=[])
        return nil if visited.include?('Group')
        visited = visited + ['Group']
        {
          arn: 'arn',
          group_name: 'group_name',
          description: 'description',
          principal_id: 'principal_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::Group.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['GroupName'] = stub[:group_name] unless stub[:group_name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['PrincipalId'] = stub[:principal_id] unless stub[:principal_id].nil?
        data
      end
    end

    # Operation Stubber for CreateGroupMembership
    class CreateGroupMembership
      def self.default(visited=[])
        {
          group_member: Stubs::GroupMember.default(visited),
          request_id: 'request_id',
          status: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['GroupMember'] = Stubs::GroupMember.stub(stub[:group_member]) unless stub[:group_member].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for GroupMember
    class GroupMember
      def self.default(visited=[])
        return nil if visited.include?('GroupMember')
        visited = visited + ['GroupMember']
        {
          arn: 'arn',
          member_name: 'member_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::GroupMember.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['MemberName'] = stub[:member_name] unless stub[:member_name].nil?
        data
      end
    end

    # Operation Stubber for CreateIAMPolicyAssignment
    class CreateIAMPolicyAssignment
      def self.default(visited=[])
        {
          assignment_name: 'assignment_name',
          assignment_id: 'assignment_id',
          assignment_status: 'assignment_status',
          policy_arn: 'policy_arn',
          identities: Stubs::IdentityMap.default(visited),
          request_id: 'request_id',
          status: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['AssignmentName'] = stub[:assignment_name] unless stub[:assignment_name].nil?
        data['AssignmentId'] = stub[:assignment_id] unless stub[:assignment_id].nil?
        data['AssignmentStatus'] = stub[:assignment_status] unless stub[:assignment_status].nil?
        data['PolicyArn'] = stub[:policy_arn] unless stub[:policy_arn].nil?
        data['Identities'] = Stubs::IdentityMap.stub(stub[:identities]) unless stub[:identities].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Stubber for IdentityMap
    class IdentityMap
      def self.default(visited=[])
        return nil if visited.include?('IdentityMap')
        visited = visited + ['IdentityMap']
        {
          test_key: Stubs::IdentityNameList.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::IdentityNameList.stub(value) unless value.nil?
        end
        data
      end
    end

    # List Stubber for IdentityNameList
    class IdentityNameList
      def self.default(visited=[])
        return nil if visited.include?('IdentityNameList')
        visited = visited + ['IdentityNameList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for CreateIngestion
    class CreateIngestion
      def self.default(visited=[])
        {
          arn: 'arn',
          ingestion_id: 'ingestion_id',
          ingestion_status: 'ingestion_status',
          request_id: 'request_id',
          status: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['IngestionId'] = stub[:ingestion_id] unless stub[:ingestion_id].nil?
        data['IngestionStatus'] = stub[:ingestion_status] unless stub[:ingestion_status].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateNamespace
    class CreateNamespace
      def self.default(visited=[])
        {
          arn: 'arn',
          name: 'name',
          capacity_region: 'capacity_region',
          creation_status: 'creation_status',
          identity_store: 'identity_store',
          request_id: 'request_id',
          status: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['CapacityRegion'] = stub[:capacity_region] unless stub[:capacity_region].nil?
        data['CreationStatus'] = stub[:creation_status] unless stub[:creation_status].nil?
        data['IdentityStore'] = stub[:identity_store] unless stub[:identity_store].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateTemplate
    class CreateTemplate
      def self.default(visited=[])
        {
          arn: 'arn',
          version_arn: 'version_arn',
          template_id: 'template_id',
          creation_status: 'creation_status',
          status: 1,
          request_id: 'request_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['VersionArn'] = stub[:version_arn] unless stub[:version_arn].nil?
        data['TemplateId'] = stub[:template_id] unless stub[:template_id].nil?
        data['CreationStatus'] = stub[:creation_status] unless stub[:creation_status].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateTemplateAlias
    class CreateTemplateAlias
      def self.default(visited=[])
        {
          template_alias: Stubs::TemplateAlias.default(visited),
          status: 1,
          request_id: 'request_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['TemplateAlias'] = Stubs::TemplateAlias.stub(stub[:template_alias]) unless stub[:template_alias].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for TemplateAlias
    class TemplateAlias
      def self.default(visited=[])
        return nil if visited.include?('TemplateAlias')
        visited = visited + ['TemplateAlias']
        {
          alias_name: 'alias_name',
          arn: 'arn',
          template_version_number: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::TemplateAlias.new
        data = {}
        data['AliasName'] = stub[:alias_name] unless stub[:alias_name].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['TemplateVersionNumber'] = stub[:template_version_number] unless stub[:template_version_number].nil?
        data
      end
    end

    # Operation Stubber for CreateTheme
    class CreateTheme
      def self.default(visited=[])
        {
          arn: 'arn',
          version_arn: 'version_arn',
          theme_id: 'theme_id',
          creation_status: 'creation_status',
          status: 1,
          request_id: 'request_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['VersionArn'] = stub[:version_arn] unless stub[:version_arn].nil?
        data['ThemeId'] = stub[:theme_id] unless stub[:theme_id].nil?
        data['CreationStatus'] = stub[:creation_status] unless stub[:creation_status].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateThemeAlias
    class CreateThemeAlias
      def self.default(visited=[])
        {
          theme_alias: Stubs::ThemeAlias.default(visited),
          status: 1,
          request_id: 'request_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['ThemeAlias'] = Stubs::ThemeAlias.stub(stub[:theme_alias]) unless stub[:theme_alias].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ThemeAlias
    class ThemeAlias
      def self.default(visited=[])
        return nil if visited.include?('ThemeAlias')
        visited = visited + ['ThemeAlias']
        {
          arn: 'arn',
          alias_name: 'alias_name',
          theme_version_number: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ThemeAlias.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['AliasName'] = stub[:alias_name] unless stub[:alias_name].nil?
        data['ThemeVersionNumber'] = stub[:theme_version_number] unless stub[:theme_version_number].nil?
        data
      end
    end

    # Operation Stubber for DeleteAccountCustomization
    class DeleteAccountCustomization
      def self.default(visited=[])
        {
          request_id: 'request_id',
          status: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteAnalysis
    class DeleteAnalysis
      def self.default(visited=[])
        {
          status: 1,
          arn: 'arn',
          analysis_id: 'analysis_id',
          deletion_time: Time.now,
          request_id: 'request_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['AnalysisId'] = stub[:analysis_id] unless stub[:analysis_id].nil?
        data['DeletionTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:deletion_time]).to_i unless stub[:deletion_time].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteDashboard
    class DeleteDashboard
      def self.default(visited=[])
        {
          status: 1,
          arn: 'arn',
          dashboard_id: 'dashboard_id',
          request_id: 'request_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['DashboardId'] = stub[:dashboard_id] unless stub[:dashboard_id].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteDataSet
    class DeleteDataSet
      def self.default(visited=[])
        {
          arn: 'arn',
          data_set_id: 'data_set_id',
          request_id: 'request_id',
          status: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['DataSetId'] = stub[:data_set_id] unless stub[:data_set_id].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteDataSource
    class DeleteDataSource
      def self.default(visited=[])
        {
          arn: 'arn',
          data_source_id: 'data_source_id',
          request_id: 'request_id',
          status: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['DataSourceId'] = stub[:data_source_id] unless stub[:data_source_id].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteFolder
    class DeleteFolder
      def self.default(visited=[])
        {
          status: 1,
          arn: 'arn',
          folder_id: 'folder_id',
          request_id: 'request_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['FolderId'] = stub[:folder_id] unless stub[:folder_id].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteFolderMembership
    class DeleteFolderMembership
      def self.default(visited=[])
        {
          status: 1,
          request_id: 'request_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteGroup
    class DeleteGroup
      def self.default(visited=[])
        {
          request_id: 'request_id',
          status: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteGroupMembership
    class DeleteGroupMembership
      def self.default(visited=[])
        {
          request_id: 'request_id',
          status: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteIAMPolicyAssignment
    class DeleteIAMPolicyAssignment
      def self.default(visited=[])
        {
          assignment_name: 'assignment_name',
          request_id: 'request_id',
          status: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['AssignmentName'] = stub[:assignment_name] unless stub[:assignment_name].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteNamespace
    class DeleteNamespace
      def self.default(visited=[])
        {
          request_id: 'request_id',
          status: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteTemplate
    class DeleteTemplate
      def self.default(visited=[])
        {
          request_id: 'request_id',
          arn: 'arn',
          template_id: 'template_id',
          status: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['TemplateId'] = stub[:template_id] unless stub[:template_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteTemplateAlias
    class DeleteTemplateAlias
      def self.default(visited=[])
        {
          status: 1,
          template_id: 'template_id',
          alias_name: 'alias_name',
          arn: 'arn',
          request_id: 'request_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['TemplateId'] = stub[:template_id] unless stub[:template_id].nil?
        data['AliasName'] = stub[:alias_name] unless stub[:alias_name].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteTheme
    class DeleteTheme
      def self.default(visited=[])
        {
          arn: 'arn',
          request_id: 'request_id',
          status: 1,
          theme_id: 'theme_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['ThemeId'] = stub[:theme_id] unless stub[:theme_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteThemeAlias
    class DeleteThemeAlias
      def self.default(visited=[])
        {
          alias_name: 'alias_name',
          arn: 'arn',
          request_id: 'request_id',
          status: 1,
          theme_id: 'theme_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['AliasName'] = stub[:alias_name] unless stub[:alias_name].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['ThemeId'] = stub[:theme_id] unless stub[:theme_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteUser
    class DeleteUser
      def self.default(visited=[])
        {
          request_id: 'request_id',
          status: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteUserByPrincipalId
    class DeleteUserByPrincipalId
      def self.default(visited=[])
        {
          request_id: 'request_id',
          status: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeAccountCustomization
    class DescribeAccountCustomization
      def self.default(visited=[])
        {
          arn: 'arn',
          aws_account_id: 'aws_account_id',
          namespace: 'namespace',
          account_customization: Stubs::AccountCustomization.default(visited),
          request_id: 'request_id',
          status: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['AwsAccountId'] = stub[:aws_account_id] unless stub[:aws_account_id].nil?
        data['Namespace'] = stub[:namespace] unless stub[:namespace].nil?
        data['AccountCustomization'] = Stubs::AccountCustomization.stub(stub[:account_customization]) unless stub[:account_customization].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeAccountSettings
    class DescribeAccountSettings
      def self.default(visited=[])
        {
          account_settings: Stubs::AccountSettings.default(visited),
          request_id: 'request_id',
          status: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['AccountSettings'] = Stubs::AccountSettings.stub(stub[:account_settings]) unless stub[:account_settings].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for AccountSettings
    class AccountSettings
      def self.default(visited=[])
        return nil if visited.include?('AccountSettings')
        visited = visited + ['AccountSettings']
        {
          account_name: 'account_name',
          edition: 'edition',
          default_namespace: 'default_namespace',
          notification_email: 'notification_email',
          public_sharing_enabled: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::AccountSettings.new
        data = {}
        data['AccountName'] = stub[:account_name] unless stub[:account_name].nil?
        data['Edition'] = stub[:edition] unless stub[:edition].nil?
        data['DefaultNamespace'] = stub[:default_namespace] unless stub[:default_namespace].nil?
        data['NotificationEmail'] = stub[:notification_email] unless stub[:notification_email].nil?
        data['PublicSharingEnabled'] = stub[:public_sharing_enabled] unless stub[:public_sharing_enabled].nil?
        data
      end
    end

    # Operation Stubber for DescribeAnalysis
    class DescribeAnalysis
      def self.default(visited=[])
        {
          analysis: Stubs::Analysis.default(visited),
          status: 1,
          request_id: 'request_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['Analysis'] = Stubs::Analysis.stub(stub[:analysis]) unless stub[:analysis].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Analysis
    class Analysis
      def self.default(visited=[])
        return nil if visited.include?('Analysis')
        visited = visited + ['Analysis']
        {
          analysis_id: 'analysis_id',
          arn: 'arn',
          name: 'name',
          status: 'status',
          errors: Stubs::AnalysisErrorList.default(visited),
          data_set_arns: Stubs::DataSetArnsList.default(visited),
          theme_arn: 'theme_arn',
          created_time: Time.now,
          last_updated_time: Time.now,
          sheets: Stubs::SheetList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Analysis.new
        data = {}
        data['AnalysisId'] = stub[:analysis_id] unless stub[:analysis_id].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['Errors'] = Stubs::AnalysisErrorList.stub(stub[:errors]) unless stub[:errors].nil?
        data['DataSetArns'] = Stubs::DataSetArnsList.stub(stub[:data_set_arns]) unless stub[:data_set_arns].nil?
        data['ThemeArn'] = stub[:theme_arn] unless stub[:theme_arn].nil?
        data['CreatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        data['LastUpdatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_time]).to_i unless stub[:last_updated_time].nil?
        data['Sheets'] = Stubs::SheetList.stub(stub[:sheets]) unless stub[:sheets].nil?
        data
      end
    end

    # List Stubber for SheetList
    class SheetList
      def self.default(visited=[])
        return nil if visited.include?('SheetList')
        visited = visited + ['SheetList']
        [
          Stubs::Sheet.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Sheet.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Sheet
    class Sheet
      def self.default(visited=[])
        return nil if visited.include?('Sheet')
        visited = visited + ['Sheet']
        {
          sheet_id: 'sheet_id',
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::Sheet.new
        data = {}
        data['SheetId'] = stub[:sheet_id] unless stub[:sheet_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # List Stubber for DataSetArnsList
    class DataSetArnsList
      def self.default(visited=[])
        return nil if visited.include?('DataSetArnsList')
        visited = visited + ['DataSetArnsList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Stubber for AnalysisErrorList
    class AnalysisErrorList
      def self.default(visited=[])
        return nil if visited.include?('AnalysisErrorList')
        visited = visited + ['AnalysisErrorList']
        [
          Stubs::AnalysisError.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AnalysisError.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AnalysisError
    class AnalysisError
      def self.default(visited=[])
        return nil if visited.include?('AnalysisError')
        visited = visited + ['AnalysisError']
        {
          type: 'type',
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::AnalysisError.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Operation Stubber for DescribeAnalysisPermissions
    class DescribeAnalysisPermissions
      def self.default(visited=[])
        {
          analysis_id: 'analysis_id',
          analysis_arn: 'analysis_arn',
          permissions: Stubs::ResourcePermissionList.default(visited),
          status: 1,
          request_id: 'request_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['AnalysisId'] = stub[:analysis_id] unless stub[:analysis_id].nil?
        data['AnalysisArn'] = stub[:analysis_arn] unless stub[:analysis_arn].nil?
        data['Permissions'] = Stubs::ResourcePermissionList.stub(stub[:permissions]) unless stub[:permissions].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ResourcePermissionList
    class ResourcePermissionList
      def self.default(visited=[])
        return nil if visited.include?('ResourcePermissionList')
        visited = visited + ['ResourcePermissionList']
        [
          Stubs::ResourcePermission.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ResourcePermission.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ResourcePermission
    class ResourcePermission
      def self.default(visited=[])
        return nil if visited.include?('ResourcePermission')
        visited = visited + ['ResourcePermission']
        {
          principal: 'principal',
          actions: Stubs::ActionList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourcePermission.new
        data = {}
        data['Principal'] = stub[:principal] unless stub[:principal].nil?
        data['Actions'] = Stubs::ActionList.stub(stub[:actions]) unless stub[:actions].nil?
        data
      end
    end

    # List Stubber for ActionList
    class ActionList
      def self.default(visited=[])
        return nil if visited.include?('ActionList')
        visited = visited + ['ActionList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeDashboard
    class DescribeDashboard
      def self.default(visited=[])
        {
          dashboard: Stubs::Dashboard.default(visited),
          status: 1,
          request_id: 'request_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['Dashboard'] = Stubs::Dashboard.stub(stub[:dashboard]) unless stub[:dashboard].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Dashboard
    class Dashboard
      def self.default(visited=[])
        return nil if visited.include?('Dashboard')
        visited = visited + ['Dashboard']
        {
          dashboard_id: 'dashboard_id',
          arn: 'arn',
          name: 'name',
          version: Stubs::DashboardVersion.default(visited),
          created_time: Time.now,
          last_published_time: Time.now,
          last_updated_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::Dashboard.new
        data = {}
        data['DashboardId'] = stub[:dashboard_id] unless stub[:dashboard_id].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Version'] = Stubs::DashboardVersion.stub(stub[:version]) unless stub[:version].nil?
        data['CreatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        data['LastPublishedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_published_time]).to_i unless stub[:last_published_time].nil?
        data['LastUpdatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_time]).to_i unless stub[:last_updated_time].nil?
        data
      end
    end

    # Structure Stubber for DashboardVersion
    class DashboardVersion
      def self.default(visited=[])
        return nil if visited.include?('DashboardVersion')
        visited = visited + ['DashboardVersion']
        {
          created_time: Time.now,
          errors: Stubs::DashboardErrorList.default(visited),
          version_number: 1,
          status: 'status',
          arn: 'arn',
          source_entity_arn: 'source_entity_arn',
          data_set_arns: Stubs::DataSetArnsList.default(visited),
          description: 'description',
          theme_arn: 'theme_arn',
          sheets: Stubs::SheetList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DashboardVersion.new
        data = {}
        data['CreatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        data['Errors'] = Stubs::DashboardErrorList.stub(stub[:errors]) unless stub[:errors].nil?
        data['VersionNumber'] = stub[:version_number] unless stub[:version_number].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['SourceEntityArn'] = stub[:source_entity_arn] unless stub[:source_entity_arn].nil?
        data['DataSetArns'] = Stubs::DataSetArnsList.stub(stub[:data_set_arns]) unless stub[:data_set_arns].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['ThemeArn'] = stub[:theme_arn] unless stub[:theme_arn].nil?
        data['Sheets'] = Stubs::SheetList.stub(stub[:sheets]) unless stub[:sheets].nil?
        data
      end
    end

    # List Stubber for DashboardErrorList
    class DashboardErrorList
      def self.default(visited=[])
        return nil if visited.include?('DashboardErrorList')
        visited = visited + ['DashboardErrorList']
        [
          Stubs::DashboardError.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DashboardError.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DashboardError
    class DashboardError
      def self.default(visited=[])
        return nil if visited.include?('DashboardError')
        visited = visited + ['DashboardError']
        {
          type: 'type',
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::DashboardError.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Operation Stubber for DescribeDashboardPermissions
    class DescribeDashboardPermissions
      def self.default(visited=[])
        {
          dashboard_id: 'dashboard_id',
          dashboard_arn: 'dashboard_arn',
          permissions: Stubs::ResourcePermissionList.default(visited),
          status: 1,
          request_id: 'request_id',
          link_sharing_configuration: Stubs::LinkSharingConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['DashboardId'] = stub[:dashboard_id] unless stub[:dashboard_id].nil?
        data['DashboardArn'] = stub[:dashboard_arn] unless stub[:dashboard_arn].nil?
        data['Permissions'] = Stubs::ResourcePermissionList.stub(stub[:permissions]) unless stub[:permissions].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['LinkSharingConfiguration'] = Stubs::LinkSharingConfiguration.stub(stub[:link_sharing_configuration]) unless stub[:link_sharing_configuration].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for LinkSharingConfiguration
    class LinkSharingConfiguration
      def self.default(visited=[])
        return nil if visited.include?('LinkSharingConfiguration')
        visited = visited + ['LinkSharingConfiguration']
        {
          permissions: Stubs::ResourcePermissionList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::LinkSharingConfiguration.new
        data = {}
        data['Permissions'] = Stubs::ResourcePermissionList.stub(stub[:permissions]) unless stub[:permissions].nil?
        data
      end
    end

    # Operation Stubber for DescribeDataSet
    class DescribeDataSet
      def self.default(visited=[])
        {
          data_set: Stubs::DataSet.default(visited),
          request_id: 'request_id',
          status: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['DataSet'] = Stubs::DataSet.stub(stub[:data_set]) unless stub[:data_set].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for DataSet
    class DataSet
      def self.default(visited=[])
        return nil if visited.include?('DataSet')
        visited = visited + ['DataSet']
        {
          arn: 'arn',
          data_set_id: 'data_set_id',
          name: 'name',
          created_time: Time.now,
          last_updated_time: Time.now,
          physical_table_map: Stubs::PhysicalTableMap.default(visited),
          logical_table_map: Stubs::LogicalTableMap.default(visited),
          output_columns: Stubs::OutputColumnList.default(visited),
          import_mode: 'import_mode',
          consumed_spice_capacity_in_bytes: 1,
          column_groups: Stubs::ColumnGroupList.default(visited),
          field_folders: Stubs::FieldFolderMap.default(visited),
          row_level_permission_data_set: Stubs::RowLevelPermissionDataSet.default(visited),
          row_level_permission_tag_configuration: Stubs::RowLevelPermissionTagConfiguration.default(visited),
          column_level_permission_rules: Stubs::ColumnLevelPermissionRuleList.default(visited),
          data_set_usage_configuration: Stubs::DataSetUsageConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DataSet.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['DataSetId'] = stub[:data_set_id] unless stub[:data_set_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['CreatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        data['LastUpdatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_time]).to_i unless stub[:last_updated_time].nil?
        data['PhysicalTableMap'] = Stubs::PhysicalTableMap.stub(stub[:physical_table_map]) unless stub[:physical_table_map].nil?
        data['LogicalTableMap'] = Stubs::LogicalTableMap.stub(stub[:logical_table_map]) unless stub[:logical_table_map].nil?
        data['OutputColumns'] = Stubs::OutputColumnList.stub(stub[:output_columns]) unless stub[:output_columns].nil?
        data['ImportMode'] = stub[:import_mode] unless stub[:import_mode].nil?
        data['ConsumedSpiceCapacityInBytes'] = stub[:consumed_spice_capacity_in_bytes] unless stub[:consumed_spice_capacity_in_bytes].nil?
        data['ColumnGroups'] = Stubs::ColumnGroupList.stub(stub[:column_groups]) unless stub[:column_groups].nil?
        data['FieldFolders'] = Stubs::FieldFolderMap.stub(stub[:field_folders]) unless stub[:field_folders].nil?
        data['RowLevelPermissionDataSet'] = Stubs::RowLevelPermissionDataSet.stub(stub[:row_level_permission_data_set]) unless stub[:row_level_permission_data_set].nil?
        data['RowLevelPermissionTagConfiguration'] = Stubs::RowLevelPermissionTagConfiguration.stub(stub[:row_level_permission_tag_configuration]) unless stub[:row_level_permission_tag_configuration].nil?
        data['ColumnLevelPermissionRules'] = Stubs::ColumnLevelPermissionRuleList.stub(stub[:column_level_permission_rules]) unless stub[:column_level_permission_rules].nil?
        data['DataSetUsageConfiguration'] = Stubs::DataSetUsageConfiguration.stub(stub[:data_set_usage_configuration]) unless stub[:data_set_usage_configuration].nil?
        data
      end
    end

    # Structure Stubber for DataSetUsageConfiguration
    class DataSetUsageConfiguration
      def self.default(visited=[])
        return nil if visited.include?('DataSetUsageConfiguration')
        visited = visited + ['DataSetUsageConfiguration']
        {
          disable_use_as_direct_query_source: false,
          disable_use_as_imported_source: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::DataSetUsageConfiguration.new
        data = {}
        data['DisableUseAsDirectQuerySource'] = stub[:disable_use_as_direct_query_source] unless stub[:disable_use_as_direct_query_source].nil?
        data['DisableUseAsImportedSource'] = stub[:disable_use_as_imported_source] unless stub[:disable_use_as_imported_source].nil?
        data
      end
    end

    # List Stubber for ColumnLevelPermissionRuleList
    class ColumnLevelPermissionRuleList
      def self.default(visited=[])
        return nil if visited.include?('ColumnLevelPermissionRuleList')
        visited = visited + ['ColumnLevelPermissionRuleList']
        [
          Stubs::ColumnLevelPermissionRule.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ColumnLevelPermissionRule.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ColumnLevelPermissionRule
    class ColumnLevelPermissionRule
      def self.default(visited=[])
        return nil if visited.include?('ColumnLevelPermissionRule')
        visited = visited + ['ColumnLevelPermissionRule']
        {
          principals: Stubs::PrincipalList.default(visited),
          column_names: Stubs::ColumnNameList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ColumnLevelPermissionRule.new
        data = {}
        data['Principals'] = Stubs::PrincipalList.stub(stub[:principals]) unless stub[:principals].nil?
        data['ColumnNames'] = Stubs::ColumnNameList.stub(stub[:column_names]) unless stub[:column_names].nil?
        data
      end
    end

    # List Stubber for ColumnNameList
    class ColumnNameList
      def self.default(visited=[])
        return nil if visited.include?('ColumnNameList')
        visited = visited + ['ColumnNameList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Stubber for PrincipalList
    class PrincipalList
      def self.default(visited=[])
        return nil if visited.include?('PrincipalList')
        visited = visited + ['PrincipalList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RowLevelPermissionTagConfiguration
    class RowLevelPermissionTagConfiguration
      def self.default(visited=[])
        return nil if visited.include?('RowLevelPermissionTagConfiguration')
        visited = visited + ['RowLevelPermissionTagConfiguration']
        {
          status: 'status',
          tag_rules: Stubs::RowLevelPermissionTagRuleList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RowLevelPermissionTagConfiguration.new
        data = {}
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['TagRules'] = Stubs::RowLevelPermissionTagRuleList.stub(stub[:tag_rules]) unless stub[:tag_rules].nil?
        data
      end
    end

    # List Stubber for RowLevelPermissionTagRuleList
    class RowLevelPermissionTagRuleList
      def self.default(visited=[])
        return nil if visited.include?('RowLevelPermissionTagRuleList')
        visited = visited + ['RowLevelPermissionTagRuleList']
        [
          Stubs::RowLevelPermissionTagRule.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::RowLevelPermissionTagRule.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RowLevelPermissionTagRule
    class RowLevelPermissionTagRule
      def self.default(visited=[])
        return nil if visited.include?('RowLevelPermissionTagRule')
        visited = visited + ['RowLevelPermissionTagRule']
        {
          tag_key: 'tag_key',
          column_name: 'column_name',
          tag_multi_value_delimiter: 'tag_multi_value_delimiter',
          match_all_value: 'match_all_value',
        }
      end

      def self.stub(stub)
        stub ||= Types::RowLevelPermissionTagRule.new
        data = {}
        data['TagKey'] = stub[:tag_key] unless stub[:tag_key].nil?
        data['ColumnName'] = stub[:column_name] unless stub[:column_name].nil?
        data['TagMultiValueDelimiter'] = stub[:tag_multi_value_delimiter] unless stub[:tag_multi_value_delimiter].nil?
        data['MatchAllValue'] = stub[:match_all_value] unless stub[:match_all_value].nil?
        data
      end
    end

    # Structure Stubber for RowLevelPermissionDataSet
    class RowLevelPermissionDataSet
      def self.default(visited=[])
        return nil if visited.include?('RowLevelPermissionDataSet')
        visited = visited + ['RowLevelPermissionDataSet']
        {
          namespace: 'namespace',
          arn: 'arn',
          permission_policy: 'permission_policy',
          format_version: 'format_version',
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::RowLevelPermissionDataSet.new
        data = {}
        data['Namespace'] = stub[:namespace] unless stub[:namespace].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['PermissionPolicy'] = stub[:permission_policy] unless stub[:permission_policy].nil?
        data['FormatVersion'] = stub[:format_version] unless stub[:format_version].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # Map Stubber for FieldFolderMap
    class FieldFolderMap
      def self.default(visited=[])
        return nil if visited.include?('FieldFolderMap')
        visited = visited + ['FieldFolderMap']
        {
          test_key: Stubs::FieldFolder.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::FieldFolder.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for FieldFolder
    class FieldFolder
      def self.default(visited=[])
        return nil if visited.include?('FieldFolder')
        visited = visited + ['FieldFolder']
        {
          description: 'description',
          columns: Stubs::FolderColumnList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::FieldFolder.new
        data = {}
        data['description'] = stub[:description] unless stub[:description].nil?
        data['columns'] = Stubs::FolderColumnList.stub(stub[:columns]) unless stub[:columns].nil?
        data
      end
    end

    # List Stubber for FolderColumnList
    class FolderColumnList
      def self.default(visited=[])
        return nil if visited.include?('FolderColumnList')
        visited = visited + ['FolderColumnList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Stubber for ColumnGroupList
    class ColumnGroupList
      def self.default(visited=[])
        return nil if visited.include?('ColumnGroupList')
        visited = visited + ['ColumnGroupList']
        [
          Stubs::ColumnGroup.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ColumnGroup.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ColumnGroup
    class ColumnGroup
      def self.default(visited=[])
        return nil if visited.include?('ColumnGroup')
        visited = visited + ['ColumnGroup']
        {
          geo_spatial_column_group: Stubs::GeoSpatialColumnGroup.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ColumnGroup.new
        data = {}
        data['GeoSpatialColumnGroup'] = Stubs::GeoSpatialColumnGroup.stub(stub[:geo_spatial_column_group]) unless stub[:geo_spatial_column_group].nil?
        data
      end
    end

    # Structure Stubber for GeoSpatialColumnGroup
    class GeoSpatialColumnGroup
      def self.default(visited=[])
        return nil if visited.include?('GeoSpatialColumnGroup')
        visited = visited + ['GeoSpatialColumnGroup']
        {
          name: 'name',
          country_code: 'country_code',
          columns: Stubs::ColumnList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::GeoSpatialColumnGroup.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['CountryCode'] = stub[:country_code] unless stub[:country_code].nil?
        data['Columns'] = Stubs::ColumnList.stub(stub[:columns]) unless stub[:columns].nil?
        data
      end
    end

    # List Stubber for ColumnList
    class ColumnList
      def self.default(visited=[])
        return nil if visited.include?('ColumnList')
        visited = visited + ['ColumnList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Stubber for OutputColumnList
    class OutputColumnList
      def self.default(visited=[])
        return nil if visited.include?('OutputColumnList')
        visited = visited + ['OutputColumnList']
        [
          Stubs::OutputColumn.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::OutputColumn.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for OutputColumn
    class OutputColumn
      def self.default(visited=[])
        return nil if visited.include?('OutputColumn')
        visited = visited + ['OutputColumn']
        {
          name: 'name',
          description: 'description',
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::OutputColumn.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # Map Stubber for LogicalTableMap
    class LogicalTableMap
      def self.default(visited=[])
        return nil if visited.include?('LogicalTableMap')
        visited = visited + ['LogicalTableMap']
        {
          test_key: Stubs::LogicalTable.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::LogicalTable.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for LogicalTable
    class LogicalTable
      def self.default(visited=[])
        return nil if visited.include?('LogicalTable')
        visited = visited + ['LogicalTable']
        {
          alias: 'alias',
          data_transforms: Stubs::TransformOperationList.default(visited),
          source: Stubs::LogicalTableSource.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::LogicalTable.new
        data = {}
        data['Alias'] = stub[:alias] unless stub[:alias].nil?
        data['DataTransforms'] = Stubs::TransformOperationList.stub(stub[:data_transforms]) unless stub[:data_transforms].nil?
        data['Source'] = Stubs::LogicalTableSource.stub(stub[:source]) unless stub[:source].nil?
        data
      end
    end

    # Structure Stubber for LogicalTableSource
    class LogicalTableSource
      def self.default(visited=[])
        return nil if visited.include?('LogicalTableSource')
        visited = visited + ['LogicalTableSource']
        {
          join_instruction: Stubs::JoinInstruction.default(visited),
          physical_table_id: 'physical_table_id',
          data_set_arn: 'data_set_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::LogicalTableSource.new
        data = {}
        data['JoinInstruction'] = Stubs::JoinInstruction.stub(stub[:join_instruction]) unless stub[:join_instruction].nil?
        data['PhysicalTableId'] = stub[:physical_table_id] unless stub[:physical_table_id].nil?
        data['DataSetArn'] = stub[:data_set_arn] unless stub[:data_set_arn].nil?
        data
      end
    end

    # Structure Stubber for JoinInstruction
    class JoinInstruction
      def self.default(visited=[])
        return nil if visited.include?('JoinInstruction')
        visited = visited + ['JoinInstruction']
        {
          left_operand: 'left_operand',
          right_operand: 'right_operand',
          left_join_key_properties: Stubs::JoinKeyProperties.default(visited),
          right_join_key_properties: Stubs::JoinKeyProperties.default(visited),
          type: 'type',
          on_clause: 'on_clause',
        }
      end

      def self.stub(stub)
        stub ||= Types::JoinInstruction.new
        data = {}
        data['LeftOperand'] = stub[:left_operand] unless stub[:left_operand].nil?
        data['RightOperand'] = stub[:right_operand] unless stub[:right_operand].nil?
        data['LeftJoinKeyProperties'] = Stubs::JoinKeyProperties.stub(stub[:left_join_key_properties]) unless stub[:left_join_key_properties].nil?
        data['RightJoinKeyProperties'] = Stubs::JoinKeyProperties.stub(stub[:right_join_key_properties]) unless stub[:right_join_key_properties].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['OnClause'] = stub[:on_clause] unless stub[:on_clause].nil?
        data
      end
    end

    # Structure Stubber for JoinKeyProperties
    class JoinKeyProperties
      def self.default(visited=[])
        return nil if visited.include?('JoinKeyProperties')
        visited = visited + ['JoinKeyProperties']
        {
          unique_key: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::JoinKeyProperties.new
        data = {}
        data['UniqueKey'] = stub[:unique_key] unless stub[:unique_key].nil?
        data
      end
    end

    # List Stubber for TransformOperationList
    class TransformOperationList
      def self.default(visited=[])
        return nil if visited.include?('TransformOperationList')
        visited = visited + ['TransformOperationList']
        [
          Stubs::TransformOperation.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::TransformOperation.stub(element) unless element.nil?
        end
        data
      end
    end

    # Union Stubber for TransformOperation
    class TransformOperation
      def self.default(visited=[])
        return nil if visited.include?('TransformOperation')
        visited = visited + ['TransformOperation']
        {
          project_operation: Stubs::ProjectOperation.default(visited),
        }
      end

      def self.stub(stub)
        data = {}
        case stub
        when Types::TransformOperation::ProjectOperation
          data['ProjectOperation'] = (Stubs::ProjectOperation.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::TransformOperation::FilterOperation
          data['FilterOperation'] = (Stubs::FilterOperation.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::TransformOperation::CreateColumnsOperation
          data['CreateColumnsOperation'] = (Stubs::CreateColumnsOperation.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::TransformOperation::RenameColumnOperation
          data['RenameColumnOperation'] = (Stubs::RenameColumnOperation.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::TransformOperation::CastColumnTypeOperation
          data['CastColumnTypeOperation'] = (Stubs::CastColumnTypeOperation.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::TransformOperation::TagColumnOperation
          data['TagColumnOperation'] = (Stubs::TagColumnOperation.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::TransformOperation::UntagColumnOperation
          data['UntagColumnOperation'] = (Stubs::UntagColumnOperation.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::TransformOperation"
        end

        data
      end
    end

    # Structure Stubber for UntagColumnOperation
    class UntagColumnOperation
      def self.default(visited=[])
        return nil if visited.include?('UntagColumnOperation')
        visited = visited + ['UntagColumnOperation']
        {
          column_name: 'column_name',
          tag_names: Stubs::ColumnTagNames.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::UntagColumnOperation.new
        data = {}
        data['ColumnName'] = stub[:column_name] unless stub[:column_name].nil?
        data['TagNames'] = Stubs::ColumnTagNames.stub(stub[:tag_names]) unless stub[:tag_names].nil?
        data
      end
    end

    # List Stubber for ColumnTagNames
    class ColumnTagNames
      def self.default(visited=[])
        return nil if visited.include?('ColumnTagNames')
        visited = visited + ['ColumnTagNames']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TagColumnOperation
    class TagColumnOperation
      def self.default(visited=[])
        return nil if visited.include?('TagColumnOperation')
        visited = visited + ['TagColumnOperation']
        {
          column_name: 'column_name',
          tags: Stubs::ColumnTagList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TagColumnOperation.new
        data = {}
        data['ColumnName'] = stub[:column_name] unless stub[:column_name].nil?
        data['Tags'] = Stubs::ColumnTagList.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # List Stubber for ColumnTagList
    class ColumnTagList
      def self.default(visited=[])
        return nil if visited.include?('ColumnTagList')
        visited = visited + ['ColumnTagList']
        [
          Stubs::ColumnTag.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ColumnTag.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ColumnTag
    class ColumnTag
      def self.default(visited=[])
        return nil if visited.include?('ColumnTag')
        visited = visited + ['ColumnTag']
        {
          column_geographic_role: 'column_geographic_role',
          column_description: Stubs::ColumnDescription.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ColumnTag.new
        data = {}
        data['ColumnGeographicRole'] = stub[:column_geographic_role] unless stub[:column_geographic_role].nil?
        data['ColumnDescription'] = Stubs::ColumnDescription.stub(stub[:column_description]) unless stub[:column_description].nil?
        data
      end
    end

    # Structure Stubber for ColumnDescription
    class ColumnDescription
      def self.default(visited=[])
        return nil if visited.include?('ColumnDescription')
        visited = visited + ['ColumnDescription']
        {
          text: 'text',
        }
      end

      def self.stub(stub)
        stub ||= Types::ColumnDescription.new
        data = {}
        data['Text'] = stub[:text] unless stub[:text].nil?
        data
      end
    end

    # Structure Stubber for CastColumnTypeOperation
    class CastColumnTypeOperation
      def self.default(visited=[])
        return nil if visited.include?('CastColumnTypeOperation')
        visited = visited + ['CastColumnTypeOperation']
        {
          column_name: 'column_name',
          new_column_type: 'new_column_type',
          format: 'format',
        }
      end

      def self.stub(stub)
        stub ||= Types::CastColumnTypeOperation.new
        data = {}
        data['ColumnName'] = stub[:column_name] unless stub[:column_name].nil?
        data['NewColumnType'] = stub[:new_column_type] unless stub[:new_column_type].nil?
        data['Format'] = stub[:format] unless stub[:format].nil?
        data
      end
    end

    # Structure Stubber for RenameColumnOperation
    class RenameColumnOperation
      def self.default(visited=[])
        return nil if visited.include?('RenameColumnOperation')
        visited = visited + ['RenameColumnOperation']
        {
          column_name: 'column_name',
          new_column_name: 'new_column_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::RenameColumnOperation.new
        data = {}
        data['ColumnName'] = stub[:column_name] unless stub[:column_name].nil?
        data['NewColumnName'] = stub[:new_column_name] unless stub[:new_column_name].nil?
        data
      end
    end

    # Structure Stubber for CreateColumnsOperation
    class CreateColumnsOperation
      def self.default(visited=[])
        return nil if visited.include?('CreateColumnsOperation')
        visited = visited + ['CreateColumnsOperation']
        {
          columns: Stubs::CalculatedColumnList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CreateColumnsOperation.new
        data = {}
        data['Columns'] = Stubs::CalculatedColumnList.stub(stub[:columns]) unless stub[:columns].nil?
        data
      end
    end

    # List Stubber for CalculatedColumnList
    class CalculatedColumnList
      def self.default(visited=[])
        return nil if visited.include?('CalculatedColumnList')
        visited = visited + ['CalculatedColumnList']
        [
          Stubs::CalculatedColumn.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::CalculatedColumn.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CalculatedColumn
    class CalculatedColumn
      def self.default(visited=[])
        return nil if visited.include?('CalculatedColumn')
        visited = visited + ['CalculatedColumn']
        {
          column_name: 'column_name',
          column_id: 'column_id',
          expression: 'expression',
        }
      end

      def self.stub(stub)
        stub ||= Types::CalculatedColumn.new
        data = {}
        data['ColumnName'] = stub[:column_name] unless stub[:column_name].nil?
        data['ColumnId'] = stub[:column_id] unless stub[:column_id].nil?
        data['Expression'] = stub[:expression] unless stub[:expression].nil?
        data
      end
    end

    # Structure Stubber for FilterOperation
    class FilterOperation
      def self.default(visited=[])
        return nil if visited.include?('FilterOperation')
        visited = visited + ['FilterOperation']
        {
          condition_expression: 'condition_expression',
        }
      end

      def self.stub(stub)
        stub ||= Types::FilterOperation.new
        data = {}
        data['ConditionExpression'] = stub[:condition_expression] unless stub[:condition_expression].nil?
        data
      end
    end

    # Structure Stubber for ProjectOperation
    class ProjectOperation
      def self.default(visited=[])
        return nil if visited.include?('ProjectOperation')
        visited = visited + ['ProjectOperation']
        {
          projected_columns: Stubs::ProjectedColumnList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ProjectOperation.new
        data = {}
        data['ProjectedColumns'] = Stubs::ProjectedColumnList.stub(stub[:projected_columns]) unless stub[:projected_columns].nil?
        data
      end
    end

    # List Stubber for ProjectedColumnList
    class ProjectedColumnList
      def self.default(visited=[])
        return nil if visited.include?('ProjectedColumnList')
        visited = visited + ['ProjectedColumnList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Map Stubber for PhysicalTableMap
    class PhysicalTableMap
      def self.default(visited=[])
        return nil if visited.include?('PhysicalTableMap')
        visited = visited + ['PhysicalTableMap']
        {
          test_key: Stubs::PhysicalTable.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::PhysicalTable.stub(value) unless value.nil?
        end
        data
      end
    end

    # Union Stubber for PhysicalTable
    class PhysicalTable
      def self.default(visited=[])
        return nil if visited.include?('PhysicalTable')
        visited = visited + ['PhysicalTable']
        {
          relational_table: Stubs::RelationalTable.default(visited),
        }
      end

      def self.stub(stub)
        data = {}
        case stub
        when Types::PhysicalTable::RelationalTable
          data['RelationalTable'] = (Stubs::RelationalTable.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::PhysicalTable::CustomSql
          data['CustomSql'] = (Stubs::CustomSql.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::PhysicalTable::S3Source
          data['S3Source'] = (Stubs::S3Source.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::PhysicalTable"
        end

        data
      end
    end

    # Structure Stubber for S3Source
    class S3Source
      def self.default(visited=[])
        return nil if visited.include?('S3Source')
        visited = visited + ['S3Source']
        {
          data_source_arn: 'data_source_arn',
          upload_settings: Stubs::UploadSettings.default(visited),
          input_columns: Stubs::InputColumnList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::S3Source.new
        data = {}
        data['DataSourceArn'] = stub[:data_source_arn] unless stub[:data_source_arn].nil?
        data['UploadSettings'] = Stubs::UploadSettings.stub(stub[:upload_settings]) unless stub[:upload_settings].nil?
        data['InputColumns'] = Stubs::InputColumnList.stub(stub[:input_columns]) unless stub[:input_columns].nil?
        data
      end
    end

    # List Stubber for InputColumnList
    class InputColumnList
      def self.default(visited=[])
        return nil if visited.include?('InputColumnList')
        visited = visited + ['InputColumnList']
        [
          Stubs::InputColumn.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::InputColumn.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for InputColumn
    class InputColumn
      def self.default(visited=[])
        return nil if visited.include?('InputColumn')
        visited = visited + ['InputColumn']
        {
          name: 'name',
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::InputColumn.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # Structure Stubber for UploadSettings
    class UploadSettings
      def self.default(visited=[])
        return nil if visited.include?('UploadSettings')
        visited = visited + ['UploadSettings']
        {
          format: 'format',
          start_from_row: 1,
          contains_header: false,
          text_qualifier: 'text_qualifier',
          delimiter: 'delimiter',
        }
      end

      def self.stub(stub)
        stub ||= Types::UploadSettings.new
        data = {}
        data['Format'] = stub[:format] unless stub[:format].nil?
        data['StartFromRow'] = stub[:start_from_row] unless stub[:start_from_row].nil?
        data['ContainsHeader'] = stub[:contains_header] unless stub[:contains_header].nil?
        data['TextQualifier'] = stub[:text_qualifier] unless stub[:text_qualifier].nil?
        data['Delimiter'] = stub[:delimiter] unless stub[:delimiter].nil?
        data
      end
    end

    # Structure Stubber for CustomSql
    class CustomSql
      def self.default(visited=[])
        return nil if visited.include?('CustomSql')
        visited = visited + ['CustomSql']
        {
          data_source_arn: 'data_source_arn',
          name: 'name',
          sql_query: 'sql_query',
          columns: Stubs::InputColumnList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CustomSql.new
        data = {}
        data['DataSourceArn'] = stub[:data_source_arn] unless stub[:data_source_arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['SqlQuery'] = stub[:sql_query] unless stub[:sql_query].nil?
        data['Columns'] = Stubs::InputColumnList.stub(stub[:columns]) unless stub[:columns].nil?
        data
      end
    end

    # Structure Stubber for RelationalTable
    class RelationalTable
      def self.default(visited=[])
        return nil if visited.include?('RelationalTable')
        visited = visited + ['RelationalTable']
        {
          data_source_arn: 'data_source_arn',
          catalog: 'catalog',
          schema: 'schema',
          name: 'name',
          input_columns: Stubs::InputColumnList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RelationalTable.new
        data = {}
        data['DataSourceArn'] = stub[:data_source_arn] unless stub[:data_source_arn].nil?
        data['Catalog'] = stub[:catalog] unless stub[:catalog].nil?
        data['Schema'] = stub[:schema] unless stub[:schema].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['InputColumns'] = Stubs::InputColumnList.stub(stub[:input_columns]) unless stub[:input_columns].nil?
        data
      end
    end

    # Operation Stubber for DescribeDataSetPermissions
    class DescribeDataSetPermissions
      def self.default(visited=[])
        {
          data_set_arn: 'data_set_arn',
          data_set_id: 'data_set_id',
          permissions: Stubs::ResourcePermissionList.default(visited),
          request_id: 'request_id',
          status: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['DataSetArn'] = stub[:data_set_arn] unless stub[:data_set_arn].nil?
        data['DataSetId'] = stub[:data_set_id] unless stub[:data_set_id].nil?
        data['Permissions'] = Stubs::ResourcePermissionList.stub(stub[:permissions]) unless stub[:permissions].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeDataSource
    class DescribeDataSource
      def self.default(visited=[])
        {
          data_source: Stubs::DataSource.default(visited),
          request_id: 'request_id',
          status: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['DataSource'] = Stubs::DataSource.stub(stub[:data_source]) unless stub[:data_source].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for DataSource
    class DataSource
      def self.default(visited=[])
        return nil if visited.include?('DataSource')
        visited = visited + ['DataSource']
        {
          arn: 'arn',
          data_source_id: 'data_source_id',
          name: 'name',
          type: 'type',
          status: 'status',
          created_time: Time.now,
          last_updated_time: Time.now,
          data_source_parameters: Stubs::DataSourceParameters.default(visited),
          alternate_data_source_parameters: Stubs::DataSourceParametersList.default(visited),
          vpc_connection_properties: Stubs::VpcConnectionProperties.default(visited),
          ssl_properties: Stubs::SslProperties.default(visited),
          error_info: Stubs::DataSourceErrorInfo.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DataSource.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['DataSourceId'] = stub[:data_source_id] unless stub[:data_source_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['CreatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        data['LastUpdatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_time]).to_i unless stub[:last_updated_time].nil?
        data['DataSourceParameters'] = Stubs::DataSourceParameters.stub(stub[:data_source_parameters]) unless stub[:data_source_parameters].nil?
        data['AlternateDataSourceParameters'] = Stubs::DataSourceParametersList.stub(stub[:alternate_data_source_parameters]) unless stub[:alternate_data_source_parameters].nil?
        data['VpcConnectionProperties'] = Stubs::VpcConnectionProperties.stub(stub[:vpc_connection_properties]) unless stub[:vpc_connection_properties].nil?
        data['SslProperties'] = Stubs::SslProperties.stub(stub[:ssl_properties]) unless stub[:ssl_properties].nil?
        data['ErrorInfo'] = Stubs::DataSourceErrorInfo.stub(stub[:error_info]) unless stub[:error_info].nil?
        data
      end
    end

    # Structure Stubber for DataSourceErrorInfo
    class DataSourceErrorInfo
      def self.default(visited=[])
        return nil if visited.include?('DataSourceErrorInfo')
        visited = visited + ['DataSourceErrorInfo']
        {
          type: 'type',
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::DataSourceErrorInfo.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Structure Stubber for SslProperties
    class SslProperties
      def self.default(visited=[])
        return nil if visited.include?('SslProperties')
        visited = visited + ['SslProperties']
        {
          disable_ssl: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::SslProperties.new
        data = {}
        data['DisableSsl'] = stub[:disable_ssl] unless stub[:disable_ssl].nil?
        data
      end
    end

    # Structure Stubber for VpcConnectionProperties
    class VpcConnectionProperties
      def self.default(visited=[])
        return nil if visited.include?('VpcConnectionProperties')
        visited = visited + ['VpcConnectionProperties']
        {
          vpc_connection_arn: 'vpc_connection_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::VpcConnectionProperties.new
        data = {}
        data['VpcConnectionArn'] = stub[:vpc_connection_arn] unless stub[:vpc_connection_arn].nil?
        data
      end
    end

    # List Stubber for DataSourceParametersList
    class DataSourceParametersList
      def self.default(visited=[])
        return nil if visited.include?('DataSourceParametersList')
        visited = visited + ['DataSourceParametersList']
        [
          Stubs::DataSourceParameters.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DataSourceParameters.stub(element) unless element.nil?
        end
        data
      end
    end

    # Union Stubber for DataSourceParameters
    class DataSourceParameters
      def self.default(visited=[])
        return nil if visited.include?('DataSourceParameters')
        visited = visited + ['DataSourceParameters']
        {
          amazon_elasticsearch_parameters: Stubs::AmazonElasticsearchParameters.default(visited),
        }
      end

      def self.stub(stub)
        data = {}
        case stub
        when Types::DataSourceParameters::AmazonElasticsearchParameters
          data['AmazonElasticsearchParameters'] = (Stubs::AmazonElasticsearchParameters.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::DataSourceParameters::AthenaParameters
          data['AthenaParameters'] = (Stubs::AthenaParameters.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::DataSourceParameters::AuroraParameters
          data['AuroraParameters'] = (Stubs::AuroraParameters.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::DataSourceParameters::AuroraPostgreSqlParameters
          data['AuroraPostgreSqlParameters'] = (Stubs::AuroraPostgreSqlParameters.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::DataSourceParameters::AwsIotAnalyticsParameters
          data['AwsIotAnalyticsParameters'] = (Stubs::AwsIotAnalyticsParameters.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::DataSourceParameters::JiraParameters
          data['JiraParameters'] = (Stubs::JiraParameters.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::DataSourceParameters::MariaDbParameters
          data['MariaDbParameters'] = (Stubs::MariaDbParameters.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::DataSourceParameters::MySqlParameters
          data['MySqlParameters'] = (Stubs::MySqlParameters.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::DataSourceParameters::OracleParameters
          data['OracleParameters'] = (Stubs::OracleParameters.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::DataSourceParameters::PostgreSqlParameters
          data['PostgreSqlParameters'] = (Stubs::PostgreSqlParameters.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::DataSourceParameters::PrestoParameters
          data['PrestoParameters'] = (Stubs::PrestoParameters.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::DataSourceParameters::RdsParameters
          data['RdsParameters'] = (Stubs::RdsParameters.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::DataSourceParameters::RedshiftParameters
          data['RedshiftParameters'] = (Stubs::RedshiftParameters.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::DataSourceParameters::S3Parameters
          data['S3Parameters'] = (Stubs::S3Parameters.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::DataSourceParameters::ServiceNowParameters
          data['ServiceNowParameters'] = (Stubs::ServiceNowParameters.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::DataSourceParameters::SnowflakeParameters
          data['SnowflakeParameters'] = (Stubs::SnowflakeParameters.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::DataSourceParameters::SparkParameters
          data['SparkParameters'] = (Stubs::SparkParameters.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::DataSourceParameters::SqlServerParameters
          data['SqlServerParameters'] = (Stubs::SqlServerParameters.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::DataSourceParameters::TeradataParameters
          data['TeradataParameters'] = (Stubs::TeradataParameters.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::DataSourceParameters::TwitterParameters
          data['TwitterParameters'] = (Stubs::TwitterParameters.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::DataSourceParameters::AmazonOpenSearchParameters
          data['AmazonOpenSearchParameters'] = (Stubs::AmazonOpenSearchParameters.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::DataSourceParameters::ExasolParameters
          data['ExasolParameters'] = (Stubs::ExasolParameters.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::DataSourceParameters"
        end

        data
      end
    end

    # Structure Stubber for ExasolParameters
    class ExasolParameters
      def self.default(visited=[])
        return nil if visited.include?('ExasolParameters')
        visited = visited + ['ExasolParameters']
        {
          host: 'host',
          port: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ExasolParameters.new
        data = {}
        data['Host'] = stub[:host] unless stub[:host].nil?
        data['Port'] = stub[:port] unless stub[:port].nil?
        data
      end
    end

    # Structure Stubber for AmazonOpenSearchParameters
    class AmazonOpenSearchParameters
      def self.default(visited=[])
        return nil if visited.include?('AmazonOpenSearchParameters')
        visited = visited + ['AmazonOpenSearchParameters']
        {
          domain: 'domain',
        }
      end

      def self.stub(stub)
        stub ||= Types::AmazonOpenSearchParameters.new
        data = {}
        data['Domain'] = stub[:domain] unless stub[:domain].nil?
        data
      end
    end

    # Structure Stubber for TwitterParameters
    class TwitterParameters
      def self.default(visited=[])
        return nil if visited.include?('TwitterParameters')
        visited = visited + ['TwitterParameters']
        {
          query: 'query',
          max_rows: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::TwitterParameters.new
        data = {}
        data['Query'] = stub[:query] unless stub[:query].nil?
        data['MaxRows'] = stub[:max_rows] unless stub[:max_rows].nil?
        data
      end
    end

    # Structure Stubber for TeradataParameters
    class TeradataParameters
      def self.default(visited=[])
        return nil if visited.include?('TeradataParameters')
        visited = visited + ['TeradataParameters']
        {
          host: 'host',
          port: 1,
          database: 'database',
        }
      end

      def self.stub(stub)
        stub ||= Types::TeradataParameters.new
        data = {}
        data['Host'] = stub[:host] unless stub[:host].nil?
        data['Port'] = stub[:port] unless stub[:port].nil?
        data['Database'] = stub[:database] unless stub[:database].nil?
        data
      end
    end

    # Structure Stubber for SqlServerParameters
    class SqlServerParameters
      def self.default(visited=[])
        return nil if visited.include?('SqlServerParameters')
        visited = visited + ['SqlServerParameters']
        {
          host: 'host',
          port: 1,
          database: 'database',
        }
      end

      def self.stub(stub)
        stub ||= Types::SqlServerParameters.new
        data = {}
        data['Host'] = stub[:host] unless stub[:host].nil?
        data['Port'] = stub[:port] unless stub[:port].nil?
        data['Database'] = stub[:database] unless stub[:database].nil?
        data
      end
    end

    # Structure Stubber for SparkParameters
    class SparkParameters
      def self.default(visited=[])
        return nil if visited.include?('SparkParameters')
        visited = visited + ['SparkParameters']
        {
          host: 'host',
          port: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::SparkParameters.new
        data = {}
        data['Host'] = stub[:host] unless stub[:host].nil?
        data['Port'] = stub[:port] unless stub[:port].nil?
        data
      end
    end

    # Structure Stubber for SnowflakeParameters
    class SnowflakeParameters
      def self.default(visited=[])
        return nil if visited.include?('SnowflakeParameters')
        visited = visited + ['SnowflakeParameters']
        {
          host: 'host',
          database: 'database',
          warehouse: 'warehouse',
        }
      end

      def self.stub(stub)
        stub ||= Types::SnowflakeParameters.new
        data = {}
        data['Host'] = stub[:host] unless stub[:host].nil?
        data['Database'] = stub[:database] unless stub[:database].nil?
        data['Warehouse'] = stub[:warehouse] unless stub[:warehouse].nil?
        data
      end
    end

    # Structure Stubber for ServiceNowParameters
    class ServiceNowParameters
      def self.default(visited=[])
        return nil if visited.include?('ServiceNowParameters')
        visited = visited + ['ServiceNowParameters']
        {
          site_base_url: 'site_base_url',
        }
      end

      def self.stub(stub)
        stub ||= Types::ServiceNowParameters.new
        data = {}
        data['SiteBaseUrl'] = stub[:site_base_url] unless stub[:site_base_url].nil?
        data
      end
    end

    # Structure Stubber for S3Parameters
    class S3Parameters
      def self.default(visited=[])
        return nil if visited.include?('S3Parameters')
        visited = visited + ['S3Parameters']
        {
          manifest_file_location: Stubs::ManifestFileLocation.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::S3Parameters.new
        data = {}
        data['ManifestFileLocation'] = Stubs::ManifestFileLocation.stub(stub[:manifest_file_location]) unless stub[:manifest_file_location].nil?
        data
      end
    end

    # Structure Stubber for ManifestFileLocation
    class ManifestFileLocation
      def self.default(visited=[])
        return nil if visited.include?('ManifestFileLocation')
        visited = visited + ['ManifestFileLocation']
        {
          bucket: 'bucket',
          key: 'key',
        }
      end

      def self.stub(stub)
        stub ||= Types::ManifestFileLocation.new
        data = {}
        data['Bucket'] = stub[:bucket] unless stub[:bucket].nil?
        data['Key'] = stub[:key] unless stub[:key].nil?
        data
      end
    end

    # Structure Stubber for RedshiftParameters
    class RedshiftParameters
      def self.default(visited=[])
        return nil if visited.include?('RedshiftParameters')
        visited = visited + ['RedshiftParameters']
        {
          host: 'host',
          port: 1,
          database: 'database',
          cluster_id: 'cluster_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::RedshiftParameters.new
        data = {}
        data['Host'] = stub[:host] unless stub[:host].nil?
        data['Port'] = stub[:port] unless stub[:port].nil?
        data['Database'] = stub[:database] unless stub[:database].nil?
        data['ClusterId'] = stub[:cluster_id] unless stub[:cluster_id].nil?
        data
      end
    end

    # Structure Stubber for RdsParameters
    class RdsParameters
      def self.default(visited=[])
        return nil if visited.include?('RdsParameters')
        visited = visited + ['RdsParameters']
        {
          instance_id: 'instance_id',
          database: 'database',
        }
      end

      def self.stub(stub)
        stub ||= Types::RdsParameters.new
        data = {}
        data['InstanceId'] = stub[:instance_id] unless stub[:instance_id].nil?
        data['Database'] = stub[:database] unless stub[:database].nil?
        data
      end
    end

    # Structure Stubber for PrestoParameters
    class PrestoParameters
      def self.default(visited=[])
        return nil if visited.include?('PrestoParameters')
        visited = visited + ['PrestoParameters']
        {
          host: 'host',
          port: 1,
          catalog: 'catalog',
        }
      end

      def self.stub(stub)
        stub ||= Types::PrestoParameters.new
        data = {}
        data['Host'] = stub[:host] unless stub[:host].nil?
        data['Port'] = stub[:port] unless stub[:port].nil?
        data['Catalog'] = stub[:catalog] unless stub[:catalog].nil?
        data
      end
    end

    # Structure Stubber for PostgreSqlParameters
    class PostgreSqlParameters
      def self.default(visited=[])
        return nil if visited.include?('PostgreSqlParameters')
        visited = visited + ['PostgreSqlParameters']
        {
          host: 'host',
          port: 1,
          database: 'database',
        }
      end

      def self.stub(stub)
        stub ||= Types::PostgreSqlParameters.new
        data = {}
        data['Host'] = stub[:host] unless stub[:host].nil?
        data['Port'] = stub[:port] unless stub[:port].nil?
        data['Database'] = stub[:database] unless stub[:database].nil?
        data
      end
    end

    # Structure Stubber for OracleParameters
    class OracleParameters
      def self.default(visited=[])
        return nil if visited.include?('OracleParameters')
        visited = visited + ['OracleParameters']
        {
          host: 'host',
          port: 1,
          database: 'database',
        }
      end

      def self.stub(stub)
        stub ||= Types::OracleParameters.new
        data = {}
        data['Host'] = stub[:host] unless stub[:host].nil?
        data['Port'] = stub[:port] unless stub[:port].nil?
        data['Database'] = stub[:database] unless stub[:database].nil?
        data
      end
    end

    # Structure Stubber for MySqlParameters
    class MySqlParameters
      def self.default(visited=[])
        return nil if visited.include?('MySqlParameters')
        visited = visited + ['MySqlParameters']
        {
          host: 'host',
          port: 1,
          database: 'database',
        }
      end

      def self.stub(stub)
        stub ||= Types::MySqlParameters.new
        data = {}
        data['Host'] = stub[:host] unless stub[:host].nil?
        data['Port'] = stub[:port] unless stub[:port].nil?
        data['Database'] = stub[:database] unless stub[:database].nil?
        data
      end
    end

    # Structure Stubber for MariaDbParameters
    class MariaDbParameters
      def self.default(visited=[])
        return nil if visited.include?('MariaDbParameters')
        visited = visited + ['MariaDbParameters']
        {
          host: 'host',
          port: 1,
          database: 'database',
        }
      end

      def self.stub(stub)
        stub ||= Types::MariaDbParameters.new
        data = {}
        data['Host'] = stub[:host] unless stub[:host].nil?
        data['Port'] = stub[:port] unless stub[:port].nil?
        data['Database'] = stub[:database] unless stub[:database].nil?
        data
      end
    end

    # Structure Stubber for JiraParameters
    class JiraParameters
      def self.default(visited=[])
        return nil if visited.include?('JiraParameters')
        visited = visited + ['JiraParameters']
        {
          site_base_url: 'site_base_url',
        }
      end

      def self.stub(stub)
        stub ||= Types::JiraParameters.new
        data = {}
        data['SiteBaseUrl'] = stub[:site_base_url] unless stub[:site_base_url].nil?
        data
      end
    end

    # Structure Stubber for AwsIotAnalyticsParameters
    class AwsIotAnalyticsParameters
      def self.default(visited=[])
        return nil if visited.include?('AwsIotAnalyticsParameters')
        visited = visited + ['AwsIotAnalyticsParameters']
        {
          data_set_name: 'data_set_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsIotAnalyticsParameters.new
        data = {}
        data['DataSetName'] = stub[:data_set_name] unless stub[:data_set_name].nil?
        data
      end
    end

    # Structure Stubber for AuroraPostgreSqlParameters
    class AuroraPostgreSqlParameters
      def self.default(visited=[])
        return nil if visited.include?('AuroraPostgreSqlParameters')
        visited = visited + ['AuroraPostgreSqlParameters']
        {
          host: 'host',
          port: 1,
          database: 'database',
        }
      end

      def self.stub(stub)
        stub ||= Types::AuroraPostgreSqlParameters.new
        data = {}
        data['Host'] = stub[:host] unless stub[:host].nil?
        data['Port'] = stub[:port] unless stub[:port].nil?
        data['Database'] = stub[:database] unless stub[:database].nil?
        data
      end
    end

    # Structure Stubber for AuroraParameters
    class AuroraParameters
      def self.default(visited=[])
        return nil if visited.include?('AuroraParameters')
        visited = visited + ['AuroraParameters']
        {
          host: 'host',
          port: 1,
          database: 'database',
        }
      end

      def self.stub(stub)
        stub ||= Types::AuroraParameters.new
        data = {}
        data['Host'] = stub[:host] unless stub[:host].nil?
        data['Port'] = stub[:port] unless stub[:port].nil?
        data['Database'] = stub[:database] unless stub[:database].nil?
        data
      end
    end

    # Structure Stubber for AthenaParameters
    class AthenaParameters
      def self.default(visited=[])
        return nil if visited.include?('AthenaParameters')
        visited = visited + ['AthenaParameters']
        {
          work_group: 'work_group',
        }
      end

      def self.stub(stub)
        stub ||= Types::AthenaParameters.new
        data = {}
        data['WorkGroup'] = stub[:work_group] unless stub[:work_group].nil?
        data
      end
    end

    # Structure Stubber for AmazonElasticsearchParameters
    class AmazonElasticsearchParameters
      def self.default(visited=[])
        return nil if visited.include?('AmazonElasticsearchParameters')
        visited = visited + ['AmazonElasticsearchParameters']
        {
          domain: 'domain',
        }
      end

      def self.stub(stub)
        stub ||= Types::AmazonElasticsearchParameters.new
        data = {}
        data['Domain'] = stub[:domain] unless stub[:domain].nil?
        data
      end
    end

    # Operation Stubber for DescribeDataSourcePermissions
    class DescribeDataSourcePermissions
      def self.default(visited=[])
        {
          data_source_arn: 'data_source_arn',
          data_source_id: 'data_source_id',
          permissions: Stubs::ResourcePermissionList.default(visited),
          request_id: 'request_id',
          status: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['DataSourceArn'] = stub[:data_source_arn] unless stub[:data_source_arn].nil?
        data['DataSourceId'] = stub[:data_source_id] unless stub[:data_source_id].nil?
        data['Permissions'] = Stubs::ResourcePermissionList.stub(stub[:permissions]) unless stub[:permissions].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeFolder
    class DescribeFolder
      def self.default(visited=[])
        {
          status: 1,
          folder: Stubs::Folder.default(visited),
          request_id: 'request_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['Folder'] = Stubs::Folder.stub(stub[:folder]) unless stub[:folder].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Folder
    class Folder
      def self.default(visited=[])
        return nil if visited.include?('Folder')
        visited = visited + ['Folder']
        {
          folder_id: 'folder_id',
          arn: 'arn',
          name: 'name',
          folder_type: 'folder_type',
          folder_path: Stubs::Path.default(visited),
          created_time: Time.now,
          last_updated_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::Folder.new
        data = {}
        data['FolderId'] = stub[:folder_id] unless stub[:folder_id].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['FolderType'] = stub[:folder_type] unless stub[:folder_type].nil?
        data['FolderPath'] = Stubs::Path.stub(stub[:folder_path]) unless stub[:folder_path].nil?
        data['CreatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        data['LastUpdatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_time]).to_i unless stub[:last_updated_time].nil?
        data
      end
    end

    # List Stubber for Path
    class Path
      def self.default(visited=[])
        return nil if visited.include?('Path')
        visited = visited + ['Path']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeFolderPermissions
    class DescribeFolderPermissions
      def self.default(visited=[])
        {
          status: 1,
          folder_id: 'folder_id',
          arn: 'arn',
          permissions: Stubs::ResourcePermissionList.default(visited),
          request_id: 'request_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['FolderId'] = stub[:folder_id] unless stub[:folder_id].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Permissions'] = Stubs::ResourcePermissionList.stub(stub[:permissions]) unless stub[:permissions].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeFolderResolvedPermissions
    class DescribeFolderResolvedPermissions
      def self.default(visited=[])
        {
          status: 1,
          folder_id: 'folder_id',
          arn: 'arn',
          permissions: Stubs::ResourcePermissionList.default(visited),
          request_id: 'request_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['FolderId'] = stub[:folder_id] unless stub[:folder_id].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Permissions'] = Stubs::ResourcePermissionList.stub(stub[:permissions]) unless stub[:permissions].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeGroup
    class DescribeGroup
      def self.default(visited=[])
        {
          group: Stubs::Group.default(visited),
          request_id: 'request_id',
          status: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['Group'] = Stubs::Group.stub(stub[:group]) unless stub[:group].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeGroupMembership
    class DescribeGroupMembership
      def self.default(visited=[])
        {
          group_member: Stubs::GroupMember.default(visited),
          request_id: 'request_id',
          status: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['GroupMember'] = Stubs::GroupMember.stub(stub[:group_member]) unless stub[:group_member].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeIAMPolicyAssignment
    class DescribeIAMPolicyAssignment
      def self.default(visited=[])
        {
          iam_policy_assignment: Stubs::IAMPolicyAssignment.default(visited),
          request_id: 'request_id',
          status: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['IAMPolicyAssignment'] = Stubs::IAMPolicyAssignment.stub(stub[:iam_policy_assignment]) unless stub[:iam_policy_assignment].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for IAMPolicyAssignment
    class IAMPolicyAssignment
      def self.default(visited=[])
        return nil if visited.include?('IAMPolicyAssignment')
        visited = visited + ['IAMPolicyAssignment']
        {
          aws_account_id: 'aws_account_id',
          assignment_id: 'assignment_id',
          assignment_name: 'assignment_name',
          policy_arn: 'policy_arn',
          identities: Stubs::IdentityMap.default(visited),
          assignment_status: 'assignment_status',
        }
      end

      def self.stub(stub)
        stub ||= Types::IAMPolicyAssignment.new
        data = {}
        data['AwsAccountId'] = stub[:aws_account_id] unless stub[:aws_account_id].nil?
        data['AssignmentId'] = stub[:assignment_id] unless stub[:assignment_id].nil?
        data['AssignmentName'] = stub[:assignment_name] unless stub[:assignment_name].nil?
        data['PolicyArn'] = stub[:policy_arn] unless stub[:policy_arn].nil?
        data['Identities'] = Stubs::IdentityMap.stub(stub[:identities]) unless stub[:identities].nil?
        data['AssignmentStatus'] = stub[:assignment_status] unless stub[:assignment_status].nil?
        data
      end
    end

    # Operation Stubber for DescribeIngestion
    class DescribeIngestion
      def self.default(visited=[])
        {
          ingestion: Stubs::Ingestion.default(visited),
          request_id: 'request_id',
          status: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['Ingestion'] = Stubs::Ingestion.stub(stub[:ingestion]) unless stub[:ingestion].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Ingestion
    class Ingestion
      def self.default(visited=[])
        return nil if visited.include?('Ingestion')
        visited = visited + ['Ingestion']
        {
          arn: 'arn',
          ingestion_id: 'ingestion_id',
          ingestion_status: 'ingestion_status',
          error_info: Stubs::ErrorInfo.default(visited),
          row_info: Stubs::RowInfo.default(visited),
          queue_info: Stubs::QueueInfo.default(visited),
          created_time: Time.now,
          ingestion_time_in_seconds: 1,
          ingestion_size_in_bytes: 1,
          request_source: 'request_source',
          request_type: 'request_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::Ingestion.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['IngestionId'] = stub[:ingestion_id] unless stub[:ingestion_id].nil?
        data['IngestionStatus'] = stub[:ingestion_status] unless stub[:ingestion_status].nil?
        data['ErrorInfo'] = Stubs::ErrorInfo.stub(stub[:error_info]) unless stub[:error_info].nil?
        data['RowInfo'] = Stubs::RowInfo.stub(stub[:row_info]) unless stub[:row_info].nil?
        data['QueueInfo'] = Stubs::QueueInfo.stub(stub[:queue_info]) unless stub[:queue_info].nil?
        data['CreatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        data['IngestionTimeInSeconds'] = stub[:ingestion_time_in_seconds] unless stub[:ingestion_time_in_seconds].nil?
        data['IngestionSizeInBytes'] = stub[:ingestion_size_in_bytes] unless stub[:ingestion_size_in_bytes].nil?
        data['RequestSource'] = stub[:request_source] unless stub[:request_source].nil?
        data['RequestType'] = stub[:request_type] unless stub[:request_type].nil?
        data
      end
    end

    # Structure Stubber for QueueInfo
    class QueueInfo
      def self.default(visited=[])
        return nil if visited.include?('QueueInfo')
        visited = visited + ['QueueInfo']
        {
          waiting_on_ingestion: 'waiting_on_ingestion',
          queued_ingestion: 'queued_ingestion',
        }
      end

      def self.stub(stub)
        stub ||= Types::QueueInfo.new
        data = {}
        data['WaitingOnIngestion'] = stub[:waiting_on_ingestion] unless stub[:waiting_on_ingestion].nil?
        data['QueuedIngestion'] = stub[:queued_ingestion] unless stub[:queued_ingestion].nil?
        data
      end
    end

    # Structure Stubber for RowInfo
    class RowInfo
      def self.default(visited=[])
        return nil if visited.include?('RowInfo')
        visited = visited + ['RowInfo']
        {
          rows_ingested: 1,
          rows_dropped: 1,
          total_rows_in_dataset: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::RowInfo.new
        data = {}
        data['RowsIngested'] = stub[:rows_ingested] unless stub[:rows_ingested].nil?
        data['RowsDropped'] = stub[:rows_dropped] unless stub[:rows_dropped].nil?
        data['TotalRowsInDataset'] = stub[:total_rows_in_dataset] unless stub[:total_rows_in_dataset].nil?
        data
      end
    end

    # Structure Stubber for ErrorInfo
    class ErrorInfo
      def self.default(visited=[])
        return nil if visited.include?('ErrorInfo')
        visited = visited + ['ErrorInfo']
        {
          type: 'type',
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::ErrorInfo.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Operation Stubber for DescribeIpRestriction
    class DescribeIpRestriction
      def self.default(visited=[])
        {
          aws_account_id: 'aws_account_id',
          ip_restriction_rule_map: Stubs::IpRestrictionRuleMap.default(visited),
          enabled: false,
          request_id: 'request_id',
          status: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['AwsAccountId'] = stub[:aws_account_id] unless stub[:aws_account_id].nil?
        data['IpRestrictionRuleMap'] = Stubs::IpRestrictionRuleMap.stub(stub[:ip_restriction_rule_map]) unless stub[:ip_restriction_rule_map].nil?
        data['Enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Stubber for IpRestrictionRuleMap
    class IpRestrictionRuleMap
      def self.default(visited=[])
        return nil if visited.include?('IpRestrictionRuleMap')
        visited = visited + ['IpRestrictionRuleMap']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeNamespace
    class DescribeNamespace
      def self.default(visited=[])
        {
          namespace: Stubs::NamespaceInfoV2.default(visited),
          request_id: 'request_id',
          status: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['Namespace'] = Stubs::NamespaceInfoV2.stub(stub[:namespace]) unless stub[:namespace].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for NamespaceInfoV2
    class NamespaceInfoV2
      def self.default(visited=[])
        return nil if visited.include?('NamespaceInfoV2')
        visited = visited + ['NamespaceInfoV2']
        {
          name: 'name',
          arn: 'arn',
          capacity_region: 'capacity_region',
          creation_status: 'creation_status',
          identity_store: 'identity_store',
          namespace_error: Stubs::NamespaceError.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::NamespaceInfoV2.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['CapacityRegion'] = stub[:capacity_region] unless stub[:capacity_region].nil?
        data['CreationStatus'] = stub[:creation_status] unless stub[:creation_status].nil?
        data['IdentityStore'] = stub[:identity_store] unless stub[:identity_store].nil?
        data['NamespaceError'] = Stubs::NamespaceError.stub(stub[:namespace_error]) unless stub[:namespace_error].nil?
        data
      end
    end

    # Structure Stubber for NamespaceError
    class NamespaceError
      def self.default(visited=[])
        return nil if visited.include?('NamespaceError')
        visited = visited + ['NamespaceError']
        {
          type: 'type',
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::NamespaceError.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Operation Stubber for DescribeTemplate
    class DescribeTemplate
      def self.default(visited=[])
        {
          template: Stubs::Template.default(visited),
          status: 1,
          request_id: 'request_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['Template'] = Stubs::Template.stub(stub[:template]) unless stub[:template].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Template
    class Template
      def self.default(visited=[])
        return nil if visited.include?('Template')
        visited = visited + ['Template']
        {
          arn: 'arn',
          name: 'name',
          version: Stubs::TemplateVersion.default(visited),
          template_id: 'template_id',
          last_updated_time: Time.now,
          created_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::Template.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Version'] = Stubs::TemplateVersion.stub(stub[:version]) unless stub[:version].nil?
        data['TemplateId'] = stub[:template_id] unless stub[:template_id].nil?
        data['LastUpdatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_time]).to_i unless stub[:last_updated_time].nil?
        data['CreatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        data
      end
    end

    # Structure Stubber for TemplateVersion
    class TemplateVersion
      def self.default(visited=[])
        return nil if visited.include?('TemplateVersion')
        visited = visited + ['TemplateVersion']
        {
          created_time: Time.now,
          errors: Stubs::TemplateErrorList.default(visited),
          version_number: 1,
          status: 'status',
          data_set_configurations: Stubs::DataSetConfigurationList.default(visited),
          description: 'description',
          source_entity_arn: 'source_entity_arn',
          theme_arn: 'theme_arn',
          sheets: Stubs::SheetList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TemplateVersion.new
        data = {}
        data['CreatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        data['Errors'] = Stubs::TemplateErrorList.stub(stub[:errors]) unless stub[:errors].nil?
        data['VersionNumber'] = stub[:version_number] unless stub[:version_number].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['DataSetConfigurations'] = Stubs::DataSetConfigurationList.stub(stub[:data_set_configurations]) unless stub[:data_set_configurations].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['SourceEntityArn'] = stub[:source_entity_arn] unless stub[:source_entity_arn].nil?
        data['ThemeArn'] = stub[:theme_arn] unless stub[:theme_arn].nil?
        data['Sheets'] = Stubs::SheetList.stub(stub[:sheets]) unless stub[:sheets].nil?
        data
      end
    end

    # List Stubber for DataSetConfigurationList
    class DataSetConfigurationList
      def self.default(visited=[])
        return nil if visited.include?('DataSetConfigurationList')
        visited = visited + ['DataSetConfigurationList']
        [
          Stubs::DataSetConfiguration.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DataSetConfiguration.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DataSetConfiguration
    class DataSetConfiguration
      def self.default(visited=[])
        return nil if visited.include?('DataSetConfiguration')
        visited = visited + ['DataSetConfiguration']
        {
          placeholder: 'placeholder',
          data_set_schema: Stubs::DataSetSchema.default(visited),
          column_group_schema_list: Stubs::ColumnGroupSchemaList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DataSetConfiguration.new
        data = {}
        data['Placeholder'] = stub[:placeholder] unless stub[:placeholder].nil?
        data['DataSetSchema'] = Stubs::DataSetSchema.stub(stub[:data_set_schema]) unless stub[:data_set_schema].nil?
        data['ColumnGroupSchemaList'] = Stubs::ColumnGroupSchemaList.stub(stub[:column_group_schema_list]) unless stub[:column_group_schema_list].nil?
        data
      end
    end

    # List Stubber for ColumnGroupSchemaList
    class ColumnGroupSchemaList
      def self.default(visited=[])
        return nil if visited.include?('ColumnGroupSchemaList')
        visited = visited + ['ColumnGroupSchemaList']
        [
          Stubs::ColumnGroupSchema.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ColumnGroupSchema.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ColumnGroupSchema
    class ColumnGroupSchema
      def self.default(visited=[])
        return nil if visited.include?('ColumnGroupSchema')
        visited = visited + ['ColumnGroupSchema']
        {
          name: 'name',
          column_group_column_schema_list: Stubs::ColumnGroupColumnSchemaList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ColumnGroupSchema.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['ColumnGroupColumnSchemaList'] = Stubs::ColumnGroupColumnSchemaList.stub(stub[:column_group_column_schema_list]) unless stub[:column_group_column_schema_list].nil?
        data
      end
    end

    # List Stubber for ColumnGroupColumnSchemaList
    class ColumnGroupColumnSchemaList
      def self.default(visited=[])
        return nil if visited.include?('ColumnGroupColumnSchemaList')
        visited = visited + ['ColumnGroupColumnSchemaList']
        [
          Stubs::ColumnGroupColumnSchema.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ColumnGroupColumnSchema.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ColumnGroupColumnSchema
    class ColumnGroupColumnSchema
      def self.default(visited=[])
        return nil if visited.include?('ColumnGroupColumnSchema')
        visited = visited + ['ColumnGroupColumnSchema']
        {
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::ColumnGroupColumnSchema.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # Structure Stubber for DataSetSchema
    class DataSetSchema
      def self.default(visited=[])
        return nil if visited.include?('DataSetSchema')
        visited = visited + ['DataSetSchema']
        {
          column_schema_list: Stubs::ColumnSchemaList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DataSetSchema.new
        data = {}
        data['ColumnSchemaList'] = Stubs::ColumnSchemaList.stub(stub[:column_schema_list]) unless stub[:column_schema_list].nil?
        data
      end
    end

    # List Stubber for ColumnSchemaList
    class ColumnSchemaList
      def self.default(visited=[])
        return nil if visited.include?('ColumnSchemaList')
        visited = visited + ['ColumnSchemaList']
        [
          Stubs::ColumnSchema.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ColumnSchema.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ColumnSchema
    class ColumnSchema
      def self.default(visited=[])
        return nil if visited.include?('ColumnSchema')
        visited = visited + ['ColumnSchema']
        {
          name: 'name',
          data_type: 'data_type',
          geographic_role: 'geographic_role',
        }
      end

      def self.stub(stub)
        stub ||= Types::ColumnSchema.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['DataType'] = stub[:data_type] unless stub[:data_type].nil?
        data['GeographicRole'] = stub[:geographic_role] unless stub[:geographic_role].nil?
        data
      end
    end

    # List Stubber for TemplateErrorList
    class TemplateErrorList
      def self.default(visited=[])
        return nil if visited.include?('TemplateErrorList')
        visited = visited + ['TemplateErrorList']
        [
          Stubs::TemplateError.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::TemplateError.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TemplateError
    class TemplateError
      def self.default(visited=[])
        return nil if visited.include?('TemplateError')
        visited = visited + ['TemplateError']
        {
          type: 'type',
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::TemplateError.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Operation Stubber for DescribeTemplateAlias
    class DescribeTemplateAlias
      def self.default(visited=[])
        {
          template_alias: Stubs::TemplateAlias.default(visited),
          status: 1,
          request_id: 'request_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['TemplateAlias'] = Stubs::TemplateAlias.stub(stub[:template_alias]) unless stub[:template_alias].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeTemplatePermissions
    class DescribeTemplatePermissions
      def self.default(visited=[])
        {
          template_id: 'template_id',
          template_arn: 'template_arn',
          permissions: Stubs::ResourcePermissionList.default(visited),
          request_id: 'request_id',
          status: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['TemplateId'] = stub[:template_id] unless stub[:template_id].nil?
        data['TemplateArn'] = stub[:template_arn] unless stub[:template_arn].nil?
        data['Permissions'] = Stubs::ResourcePermissionList.stub(stub[:permissions]) unless stub[:permissions].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeTheme
    class DescribeTheme
      def self.default(visited=[])
        {
          theme: Stubs::Theme.default(visited),
          status: 1,
          request_id: 'request_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['Theme'] = Stubs::Theme.stub(stub[:theme]) unless stub[:theme].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Theme
    class Theme
      def self.default(visited=[])
        return nil if visited.include?('Theme')
        visited = visited + ['Theme']
        {
          arn: 'arn',
          name: 'name',
          theme_id: 'theme_id',
          version: Stubs::ThemeVersion.default(visited),
          created_time: Time.now,
          last_updated_time: Time.now,
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::Theme.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['ThemeId'] = stub[:theme_id] unless stub[:theme_id].nil?
        data['Version'] = Stubs::ThemeVersion.stub(stub[:version]) unless stub[:version].nil?
        data['CreatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        data['LastUpdatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_time]).to_i unless stub[:last_updated_time].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # Structure Stubber for ThemeVersion
    class ThemeVersion
      def self.default(visited=[])
        return nil if visited.include?('ThemeVersion')
        visited = visited + ['ThemeVersion']
        {
          version_number: 1,
          arn: 'arn',
          description: 'description',
          base_theme_id: 'base_theme_id',
          created_time: Time.now,
          configuration: Stubs::ThemeConfiguration.default(visited),
          errors: Stubs::ThemeErrorList.default(visited),
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::ThemeVersion.new
        data = {}
        data['VersionNumber'] = stub[:version_number] unless stub[:version_number].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['BaseThemeId'] = stub[:base_theme_id] unless stub[:base_theme_id].nil?
        data['CreatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        data['Configuration'] = Stubs::ThemeConfiguration.stub(stub[:configuration]) unless stub[:configuration].nil?
        data['Errors'] = Stubs::ThemeErrorList.stub(stub[:errors]) unless stub[:errors].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # List Stubber for ThemeErrorList
    class ThemeErrorList
      def self.default(visited=[])
        return nil if visited.include?('ThemeErrorList')
        visited = visited + ['ThemeErrorList']
        [
          Stubs::ThemeError.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ThemeError.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ThemeError
    class ThemeError
      def self.default(visited=[])
        return nil if visited.include?('ThemeError')
        visited = visited + ['ThemeError']
        {
          type: 'type',
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::ThemeError.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Structure Stubber for ThemeConfiguration
    class ThemeConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ThemeConfiguration')
        visited = visited + ['ThemeConfiguration']
        {
          data_color_palette: Stubs::DataColorPalette.default(visited),
          ui_color_palette: Stubs::UIColorPalette.default(visited),
          sheet: Stubs::SheetStyle.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ThemeConfiguration.new
        data = {}
        data['DataColorPalette'] = Stubs::DataColorPalette.stub(stub[:data_color_palette]) unless stub[:data_color_palette].nil?
        data['UIColorPalette'] = Stubs::UIColorPalette.stub(stub[:ui_color_palette]) unless stub[:ui_color_palette].nil?
        data['Sheet'] = Stubs::SheetStyle.stub(stub[:sheet]) unless stub[:sheet].nil?
        data
      end
    end

    # Structure Stubber for SheetStyle
    class SheetStyle
      def self.default(visited=[])
        return nil if visited.include?('SheetStyle')
        visited = visited + ['SheetStyle']
        {
          tile: Stubs::TileStyle.default(visited),
          tile_layout: Stubs::TileLayoutStyle.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SheetStyle.new
        data = {}
        data['Tile'] = Stubs::TileStyle.stub(stub[:tile]) unless stub[:tile].nil?
        data['TileLayout'] = Stubs::TileLayoutStyle.stub(stub[:tile_layout]) unless stub[:tile_layout].nil?
        data
      end
    end

    # Structure Stubber for TileLayoutStyle
    class TileLayoutStyle
      def self.default(visited=[])
        return nil if visited.include?('TileLayoutStyle')
        visited = visited + ['TileLayoutStyle']
        {
          gutter: Stubs::GutterStyle.default(visited),
          margin: Stubs::MarginStyle.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TileLayoutStyle.new
        data = {}
        data['Gutter'] = Stubs::GutterStyle.stub(stub[:gutter]) unless stub[:gutter].nil?
        data['Margin'] = Stubs::MarginStyle.stub(stub[:margin]) unless stub[:margin].nil?
        data
      end
    end

    # Structure Stubber for MarginStyle
    class MarginStyle
      def self.default(visited=[])
        return nil if visited.include?('MarginStyle')
        visited = visited + ['MarginStyle']
        {
          show: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::MarginStyle.new
        data = {}
        data['Show'] = stub[:show] unless stub[:show].nil?
        data
      end
    end

    # Structure Stubber for GutterStyle
    class GutterStyle
      def self.default(visited=[])
        return nil if visited.include?('GutterStyle')
        visited = visited + ['GutterStyle']
        {
          show: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::GutterStyle.new
        data = {}
        data['Show'] = stub[:show] unless stub[:show].nil?
        data
      end
    end

    # Structure Stubber for TileStyle
    class TileStyle
      def self.default(visited=[])
        return nil if visited.include?('TileStyle')
        visited = visited + ['TileStyle']
        {
          border: Stubs::BorderStyle.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TileStyle.new
        data = {}
        data['Border'] = Stubs::BorderStyle.stub(stub[:border]) unless stub[:border].nil?
        data
      end
    end

    # Structure Stubber for BorderStyle
    class BorderStyle
      def self.default(visited=[])
        return nil if visited.include?('BorderStyle')
        visited = visited + ['BorderStyle']
        {
          show: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::BorderStyle.new
        data = {}
        data['Show'] = stub[:show] unless stub[:show].nil?
        data
      end
    end

    # Structure Stubber for UIColorPalette
    class UIColorPalette
      def self.default(visited=[])
        return nil if visited.include?('UIColorPalette')
        visited = visited + ['UIColorPalette']
        {
          primary_foreground: 'primary_foreground',
          primary_background: 'primary_background',
          secondary_foreground: 'secondary_foreground',
          secondary_background: 'secondary_background',
          accent: 'accent',
          accent_foreground: 'accent_foreground',
          danger: 'danger',
          danger_foreground: 'danger_foreground',
          warning: 'warning',
          warning_foreground: 'warning_foreground',
          success: 'success',
          success_foreground: 'success_foreground',
          dimension: 'dimension',
          dimension_foreground: 'dimension_foreground',
          measure: 'measure',
          measure_foreground: 'measure_foreground',
        }
      end

      def self.stub(stub)
        stub ||= Types::UIColorPalette.new
        data = {}
        data['PrimaryForeground'] = stub[:primary_foreground] unless stub[:primary_foreground].nil?
        data['PrimaryBackground'] = stub[:primary_background] unless stub[:primary_background].nil?
        data['SecondaryForeground'] = stub[:secondary_foreground] unless stub[:secondary_foreground].nil?
        data['SecondaryBackground'] = stub[:secondary_background] unless stub[:secondary_background].nil?
        data['Accent'] = stub[:accent] unless stub[:accent].nil?
        data['AccentForeground'] = stub[:accent_foreground] unless stub[:accent_foreground].nil?
        data['Danger'] = stub[:danger] unless stub[:danger].nil?
        data['DangerForeground'] = stub[:danger_foreground] unless stub[:danger_foreground].nil?
        data['Warning'] = stub[:warning] unless stub[:warning].nil?
        data['WarningForeground'] = stub[:warning_foreground] unless stub[:warning_foreground].nil?
        data['Success'] = stub[:success] unless stub[:success].nil?
        data['SuccessForeground'] = stub[:success_foreground] unless stub[:success_foreground].nil?
        data['Dimension'] = stub[:dimension] unless stub[:dimension].nil?
        data['DimensionForeground'] = stub[:dimension_foreground] unless stub[:dimension_foreground].nil?
        data['Measure'] = stub[:measure] unless stub[:measure].nil?
        data['MeasureForeground'] = stub[:measure_foreground] unless stub[:measure_foreground].nil?
        data
      end
    end

    # Structure Stubber for DataColorPalette
    class DataColorPalette
      def self.default(visited=[])
        return nil if visited.include?('DataColorPalette')
        visited = visited + ['DataColorPalette']
        {
          colors: Stubs::ColorList.default(visited),
          min_max_gradient: Stubs::ColorList.default(visited),
          empty_fill_color: 'empty_fill_color',
        }
      end

      def self.stub(stub)
        stub ||= Types::DataColorPalette.new
        data = {}
        data['Colors'] = Stubs::ColorList.stub(stub[:colors]) unless stub[:colors].nil?
        data['MinMaxGradient'] = Stubs::ColorList.stub(stub[:min_max_gradient]) unless stub[:min_max_gradient].nil?
        data['EmptyFillColor'] = stub[:empty_fill_color] unless stub[:empty_fill_color].nil?
        data
      end
    end

    # List Stubber for ColorList
    class ColorList
      def self.default(visited=[])
        return nil if visited.include?('ColorList')
        visited = visited + ['ColorList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeThemeAlias
    class DescribeThemeAlias
      def self.default(visited=[])
        {
          theme_alias: Stubs::ThemeAlias.default(visited),
          status: 1,
          request_id: 'request_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['ThemeAlias'] = Stubs::ThemeAlias.stub(stub[:theme_alias]) unless stub[:theme_alias].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeThemePermissions
    class DescribeThemePermissions
      def self.default(visited=[])
        {
          theme_id: 'theme_id',
          theme_arn: 'theme_arn',
          permissions: Stubs::ResourcePermissionList.default(visited),
          request_id: 'request_id',
          status: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['ThemeId'] = stub[:theme_id] unless stub[:theme_id].nil?
        data['ThemeArn'] = stub[:theme_arn] unless stub[:theme_arn].nil?
        data['Permissions'] = Stubs::ResourcePermissionList.stub(stub[:permissions]) unless stub[:permissions].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeUser
    class DescribeUser
      def self.default(visited=[])
        {
          user: Stubs::User.default(visited),
          request_id: 'request_id',
          status: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['User'] = Stubs::User.stub(stub[:user]) unless stub[:user].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for User
    class User
      def self.default(visited=[])
        return nil if visited.include?('User')
        visited = visited + ['User']
        {
          arn: 'arn',
          user_name: 'user_name',
          email: 'email',
          role: 'role',
          identity_type: 'identity_type',
          active: false,
          principal_id: 'principal_id',
          custom_permissions_name: 'custom_permissions_name',
          external_login_federation_provider_type: 'external_login_federation_provider_type',
          external_login_federation_provider_url: 'external_login_federation_provider_url',
          external_login_id: 'external_login_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::User.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['UserName'] = stub[:user_name] unless stub[:user_name].nil?
        data['Email'] = stub[:email] unless stub[:email].nil?
        data['Role'] = stub[:role] unless stub[:role].nil?
        data['IdentityType'] = stub[:identity_type] unless stub[:identity_type].nil?
        data['Active'] = stub[:active] unless stub[:active].nil?
        data['PrincipalId'] = stub[:principal_id] unless stub[:principal_id].nil?
        data['CustomPermissionsName'] = stub[:custom_permissions_name] unless stub[:custom_permissions_name].nil?
        data['ExternalLoginFederationProviderType'] = stub[:external_login_federation_provider_type] unless stub[:external_login_federation_provider_type].nil?
        data['ExternalLoginFederationProviderUrl'] = stub[:external_login_federation_provider_url] unless stub[:external_login_federation_provider_url].nil?
        data['ExternalLoginId'] = stub[:external_login_id] unless stub[:external_login_id].nil?
        data
      end
    end

    # Operation Stubber for GenerateEmbedUrlForAnonymousUser
    class GenerateEmbedUrlForAnonymousUser
      def self.default(visited=[])
        {
          embed_url: 'embed_url',
          status: 1,
          request_id: 'request_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['EmbedUrl'] = stub[:embed_url] unless stub[:embed_url].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GenerateEmbedUrlForRegisteredUser
    class GenerateEmbedUrlForRegisteredUser
      def self.default(visited=[])
        {
          embed_url: 'embed_url',
          status: 1,
          request_id: 'request_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['EmbedUrl'] = stub[:embed_url] unless stub[:embed_url].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetDashboardEmbedUrl
    class GetDashboardEmbedUrl
      def self.default(visited=[])
        {
          embed_url: 'embed_url',
          status: 1,
          request_id: 'request_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['EmbedUrl'] = stub[:embed_url] unless stub[:embed_url].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetSessionEmbedUrl
    class GetSessionEmbedUrl
      def self.default(visited=[])
        {
          embed_url: 'embed_url',
          status: 1,
          request_id: 'request_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['EmbedUrl'] = stub[:embed_url] unless stub[:embed_url].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListAnalyses
    class ListAnalyses
      def self.default(visited=[])
        {
          analysis_summary_list: Stubs::AnalysisSummaryList.default(visited),
          next_token: 'next_token',
          status: 1,
          request_id: 'request_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['AnalysisSummaryList'] = Stubs::AnalysisSummaryList.stub(stub[:analysis_summary_list]) unless stub[:analysis_summary_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for AnalysisSummaryList
    class AnalysisSummaryList
      def self.default(visited=[])
        return nil if visited.include?('AnalysisSummaryList')
        visited = visited + ['AnalysisSummaryList']
        [
          Stubs::AnalysisSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AnalysisSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AnalysisSummary
    class AnalysisSummary
      def self.default(visited=[])
        return nil if visited.include?('AnalysisSummary')
        visited = visited + ['AnalysisSummary']
        {
          arn: 'arn',
          analysis_id: 'analysis_id',
          name: 'name',
          status: 'status',
          created_time: Time.now,
          last_updated_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::AnalysisSummary.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['AnalysisId'] = stub[:analysis_id] unless stub[:analysis_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['CreatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        data['LastUpdatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_time]).to_i unless stub[:last_updated_time].nil?
        data
      end
    end

    # Operation Stubber for ListDashboardVersions
    class ListDashboardVersions
      def self.default(visited=[])
        {
          dashboard_version_summary_list: Stubs::DashboardVersionSummaryList.default(visited),
          next_token: 'next_token',
          status: 1,
          request_id: 'request_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['DashboardVersionSummaryList'] = Stubs::DashboardVersionSummaryList.stub(stub[:dashboard_version_summary_list]) unless stub[:dashboard_version_summary_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for DashboardVersionSummaryList
    class DashboardVersionSummaryList
      def self.default(visited=[])
        return nil if visited.include?('DashboardVersionSummaryList')
        visited = visited + ['DashboardVersionSummaryList']
        [
          Stubs::DashboardVersionSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DashboardVersionSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DashboardVersionSummary
    class DashboardVersionSummary
      def self.default(visited=[])
        return nil if visited.include?('DashboardVersionSummary')
        visited = visited + ['DashboardVersionSummary']
        {
          arn: 'arn',
          created_time: Time.now,
          version_number: 1,
          status: 'status',
          source_entity_arn: 'source_entity_arn',
          description: 'description',
        }
      end

      def self.stub(stub)
        stub ||= Types::DashboardVersionSummary.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['CreatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        data['VersionNumber'] = stub[:version_number] unless stub[:version_number].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['SourceEntityArn'] = stub[:source_entity_arn] unless stub[:source_entity_arn].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data
      end
    end

    # Operation Stubber for ListDashboards
    class ListDashboards
      def self.default(visited=[])
        {
          dashboard_summary_list: Stubs::DashboardSummaryList.default(visited),
          next_token: 'next_token',
          status: 1,
          request_id: 'request_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['DashboardSummaryList'] = Stubs::DashboardSummaryList.stub(stub[:dashboard_summary_list]) unless stub[:dashboard_summary_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for DashboardSummaryList
    class DashboardSummaryList
      def self.default(visited=[])
        return nil if visited.include?('DashboardSummaryList')
        visited = visited + ['DashboardSummaryList']
        [
          Stubs::DashboardSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DashboardSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DashboardSummary
    class DashboardSummary
      def self.default(visited=[])
        return nil if visited.include?('DashboardSummary')
        visited = visited + ['DashboardSummary']
        {
          arn: 'arn',
          dashboard_id: 'dashboard_id',
          name: 'name',
          created_time: Time.now,
          last_updated_time: Time.now,
          published_version_number: 1,
          last_published_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::DashboardSummary.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['DashboardId'] = stub[:dashboard_id] unless stub[:dashboard_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['CreatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        data['LastUpdatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_time]).to_i unless stub[:last_updated_time].nil?
        data['PublishedVersionNumber'] = stub[:published_version_number] unless stub[:published_version_number].nil?
        data['LastPublishedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_published_time]).to_i unless stub[:last_published_time].nil?
        data
      end
    end

    # Operation Stubber for ListDataSets
    class ListDataSets
      def self.default(visited=[])
        {
          data_set_summaries: Stubs::DataSetSummaryList.default(visited),
          next_token: 'next_token',
          request_id: 'request_id',
          status: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['DataSetSummaries'] = Stubs::DataSetSummaryList.stub(stub[:data_set_summaries]) unless stub[:data_set_summaries].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for DataSetSummaryList
    class DataSetSummaryList
      def self.default(visited=[])
        return nil if visited.include?('DataSetSummaryList')
        visited = visited + ['DataSetSummaryList']
        [
          Stubs::DataSetSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DataSetSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DataSetSummary
    class DataSetSummary
      def self.default(visited=[])
        return nil if visited.include?('DataSetSummary')
        visited = visited + ['DataSetSummary']
        {
          arn: 'arn',
          data_set_id: 'data_set_id',
          name: 'name',
          created_time: Time.now,
          last_updated_time: Time.now,
          import_mode: 'import_mode',
          row_level_permission_data_set: Stubs::RowLevelPermissionDataSet.default(visited),
          row_level_permission_tag_configuration_applied: false,
          column_level_permission_rules_applied: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::DataSetSummary.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['DataSetId'] = stub[:data_set_id] unless stub[:data_set_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['CreatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        data['LastUpdatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_time]).to_i unless stub[:last_updated_time].nil?
        data['ImportMode'] = stub[:import_mode] unless stub[:import_mode].nil?
        data['RowLevelPermissionDataSet'] = Stubs::RowLevelPermissionDataSet.stub(stub[:row_level_permission_data_set]) unless stub[:row_level_permission_data_set].nil?
        data['RowLevelPermissionTagConfigurationApplied'] = stub[:row_level_permission_tag_configuration_applied] unless stub[:row_level_permission_tag_configuration_applied].nil?
        data['ColumnLevelPermissionRulesApplied'] = stub[:column_level_permission_rules_applied] unless stub[:column_level_permission_rules_applied].nil?
        data
      end
    end

    # Operation Stubber for ListDataSources
    class ListDataSources
      def self.default(visited=[])
        {
          data_sources: Stubs::DataSourceList.default(visited),
          next_token: 'next_token',
          request_id: 'request_id',
          status: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['DataSources'] = Stubs::DataSourceList.stub(stub[:data_sources]) unless stub[:data_sources].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for DataSourceList
    class DataSourceList
      def self.default(visited=[])
        return nil if visited.include?('DataSourceList')
        visited = visited + ['DataSourceList']
        [
          Stubs::DataSource.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DataSource.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListFolderMembers
    class ListFolderMembers
      def self.default(visited=[])
        {
          status: 1,
          folder_member_list: Stubs::FolderMemberList.default(visited),
          next_token: 'next_token',
          request_id: 'request_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['FolderMemberList'] = Stubs::FolderMemberList.stub(stub[:folder_member_list]) unless stub[:folder_member_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for FolderMemberList
    class FolderMemberList
      def self.default(visited=[])
        return nil if visited.include?('FolderMemberList')
        visited = visited + ['FolderMemberList']
        [
          Stubs::MemberIdArnPair.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::MemberIdArnPair.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MemberIdArnPair
    class MemberIdArnPair
      def self.default(visited=[])
        return nil if visited.include?('MemberIdArnPair')
        visited = visited + ['MemberIdArnPair']
        {
          member_id: 'member_id',
          member_arn: 'member_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::MemberIdArnPair.new
        data = {}
        data['MemberId'] = stub[:member_id] unless stub[:member_id].nil?
        data['MemberArn'] = stub[:member_arn] unless stub[:member_arn].nil?
        data
      end
    end

    # Operation Stubber for ListFolders
    class ListFolders
      def self.default(visited=[])
        {
          status: 1,
          folder_summary_list: Stubs::FolderSummaryList.default(visited),
          next_token: 'next_token',
          request_id: 'request_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['FolderSummaryList'] = Stubs::FolderSummaryList.stub(stub[:folder_summary_list]) unless stub[:folder_summary_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for FolderSummaryList
    class FolderSummaryList
      def self.default(visited=[])
        return nil if visited.include?('FolderSummaryList')
        visited = visited + ['FolderSummaryList']
        [
          Stubs::FolderSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::FolderSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for FolderSummary
    class FolderSummary
      def self.default(visited=[])
        return nil if visited.include?('FolderSummary')
        visited = visited + ['FolderSummary']
        {
          arn: 'arn',
          folder_id: 'folder_id',
          name: 'name',
          folder_type: 'folder_type',
          created_time: Time.now,
          last_updated_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::FolderSummary.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['FolderId'] = stub[:folder_id] unless stub[:folder_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['FolderType'] = stub[:folder_type] unless stub[:folder_type].nil?
        data['CreatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        data['LastUpdatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_time]).to_i unless stub[:last_updated_time].nil?
        data
      end
    end

    # Operation Stubber for ListGroupMemberships
    class ListGroupMemberships
      def self.default(visited=[])
        {
          group_member_list: Stubs::GroupMemberList.default(visited),
          next_token: 'next_token',
          request_id: 'request_id',
          status: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['GroupMemberList'] = Stubs::GroupMemberList.stub(stub[:group_member_list]) unless stub[:group_member_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for GroupMemberList
    class GroupMemberList
      def self.default(visited=[])
        return nil if visited.include?('GroupMemberList')
        visited = visited + ['GroupMemberList']
        [
          Stubs::GroupMember.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::GroupMember.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListGroups
    class ListGroups
      def self.default(visited=[])
        {
          group_list: Stubs::GroupList.default(visited),
          next_token: 'next_token',
          request_id: 'request_id',
          status: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['GroupList'] = Stubs::GroupList.stub(stub[:group_list]) unless stub[:group_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for GroupList
    class GroupList
      def self.default(visited=[])
        return nil if visited.include?('GroupList')
        visited = visited + ['GroupList']
        [
          Stubs::Group.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Group.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListIAMPolicyAssignments
    class ListIAMPolicyAssignments
      def self.default(visited=[])
        {
          iam_policy_assignments: Stubs::IAMPolicyAssignmentSummaryList.default(visited),
          next_token: 'next_token',
          request_id: 'request_id',
          status: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['IAMPolicyAssignments'] = Stubs::IAMPolicyAssignmentSummaryList.stub(stub[:iam_policy_assignments]) unless stub[:iam_policy_assignments].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for IAMPolicyAssignmentSummaryList
    class IAMPolicyAssignmentSummaryList
      def self.default(visited=[])
        return nil if visited.include?('IAMPolicyAssignmentSummaryList')
        visited = visited + ['IAMPolicyAssignmentSummaryList']
        [
          Stubs::IAMPolicyAssignmentSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::IAMPolicyAssignmentSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for IAMPolicyAssignmentSummary
    class IAMPolicyAssignmentSummary
      def self.default(visited=[])
        return nil if visited.include?('IAMPolicyAssignmentSummary')
        visited = visited + ['IAMPolicyAssignmentSummary']
        {
          assignment_name: 'assignment_name',
          assignment_status: 'assignment_status',
        }
      end

      def self.stub(stub)
        stub ||= Types::IAMPolicyAssignmentSummary.new
        data = {}
        data['AssignmentName'] = stub[:assignment_name] unless stub[:assignment_name].nil?
        data['AssignmentStatus'] = stub[:assignment_status] unless stub[:assignment_status].nil?
        data
      end
    end

    # Operation Stubber for ListIAMPolicyAssignmentsForUser
    class ListIAMPolicyAssignmentsForUser
      def self.default(visited=[])
        {
          active_assignments: Stubs::ActiveIAMPolicyAssignmentList.default(visited),
          request_id: 'request_id',
          next_token: 'next_token',
          status: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['ActiveAssignments'] = Stubs::ActiveIAMPolicyAssignmentList.stub(stub[:active_assignments]) unless stub[:active_assignments].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ActiveIAMPolicyAssignmentList
    class ActiveIAMPolicyAssignmentList
      def self.default(visited=[])
        return nil if visited.include?('ActiveIAMPolicyAssignmentList')
        visited = visited + ['ActiveIAMPolicyAssignmentList']
        [
          Stubs::ActiveIAMPolicyAssignment.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ActiveIAMPolicyAssignment.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ActiveIAMPolicyAssignment
    class ActiveIAMPolicyAssignment
      def self.default(visited=[])
        return nil if visited.include?('ActiveIAMPolicyAssignment')
        visited = visited + ['ActiveIAMPolicyAssignment']
        {
          assignment_name: 'assignment_name',
          policy_arn: 'policy_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::ActiveIAMPolicyAssignment.new
        data = {}
        data['AssignmentName'] = stub[:assignment_name] unless stub[:assignment_name].nil?
        data['PolicyArn'] = stub[:policy_arn] unless stub[:policy_arn].nil?
        data
      end
    end

    # Operation Stubber for ListIngestions
    class ListIngestions
      def self.default(visited=[])
        {
          ingestions: Stubs::Ingestions.default(visited),
          next_token: 'next_token',
          request_id: 'request_id',
          status: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['Ingestions'] = Stubs::Ingestions.stub(stub[:ingestions]) unless stub[:ingestions].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for Ingestions
    class Ingestions
      def self.default(visited=[])
        return nil if visited.include?('Ingestions')
        visited = visited + ['Ingestions']
        [
          Stubs::Ingestion.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Ingestion.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListNamespaces
    class ListNamespaces
      def self.default(visited=[])
        {
          namespaces: Stubs::Namespaces.default(visited),
          next_token: 'next_token',
          request_id: 'request_id',
          status: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['Namespaces'] = Stubs::Namespaces.stub(stub[:namespaces]) unless stub[:namespaces].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for Namespaces
    class Namespaces
      def self.default(visited=[])
        return nil if visited.include?('Namespaces')
        visited = visited + ['Namespaces']
        [
          Stubs::NamespaceInfoV2.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::NamespaceInfoV2.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: Stubs::TagList.default(visited),
          request_id: 'request_id',
          status: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['Tags'] = Stubs::TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for TagList
    class TagList
      def self.default(visited=[])
        return nil if visited.include?('TagList')
        visited = visited + ['TagList']
        [
          Stubs::Tag.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Tag.stub(element) unless element.nil?
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

    # Operation Stubber for ListTemplateAliases
    class ListTemplateAliases
      def self.default(visited=[])
        {
          template_alias_list: Stubs::TemplateAliasList.default(visited),
          status: 1,
          request_id: 'request_id',
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['TemplateAliasList'] = Stubs::TemplateAliasList.stub(stub[:template_alias_list]) unless stub[:template_alias_list].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for TemplateAliasList
    class TemplateAliasList
      def self.default(visited=[])
        return nil if visited.include?('TemplateAliasList')
        visited = visited + ['TemplateAliasList']
        [
          Stubs::TemplateAlias.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::TemplateAlias.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListTemplateVersions
    class ListTemplateVersions
      def self.default(visited=[])
        {
          template_version_summary_list: Stubs::TemplateVersionSummaryList.default(visited),
          next_token: 'next_token',
          status: 1,
          request_id: 'request_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['TemplateVersionSummaryList'] = Stubs::TemplateVersionSummaryList.stub(stub[:template_version_summary_list]) unless stub[:template_version_summary_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for TemplateVersionSummaryList
    class TemplateVersionSummaryList
      def self.default(visited=[])
        return nil if visited.include?('TemplateVersionSummaryList')
        visited = visited + ['TemplateVersionSummaryList']
        [
          Stubs::TemplateVersionSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::TemplateVersionSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TemplateVersionSummary
    class TemplateVersionSummary
      def self.default(visited=[])
        return nil if visited.include?('TemplateVersionSummary')
        visited = visited + ['TemplateVersionSummary']
        {
          arn: 'arn',
          version_number: 1,
          created_time: Time.now,
          status: 'status',
          description: 'description',
        }
      end

      def self.stub(stub)
        stub ||= Types::TemplateVersionSummary.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['VersionNumber'] = stub[:version_number] unless stub[:version_number].nil?
        data['CreatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data
      end
    end

    # Operation Stubber for ListTemplates
    class ListTemplates
      def self.default(visited=[])
        {
          template_summary_list: Stubs::TemplateSummaryList.default(visited),
          next_token: 'next_token',
          status: 1,
          request_id: 'request_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['TemplateSummaryList'] = Stubs::TemplateSummaryList.stub(stub[:template_summary_list]) unless stub[:template_summary_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for TemplateSummaryList
    class TemplateSummaryList
      def self.default(visited=[])
        return nil if visited.include?('TemplateSummaryList')
        visited = visited + ['TemplateSummaryList']
        [
          Stubs::TemplateSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::TemplateSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TemplateSummary
    class TemplateSummary
      def self.default(visited=[])
        return nil if visited.include?('TemplateSummary')
        visited = visited + ['TemplateSummary']
        {
          arn: 'arn',
          template_id: 'template_id',
          name: 'name',
          latest_version_number: 1,
          created_time: Time.now,
          last_updated_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::TemplateSummary.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['TemplateId'] = stub[:template_id] unless stub[:template_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['LatestVersionNumber'] = stub[:latest_version_number] unless stub[:latest_version_number].nil?
        data['CreatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        data['LastUpdatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_time]).to_i unless stub[:last_updated_time].nil?
        data
      end
    end

    # Operation Stubber for ListThemeAliases
    class ListThemeAliases
      def self.default(visited=[])
        {
          theme_alias_list: Stubs::ThemeAliasList.default(visited),
          status: 1,
          request_id: 'request_id',
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['ThemeAliasList'] = Stubs::ThemeAliasList.stub(stub[:theme_alias_list]) unless stub[:theme_alias_list].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ThemeAliasList
    class ThemeAliasList
      def self.default(visited=[])
        return nil if visited.include?('ThemeAliasList')
        visited = visited + ['ThemeAliasList']
        [
          Stubs::ThemeAlias.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ThemeAlias.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListThemeVersions
    class ListThemeVersions
      def self.default(visited=[])
        {
          theme_version_summary_list: Stubs::ThemeVersionSummaryList.default(visited),
          next_token: 'next_token',
          status: 1,
          request_id: 'request_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['ThemeVersionSummaryList'] = Stubs::ThemeVersionSummaryList.stub(stub[:theme_version_summary_list]) unless stub[:theme_version_summary_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ThemeVersionSummaryList
    class ThemeVersionSummaryList
      def self.default(visited=[])
        return nil if visited.include?('ThemeVersionSummaryList')
        visited = visited + ['ThemeVersionSummaryList']
        [
          Stubs::ThemeVersionSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ThemeVersionSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ThemeVersionSummary
    class ThemeVersionSummary
      def self.default(visited=[])
        return nil if visited.include?('ThemeVersionSummary')
        visited = visited + ['ThemeVersionSummary']
        {
          version_number: 1,
          arn: 'arn',
          description: 'description',
          created_time: Time.now,
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::ThemeVersionSummary.new
        data = {}
        data['VersionNumber'] = stub[:version_number] unless stub[:version_number].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['CreatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # Operation Stubber for ListThemes
    class ListThemes
      def self.default(visited=[])
        {
          theme_summary_list: Stubs::ThemeSummaryList.default(visited),
          next_token: 'next_token',
          status: 1,
          request_id: 'request_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['ThemeSummaryList'] = Stubs::ThemeSummaryList.stub(stub[:theme_summary_list]) unless stub[:theme_summary_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ThemeSummaryList
    class ThemeSummaryList
      def self.default(visited=[])
        return nil if visited.include?('ThemeSummaryList')
        visited = visited + ['ThemeSummaryList']
        [
          Stubs::ThemeSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ThemeSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ThemeSummary
    class ThemeSummary
      def self.default(visited=[])
        return nil if visited.include?('ThemeSummary')
        visited = visited + ['ThemeSummary']
        {
          arn: 'arn',
          name: 'name',
          theme_id: 'theme_id',
          latest_version_number: 1,
          created_time: Time.now,
          last_updated_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ThemeSummary.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['ThemeId'] = stub[:theme_id] unless stub[:theme_id].nil?
        data['LatestVersionNumber'] = stub[:latest_version_number] unless stub[:latest_version_number].nil?
        data['CreatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        data['LastUpdatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_time]).to_i unless stub[:last_updated_time].nil?
        data
      end
    end

    # Operation Stubber for ListUserGroups
    class ListUserGroups
      def self.default(visited=[])
        {
          group_list: Stubs::GroupList.default(visited),
          next_token: 'next_token',
          request_id: 'request_id',
          status: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['GroupList'] = Stubs::GroupList.stub(stub[:group_list]) unless stub[:group_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListUsers
    class ListUsers
      def self.default(visited=[])
        {
          user_list: Stubs::UserList.default(visited),
          next_token: 'next_token',
          request_id: 'request_id',
          status: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['UserList'] = Stubs::UserList.stub(stub[:user_list]) unless stub[:user_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for UserList
    class UserList
      def self.default(visited=[])
        return nil if visited.include?('UserList')
        visited = visited + ['UserList']
        [
          Stubs::User.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::User.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for RegisterUser
    class RegisterUser
      def self.default(visited=[])
        {
          user: Stubs::User.default(visited),
          user_invitation_url: 'user_invitation_url',
          request_id: 'request_id',
          status: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['User'] = Stubs::User.stub(stub[:user]) unless stub[:user].nil?
        data['UserInvitationUrl'] = stub[:user_invitation_url] unless stub[:user_invitation_url].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for RestoreAnalysis
    class RestoreAnalysis
      def self.default(visited=[])
        {
          status: 1,
          arn: 'arn',
          analysis_id: 'analysis_id',
          request_id: 'request_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['AnalysisId'] = stub[:analysis_id] unless stub[:analysis_id].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for SearchAnalyses
    class SearchAnalyses
      def self.default(visited=[])
        {
          analysis_summary_list: Stubs::AnalysisSummaryList.default(visited),
          next_token: 'next_token',
          status: 1,
          request_id: 'request_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['AnalysisSummaryList'] = Stubs::AnalysisSummaryList.stub(stub[:analysis_summary_list]) unless stub[:analysis_summary_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for SearchDashboards
    class SearchDashboards
      def self.default(visited=[])
        {
          dashboard_summary_list: Stubs::DashboardSummaryList.default(visited),
          next_token: 'next_token',
          status: 1,
          request_id: 'request_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['DashboardSummaryList'] = Stubs::DashboardSummaryList.stub(stub[:dashboard_summary_list]) unless stub[:dashboard_summary_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for SearchFolders
    class SearchFolders
      def self.default(visited=[])
        {
          status: 1,
          folder_summary_list: Stubs::FolderSummaryList.default(visited),
          next_token: 'next_token',
          request_id: 'request_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['FolderSummaryList'] = Stubs::FolderSummaryList.stub(stub[:folder_summary_list]) unless stub[:folder_summary_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for SearchGroups
    class SearchGroups
      def self.default(visited=[])
        {
          group_list: Stubs::GroupList.default(visited),
          next_token: 'next_token',
          request_id: 'request_id',
          status: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['GroupList'] = Stubs::GroupList.stub(stub[:group_list]) unless stub[:group_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for TagResource
    class TagResource
      def self.default(visited=[])
        {
          request_id: 'request_id',
          status: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UntagResource
    class UntagResource
      def self.default(visited=[])
        {
          request_id: 'request_id',
          status: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateAccountCustomization
    class UpdateAccountCustomization
      def self.default(visited=[])
        {
          arn: 'arn',
          aws_account_id: 'aws_account_id',
          namespace: 'namespace',
          account_customization: Stubs::AccountCustomization.default(visited),
          request_id: 'request_id',
          status: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['AwsAccountId'] = stub[:aws_account_id] unless stub[:aws_account_id].nil?
        data['Namespace'] = stub[:namespace] unless stub[:namespace].nil?
        data['AccountCustomization'] = Stubs::AccountCustomization.stub(stub[:account_customization]) unless stub[:account_customization].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateAccountSettings
    class UpdateAccountSettings
      def self.default(visited=[])
        {
          request_id: 'request_id',
          status: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateAnalysis
    class UpdateAnalysis
      def self.default(visited=[])
        {
          arn: 'arn',
          analysis_id: 'analysis_id',
          update_status: 'update_status',
          status: 1,
          request_id: 'request_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['AnalysisId'] = stub[:analysis_id] unless stub[:analysis_id].nil?
        data['UpdateStatus'] = stub[:update_status] unless stub[:update_status].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateAnalysisPermissions
    class UpdateAnalysisPermissions
      def self.default(visited=[])
        {
          analysis_arn: 'analysis_arn',
          analysis_id: 'analysis_id',
          permissions: Stubs::ResourcePermissionList.default(visited),
          request_id: 'request_id',
          status: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['AnalysisArn'] = stub[:analysis_arn] unless stub[:analysis_arn].nil?
        data['AnalysisId'] = stub[:analysis_id] unless stub[:analysis_id].nil?
        data['Permissions'] = Stubs::ResourcePermissionList.stub(stub[:permissions]) unless stub[:permissions].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateDashboard
    class UpdateDashboard
      def self.default(visited=[])
        {
          arn: 'arn',
          version_arn: 'version_arn',
          dashboard_id: 'dashboard_id',
          creation_status: 'creation_status',
          status: 1,
          request_id: 'request_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['VersionArn'] = stub[:version_arn] unless stub[:version_arn].nil?
        data['DashboardId'] = stub[:dashboard_id] unless stub[:dashboard_id].nil?
        data['CreationStatus'] = stub[:creation_status] unless stub[:creation_status].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateDashboardPermissions
    class UpdateDashboardPermissions
      def self.default(visited=[])
        {
          dashboard_arn: 'dashboard_arn',
          dashboard_id: 'dashboard_id',
          permissions: Stubs::ResourcePermissionList.default(visited),
          request_id: 'request_id',
          status: 1,
          link_sharing_configuration: Stubs::LinkSharingConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['DashboardArn'] = stub[:dashboard_arn] unless stub[:dashboard_arn].nil?
        data['DashboardId'] = stub[:dashboard_id] unless stub[:dashboard_id].nil?
        data['Permissions'] = Stubs::ResourcePermissionList.stub(stub[:permissions]) unless stub[:permissions].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['LinkSharingConfiguration'] = Stubs::LinkSharingConfiguration.stub(stub[:link_sharing_configuration]) unless stub[:link_sharing_configuration].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateDashboardPublishedVersion
    class UpdateDashboardPublishedVersion
      def self.default(visited=[])
        {
          dashboard_id: 'dashboard_id',
          dashboard_arn: 'dashboard_arn',
          status: 1,
          request_id: 'request_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['DashboardId'] = stub[:dashboard_id] unless stub[:dashboard_id].nil?
        data['DashboardArn'] = stub[:dashboard_arn] unless stub[:dashboard_arn].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateDataSet
    class UpdateDataSet
      def self.default(visited=[])
        {
          arn: 'arn',
          data_set_id: 'data_set_id',
          ingestion_arn: 'ingestion_arn',
          ingestion_id: 'ingestion_id',
          request_id: 'request_id',
          status: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['DataSetId'] = stub[:data_set_id] unless stub[:data_set_id].nil?
        data['IngestionArn'] = stub[:ingestion_arn] unless stub[:ingestion_arn].nil?
        data['IngestionId'] = stub[:ingestion_id] unless stub[:ingestion_id].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateDataSetPermissions
    class UpdateDataSetPermissions
      def self.default(visited=[])
        {
          data_set_arn: 'data_set_arn',
          data_set_id: 'data_set_id',
          request_id: 'request_id',
          status: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['DataSetArn'] = stub[:data_set_arn] unless stub[:data_set_arn].nil?
        data['DataSetId'] = stub[:data_set_id] unless stub[:data_set_id].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateDataSource
    class UpdateDataSource
      def self.default(visited=[])
        {
          arn: 'arn',
          data_source_id: 'data_source_id',
          update_status: 'update_status',
          request_id: 'request_id',
          status: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['DataSourceId'] = stub[:data_source_id] unless stub[:data_source_id].nil?
        data['UpdateStatus'] = stub[:update_status] unless stub[:update_status].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateDataSourcePermissions
    class UpdateDataSourcePermissions
      def self.default(visited=[])
        {
          data_source_arn: 'data_source_arn',
          data_source_id: 'data_source_id',
          request_id: 'request_id',
          status: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['DataSourceArn'] = stub[:data_source_arn] unless stub[:data_source_arn].nil?
        data['DataSourceId'] = stub[:data_source_id] unless stub[:data_source_id].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateFolder
    class UpdateFolder
      def self.default(visited=[])
        {
          status: 1,
          arn: 'arn',
          folder_id: 'folder_id',
          request_id: 'request_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['FolderId'] = stub[:folder_id] unless stub[:folder_id].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateFolderPermissions
    class UpdateFolderPermissions
      def self.default(visited=[])
        {
          status: 1,
          arn: 'arn',
          folder_id: 'folder_id',
          permissions: Stubs::ResourcePermissionList.default(visited),
          request_id: 'request_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['FolderId'] = stub[:folder_id] unless stub[:folder_id].nil?
        data['Permissions'] = Stubs::ResourcePermissionList.stub(stub[:permissions]) unless stub[:permissions].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateGroup
    class UpdateGroup
      def self.default(visited=[])
        {
          group: Stubs::Group.default(visited),
          request_id: 'request_id',
          status: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['Group'] = Stubs::Group.stub(stub[:group]) unless stub[:group].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateIAMPolicyAssignment
    class UpdateIAMPolicyAssignment
      def self.default(visited=[])
        {
          assignment_name: 'assignment_name',
          assignment_id: 'assignment_id',
          policy_arn: 'policy_arn',
          identities: Stubs::IdentityMap.default(visited),
          assignment_status: 'assignment_status',
          request_id: 'request_id',
          status: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['AssignmentName'] = stub[:assignment_name] unless stub[:assignment_name].nil?
        data['AssignmentId'] = stub[:assignment_id] unless stub[:assignment_id].nil?
        data['PolicyArn'] = stub[:policy_arn] unless stub[:policy_arn].nil?
        data['Identities'] = Stubs::IdentityMap.stub(stub[:identities]) unless stub[:identities].nil?
        data['AssignmentStatus'] = stub[:assignment_status] unless stub[:assignment_status].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateIpRestriction
    class UpdateIpRestriction
      def self.default(visited=[])
        {
          aws_account_id: 'aws_account_id',
          request_id: 'request_id',
          status: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['AwsAccountId'] = stub[:aws_account_id] unless stub[:aws_account_id].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdatePublicSharingSettings
    class UpdatePublicSharingSettings
      def self.default(visited=[])
        {
          request_id: 'request_id',
          status: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateTemplate
    class UpdateTemplate
      def self.default(visited=[])
        {
          template_id: 'template_id',
          arn: 'arn',
          version_arn: 'version_arn',
          creation_status: 'creation_status',
          status: 1,
          request_id: 'request_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['TemplateId'] = stub[:template_id] unless stub[:template_id].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['VersionArn'] = stub[:version_arn] unless stub[:version_arn].nil?
        data['CreationStatus'] = stub[:creation_status] unless stub[:creation_status].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateTemplateAlias
    class UpdateTemplateAlias
      def self.default(visited=[])
        {
          template_alias: Stubs::TemplateAlias.default(visited),
          status: 1,
          request_id: 'request_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['TemplateAlias'] = Stubs::TemplateAlias.stub(stub[:template_alias]) unless stub[:template_alias].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateTemplatePermissions
    class UpdateTemplatePermissions
      def self.default(visited=[])
        {
          template_id: 'template_id',
          template_arn: 'template_arn',
          permissions: Stubs::ResourcePermissionList.default(visited),
          request_id: 'request_id',
          status: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['TemplateId'] = stub[:template_id] unless stub[:template_id].nil?
        data['TemplateArn'] = stub[:template_arn] unless stub[:template_arn].nil?
        data['Permissions'] = Stubs::ResourcePermissionList.stub(stub[:permissions]) unless stub[:permissions].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateTheme
    class UpdateTheme
      def self.default(visited=[])
        {
          theme_id: 'theme_id',
          arn: 'arn',
          version_arn: 'version_arn',
          creation_status: 'creation_status',
          status: 1,
          request_id: 'request_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['ThemeId'] = stub[:theme_id] unless stub[:theme_id].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['VersionArn'] = stub[:version_arn] unless stub[:version_arn].nil?
        data['CreationStatus'] = stub[:creation_status] unless stub[:creation_status].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateThemeAlias
    class UpdateThemeAlias
      def self.default(visited=[])
        {
          theme_alias: Stubs::ThemeAlias.default(visited),
          status: 1,
          request_id: 'request_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['ThemeAlias'] = Stubs::ThemeAlias.stub(stub[:theme_alias]) unless stub[:theme_alias].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateThemePermissions
    class UpdateThemePermissions
      def self.default(visited=[])
        {
          theme_id: 'theme_id',
          theme_arn: 'theme_arn',
          permissions: Stubs::ResourcePermissionList.default(visited),
          request_id: 'request_id',
          status: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['ThemeId'] = stub[:theme_id] unless stub[:theme_id].nil?
        data['ThemeArn'] = stub[:theme_arn] unless stub[:theme_arn].nil?
        data['Permissions'] = Stubs::ResourcePermissionList.stub(stub[:permissions]) unless stub[:permissions].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateUser
    class UpdateUser
      def self.default(visited=[])
        {
          user: Stubs::User.default(visited),
          request_id: 'request_id',
          status: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.status = stub[:status]
        http_resp.headers['Content-Type'] = 'application/json'
        data['User'] = Stubs::User.stub(stub[:user]) unless stub[:user].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
