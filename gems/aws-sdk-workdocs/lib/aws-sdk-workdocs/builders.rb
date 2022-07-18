# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::WorkDocs
  module Builders

    # Operation Builder for AbortDocumentVersionUpload
    class AbortDocumentVersionUpload
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:document_id].to_s.empty?
          raise ArgumentError, "HTTP label :document_id cannot be nil or empty."
        end
        if input[:version_id].to_s.empty?
          raise ArgumentError, "HTTP label :version_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/api/v1/documents/%<DocumentId>s/versions/%<VersionId>s',
            DocumentId: Hearth::HTTP.uri_escape(input[:document_id].to_s),
            VersionId: Hearth::HTTP.uri_escape(input[:version_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['Authentication'] = input[:authentication_token] unless input[:authentication_token].nil? || input[:authentication_token].empty?
      end
    end

    # Operation Builder for ActivateUser
    class ActivateUser
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:user_id].to_s.empty?
          raise ArgumentError, "HTTP label :user_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/api/v1/users/%<UserId>s/activation',
            UserId: Hearth::HTTP.uri_escape(input[:user_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['Authentication'] = input[:authentication_token] unless input[:authentication_token].nil? || input[:authentication_token].empty?
      end
    end

    # Operation Builder for AddResourcePermissions
    class AddResourcePermissions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:resource_id].to_s.empty?
          raise ArgumentError, "HTTP label :resource_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/api/v1/resources/%<ResourceId>s/permissions',
            ResourceId: Hearth::HTTP.uri_escape(input[:resource_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Principals'] = Builders::SharePrincipalList.build(input[:principals]) unless input[:principals].nil?
        data['NotificationOptions'] = Builders::NotificationOptions.build(input[:notification_options]) unless input[:notification_options].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['Authentication'] = input[:authentication_token] unless input[:authentication_token].nil? || input[:authentication_token].empty?
      end
    end

    # Structure Builder for NotificationOptions
    class NotificationOptions
      def self.build(input)
        data = {}
        data['SendEmail'] = input[:send_email] unless input[:send_email].nil?
        data['EmailMessage'] = input[:email_message] unless input[:email_message].nil?
        data
      end
    end

    # List Builder for SharePrincipalList
    class SharePrincipalList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::SharePrincipal.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for SharePrincipal
    class SharePrincipal
      def self.build(input)
        data = {}
        data['Id'] = input[:id] unless input[:id].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data['Role'] = input[:role] unless input[:role].nil?
        data
      end
    end

    # Operation Builder for CreateComment
    class CreateComment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:document_id].to_s.empty?
          raise ArgumentError, "HTTP label :document_id cannot be nil or empty."
        end
        if input[:version_id].to_s.empty?
          raise ArgumentError, "HTTP label :version_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/api/v1/documents/%<DocumentId>s/versions/%<VersionId>s/comment',
            DocumentId: Hearth::HTTP.uri_escape(input[:document_id].to_s),
            VersionId: Hearth::HTTP.uri_escape(input[:version_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ParentId'] = input[:parent_id] unless input[:parent_id].nil?
        data['ThreadId'] = input[:thread_id] unless input[:thread_id].nil?
        data['Text'] = input[:text] unless input[:text].nil?
        data['Visibility'] = input[:visibility] unless input[:visibility].nil?
        data['NotifyCollaborators'] = input[:notify_collaborators] unless input[:notify_collaborators].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['Authentication'] = input[:authentication_token] unless input[:authentication_token].nil? || input[:authentication_token].empty?
      end
    end

    # Operation Builder for CreateCustomMetadata
    class CreateCustomMetadata
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:resource_id].to_s.empty?
          raise ArgumentError, "HTTP label :resource_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/api/v1/resources/%<ResourceId>s/customMetadata',
            ResourceId: Hearth::HTTP.uri_escape(input[:resource_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['versionid'] = input[:version_id].to_s unless input[:version_id].nil?
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['CustomMetadata'] = Builders::CustomMetadataMap.build(input[:custom_metadata]) unless input[:custom_metadata].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['Authentication'] = input[:authentication_token] unless input[:authentication_token].nil? || input[:authentication_token].empty?
      end
    end

    # Map Builder for CustomMetadataMap
    class CustomMetadataMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for CreateFolder
    class CreateFolder
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/api/v1/folders')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['ParentFolderId'] = input[:parent_folder_id] unless input[:parent_folder_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['Authentication'] = input[:authentication_token] unless input[:authentication_token].nil? || input[:authentication_token].empty?
      end
    end

    # Operation Builder for CreateLabels
    class CreateLabels
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:resource_id].to_s.empty?
          raise ArgumentError, "HTTP label :resource_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/api/v1/resources/%<ResourceId>s/labels',
            ResourceId: Hearth::HTTP.uri_escape(input[:resource_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Labels'] = Builders::SharedLabels.build(input[:labels]) unless input[:labels].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['Authentication'] = input[:authentication_token] unless input[:authentication_token].nil? || input[:authentication_token].empty?
      end
    end

    # List Builder for SharedLabels
    class SharedLabels
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateNotificationSubscription
    class CreateNotificationSubscription
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:organization_id].to_s.empty?
          raise ArgumentError, "HTTP label :organization_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/api/v1/organizations/%<OrganizationId>s/subscriptions',
            OrganizationId: Hearth::HTTP.uri_escape(input[:organization_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Endpoint'] = input[:endpoint] unless input[:endpoint].nil?
        data['Protocol'] = input[:protocol] unless input[:protocol].nil?
        data['SubscriptionType'] = input[:subscription_type] unless input[:subscription_type].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateUser
    class CreateUser
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/api/v1/users')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['OrganizationId'] = input[:organization_id] unless input[:organization_id].nil?
        data['Username'] = input[:username] unless input[:username].nil?
        data['EmailAddress'] = input[:email_address] unless input[:email_address].nil?
        data['GivenName'] = input[:given_name] unless input[:given_name].nil?
        data['Surname'] = input[:surname] unless input[:surname].nil?
        data['Password'] = input[:password] unless input[:password].nil?
        data['TimeZoneId'] = input[:time_zone_id] unless input[:time_zone_id].nil?
        data['StorageRule'] = Builders::StorageRuleType.build(input[:storage_rule]) unless input[:storage_rule].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['Authentication'] = input[:authentication_token] unless input[:authentication_token].nil? || input[:authentication_token].empty?
      end
    end

    # Structure Builder for StorageRuleType
    class StorageRuleType
      def self.build(input)
        data = {}
        data['StorageAllocatedInBytes'] = input[:storage_allocated_in_bytes] unless input[:storage_allocated_in_bytes].nil?
        data['StorageType'] = input[:storage_type] unless input[:storage_type].nil?
        data
      end
    end

    # Operation Builder for DeactivateUser
    class DeactivateUser
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:user_id].to_s.empty?
          raise ArgumentError, "HTTP label :user_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/api/v1/users/%<UserId>s/activation',
            UserId: Hearth::HTTP.uri_escape(input[:user_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['Authentication'] = input[:authentication_token] unless input[:authentication_token].nil? || input[:authentication_token].empty?
      end
    end

    # Operation Builder for DeleteComment
    class DeleteComment
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:document_id].to_s.empty?
          raise ArgumentError, "HTTP label :document_id cannot be nil or empty."
        end
        if input[:version_id].to_s.empty?
          raise ArgumentError, "HTTP label :version_id cannot be nil or empty."
        end
        if input[:comment_id].to_s.empty?
          raise ArgumentError, "HTTP label :comment_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/api/v1/documents/%<DocumentId>s/versions/%<VersionId>s/comment/%<CommentId>s',
            DocumentId: Hearth::HTTP.uri_escape(input[:document_id].to_s),
            VersionId: Hearth::HTTP.uri_escape(input[:version_id].to_s),
            CommentId: Hearth::HTTP.uri_escape(input[:comment_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['Authentication'] = input[:authentication_token] unless input[:authentication_token].nil? || input[:authentication_token].empty?
      end
    end

    # Operation Builder for DeleteCustomMetadata
    class DeleteCustomMetadata
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:resource_id].to_s.empty?
          raise ArgumentError, "HTTP label :resource_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/api/v1/resources/%<ResourceId>s/customMetadata',
            ResourceId: Hearth::HTTP.uri_escape(input[:resource_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['versionId'] = input[:version_id].to_s unless input[:version_id].nil?
        unless input[:keys].nil? || input[:keys].empty?
          params['keys'] = input[:keys].map do |value|
            value.to_s unless value.nil?
          end
        end
        params['deleteAll'] = input[:delete_all].to_s unless input[:delete_all].nil?
        http_req.append_query_params(params)
        http_req.headers['Authentication'] = input[:authentication_token] unless input[:authentication_token].nil? || input[:authentication_token].empty?
      end
    end

    # List Builder for CustomMetadataKeyList
    class CustomMetadataKeyList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DeleteDocument
    class DeleteDocument
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:document_id].to_s.empty?
          raise ArgumentError, "HTTP label :document_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/api/v1/documents/%<DocumentId>s',
            DocumentId: Hearth::HTTP.uri_escape(input[:document_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['Authentication'] = input[:authentication_token] unless input[:authentication_token].nil? || input[:authentication_token].empty?
      end
    end

    # Operation Builder for DeleteFolder
    class DeleteFolder
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:folder_id].to_s.empty?
          raise ArgumentError, "HTTP label :folder_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/api/v1/folders/%<FolderId>s',
            FolderId: Hearth::HTTP.uri_escape(input[:folder_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['Authentication'] = input[:authentication_token] unless input[:authentication_token].nil? || input[:authentication_token].empty?
      end
    end

    # Operation Builder for DeleteFolderContents
    class DeleteFolderContents
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:folder_id].to_s.empty?
          raise ArgumentError, "HTTP label :folder_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/api/v1/folders/%<FolderId>s/contents',
            FolderId: Hearth::HTTP.uri_escape(input[:folder_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['Authentication'] = input[:authentication_token] unless input[:authentication_token].nil? || input[:authentication_token].empty?
      end
    end

    # Operation Builder for DeleteLabels
    class DeleteLabels
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:resource_id].to_s.empty?
          raise ArgumentError, "HTTP label :resource_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/api/v1/resources/%<ResourceId>s/labels',
            ResourceId: Hearth::HTTP.uri_escape(input[:resource_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        unless input[:labels].nil? || input[:labels].empty?
          params['labels'] = input[:labels].map do |value|
            value.to_s unless value.nil?
          end
        end
        params['deleteAll'] = input[:delete_all].to_s unless input[:delete_all].nil?
        http_req.append_query_params(params)
        http_req.headers['Authentication'] = input[:authentication_token] unless input[:authentication_token].nil? || input[:authentication_token].empty?
      end
    end

    # Operation Builder for DeleteNotificationSubscription
    class DeleteNotificationSubscription
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:subscription_id].to_s.empty?
          raise ArgumentError, "HTTP label :subscription_id cannot be nil or empty."
        end
        if input[:organization_id].to_s.empty?
          raise ArgumentError, "HTTP label :organization_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/api/v1/organizations/%<OrganizationId>s/subscriptions/%<SubscriptionId>s',
            SubscriptionId: Hearth::HTTP.uri_escape(input[:subscription_id].to_s),
            OrganizationId: Hearth::HTTP.uri_escape(input[:organization_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteUser
    class DeleteUser
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:user_id].to_s.empty?
          raise ArgumentError, "HTTP label :user_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/api/v1/users/%<UserId>s',
            UserId: Hearth::HTTP.uri_escape(input[:user_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['Authentication'] = input[:authentication_token] unless input[:authentication_token].nil? || input[:authentication_token].empty?
      end
    end

    # Operation Builder for DescribeActivities
    class DescribeActivities
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/api/v1/activities')
        params = Hearth::Query::ParamList.new
        params['startTime'] = Hearth::TimeHelper.to_date_time(input[:start_time]) unless input[:start_time].nil?
        params['endTime'] = Hearth::TimeHelper.to_date_time(input[:end_time]) unless input[:end_time].nil?
        params['organizationId'] = input[:organization_id].to_s unless input[:organization_id].nil?
        params['activityTypes'] = input[:activity_types].to_s unless input[:activity_types].nil?
        params['resourceId'] = input[:resource_id].to_s unless input[:resource_id].nil?
        params['userId'] = input[:user_id].to_s unless input[:user_id].nil?
        params['includeIndirectActivities'] = input[:include_indirect_activities].to_s unless input[:include_indirect_activities].nil?
        params['limit'] = input[:limit].to_s unless input[:limit].nil?
        params['marker'] = input[:marker].to_s unless input[:marker].nil?
        http_req.append_query_params(params)
        http_req.headers['Authentication'] = input[:authentication_token] unless input[:authentication_token].nil? || input[:authentication_token].empty?
      end
    end

    # Operation Builder for DescribeComments
    class DescribeComments
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:document_id].to_s.empty?
          raise ArgumentError, "HTTP label :document_id cannot be nil or empty."
        end
        if input[:version_id].to_s.empty?
          raise ArgumentError, "HTTP label :version_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/api/v1/documents/%<DocumentId>s/versions/%<VersionId>s/comments',
            DocumentId: Hearth::HTTP.uri_escape(input[:document_id].to_s),
            VersionId: Hearth::HTTP.uri_escape(input[:version_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['limit'] = input[:limit].to_s unless input[:limit].nil?
        params['marker'] = input[:marker].to_s unless input[:marker].nil?
        http_req.append_query_params(params)
        http_req.headers['Authentication'] = input[:authentication_token] unless input[:authentication_token].nil? || input[:authentication_token].empty?
      end
    end

    # Operation Builder for DescribeDocumentVersions
    class DescribeDocumentVersions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:document_id].to_s.empty?
          raise ArgumentError, "HTTP label :document_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/api/v1/documents/%<DocumentId>s/versions',
            DocumentId: Hearth::HTTP.uri_escape(input[:document_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['marker'] = input[:marker].to_s unless input[:marker].nil?
        params['limit'] = input[:limit].to_s unless input[:limit].nil?
        params['include'] = input[:include].to_s unless input[:include].nil?
        params['fields'] = input[:fields].to_s unless input[:fields].nil?
        http_req.append_query_params(params)
        http_req.headers['Authentication'] = input[:authentication_token] unless input[:authentication_token].nil? || input[:authentication_token].empty?
      end
    end

    # Operation Builder for DescribeFolderContents
    class DescribeFolderContents
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:folder_id].to_s.empty?
          raise ArgumentError, "HTTP label :folder_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/api/v1/folders/%<FolderId>s/contents',
            FolderId: Hearth::HTTP.uri_escape(input[:folder_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['sort'] = input[:sort].to_s unless input[:sort].nil?
        params['order'] = input[:order].to_s unless input[:order].nil?
        params['limit'] = input[:limit].to_s unless input[:limit].nil?
        params['marker'] = input[:marker].to_s unless input[:marker].nil?
        params['type'] = input[:type].to_s unless input[:type].nil?
        params['include'] = input[:include].to_s unless input[:include].nil?
        http_req.append_query_params(params)
        http_req.headers['Authentication'] = input[:authentication_token] unless input[:authentication_token].nil? || input[:authentication_token].empty?
      end
    end

    # Operation Builder for DescribeGroups
    class DescribeGroups
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/api/v1/groups')
        params = Hearth::Query::ParamList.new
        params['searchQuery'] = input[:search_query].to_s unless input[:search_query].nil?
        params['organizationId'] = input[:organization_id].to_s unless input[:organization_id].nil?
        params['marker'] = input[:marker].to_s unless input[:marker].nil?
        params['limit'] = input[:limit].to_s unless input[:limit].nil?
        http_req.append_query_params(params)
        http_req.headers['Authentication'] = input[:authentication_token] unless input[:authentication_token].nil? || input[:authentication_token].empty?
      end
    end

    # Operation Builder for DescribeNotificationSubscriptions
    class DescribeNotificationSubscriptions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:organization_id].to_s.empty?
          raise ArgumentError, "HTTP label :organization_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/api/v1/organizations/%<OrganizationId>s/subscriptions',
            OrganizationId: Hearth::HTTP.uri_escape(input[:organization_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['marker'] = input[:marker].to_s unless input[:marker].nil?
        params['limit'] = input[:limit].to_s unless input[:limit].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeResourcePermissions
    class DescribeResourcePermissions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:resource_id].to_s.empty?
          raise ArgumentError, "HTTP label :resource_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/api/v1/resources/%<ResourceId>s/permissions',
            ResourceId: Hearth::HTTP.uri_escape(input[:resource_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['principalId'] = input[:principal_id].to_s unless input[:principal_id].nil?
        params['limit'] = input[:limit].to_s unless input[:limit].nil?
        params['marker'] = input[:marker].to_s unless input[:marker].nil?
        http_req.append_query_params(params)
        http_req.headers['Authentication'] = input[:authentication_token] unless input[:authentication_token].nil? || input[:authentication_token].empty?
      end
    end

    # Operation Builder for DescribeRootFolders
    class DescribeRootFolders
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/api/v1/me/root')
        params = Hearth::Query::ParamList.new
        params['limit'] = input[:limit].to_s unless input[:limit].nil?
        params['marker'] = input[:marker].to_s unless input[:marker].nil?
        http_req.append_query_params(params)
        http_req.headers['Authentication'] = input[:authentication_token] unless input[:authentication_token].nil? || input[:authentication_token].empty?
      end
    end

    # Operation Builder for DescribeUsers
    class DescribeUsers
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/api/v1/users')
        params = Hearth::Query::ParamList.new
        params['organizationId'] = input[:organization_id].to_s unless input[:organization_id].nil?
        params['userIds'] = input[:user_ids].to_s unless input[:user_ids].nil?
        params['query'] = input[:query].to_s unless input[:query].nil?
        params['include'] = input[:include].to_s unless input[:include].nil?
        params['order'] = input[:order].to_s unless input[:order].nil?
        params['sort'] = input[:sort].to_s unless input[:sort].nil?
        params['marker'] = input[:marker].to_s unless input[:marker].nil?
        params['limit'] = input[:limit].to_s unless input[:limit].nil?
        params['fields'] = input[:fields].to_s unless input[:fields].nil?
        http_req.append_query_params(params)
        http_req.headers['Authentication'] = input[:authentication_token] unless input[:authentication_token].nil? || input[:authentication_token].empty?
      end
    end

    # Operation Builder for GetCurrentUser
    class GetCurrentUser
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/api/v1/me')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['Authentication'] = input[:authentication_token] unless input[:authentication_token].nil? || input[:authentication_token].empty?
      end
    end

    # Operation Builder for GetDocument
    class GetDocument
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:document_id].to_s.empty?
          raise ArgumentError, "HTTP label :document_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/api/v1/documents/%<DocumentId>s',
            DocumentId: Hearth::HTTP.uri_escape(input[:document_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['includeCustomMetadata'] = input[:include_custom_metadata].to_s unless input[:include_custom_metadata].nil?
        http_req.append_query_params(params)
        http_req.headers['Authentication'] = input[:authentication_token] unless input[:authentication_token].nil? || input[:authentication_token].empty?
      end
    end

    # Operation Builder for GetDocumentPath
    class GetDocumentPath
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:document_id].to_s.empty?
          raise ArgumentError, "HTTP label :document_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/api/v1/documents/%<DocumentId>s/path',
            DocumentId: Hearth::HTTP.uri_escape(input[:document_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['limit'] = input[:limit].to_s unless input[:limit].nil?
        params['fields'] = input[:fields].to_s unless input[:fields].nil?
        params['marker'] = input[:marker].to_s unless input[:marker].nil?
        http_req.append_query_params(params)
        http_req.headers['Authentication'] = input[:authentication_token] unless input[:authentication_token].nil? || input[:authentication_token].empty?
      end
    end

    # Operation Builder for GetDocumentVersion
    class GetDocumentVersion
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:document_id].to_s.empty?
          raise ArgumentError, "HTTP label :document_id cannot be nil or empty."
        end
        if input[:version_id].to_s.empty?
          raise ArgumentError, "HTTP label :version_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/api/v1/documents/%<DocumentId>s/versions/%<VersionId>s',
            DocumentId: Hearth::HTTP.uri_escape(input[:document_id].to_s),
            VersionId: Hearth::HTTP.uri_escape(input[:version_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['fields'] = input[:fields].to_s unless input[:fields].nil?
        params['includeCustomMetadata'] = input[:include_custom_metadata].to_s unless input[:include_custom_metadata].nil?
        http_req.append_query_params(params)
        http_req.headers['Authentication'] = input[:authentication_token] unless input[:authentication_token].nil? || input[:authentication_token].empty?
      end
    end

    # Operation Builder for GetFolder
    class GetFolder
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:folder_id].to_s.empty?
          raise ArgumentError, "HTTP label :folder_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/api/v1/folders/%<FolderId>s',
            FolderId: Hearth::HTTP.uri_escape(input[:folder_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['includeCustomMetadata'] = input[:include_custom_metadata].to_s unless input[:include_custom_metadata].nil?
        http_req.append_query_params(params)
        http_req.headers['Authentication'] = input[:authentication_token] unless input[:authentication_token].nil? || input[:authentication_token].empty?
      end
    end

    # Operation Builder for GetFolderPath
    class GetFolderPath
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:folder_id].to_s.empty?
          raise ArgumentError, "HTTP label :folder_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/api/v1/folders/%<FolderId>s/path',
            FolderId: Hearth::HTTP.uri_escape(input[:folder_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['limit'] = input[:limit].to_s unless input[:limit].nil?
        params['fields'] = input[:fields].to_s unless input[:fields].nil?
        params['marker'] = input[:marker].to_s unless input[:marker].nil?
        http_req.append_query_params(params)
        http_req.headers['Authentication'] = input[:authentication_token] unless input[:authentication_token].nil? || input[:authentication_token].empty?
      end
    end

    # Operation Builder for GetResources
    class GetResources
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/api/v1/resources')
        params = Hearth::Query::ParamList.new
        params['userId'] = input[:user_id].to_s unless input[:user_id].nil?
        params['collectionType'] = input[:collection_type].to_s unless input[:collection_type].nil?
        params['limit'] = input[:limit].to_s unless input[:limit].nil?
        params['marker'] = input[:marker].to_s unless input[:marker].nil?
        http_req.append_query_params(params)
        http_req.headers['Authentication'] = input[:authentication_token] unless input[:authentication_token].nil? || input[:authentication_token].empty?
      end
    end

    # Operation Builder for InitiateDocumentVersionUpload
    class InitiateDocumentVersionUpload
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/api/v1/documents')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Id'] = input[:id] unless input[:id].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['ContentCreatedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(input[:content_created_timestamp]).to_i unless input[:content_created_timestamp].nil?
        data['ContentModifiedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(input[:content_modified_timestamp]).to_i unless input[:content_modified_timestamp].nil?
        data['ContentType'] = input[:content_type] unless input[:content_type].nil?
        data['DocumentSizeInBytes'] = input[:document_size_in_bytes] unless input[:document_size_in_bytes].nil?
        data['ParentFolderId'] = input[:parent_folder_id] unless input[:parent_folder_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['Authentication'] = input[:authentication_token] unless input[:authentication_token].nil? || input[:authentication_token].empty?
      end
    end

    # Operation Builder for RemoveAllResourcePermissions
    class RemoveAllResourcePermissions
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:resource_id].to_s.empty?
          raise ArgumentError, "HTTP label :resource_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/api/v1/resources/%<ResourceId>s/permissions',
            ResourceId: Hearth::HTTP.uri_escape(input[:resource_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['Authentication'] = input[:authentication_token] unless input[:authentication_token].nil? || input[:authentication_token].empty?
      end
    end

    # Operation Builder for RemoveResourcePermission
    class RemoveResourcePermission
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:resource_id].to_s.empty?
          raise ArgumentError, "HTTP label :resource_id cannot be nil or empty."
        end
        if input[:principal_id].to_s.empty?
          raise ArgumentError, "HTTP label :principal_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/api/v1/resources/%<ResourceId>s/permissions/%<PrincipalId>s',
            ResourceId: Hearth::HTTP.uri_escape(input[:resource_id].to_s),
            PrincipalId: Hearth::HTTP.uri_escape(input[:principal_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['type'] = input[:principal_type].to_s unless input[:principal_type].nil?
        http_req.append_query_params(params)
        http_req.headers['Authentication'] = input[:authentication_token] unless input[:authentication_token].nil? || input[:authentication_token].empty?
      end
    end

    # Operation Builder for UpdateDocument
    class UpdateDocument
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:document_id].to_s.empty?
          raise ArgumentError, "HTTP label :document_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/api/v1/documents/%<DocumentId>s',
            DocumentId: Hearth::HTTP.uri_escape(input[:document_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['ParentFolderId'] = input[:parent_folder_id] unless input[:parent_folder_id].nil?
        data['ResourceState'] = input[:resource_state] unless input[:resource_state].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['Authentication'] = input[:authentication_token] unless input[:authentication_token].nil? || input[:authentication_token].empty?
      end
    end

    # Operation Builder for UpdateDocumentVersion
    class UpdateDocumentVersion
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:document_id].to_s.empty?
          raise ArgumentError, "HTTP label :document_id cannot be nil or empty."
        end
        if input[:version_id].to_s.empty?
          raise ArgumentError, "HTTP label :version_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/api/v1/documents/%<DocumentId>s/versions/%<VersionId>s',
            DocumentId: Hearth::HTTP.uri_escape(input[:document_id].to_s),
            VersionId: Hearth::HTTP.uri_escape(input[:version_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['VersionStatus'] = input[:version_status] unless input[:version_status].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['Authentication'] = input[:authentication_token] unless input[:authentication_token].nil? || input[:authentication_token].empty?
      end
    end

    # Operation Builder for UpdateFolder
    class UpdateFolder
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:folder_id].to_s.empty?
          raise ArgumentError, "HTTP label :folder_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/api/v1/folders/%<FolderId>s',
            FolderId: Hearth::HTTP.uri_escape(input[:folder_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['ParentFolderId'] = input[:parent_folder_id] unless input[:parent_folder_id].nil?
        data['ResourceState'] = input[:resource_state] unless input[:resource_state].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['Authentication'] = input[:authentication_token] unless input[:authentication_token].nil? || input[:authentication_token].empty?
      end
    end

    # Operation Builder for UpdateUser
    class UpdateUser
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:user_id].to_s.empty?
          raise ArgumentError, "HTTP label :user_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/api/v1/users/%<UserId>s',
            UserId: Hearth::HTTP.uri_escape(input[:user_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['GivenName'] = input[:given_name] unless input[:given_name].nil?
        data['Surname'] = input[:surname] unless input[:surname].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data['StorageRule'] = Builders::StorageRuleType.build(input[:storage_rule]) unless input[:storage_rule].nil?
        data['TimeZoneId'] = input[:time_zone_id] unless input[:time_zone_id].nil?
        data['Locale'] = input[:locale] unless input[:locale].nil?
        data['GrantPoweruserPrivileges'] = input[:grant_poweruser_privileges] unless input[:grant_poweruser_privileges].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['Authentication'] = input[:authentication_token] unless input[:authentication_token].nil? || input[:authentication_token].empty?
      end
    end
  end
end
