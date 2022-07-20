# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::RAM
  module Builders

    # Operation Builder for AcceptResourceShareInvitation
    class AcceptResourceShareInvitation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/acceptresourceshareinvitation')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['resourceShareInvitationArn'] = input[:resource_share_invitation_arn] unless input[:resource_share_invitation_arn].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for AssociateResourceShare
    class AssociateResourceShare
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/associateresourceshare')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['resourceShareArn'] = input[:resource_share_arn] unless input[:resource_share_arn].nil?
        data['resourceArns'] = ResourceArnList.build(input[:resource_arns]) unless input[:resource_arns].nil?
        data['principals'] = PrincipalArnOrIdList.build(input[:principals]) unless input[:principals].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for PrincipalArnOrIdList
    class PrincipalArnOrIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for ResourceArnList
    class ResourceArnList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for AssociateResourceSharePermission
    class AssociateResourceSharePermission
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/associateresourcesharepermission')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['resourceShareArn'] = input[:resource_share_arn] unless input[:resource_share_arn].nil?
        data['permissionArn'] = input[:permission_arn] unless input[:permission_arn].nil?
        data['replace'] = input[:replace] unless input[:replace].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        data['permissionVersion'] = input[:permission_version] unless input[:permission_version].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateResourceShare
    class CreateResourceShare
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/createresourceshare')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['resourceArns'] = ResourceArnList.build(input[:resource_arns]) unless input[:resource_arns].nil?
        data['principals'] = PrincipalArnOrIdList.build(input[:principals]) unless input[:principals].nil?
        data['tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        data['allowExternalPrincipals'] = input[:allow_external_principals] unless input[:allow_external_principals].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        data['permissionArns'] = PermissionArnList.build(input[:permission_arns]) unless input[:permission_arns].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for PermissionArnList
    class PermissionArnList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for TagList
    class TagList
      def self.build(input)
        data = []
        input.each do |element|
          data << Tag.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Tag
    class Tag
      def self.build(input)
        data = {}
        data['key'] = input[:key] unless input[:key].nil?
        data['value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for DeleteResourceShare
    class DeleteResourceShare
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        http_req.append_path('/deleteresourceshare')
        params = Hearth::Query::ParamList.new
        params['resourceShareArn'] = input[:resource_share_arn].to_s unless input[:resource_share_arn].nil?
        params['clientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DisassociateResourceShare
    class DisassociateResourceShare
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/disassociateresourceshare')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['resourceShareArn'] = input[:resource_share_arn] unless input[:resource_share_arn].nil?
        data['resourceArns'] = ResourceArnList.build(input[:resource_arns]) unless input[:resource_arns].nil?
        data['principals'] = PrincipalArnOrIdList.build(input[:principals]) unless input[:principals].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DisassociateResourceSharePermission
    class DisassociateResourceSharePermission
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/disassociateresourcesharepermission')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['resourceShareArn'] = input[:resource_share_arn] unless input[:resource_share_arn].nil?
        data['permissionArn'] = input[:permission_arn] unless input[:permission_arn].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for EnableSharingWithAwsOrganization
    class EnableSharingWithAwsOrganization
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/enablesharingwithawsorganization')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetPermission
    class GetPermission
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/getpermission')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['permissionArn'] = input[:permission_arn] unless input[:permission_arn].nil?
        data['permissionVersion'] = input[:permission_version] unless input[:permission_version].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetResourcePolicies
    class GetResourcePolicies
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/getresourcepolicies')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['resourceArns'] = ResourceArnList.build(input[:resource_arns]) unless input[:resource_arns].nil?
        data['principal'] = input[:principal] unless input[:principal].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetResourceShareAssociations
    class GetResourceShareAssociations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/getresourceshareassociations')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['associationType'] = input[:association_type] unless input[:association_type].nil?
        data['resourceShareArns'] = ResourceShareArnList.build(input[:resource_share_arns]) unless input[:resource_share_arns].nil?
        data['resourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['principal'] = input[:principal] unless input[:principal].nil?
        data['associationStatus'] = input[:association_status] unless input[:association_status].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ResourceShareArnList
    class ResourceShareArnList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for GetResourceShareInvitations
    class GetResourceShareInvitations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/getresourceshareinvitations')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['resourceShareInvitationArns'] = ResourceShareInvitationArnList.build(input[:resource_share_invitation_arns]) unless input[:resource_share_invitation_arns].nil?
        data['resourceShareArns'] = ResourceShareArnList.build(input[:resource_share_arns]) unless input[:resource_share_arns].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ResourceShareInvitationArnList
    class ResourceShareInvitationArnList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for GetResourceShares
    class GetResourceShares
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/getresourceshares')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['resourceShareArns'] = ResourceShareArnList.build(input[:resource_share_arns]) unless input[:resource_share_arns].nil?
        data['resourceShareStatus'] = input[:resource_share_status] unless input[:resource_share_status].nil?
        data['resourceOwner'] = input[:resource_owner] unless input[:resource_owner].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['tagFilters'] = TagFilters.build(input[:tag_filters]) unless input[:tag_filters].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['permissionArn'] = input[:permission_arn] unless input[:permission_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagFilters
    class TagFilters
      def self.build(input)
        data = []
        input.each do |element|
          data << TagFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for TagFilter
    class TagFilter
      def self.build(input)
        data = {}
        data['tagKey'] = input[:tag_key] unless input[:tag_key].nil?
        data['tagValues'] = TagValueList.build(input[:tag_values]) unless input[:tag_values].nil?
        data
      end
    end

    # List Builder for TagValueList
    class TagValueList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ListPendingInvitationResources
    class ListPendingInvitationResources
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/listpendinginvitationresources')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['resourceShareInvitationArn'] = input[:resource_share_invitation_arn] unless input[:resource_share_invitation_arn].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['resourceRegionScope'] = input[:resource_region_scope] unless input[:resource_region_scope].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListPermissionVersions
    class ListPermissionVersions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/listpermissionversions')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['permissionArn'] = input[:permission_arn] unless input[:permission_arn].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListPermissions
    class ListPermissions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/listpermissions')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['resourceType'] = input[:resource_type] unless input[:resource_type].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListPrincipals
    class ListPrincipals
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/listprincipals')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['resourceOwner'] = input[:resource_owner] unless input[:resource_owner].nil?
        data['resourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['principals'] = PrincipalArnOrIdList.build(input[:principals]) unless input[:principals].nil?
        data['resourceType'] = input[:resource_type] unless input[:resource_type].nil?
        data['resourceShareArns'] = ResourceShareArnList.build(input[:resource_share_arns]) unless input[:resource_share_arns].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListResourceSharePermissions
    class ListResourceSharePermissions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/listresourcesharepermissions')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['resourceShareArn'] = input[:resource_share_arn] unless input[:resource_share_arn].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListResourceTypes
    class ListResourceTypes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/listresourcetypes')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['resourceRegionScope'] = input[:resource_region_scope] unless input[:resource_region_scope].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListResources
    class ListResources
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/listresources')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['resourceOwner'] = input[:resource_owner] unless input[:resource_owner].nil?
        data['principal'] = input[:principal] unless input[:principal].nil?
        data['resourceType'] = input[:resource_type] unless input[:resource_type].nil?
        data['resourceArns'] = ResourceArnList.build(input[:resource_arns]) unless input[:resource_arns].nil?
        data['resourceShareArns'] = ResourceShareArnList.build(input[:resource_share_arns]) unless input[:resource_share_arns].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['resourceRegionScope'] = input[:resource_region_scope] unless input[:resource_region_scope].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PromoteResourceShareCreatedFromPolicy
    class PromoteResourceShareCreatedFromPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/promoteresourcesharecreatedfrompolicy')
        params = Hearth::Query::ParamList.new
        params['resourceShareArn'] = input[:resource_share_arn].to_s unless input[:resource_share_arn].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for RejectResourceShareInvitation
    class RejectResourceShareInvitation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/rejectresourceshareinvitation')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['resourceShareInvitationArn'] = input[:resource_share_invitation_arn] unless input[:resource_share_invitation_arn].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/tagresource')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['resourceShareArn'] = input[:resource_share_arn] unless input[:resource_share_arn].nil?
        data['tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/untagresource')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['resourceShareArn'] = input[:resource_share_arn] unless input[:resource_share_arn].nil?
        data['tagKeys'] = TagKeyList.build(input[:tag_keys]) unless input[:tag_keys].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagKeyList
    class TagKeyList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateResourceShare
    class UpdateResourceShare
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/updateresourceshare')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['resourceShareArn'] = input[:resource_share_arn] unless input[:resource_share_arn].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['allowExternalPrincipals'] = input[:allow_external_principals] unless input[:allow_external_principals].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
