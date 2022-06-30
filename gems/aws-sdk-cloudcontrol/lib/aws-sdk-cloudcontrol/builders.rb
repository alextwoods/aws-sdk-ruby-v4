# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::CloudControl
  module Builders

    # Operation Builder for CancelResourceRequest
    class CancelResourceRequest
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'CloudApiService.CancelResourceRequest'
        data = {}
        data['RequestToken'] = input[:request_token] unless input[:request_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateResource
    class CreateResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'CloudApiService.CreateResource'
        data = {}
        data['TypeName'] = input[:type_name] unless input[:type_name].nil?
        data['TypeVersionId'] = input[:type_version_id] unless input[:type_version_id].nil?
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        data['DesiredState'] = input[:desired_state] unless input[:desired_state].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteResource
    class DeleteResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'CloudApiService.DeleteResource'
        data = {}
        data['TypeName'] = input[:type_name] unless input[:type_name].nil?
        data['TypeVersionId'] = input[:type_version_id] unless input[:type_version_id].nil?
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        data['Identifier'] = input[:identifier] unless input[:identifier].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetResource
    class GetResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'CloudApiService.GetResource'
        data = {}
        data['TypeName'] = input[:type_name] unless input[:type_name].nil?
        data['TypeVersionId'] = input[:type_version_id] unless input[:type_version_id].nil?
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['Identifier'] = input[:identifier] unless input[:identifier].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetResourceRequestStatus
    class GetResourceRequestStatus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'CloudApiService.GetResourceRequestStatus'
        data = {}
        data['RequestToken'] = input[:request_token] unless input[:request_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListResourceRequests
    class ListResourceRequests
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'CloudApiService.ListResourceRequests'
        data = {}
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['ResourceRequestStatusFilter'] = Builders::ResourceRequestStatusFilter.build(input[:resource_request_status_filter]) unless input[:resource_request_status_filter].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ResourceRequestStatusFilter
    class ResourceRequestStatusFilter
      def self.build(input)
        data = {}
        data['Operations'] = Builders::Operations.build(input[:operations]) unless input[:operations].nil?
        data['OperationStatuses'] = Builders::OperationStatuses.build(input[:operation_statuses]) unless input[:operation_statuses].nil?
        data
      end
    end

    # List Builder for OperationStatuses
    class OperationStatuses
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for Operations
    class Operations
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ListResources
    class ListResources
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'CloudApiService.ListResources'
        data = {}
        data['TypeName'] = input[:type_name] unless input[:type_name].nil?
        data['TypeVersionId'] = input[:type_version_id] unless input[:type_version_id].nil?
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['ResourceModel'] = input[:resource_model] unless input[:resource_model].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateResource
    class UpdateResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'CloudApiService.UpdateResource'
        data = {}
        data['TypeName'] = input[:type_name] unless input[:type_name].nil?
        data['TypeVersionId'] = input[:type_version_id] unless input[:type_version_id].nil?
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        data['Identifier'] = input[:identifier] unless input[:identifier].nil?
        data['PatchDocument'] = input[:patch_document] unless input[:patch_document].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
