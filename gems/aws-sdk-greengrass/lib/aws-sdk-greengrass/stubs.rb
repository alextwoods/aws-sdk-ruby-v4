# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Greengrass
  module Stubs

    # Operation Stubber for AssociateRoleToGroup
    class AssociateRoleToGroup
      def self.default(visited=[])
        {
          associated_at: 'associated_at',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['AssociatedAt'] = stub[:associated_at] unless stub[:associated_at].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for AssociateServiceRoleToAccount
    class AssociateServiceRoleToAccount
      def self.default(visited=[])
        {
          associated_at: 'associated_at',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['AssociatedAt'] = stub[:associated_at] unless stub[:associated_at].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateConnectorDefinition
    class CreateConnectorDefinition
      def self.default(visited=[])
        {
          arn: 'arn',
          creation_timestamp: 'creation_timestamp',
          id: 'id',
          last_updated_timestamp: 'last_updated_timestamp',
          latest_version: 'latest_version',
          latest_version_arn: 'latest_version_arn',
          name: 'name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['CreationTimestamp'] = stub[:creation_timestamp] unless stub[:creation_timestamp].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['LastUpdatedTimestamp'] = stub[:last_updated_timestamp] unless stub[:last_updated_timestamp].nil?
        data['LatestVersion'] = stub[:latest_version] unless stub[:latest_version].nil?
        data['LatestVersionArn'] = stub[:latest_version_arn] unless stub[:latest_version_arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateConnectorDefinitionVersion
    class CreateConnectorDefinitionVersion
      def self.default(visited=[])
        {
          arn: 'arn',
          creation_timestamp: 'creation_timestamp',
          id: 'id',
          version: 'version',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['CreationTimestamp'] = stub[:creation_timestamp] unless stub[:creation_timestamp].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateCoreDefinition
    class CreateCoreDefinition
      def self.default(visited=[])
        {
          arn: 'arn',
          creation_timestamp: 'creation_timestamp',
          id: 'id',
          last_updated_timestamp: 'last_updated_timestamp',
          latest_version: 'latest_version',
          latest_version_arn: 'latest_version_arn',
          name: 'name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['CreationTimestamp'] = stub[:creation_timestamp] unless stub[:creation_timestamp].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['LastUpdatedTimestamp'] = stub[:last_updated_timestamp] unless stub[:last_updated_timestamp].nil?
        data['LatestVersion'] = stub[:latest_version] unless stub[:latest_version].nil?
        data['LatestVersionArn'] = stub[:latest_version_arn] unless stub[:latest_version_arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateCoreDefinitionVersion
    class CreateCoreDefinitionVersion
      def self.default(visited=[])
        {
          arn: 'arn',
          creation_timestamp: 'creation_timestamp',
          id: 'id',
          version: 'version',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['CreationTimestamp'] = stub[:creation_timestamp] unless stub[:creation_timestamp].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateDeployment
    class CreateDeployment
      def self.default(visited=[])
        {
          deployment_arn: 'deployment_arn',
          deployment_id: 'deployment_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['DeploymentArn'] = stub[:deployment_arn] unless stub[:deployment_arn].nil?
        data['DeploymentId'] = stub[:deployment_id] unless stub[:deployment_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateDeviceDefinition
    class CreateDeviceDefinition
      def self.default(visited=[])
        {
          arn: 'arn',
          creation_timestamp: 'creation_timestamp',
          id: 'id',
          last_updated_timestamp: 'last_updated_timestamp',
          latest_version: 'latest_version',
          latest_version_arn: 'latest_version_arn',
          name: 'name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['CreationTimestamp'] = stub[:creation_timestamp] unless stub[:creation_timestamp].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['LastUpdatedTimestamp'] = stub[:last_updated_timestamp] unless stub[:last_updated_timestamp].nil?
        data['LatestVersion'] = stub[:latest_version] unless stub[:latest_version].nil?
        data['LatestVersionArn'] = stub[:latest_version_arn] unless stub[:latest_version_arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateDeviceDefinitionVersion
    class CreateDeviceDefinitionVersion
      def self.default(visited=[])
        {
          arn: 'arn',
          creation_timestamp: 'creation_timestamp',
          id: 'id',
          version: 'version',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['CreationTimestamp'] = stub[:creation_timestamp] unless stub[:creation_timestamp].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateFunctionDefinition
    class CreateFunctionDefinition
      def self.default(visited=[])
        {
          arn: 'arn',
          creation_timestamp: 'creation_timestamp',
          id: 'id',
          last_updated_timestamp: 'last_updated_timestamp',
          latest_version: 'latest_version',
          latest_version_arn: 'latest_version_arn',
          name: 'name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['CreationTimestamp'] = stub[:creation_timestamp] unless stub[:creation_timestamp].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['LastUpdatedTimestamp'] = stub[:last_updated_timestamp] unless stub[:last_updated_timestamp].nil?
        data['LatestVersion'] = stub[:latest_version] unless stub[:latest_version].nil?
        data['LatestVersionArn'] = stub[:latest_version_arn] unless stub[:latest_version_arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateFunctionDefinitionVersion
    class CreateFunctionDefinitionVersion
      def self.default(visited=[])
        {
          arn: 'arn',
          creation_timestamp: 'creation_timestamp',
          id: 'id',
          version: 'version',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['CreationTimestamp'] = stub[:creation_timestamp] unless stub[:creation_timestamp].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateGroup
    class CreateGroup
      def self.default(visited=[])
        {
          arn: 'arn',
          creation_timestamp: 'creation_timestamp',
          id: 'id',
          last_updated_timestamp: 'last_updated_timestamp',
          latest_version: 'latest_version',
          latest_version_arn: 'latest_version_arn',
          name: 'name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['CreationTimestamp'] = stub[:creation_timestamp] unless stub[:creation_timestamp].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['LastUpdatedTimestamp'] = stub[:last_updated_timestamp] unless stub[:last_updated_timestamp].nil?
        data['LatestVersion'] = stub[:latest_version] unless stub[:latest_version].nil?
        data['LatestVersionArn'] = stub[:latest_version_arn] unless stub[:latest_version_arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateGroupCertificateAuthority
    class CreateGroupCertificateAuthority
      def self.default(visited=[])
        {
          group_certificate_authority_arn: 'group_certificate_authority_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['GroupCertificateAuthorityArn'] = stub[:group_certificate_authority_arn] unless stub[:group_certificate_authority_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateGroupVersion
    class CreateGroupVersion
      def self.default(visited=[])
        {
          arn: 'arn',
          creation_timestamp: 'creation_timestamp',
          id: 'id',
          version: 'version',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['CreationTimestamp'] = stub[:creation_timestamp] unless stub[:creation_timestamp].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateLoggerDefinition
    class CreateLoggerDefinition
      def self.default(visited=[])
        {
          arn: 'arn',
          creation_timestamp: 'creation_timestamp',
          id: 'id',
          last_updated_timestamp: 'last_updated_timestamp',
          latest_version: 'latest_version',
          latest_version_arn: 'latest_version_arn',
          name: 'name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['CreationTimestamp'] = stub[:creation_timestamp] unless stub[:creation_timestamp].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['LastUpdatedTimestamp'] = stub[:last_updated_timestamp] unless stub[:last_updated_timestamp].nil?
        data['LatestVersion'] = stub[:latest_version] unless stub[:latest_version].nil?
        data['LatestVersionArn'] = stub[:latest_version_arn] unless stub[:latest_version_arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateLoggerDefinitionVersion
    class CreateLoggerDefinitionVersion
      def self.default(visited=[])
        {
          arn: 'arn',
          creation_timestamp: 'creation_timestamp',
          id: 'id',
          version: 'version',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['CreationTimestamp'] = stub[:creation_timestamp] unless stub[:creation_timestamp].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateResourceDefinition
    class CreateResourceDefinition
      def self.default(visited=[])
        {
          arn: 'arn',
          creation_timestamp: 'creation_timestamp',
          id: 'id',
          last_updated_timestamp: 'last_updated_timestamp',
          latest_version: 'latest_version',
          latest_version_arn: 'latest_version_arn',
          name: 'name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['CreationTimestamp'] = stub[:creation_timestamp] unless stub[:creation_timestamp].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['LastUpdatedTimestamp'] = stub[:last_updated_timestamp] unless stub[:last_updated_timestamp].nil?
        data['LatestVersion'] = stub[:latest_version] unless stub[:latest_version].nil?
        data['LatestVersionArn'] = stub[:latest_version_arn] unless stub[:latest_version_arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateResourceDefinitionVersion
    class CreateResourceDefinitionVersion
      def self.default(visited=[])
        {
          arn: 'arn',
          creation_timestamp: 'creation_timestamp',
          id: 'id',
          version: 'version',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['CreationTimestamp'] = stub[:creation_timestamp] unless stub[:creation_timestamp].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateSoftwareUpdateJob
    class CreateSoftwareUpdateJob
      def self.default(visited=[])
        {
          iot_job_arn: 'iot_job_arn',
          iot_job_id: 'iot_job_id',
          platform_software_version: 'platform_software_version',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['IotJobArn'] = stub[:iot_job_arn] unless stub[:iot_job_arn].nil?
        data['IotJobId'] = stub[:iot_job_id] unless stub[:iot_job_id].nil?
        data['PlatformSoftwareVersion'] = stub[:platform_software_version] unless stub[:platform_software_version].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateSubscriptionDefinition
    class CreateSubscriptionDefinition
      def self.default(visited=[])
        {
          arn: 'arn',
          creation_timestamp: 'creation_timestamp',
          id: 'id',
          last_updated_timestamp: 'last_updated_timestamp',
          latest_version: 'latest_version',
          latest_version_arn: 'latest_version_arn',
          name: 'name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['CreationTimestamp'] = stub[:creation_timestamp] unless stub[:creation_timestamp].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['LastUpdatedTimestamp'] = stub[:last_updated_timestamp] unless stub[:last_updated_timestamp].nil?
        data['LatestVersion'] = stub[:latest_version] unless stub[:latest_version].nil?
        data['LatestVersionArn'] = stub[:latest_version_arn] unless stub[:latest_version_arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateSubscriptionDefinitionVersion
    class CreateSubscriptionDefinitionVersion
      def self.default(visited=[])
        {
          arn: 'arn',
          creation_timestamp: 'creation_timestamp',
          id: 'id',
          version: 'version',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['CreationTimestamp'] = stub[:creation_timestamp] unless stub[:creation_timestamp].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteConnectorDefinition
    class DeleteConnectorDefinition
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteCoreDefinition
    class DeleteCoreDefinition
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteDeviceDefinition
    class DeleteDeviceDefinition
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteFunctionDefinition
    class DeleteFunctionDefinition
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteGroup
    class DeleteGroup
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteLoggerDefinition
    class DeleteLoggerDefinition
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteResourceDefinition
    class DeleteResourceDefinition
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteSubscriptionDefinition
    class DeleteSubscriptionDefinition
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DisassociateRoleFromGroup
    class DisassociateRoleFromGroup
      def self.default(visited=[])
        {
          disassociated_at: 'disassociated_at',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['DisassociatedAt'] = stub[:disassociated_at] unless stub[:disassociated_at].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DisassociateServiceRoleFromAccount
    class DisassociateServiceRoleFromAccount
      def self.default(visited=[])
        {
          disassociated_at: 'disassociated_at',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['DisassociatedAt'] = stub[:disassociated_at] unless stub[:disassociated_at].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetAssociatedRole
    class GetAssociatedRole
      def self.default(visited=[])
        {
          associated_at: 'associated_at',
          role_arn: 'role_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['AssociatedAt'] = stub[:associated_at] unless stub[:associated_at].nil?
        data['RoleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetBulkDeploymentStatus
    class GetBulkDeploymentStatus
      def self.default(visited=[])
        {
          bulk_deployment_metrics: BulkDeploymentMetrics.default(visited),
          bulk_deployment_status: 'bulk_deployment_status',
          created_at: 'created_at',
          error_details: ErrorDetails.default(visited),
          error_message: 'error_message',
          tags: Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['BulkDeploymentMetrics'] = Stubs::BulkDeploymentMetrics.stub(stub[:bulk_deployment_metrics]) unless stub[:bulk_deployment_metrics].nil?
        data['BulkDeploymentStatus'] = stub[:bulk_deployment_status] unless stub[:bulk_deployment_status].nil?
        data['CreatedAt'] = stub[:created_at] unless stub[:created_at].nil?
        data['ErrorDetails'] = Stubs::ErrorDetails.stub(stub[:error_details]) unless stub[:error_details].nil?
        data['ErrorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Stubber for Tags
    class Tags
      def self.default(visited=[])
        return nil if visited.include?('Tags')
        visited = visited + ['Tags']
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

    # List Stubber for ErrorDetails
    class ErrorDetails
      def self.default(visited=[])
        return nil if visited.include?('ErrorDetails')
        visited = visited + ['ErrorDetails']
        [
          ErrorDetail.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ErrorDetail.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ErrorDetail
    class ErrorDetail
      def self.default(visited=[])
        return nil if visited.include?('ErrorDetail')
        visited = visited + ['ErrorDetail']
        {
          detailed_error_code: 'detailed_error_code',
          detailed_error_message: 'detailed_error_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::ErrorDetail.new
        data = {}
        data['DetailedErrorCode'] = stub[:detailed_error_code] unless stub[:detailed_error_code].nil?
        data['DetailedErrorMessage'] = stub[:detailed_error_message] unless stub[:detailed_error_message].nil?
        data
      end
    end

    # Structure Stubber for BulkDeploymentMetrics
    class BulkDeploymentMetrics
      def self.default(visited=[])
        return nil if visited.include?('BulkDeploymentMetrics')
        visited = visited + ['BulkDeploymentMetrics']
        {
          invalid_input_records: 1,
          records_processed: 1,
          retry_attempts: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::BulkDeploymentMetrics.new
        data = {}
        data['InvalidInputRecords'] = stub[:invalid_input_records] unless stub[:invalid_input_records].nil?
        data['RecordsProcessed'] = stub[:records_processed] unless stub[:records_processed].nil?
        data['RetryAttempts'] = stub[:retry_attempts] unless stub[:retry_attempts].nil?
        data
      end
    end

    # Operation Stubber for GetConnectivityInfo
    class GetConnectivityInfo
      def self.default(visited=[])
        {
          connectivity_info: List____listOfConnectivityInfo.default(visited),
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ConnectivityInfo'] = Stubs::List____listOfConnectivityInfo.stub(stub[:connectivity_info]) unless stub[:connectivity_info].nil?
        data['message'] = stub[:message] unless stub[:message].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfConnectivityInfo
    class List____listOfConnectivityInfo
      def self.default(visited=[])
        return nil if visited.include?('List____listOfConnectivityInfo')
        visited = visited + ['List____listOfConnectivityInfo']
        [
          ConnectivityInfo.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ConnectivityInfo.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ConnectivityInfo
    class ConnectivityInfo
      def self.default(visited=[])
        return nil if visited.include?('ConnectivityInfo')
        visited = visited + ['ConnectivityInfo']
        {
          host_address: 'host_address',
          id: 'id',
          metadata: 'metadata',
          port_number: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ConnectivityInfo.new
        data = {}
        data['HostAddress'] = stub[:host_address] unless stub[:host_address].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Metadata'] = stub[:metadata] unless stub[:metadata].nil?
        data['PortNumber'] = stub[:port_number] unless stub[:port_number].nil?
        data
      end
    end

    # Operation Stubber for GetConnectorDefinition
    class GetConnectorDefinition
      def self.default(visited=[])
        {
          arn: 'arn',
          creation_timestamp: 'creation_timestamp',
          id: 'id',
          last_updated_timestamp: 'last_updated_timestamp',
          latest_version: 'latest_version',
          latest_version_arn: 'latest_version_arn',
          name: 'name',
          tags: Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['CreationTimestamp'] = stub[:creation_timestamp] unless stub[:creation_timestamp].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['LastUpdatedTimestamp'] = stub[:last_updated_timestamp] unless stub[:last_updated_timestamp].nil?
        data['LatestVersion'] = stub[:latest_version] unless stub[:latest_version].nil?
        data['LatestVersionArn'] = stub[:latest_version_arn] unless stub[:latest_version_arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetConnectorDefinitionVersion
    class GetConnectorDefinitionVersion
      def self.default(visited=[])
        {
          arn: 'arn',
          creation_timestamp: 'creation_timestamp',
          definition: ConnectorDefinitionVersion.default(visited),
          id: 'id',
          next_token: 'next_token',
          version: 'version',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['CreationTimestamp'] = stub[:creation_timestamp] unless stub[:creation_timestamp].nil?
        data['Definition'] = Stubs::ConnectorDefinitionVersion.stub(stub[:definition]) unless stub[:definition].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ConnectorDefinitionVersion
    class ConnectorDefinitionVersion
      def self.default(visited=[])
        return nil if visited.include?('ConnectorDefinitionVersion')
        visited = visited + ['ConnectorDefinitionVersion']
        {
          connectors: List____listOfConnector.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ConnectorDefinitionVersion.new
        data = {}
        data['Connectors'] = Stubs::List____listOfConnector.stub(stub[:connectors]) unless stub[:connectors].nil?
        data
      end
    end

    # List Stubber for __listOfConnector
    class List____listOfConnector
      def self.default(visited=[])
        return nil if visited.include?('List____listOfConnector')
        visited = visited + ['List____listOfConnector']
        [
          Connector.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Connector.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Connector
    class Connector
      def self.default(visited=[])
        return nil if visited.include?('Connector')
        visited = visited + ['Connector']
        {
          connector_arn: 'connector_arn',
          id: 'id',
          parameters: Map____mapOf__string.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Connector.new
        data = {}
        data['ConnectorArn'] = stub[:connector_arn] unless stub[:connector_arn].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Parameters'] = Stubs::Map____mapOf__string.stub(stub[:parameters]) unless stub[:parameters].nil?
        data
      end
    end

    # Map Stubber for __mapOf__string
    class Map____mapOf__string
      def self.default(visited=[])
        return nil if visited.include?('Map____mapOf__string')
        visited = visited + ['Map____mapOf__string']
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

    # Operation Stubber for GetCoreDefinition
    class GetCoreDefinition
      def self.default(visited=[])
        {
          arn: 'arn',
          creation_timestamp: 'creation_timestamp',
          id: 'id',
          last_updated_timestamp: 'last_updated_timestamp',
          latest_version: 'latest_version',
          latest_version_arn: 'latest_version_arn',
          name: 'name',
          tags: Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['CreationTimestamp'] = stub[:creation_timestamp] unless stub[:creation_timestamp].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['LastUpdatedTimestamp'] = stub[:last_updated_timestamp] unless stub[:last_updated_timestamp].nil?
        data['LatestVersion'] = stub[:latest_version] unless stub[:latest_version].nil?
        data['LatestVersionArn'] = stub[:latest_version_arn] unless stub[:latest_version_arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetCoreDefinitionVersion
    class GetCoreDefinitionVersion
      def self.default(visited=[])
        {
          arn: 'arn',
          creation_timestamp: 'creation_timestamp',
          definition: CoreDefinitionVersion.default(visited),
          id: 'id',
          next_token: 'next_token',
          version: 'version',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['CreationTimestamp'] = stub[:creation_timestamp] unless stub[:creation_timestamp].nil?
        data['Definition'] = Stubs::CoreDefinitionVersion.stub(stub[:definition]) unless stub[:definition].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for CoreDefinitionVersion
    class CoreDefinitionVersion
      def self.default(visited=[])
        return nil if visited.include?('CoreDefinitionVersion')
        visited = visited + ['CoreDefinitionVersion']
        {
          cores: List____listOfCore.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CoreDefinitionVersion.new
        data = {}
        data['Cores'] = Stubs::List____listOfCore.stub(stub[:cores]) unless stub[:cores].nil?
        data
      end
    end

    # List Stubber for __listOfCore
    class List____listOfCore
      def self.default(visited=[])
        return nil if visited.include?('List____listOfCore')
        visited = visited + ['List____listOfCore']
        [
          Core.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Core.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Core
    class Core
      def self.default(visited=[])
        return nil if visited.include?('Core')
        visited = visited + ['Core']
        {
          certificate_arn: 'certificate_arn',
          id: 'id',
          sync_shadow: false,
          thing_arn: 'thing_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::Core.new
        data = {}
        data['CertificateArn'] = stub[:certificate_arn] unless stub[:certificate_arn].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['SyncShadow'] = stub[:sync_shadow] unless stub[:sync_shadow].nil?
        data['ThingArn'] = stub[:thing_arn] unless stub[:thing_arn].nil?
        data
      end
    end

    # Operation Stubber for GetDeploymentStatus
    class GetDeploymentStatus
      def self.default(visited=[])
        {
          deployment_status: 'deployment_status',
          deployment_type: 'deployment_type',
          error_details: ErrorDetails.default(visited),
          error_message: 'error_message',
          updated_at: 'updated_at',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['DeploymentStatus'] = stub[:deployment_status] unless stub[:deployment_status].nil?
        data['DeploymentType'] = stub[:deployment_type] unless stub[:deployment_type].nil?
        data['ErrorDetails'] = Stubs::ErrorDetails.stub(stub[:error_details]) unless stub[:error_details].nil?
        data['ErrorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data['UpdatedAt'] = stub[:updated_at] unless stub[:updated_at].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetDeviceDefinition
    class GetDeviceDefinition
      def self.default(visited=[])
        {
          arn: 'arn',
          creation_timestamp: 'creation_timestamp',
          id: 'id',
          last_updated_timestamp: 'last_updated_timestamp',
          latest_version: 'latest_version',
          latest_version_arn: 'latest_version_arn',
          name: 'name',
          tags: Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['CreationTimestamp'] = stub[:creation_timestamp] unless stub[:creation_timestamp].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['LastUpdatedTimestamp'] = stub[:last_updated_timestamp] unless stub[:last_updated_timestamp].nil?
        data['LatestVersion'] = stub[:latest_version] unless stub[:latest_version].nil?
        data['LatestVersionArn'] = stub[:latest_version_arn] unless stub[:latest_version_arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetDeviceDefinitionVersion
    class GetDeviceDefinitionVersion
      def self.default(visited=[])
        {
          arn: 'arn',
          creation_timestamp: 'creation_timestamp',
          definition: DeviceDefinitionVersion.default(visited),
          id: 'id',
          next_token: 'next_token',
          version: 'version',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['CreationTimestamp'] = stub[:creation_timestamp] unless stub[:creation_timestamp].nil?
        data['Definition'] = Stubs::DeviceDefinitionVersion.stub(stub[:definition]) unless stub[:definition].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for DeviceDefinitionVersion
    class DeviceDefinitionVersion
      def self.default(visited=[])
        return nil if visited.include?('DeviceDefinitionVersion')
        visited = visited + ['DeviceDefinitionVersion']
        {
          devices: List____listOfDevice.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DeviceDefinitionVersion.new
        data = {}
        data['Devices'] = Stubs::List____listOfDevice.stub(stub[:devices]) unless stub[:devices].nil?
        data
      end
    end

    # List Stubber for __listOfDevice
    class List____listOfDevice
      def self.default(visited=[])
        return nil if visited.include?('List____listOfDevice')
        visited = visited + ['List____listOfDevice']
        [
          Device.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Device.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Device
    class Device
      def self.default(visited=[])
        return nil if visited.include?('Device')
        visited = visited + ['Device']
        {
          certificate_arn: 'certificate_arn',
          id: 'id',
          sync_shadow: false,
          thing_arn: 'thing_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::Device.new
        data = {}
        data['CertificateArn'] = stub[:certificate_arn] unless stub[:certificate_arn].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['SyncShadow'] = stub[:sync_shadow] unless stub[:sync_shadow].nil?
        data['ThingArn'] = stub[:thing_arn] unless stub[:thing_arn].nil?
        data
      end
    end

    # Operation Stubber for GetFunctionDefinition
    class GetFunctionDefinition
      def self.default(visited=[])
        {
          arn: 'arn',
          creation_timestamp: 'creation_timestamp',
          id: 'id',
          last_updated_timestamp: 'last_updated_timestamp',
          latest_version: 'latest_version',
          latest_version_arn: 'latest_version_arn',
          name: 'name',
          tags: Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['CreationTimestamp'] = stub[:creation_timestamp] unless stub[:creation_timestamp].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['LastUpdatedTimestamp'] = stub[:last_updated_timestamp] unless stub[:last_updated_timestamp].nil?
        data['LatestVersion'] = stub[:latest_version] unless stub[:latest_version].nil?
        data['LatestVersionArn'] = stub[:latest_version_arn] unless stub[:latest_version_arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetFunctionDefinitionVersion
    class GetFunctionDefinitionVersion
      def self.default(visited=[])
        {
          arn: 'arn',
          creation_timestamp: 'creation_timestamp',
          definition: FunctionDefinitionVersion.default(visited),
          id: 'id',
          next_token: 'next_token',
          version: 'version',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['CreationTimestamp'] = stub[:creation_timestamp] unless stub[:creation_timestamp].nil?
        data['Definition'] = Stubs::FunctionDefinitionVersion.stub(stub[:definition]) unless stub[:definition].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for FunctionDefinitionVersion
    class FunctionDefinitionVersion
      def self.default(visited=[])
        return nil if visited.include?('FunctionDefinitionVersion')
        visited = visited + ['FunctionDefinitionVersion']
        {
          default_config: FunctionDefaultConfig.default(visited),
          functions: List____listOfFunction.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::FunctionDefinitionVersion.new
        data = {}
        data['DefaultConfig'] = Stubs::FunctionDefaultConfig.stub(stub[:default_config]) unless stub[:default_config].nil?
        data['Functions'] = Stubs::List____listOfFunction.stub(stub[:functions]) unless stub[:functions].nil?
        data
      end
    end

    # List Stubber for __listOfFunction
    class List____listOfFunction
      def self.default(visited=[])
        return nil if visited.include?('List____listOfFunction')
        visited = visited + ['List____listOfFunction']
        [
          Function.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Function.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Function
    class Function
      def self.default(visited=[])
        return nil if visited.include?('Function')
        visited = visited + ['Function']
        {
          function_arn: 'function_arn',
          function_configuration: FunctionConfiguration.default(visited),
          id: 'id',
        }
      end

      def self.stub(stub)
        stub ||= Types::Function.new
        data = {}
        data['FunctionArn'] = stub[:function_arn] unless stub[:function_arn].nil?
        data['FunctionConfiguration'] = Stubs::FunctionConfiguration.stub(stub[:function_configuration]) unless stub[:function_configuration].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data
      end
    end

    # Structure Stubber for FunctionConfiguration
    class FunctionConfiguration
      def self.default(visited=[])
        return nil if visited.include?('FunctionConfiguration')
        visited = visited + ['FunctionConfiguration']
        {
          encoding_type: 'encoding_type',
          environment: FunctionConfigurationEnvironment.default(visited),
          exec_args: 'exec_args',
          executable: 'executable',
          memory_size: 1,
          pinned: false,
          timeout: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::FunctionConfiguration.new
        data = {}
        data['EncodingType'] = stub[:encoding_type] unless stub[:encoding_type].nil?
        data['Environment'] = Stubs::FunctionConfigurationEnvironment.stub(stub[:environment]) unless stub[:environment].nil?
        data['ExecArgs'] = stub[:exec_args] unless stub[:exec_args].nil?
        data['Executable'] = stub[:executable] unless stub[:executable].nil?
        data['MemorySize'] = stub[:memory_size] unless stub[:memory_size].nil?
        data['Pinned'] = stub[:pinned] unless stub[:pinned].nil?
        data['Timeout'] = stub[:timeout] unless stub[:timeout].nil?
        data
      end
    end

    # Structure Stubber for FunctionConfigurationEnvironment
    class FunctionConfigurationEnvironment
      def self.default(visited=[])
        return nil if visited.include?('FunctionConfigurationEnvironment')
        visited = visited + ['FunctionConfigurationEnvironment']
        {
          access_sysfs: false,
          execution: FunctionExecutionConfig.default(visited),
          resource_access_policies: List____listOfResourceAccessPolicy.default(visited),
          variables: Map____mapOf__string.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::FunctionConfigurationEnvironment.new
        data = {}
        data['AccessSysfs'] = stub[:access_sysfs] unless stub[:access_sysfs].nil?
        data['Execution'] = Stubs::FunctionExecutionConfig.stub(stub[:execution]) unless stub[:execution].nil?
        data['ResourceAccessPolicies'] = Stubs::List____listOfResourceAccessPolicy.stub(stub[:resource_access_policies]) unless stub[:resource_access_policies].nil?
        data['Variables'] = Stubs::Map____mapOf__string.stub(stub[:variables]) unless stub[:variables].nil?
        data
      end
    end

    # List Stubber for __listOfResourceAccessPolicy
    class List____listOfResourceAccessPolicy
      def self.default(visited=[])
        return nil if visited.include?('List____listOfResourceAccessPolicy')
        visited = visited + ['List____listOfResourceAccessPolicy']
        [
          ResourceAccessPolicy.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ResourceAccessPolicy.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ResourceAccessPolicy
    class ResourceAccessPolicy
      def self.default(visited=[])
        return nil if visited.include?('ResourceAccessPolicy')
        visited = visited + ['ResourceAccessPolicy']
        {
          permission: 'permission',
          resource_id: 'resource_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourceAccessPolicy.new
        data = {}
        data['Permission'] = stub[:permission] unless stub[:permission].nil?
        data['ResourceId'] = stub[:resource_id] unless stub[:resource_id].nil?
        data
      end
    end

    # Structure Stubber for FunctionExecutionConfig
    class FunctionExecutionConfig
      def self.default(visited=[])
        return nil if visited.include?('FunctionExecutionConfig')
        visited = visited + ['FunctionExecutionConfig']
        {
          isolation_mode: 'isolation_mode',
          run_as: FunctionRunAsConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::FunctionExecutionConfig.new
        data = {}
        data['IsolationMode'] = stub[:isolation_mode] unless stub[:isolation_mode].nil?
        data['RunAs'] = Stubs::FunctionRunAsConfig.stub(stub[:run_as]) unless stub[:run_as].nil?
        data
      end
    end

    # Structure Stubber for FunctionRunAsConfig
    class FunctionRunAsConfig
      def self.default(visited=[])
        return nil if visited.include?('FunctionRunAsConfig')
        visited = visited + ['FunctionRunAsConfig']
        {
          gid: 1,
          uid: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::FunctionRunAsConfig.new
        data = {}
        data['Gid'] = stub[:gid] unless stub[:gid].nil?
        data['Uid'] = stub[:uid] unless stub[:uid].nil?
        data
      end
    end

    # Structure Stubber for FunctionDefaultConfig
    class FunctionDefaultConfig
      def self.default(visited=[])
        return nil if visited.include?('FunctionDefaultConfig')
        visited = visited + ['FunctionDefaultConfig']
        {
          execution: FunctionDefaultExecutionConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::FunctionDefaultConfig.new
        data = {}
        data['Execution'] = Stubs::FunctionDefaultExecutionConfig.stub(stub[:execution]) unless stub[:execution].nil?
        data
      end
    end

    # Structure Stubber for FunctionDefaultExecutionConfig
    class FunctionDefaultExecutionConfig
      def self.default(visited=[])
        return nil if visited.include?('FunctionDefaultExecutionConfig')
        visited = visited + ['FunctionDefaultExecutionConfig']
        {
          isolation_mode: 'isolation_mode',
          run_as: FunctionRunAsConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::FunctionDefaultExecutionConfig.new
        data = {}
        data['IsolationMode'] = stub[:isolation_mode] unless stub[:isolation_mode].nil?
        data['RunAs'] = Stubs::FunctionRunAsConfig.stub(stub[:run_as]) unless stub[:run_as].nil?
        data
      end
    end

    # Operation Stubber for GetGroup
    class GetGroup
      def self.default(visited=[])
        {
          arn: 'arn',
          creation_timestamp: 'creation_timestamp',
          id: 'id',
          last_updated_timestamp: 'last_updated_timestamp',
          latest_version: 'latest_version',
          latest_version_arn: 'latest_version_arn',
          name: 'name',
          tags: Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['CreationTimestamp'] = stub[:creation_timestamp] unless stub[:creation_timestamp].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['LastUpdatedTimestamp'] = stub[:last_updated_timestamp] unless stub[:last_updated_timestamp].nil?
        data['LatestVersion'] = stub[:latest_version] unless stub[:latest_version].nil?
        data['LatestVersionArn'] = stub[:latest_version_arn] unless stub[:latest_version_arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetGroupCertificateAuthority
    class GetGroupCertificateAuthority
      def self.default(visited=[])
        {
          group_certificate_authority_arn: 'group_certificate_authority_arn',
          group_certificate_authority_id: 'group_certificate_authority_id',
          pem_encoded_certificate: 'pem_encoded_certificate',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['GroupCertificateAuthorityArn'] = stub[:group_certificate_authority_arn] unless stub[:group_certificate_authority_arn].nil?
        data['GroupCertificateAuthorityId'] = stub[:group_certificate_authority_id] unless stub[:group_certificate_authority_id].nil?
        data['PemEncodedCertificate'] = stub[:pem_encoded_certificate] unless stub[:pem_encoded_certificate].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetGroupCertificateConfiguration
    class GetGroupCertificateConfiguration
      def self.default(visited=[])
        {
          certificate_authority_expiry_in_milliseconds: 'certificate_authority_expiry_in_milliseconds',
          certificate_expiry_in_milliseconds: 'certificate_expiry_in_milliseconds',
          group_id: 'group_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['CertificateAuthorityExpiryInMilliseconds'] = stub[:certificate_authority_expiry_in_milliseconds] unless stub[:certificate_authority_expiry_in_milliseconds].nil?
        data['CertificateExpiryInMilliseconds'] = stub[:certificate_expiry_in_milliseconds] unless stub[:certificate_expiry_in_milliseconds].nil?
        data['GroupId'] = stub[:group_id] unless stub[:group_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetGroupVersion
    class GetGroupVersion
      def self.default(visited=[])
        {
          arn: 'arn',
          creation_timestamp: 'creation_timestamp',
          definition: GroupVersion.default(visited),
          id: 'id',
          version: 'version',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['CreationTimestamp'] = stub[:creation_timestamp] unless stub[:creation_timestamp].nil?
        data['Definition'] = Stubs::GroupVersion.stub(stub[:definition]) unless stub[:definition].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for GroupVersion
    class GroupVersion
      def self.default(visited=[])
        return nil if visited.include?('GroupVersion')
        visited = visited + ['GroupVersion']
        {
          connector_definition_version_arn: 'connector_definition_version_arn',
          core_definition_version_arn: 'core_definition_version_arn',
          device_definition_version_arn: 'device_definition_version_arn',
          function_definition_version_arn: 'function_definition_version_arn',
          logger_definition_version_arn: 'logger_definition_version_arn',
          resource_definition_version_arn: 'resource_definition_version_arn',
          subscription_definition_version_arn: 'subscription_definition_version_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::GroupVersion.new
        data = {}
        data['ConnectorDefinitionVersionArn'] = stub[:connector_definition_version_arn] unless stub[:connector_definition_version_arn].nil?
        data['CoreDefinitionVersionArn'] = stub[:core_definition_version_arn] unless stub[:core_definition_version_arn].nil?
        data['DeviceDefinitionVersionArn'] = stub[:device_definition_version_arn] unless stub[:device_definition_version_arn].nil?
        data['FunctionDefinitionVersionArn'] = stub[:function_definition_version_arn] unless stub[:function_definition_version_arn].nil?
        data['LoggerDefinitionVersionArn'] = stub[:logger_definition_version_arn] unless stub[:logger_definition_version_arn].nil?
        data['ResourceDefinitionVersionArn'] = stub[:resource_definition_version_arn] unless stub[:resource_definition_version_arn].nil?
        data['SubscriptionDefinitionVersionArn'] = stub[:subscription_definition_version_arn] unless stub[:subscription_definition_version_arn].nil?
        data
      end
    end

    # Operation Stubber for GetLoggerDefinition
    class GetLoggerDefinition
      def self.default(visited=[])
        {
          arn: 'arn',
          creation_timestamp: 'creation_timestamp',
          id: 'id',
          last_updated_timestamp: 'last_updated_timestamp',
          latest_version: 'latest_version',
          latest_version_arn: 'latest_version_arn',
          name: 'name',
          tags: Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['CreationTimestamp'] = stub[:creation_timestamp] unless stub[:creation_timestamp].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['LastUpdatedTimestamp'] = stub[:last_updated_timestamp] unless stub[:last_updated_timestamp].nil?
        data['LatestVersion'] = stub[:latest_version] unless stub[:latest_version].nil?
        data['LatestVersionArn'] = stub[:latest_version_arn] unless stub[:latest_version_arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetLoggerDefinitionVersion
    class GetLoggerDefinitionVersion
      def self.default(visited=[])
        {
          arn: 'arn',
          creation_timestamp: 'creation_timestamp',
          definition: LoggerDefinitionVersion.default(visited),
          id: 'id',
          version: 'version',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['CreationTimestamp'] = stub[:creation_timestamp] unless stub[:creation_timestamp].nil?
        data['Definition'] = Stubs::LoggerDefinitionVersion.stub(stub[:definition]) unless stub[:definition].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for LoggerDefinitionVersion
    class LoggerDefinitionVersion
      def self.default(visited=[])
        return nil if visited.include?('LoggerDefinitionVersion')
        visited = visited + ['LoggerDefinitionVersion']
        {
          loggers: List____listOfLogger.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::LoggerDefinitionVersion.new
        data = {}
        data['Loggers'] = Stubs::List____listOfLogger.stub(stub[:loggers]) unless stub[:loggers].nil?
        data
      end
    end

    # List Stubber for __listOfLogger
    class List____listOfLogger
      def self.default(visited=[])
        return nil if visited.include?('List____listOfLogger')
        visited = visited + ['List____listOfLogger']
        [
          Logger.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Logger.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Logger
    class Logger
      def self.default(visited=[])
        return nil if visited.include?('Logger')
        visited = visited + ['Logger']
        {
          component: 'component',
          id: 'id',
          level: 'level',
          space: 1,
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::Logger.new
        data = {}
        data['Component'] = stub[:component] unless stub[:component].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Level'] = stub[:level] unless stub[:level].nil?
        data['Space'] = stub[:space] unless stub[:space].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # Operation Stubber for GetResourceDefinition
    class GetResourceDefinition
      def self.default(visited=[])
        {
          arn: 'arn',
          creation_timestamp: 'creation_timestamp',
          id: 'id',
          last_updated_timestamp: 'last_updated_timestamp',
          latest_version: 'latest_version',
          latest_version_arn: 'latest_version_arn',
          name: 'name',
          tags: Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['CreationTimestamp'] = stub[:creation_timestamp] unless stub[:creation_timestamp].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['LastUpdatedTimestamp'] = stub[:last_updated_timestamp] unless stub[:last_updated_timestamp].nil?
        data['LatestVersion'] = stub[:latest_version] unless stub[:latest_version].nil?
        data['LatestVersionArn'] = stub[:latest_version_arn] unless stub[:latest_version_arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetResourceDefinitionVersion
    class GetResourceDefinitionVersion
      def self.default(visited=[])
        {
          arn: 'arn',
          creation_timestamp: 'creation_timestamp',
          definition: ResourceDefinitionVersion.default(visited),
          id: 'id',
          version: 'version',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['CreationTimestamp'] = stub[:creation_timestamp] unless stub[:creation_timestamp].nil?
        data['Definition'] = Stubs::ResourceDefinitionVersion.stub(stub[:definition]) unless stub[:definition].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ResourceDefinitionVersion
    class ResourceDefinitionVersion
      def self.default(visited=[])
        return nil if visited.include?('ResourceDefinitionVersion')
        visited = visited + ['ResourceDefinitionVersion']
        {
          resources: List____listOfResource.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourceDefinitionVersion.new
        data = {}
        data['Resources'] = Stubs::List____listOfResource.stub(stub[:resources]) unless stub[:resources].nil?
        data
      end
    end

    # List Stubber for __listOfResource
    class List____listOfResource
      def self.default(visited=[])
        return nil if visited.include?('List____listOfResource')
        visited = visited + ['List____listOfResource']
        [
          Resource.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Resource.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Resource
    class Resource
      def self.default(visited=[])
        return nil if visited.include?('Resource')
        visited = visited + ['Resource']
        {
          id: 'id',
          name: 'name',
          resource_data_container: ResourceDataContainer.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Resource.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['ResourceDataContainer'] = Stubs::ResourceDataContainer.stub(stub[:resource_data_container]) unless stub[:resource_data_container].nil?
        data
      end
    end

    # Structure Stubber for ResourceDataContainer
    class ResourceDataContainer
      def self.default(visited=[])
        return nil if visited.include?('ResourceDataContainer')
        visited = visited + ['ResourceDataContainer']
        {
          local_device_resource_data: LocalDeviceResourceData.default(visited),
          local_volume_resource_data: LocalVolumeResourceData.default(visited),
          s3_machine_learning_model_resource_data: S3MachineLearningModelResourceData.default(visited),
          sage_maker_machine_learning_model_resource_data: SageMakerMachineLearningModelResourceData.default(visited),
          secrets_manager_secret_resource_data: SecretsManagerSecretResourceData.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourceDataContainer.new
        data = {}
        data['LocalDeviceResourceData'] = Stubs::LocalDeviceResourceData.stub(stub[:local_device_resource_data]) unless stub[:local_device_resource_data].nil?
        data['LocalVolumeResourceData'] = Stubs::LocalVolumeResourceData.stub(stub[:local_volume_resource_data]) unless stub[:local_volume_resource_data].nil?
        data['S3MachineLearningModelResourceData'] = Stubs::S3MachineLearningModelResourceData.stub(stub[:s3_machine_learning_model_resource_data]) unless stub[:s3_machine_learning_model_resource_data].nil?
        data['SageMakerMachineLearningModelResourceData'] = Stubs::SageMakerMachineLearningModelResourceData.stub(stub[:sage_maker_machine_learning_model_resource_data]) unless stub[:sage_maker_machine_learning_model_resource_data].nil?
        data['SecretsManagerSecretResourceData'] = Stubs::SecretsManagerSecretResourceData.stub(stub[:secrets_manager_secret_resource_data]) unless stub[:secrets_manager_secret_resource_data].nil?
        data
      end
    end

    # Structure Stubber for SecretsManagerSecretResourceData
    class SecretsManagerSecretResourceData
      def self.default(visited=[])
        return nil if visited.include?('SecretsManagerSecretResourceData')
        visited = visited + ['SecretsManagerSecretResourceData']
        {
          arn: 'arn',
          additional_staging_labels_to_download: List____listOf__string.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SecretsManagerSecretResourceData.new
        data = {}
        data['ARN'] = stub[:arn] unless stub[:arn].nil?
        data['AdditionalStagingLabelsToDownload'] = Stubs::List____listOf__string.stub(stub[:additional_staging_labels_to_download]) unless stub[:additional_staging_labels_to_download].nil?
        data
      end
    end

    # List Stubber for __listOf__string
    class List____listOf__string
      def self.default(visited=[])
        return nil if visited.include?('List____listOf__string')
        visited = visited + ['List____listOf__string']
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

    # Structure Stubber for SageMakerMachineLearningModelResourceData
    class SageMakerMachineLearningModelResourceData
      def self.default(visited=[])
        return nil if visited.include?('SageMakerMachineLearningModelResourceData')
        visited = visited + ['SageMakerMachineLearningModelResourceData']
        {
          destination_path: 'destination_path',
          owner_setting: ResourceDownloadOwnerSetting.default(visited),
          sage_maker_job_arn: 'sage_maker_job_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::SageMakerMachineLearningModelResourceData.new
        data = {}
        data['DestinationPath'] = stub[:destination_path] unless stub[:destination_path].nil?
        data['OwnerSetting'] = Stubs::ResourceDownloadOwnerSetting.stub(stub[:owner_setting]) unless stub[:owner_setting].nil?
        data['SageMakerJobArn'] = stub[:sage_maker_job_arn] unless stub[:sage_maker_job_arn].nil?
        data
      end
    end

    # Structure Stubber for ResourceDownloadOwnerSetting
    class ResourceDownloadOwnerSetting
      def self.default(visited=[])
        return nil if visited.include?('ResourceDownloadOwnerSetting')
        visited = visited + ['ResourceDownloadOwnerSetting']
        {
          group_owner: 'group_owner',
          group_permission: 'group_permission',
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourceDownloadOwnerSetting.new
        data = {}
        data['GroupOwner'] = stub[:group_owner] unless stub[:group_owner].nil?
        data['GroupPermission'] = stub[:group_permission] unless stub[:group_permission].nil?
        data
      end
    end

    # Structure Stubber for S3MachineLearningModelResourceData
    class S3MachineLearningModelResourceData
      def self.default(visited=[])
        return nil if visited.include?('S3MachineLearningModelResourceData')
        visited = visited + ['S3MachineLearningModelResourceData']
        {
          destination_path: 'destination_path',
          owner_setting: ResourceDownloadOwnerSetting.default(visited),
          s3_uri: 's3_uri',
        }
      end

      def self.stub(stub)
        stub ||= Types::S3MachineLearningModelResourceData.new
        data = {}
        data['DestinationPath'] = stub[:destination_path] unless stub[:destination_path].nil?
        data['OwnerSetting'] = Stubs::ResourceDownloadOwnerSetting.stub(stub[:owner_setting]) unless stub[:owner_setting].nil?
        data['S3Uri'] = stub[:s3_uri] unless stub[:s3_uri].nil?
        data
      end
    end

    # Structure Stubber for LocalVolumeResourceData
    class LocalVolumeResourceData
      def self.default(visited=[])
        return nil if visited.include?('LocalVolumeResourceData')
        visited = visited + ['LocalVolumeResourceData']
        {
          destination_path: 'destination_path',
          group_owner_setting: GroupOwnerSetting.default(visited),
          source_path: 'source_path',
        }
      end

      def self.stub(stub)
        stub ||= Types::LocalVolumeResourceData.new
        data = {}
        data['DestinationPath'] = stub[:destination_path] unless stub[:destination_path].nil?
        data['GroupOwnerSetting'] = Stubs::GroupOwnerSetting.stub(stub[:group_owner_setting]) unless stub[:group_owner_setting].nil?
        data['SourcePath'] = stub[:source_path] unless stub[:source_path].nil?
        data
      end
    end

    # Structure Stubber for GroupOwnerSetting
    class GroupOwnerSetting
      def self.default(visited=[])
        return nil if visited.include?('GroupOwnerSetting')
        visited = visited + ['GroupOwnerSetting']
        {
          auto_add_group_owner: false,
          group_owner: 'group_owner',
        }
      end

      def self.stub(stub)
        stub ||= Types::GroupOwnerSetting.new
        data = {}
        data['AutoAddGroupOwner'] = stub[:auto_add_group_owner] unless stub[:auto_add_group_owner].nil?
        data['GroupOwner'] = stub[:group_owner] unless stub[:group_owner].nil?
        data
      end
    end

    # Structure Stubber for LocalDeviceResourceData
    class LocalDeviceResourceData
      def self.default(visited=[])
        return nil if visited.include?('LocalDeviceResourceData')
        visited = visited + ['LocalDeviceResourceData']
        {
          group_owner_setting: GroupOwnerSetting.default(visited),
          source_path: 'source_path',
        }
      end

      def self.stub(stub)
        stub ||= Types::LocalDeviceResourceData.new
        data = {}
        data['GroupOwnerSetting'] = Stubs::GroupOwnerSetting.stub(stub[:group_owner_setting]) unless stub[:group_owner_setting].nil?
        data['SourcePath'] = stub[:source_path] unless stub[:source_path].nil?
        data
      end
    end

    # Operation Stubber for GetServiceRoleForAccount
    class GetServiceRoleForAccount
      def self.default(visited=[])
        {
          associated_at: 'associated_at',
          role_arn: 'role_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['AssociatedAt'] = stub[:associated_at] unless stub[:associated_at].nil?
        data['RoleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetSubscriptionDefinition
    class GetSubscriptionDefinition
      def self.default(visited=[])
        {
          arn: 'arn',
          creation_timestamp: 'creation_timestamp',
          id: 'id',
          last_updated_timestamp: 'last_updated_timestamp',
          latest_version: 'latest_version',
          latest_version_arn: 'latest_version_arn',
          name: 'name',
          tags: Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['CreationTimestamp'] = stub[:creation_timestamp] unless stub[:creation_timestamp].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['LastUpdatedTimestamp'] = stub[:last_updated_timestamp] unless stub[:last_updated_timestamp].nil?
        data['LatestVersion'] = stub[:latest_version] unless stub[:latest_version].nil?
        data['LatestVersionArn'] = stub[:latest_version_arn] unless stub[:latest_version_arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetSubscriptionDefinitionVersion
    class GetSubscriptionDefinitionVersion
      def self.default(visited=[])
        {
          arn: 'arn',
          creation_timestamp: 'creation_timestamp',
          definition: SubscriptionDefinitionVersion.default(visited),
          id: 'id',
          next_token: 'next_token',
          version: 'version',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['CreationTimestamp'] = stub[:creation_timestamp] unless stub[:creation_timestamp].nil?
        data['Definition'] = Stubs::SubscriptionDefinitionVersion.stub(stub[:definition]) unless stub[:definition].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for SubscriptionDefinitionVersion
    class SubscriptionDefinitionVersion
      def self.default(visited=[])
        return nil if visited.include?('SubscriptionDefinitionVersion')
        visited = visited + ['SubscriptionDefinitionVersion']
        {
          subscriptions: List____listOfSubscription.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SubscriptionDefinitionVersion.new
        data = {}
        data['Subscriptions'] = Stubs::List____listOfSubscription.stub(stub[:subscriptions]) unless stub[:subscriptions].nil?
        data
      end
    end

    # List Stubber for __listOfSubscription
    class List____listOfSubscription
      def self.default(visited=[])
        return nil if visited.include?('List____listOfSubscription')
        visited = visited + ['List____listOfSubscription']
        [
          Subscription.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Subscription.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Subscription
    class Subscription
      def self.default(visited=[])
        return nil if visited.include?('Subscription')
        visited = visited + ['Subscription']
        {
          id: 'id',
          source: 'source',
          subject: 'subject',
          target: 'target',
        }
      end

      def self.stub(stub)
        stub ||= Types::Subscription.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Source'] = stub[:source] unless stub[:source].nil?
        data['Subject'] = stub[:subject] unless stub[:subject].nil?
        data['Target'] = stub[:target] unless stub[:target].nil?
        data
      end
    end

    # Operation Stubber for GetThingRuntimeConfiguration
    class GetThingRuntimeConfiguration
      def self.default(visited=[])
        {
          runtime_configuration: RuntimeConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['RuntimeConfiguration'] = Stubs::RuntimeConfiguration.stub(stub[:runtime_configuration]) unless stub[:runtime_configuration].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for RuntimeConfiguration
    class RuntimeConfiguration
      def self.default(visited=[])
        return nil if visited.include?('RuntimeConfiguration')
        visited = visited + ['RuntimeConfiguration']
        {
          telemetry_configuration: TelemetryConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RuntimeConfiguration.new
        data = {}
        data['TelemetryConfiguration'] = Stubs::TelemetryConfiguration.stub(stub[:telemetry_configuration]) unless stub[:telemetry_configuration].nil?
        data
      end
    end

    # Structure Stubber for TelemetryConfiguration
    class TelemetryConfiguration
      def self.default(visited=[])
        return nil if visited.include?('TelemetryConfiguration')
        visited = visited + ['TelemetryConfiguration']
        {
          configuration_sync_status: 'configuration_sync_status',
          telemetry: 'telemetry',
        }
      end

      def self.stub(stub)
        stub ||= Types::TelemetryConfiguration.new
        data = {}
        data['ConfigurationSyncStatus'] = stub[:configuration_sync_status] unless stub[:configuration_sync_status].nil?
        data['Telemetry'] = stub[:telemetry] unless stub[:telemetry].nil?
        data
      end
    end

    # Operation Stubber for ListBulkDeploymentDetailedReports
    class ListBulkDeploymentDetailedReports
      def self.default(visited=[])
        {
          deployments: BulkDeploymentResults.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Deployments'] = Stubs::BulkDeploymentResults.stub(stub[:deployments]) unless stub[:deployments].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for BulkDeploymentResults
    class BulkDeploymentResults
      def self.default(visited=[])
        return nil if visited.include?('BulkDeploymentResults')
        visited = visited + ['BulkDeploymentResults']
        [
          BulkDeploymentResult.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::BulkDeploymentResult.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BulkDeploymentResult
    class BulkDeploymentResult
      def self.default(visited=[])
        return nil if visited.include?('BulkDeploymentResult')
        visited = visited + ['BulkDeploymentResult']
        {
          created_at: 'created_at',
          deployment_arn: 'deployment_arn',
          deployment_id: 'deployment_id',
          deployment_status: 'deployment_status',
          deployment_type: 'deployment_type',
          error_details: ErrorDetails.default(visited),
          error_message: 'error_message',
          group_arn: 'group_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::BulkDeploymentResult.new
        data = {}
        data['CreatedAt'] = stub[:created_at] unless stub[:created_at].nil?
        data['DeploymentArn'] = stub[:deployment_arn] unless stub[:deployment_arn].nil?
        data['DeploymentId'] = stub[:deployment_id] unless stub[:deployment_id].nil?
        data['DeploymentStatus'] = stub[:deployment_status] unless stub[:deployment_status].nil?
        data['DeploymentType'] = stub[:deployment_type] unless stub[:deployment_type].nil?
        data['ErrorDetails'] = Stubs::ErrorDetails.stub(stub[:error_details]) unless stub[:error_details].nil?
        data['ErrorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data['GroupArn'] = stub[:group_arn] unless stub[:group_arn].nil?
        data
      end
    end

    # Operation Stubber for ListBulkDeployments
    class ListBulkDeployments
      def self.default(visited=[])
        {
          bulk_deployments: BulkDeployments.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['BulkDeployments'] = Stubs::BulkDeployments.stub(stub[:bulk_deployments]) unless stub[:bulk_deployments].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for BulkDeployments
    class BulkDeployments
      def self.default(visited=[])
        return nil if visited.include?('BulkDeployments')
        visited = visited + ['BulkDeployments']
        [
          BulkDeployment.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::BulkDeployment.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BulkDeployment
    class BulkDeployment
      def self.default(visited=[])
        return nil if visited.include?('BulkDeployment')
        visited = visited + ['BulkDeployment']
        {
          bulk_deployment_arn: 'bulk_deployment_arn',
          bulk_deployment_id: 'bulk_deployment_id',
          created_at: 'created_at',
        }
      end

      def self.stub(stub)
        stub ||= Types::BulkDeployment.new
        data = {}
        data['BulkDeploymentArn'] = stub[:bulk_deployment_arn] unless stub[:bulk_deployment_arn].nil?
        data['BulkDeploymentId'] = stub[:bulk_deployment_id] unless stub[:bulk_deployment_id].nil?
        data['CreatedAt'] = stub[:created_at] unless stub[:created_at].nil?
        data
      end
    end

    # Operation Stubber for ListConnectorDefinitionVersions
    class ListConnectorDefinitionVersions
      def self.default(visited=[])
        {
          next_token: 'next_token',
          versions: List____listOfVersionInformation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['Versions'] = Stubs::List____listOfVersionInformation.stub(stub[:versions]) unless stub[:versions].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfVersionInformation
    class List____listOfVersionInformation
      def self.default(visited=[])
        return nil if visited.include?('List____listOfVersionInformation')
        visited = visited + ['List____listOfVersionInformation']
        [
          VersionInformation.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::VersionInformation.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for VersionInformation
    class VersionInformation
      def self.default(visited=[])
        return nil if visited.include?('VersionInformation')
        visited = visited + ['VersionInformation']
        {
          arn: 'arn',
          creation_timestamp: 'creation_timestamp',
          id: 'id',
          version: 'version',
        }
      end

      def self.stub(stub)
        stub ||= Types::VersionInformation.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['CreationTimestamp'] = stub[:creation_timestamp] unless stub[:creation_timestamp].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        data
      end
    end

    # Operation Stubber for ListConnectorDefinitions
    class ListConnectorDefinitions
      def self.default(visited=[])
        {
          definitions: List____listOfDefinitionInformation.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Definitions'] = Stubs::List____listOfDefinitionInformation.stub(stub[:definitions]) unless stub[:definitions].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfDefinitionInformation
    class List____listOfDefinitionInformation
      def self.default(visited=[])
        return nil if visited.include?('List____listOfDefinitionInformation')
        visited = visited + ['List____listOfDefinitionInformation']
        [
          DefinitionInformation.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DefinitionInformation.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DefinitionInformation
    class DefinitionInformation
      def self.default(visited=[])
        return nil if visited.include?('DefinitionInformation')
        visited = visited + ['DefinitionInformation']
        {
          arn: 'arn',
          creation_timestamp: 'creation_timestamp',
          id: 'id',
          last_updated_timestamp: 'last_updated_timestamp',
          latest_version: 'latest_version',
          latest_version_arn: 'latest_version_arn',
          name: 'name',
          tags: Tags.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DefinitionInformation.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['CreationTimestamp'] = stub[:creation_timestamp] unless stub[:creation_timestamp].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['LastUpdatedTimestamp'] = stub[:last_updated_timestamp] unless stub[:last_updated_timestamp].nil?
        data['LatestVersion'] = stub[:latest_version] unless stub[:latest_version].nil?
        data['LatestVersionArn'] = stub[:latest_version_arn] unless stub[:latest_version_arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Operation Stubber for ListCoreDefinitionVersions
    class ListCoreDefinitionVersions
      def self.default(visited=[])
        {
          next_token: 'next_token',
          versions: List____listOfVersionInformation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['Versions'] = Stubs::List____listOfVersionInformation.stub(stub[:versions]) unless stub[:versions].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListCoreDefinitions
    class ListCoreDefinitions
      def self.default(visited=[])
        {
          definitions: List____listOfDefinitionInformation.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Definitions'] = Stubs::List____listOfDefinitionInformation.stub(stub[:definitions]) unless stub[:definitions].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListDeployments
    class ListDeployments
      def self.default(visited=[])
        {
          deployments: Deployments.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Deployments'] = Stubs::Deployments.stub(stub[:deployments]) unless stub[:deployments].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for Deployments
    class Deployments
      def self.default(visited=[])
        return nil if visited.include?('Deployments')
        visited = visited + ['Deployments']
        [
          Deployment.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Deployment.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Deployment
    class Deployment
      def self.default(visited=[])
        return nil if visited.include?('Deployment')
        visited = visited + ['Deployment']
        {
          created_at: 'created_at',
          deployment_arn: 'deployment_arn',
          deployment_id: 'deployment_id',
          deployment_type: 'deployment_type',
          group_arn: 'group_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::Deployment.new
        data = {}
        data['CreatedAt'] = stub[:created_at] unless stub[:created_at].nil?
        data['DeploymentArn'] = stub[:deployment_arn] unless stub[:deployment_arn].nil?
        data['DeploymentId'] = stub[:deployment_id] unless stub[:deployment_id].nil?
        data['DeploymentType'] = stub[:deployment_type] unless stub[:deployment_type].nil?
        data['GroupArn'] = stub[:group_arn] unless stub[:group_arn].nil?
        data
      end
    end

    # Operation Stubber for ListDeviceDefinitionVersions
    class ListDeviceDefinitionVersions
      def self.default(visited=[])
        {
          next_token: 'next_token',
          versions: List____listOfVersionInformation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['Versions'] = Stubs::List____listOfVersionInformation.stub(stub[:versions]) unless stub[:versions].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListDeviceDefinitions
    class ListDeviceDefinitions
      def self.default(visited=[])
        {
          definitions: List____listOfDefinitionInformation.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Definitions'] = Stubs::List____listOfDefinitionInformation.stub(stub[:definitions]) unless stub[:definitions].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListFunctionDefinitionVersions
    class ListFunctionDefinitionVersions
      def self.default(visited=[])
        {
          next_token: 'next_token',
          versions: List____listOfVersionInformation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['Versions'] = Stubs::List____listOfVersionInformation.stub(stub[:versions]) unless stub[:versions].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListFunctionDefinitions
    class ListFunctionDefinitions
      def self.default(visited=[])
        {
          definitions: List____listOfDefinitionInformation.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Definitions'] = Stubs::List____listOfDefinitionInformation.stub(stub[:definitions]) unless stub[:definitions].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListGroupCertificateAuthorities
    class ListGroupCertificateAuthorities
      def self.default(visited=[])
        {
          group_certificate_authorities: List____listOfGroupCertificateAuthorityProperties.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['GroupCertificateAuthorities'] = Stubs::List____listOfGroupCertificateAuthorityProperties.stub(stub[:group_certificate_authorities]) unless stub[:group_certificate_authorities].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfGroupCertificateAuthorityProperties
    class List____listOfGroupCertificateAuthorityProperties
      def self.default(visited=[])
        return nil if visited.include?('List____listOfGroupCertificateAuthorityProperties')
        visited = visited + ['List____listOfGroupCertificateAuthorityProperties']
        [
          GroupCertificateAuthorityProperties.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::GroupCertificateAuthorityProperties.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for GroupCertificateAuthorityProperties
    class GroupCertificateAuthorityProperties
      def self.default(visited=[])
        return nil if visited.include?('GroupCertificateAuthorityProperties')
        visited = visited + ['GroupCertificateAuthorityProperties']
        {
          group_certificate_authority_arn: 'group_certificate_authority_arn',
          group_certificate_authority_id: 'group_certificate_authority_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::GroupCertificateAuthorityProperties.new
        data = {}
        data['GroupCertificateAuthorityArn'] = stub[:group_certificate_authority_arn] unless stub[:group_certificate_authority_arn].nil?
        data['GroupCertificateAuthorityId'] = stub[:group_certificate_authority_id] unless stub[:group_certificate_authority_id].nil?
        data
      end
    end

    # Operation Stubber for ListGroupVersions
    class ListGroupVersions
      def self.default(visited=[])
        {
          next_token: 'next_token',
          versions: List____listOfVersionInformation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['Versions'] = Stubs::List____listOfVersionInformation.stub(stub[:versions]) unless stub[:versions].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListGroups
    class ListGroups
      def self.default(visited=[])
        {
          groups: List____listOfGroupInformation.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Groups'] = Stubs::List____listOfGroupInformation.stub(stub[:groups]) unless stub[:groups].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfGroupInformation
    class List____listOfGroupInformation
      def self.default(visited=[])
        return nil if visited.include?('List____listOfGroupInformation')
        visited = visited + ['List____listOfGroupInformation']
        [
          GroupInformation.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::GroupInformation.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for GroupInformation
    class GroupInformation
      def self.default(visited=[])
        return nil if visited.include?('GroupInformation')
        visited = visited + ['GroupInformation']
        {
          arn: 'arn',
          creation_timestamp: 'creation_timestamp',
          id: 'id',
          last_updated_timestamp: 'last_updated_timestamp',
          latest_version: 'latest_version',
          latest_version_arn: 'latest_version_arn',
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::GroupInformation.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['CreationTimestamp'] = stub[:creation_timestamp] unless stub[:creation_timestamp].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['LastUpdatedTimestamp'] = stub[:last_updated_timestamp] unless stub[:last_updated_timestamp].nil?
        data['LatestVersion'] = stub[:latest_version] unless stub[:latest_version].nil?
        data['LatestVersionArn'] = stub[:latest_version_arn] unless stub[:latest_version_arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # Operation Stubber for ListLoggerDefinitionVersions
    class ListLoggerDefinitionVersions
      def self.default(visited=[])
        {
          next_token: 'next_token',
          versions: List____listOfVersionInformation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['Versions'] = Stubs::List____listOfVersionInformation.stub(stub[:versions]) unless stub[:versions].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListLoggerDefinitions
    class ListLoggerDefinitions
      def self.default(visited=[])
        {
          definitions: List____listOfDefinitionInformation.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Definitions'] = Stubs::List____listOfDefinitionInformation.stub(stub[:definitions]) unless stub[:definitions].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListResourceDefinitionVersions
    class ListResourceDefinitionVersions
      def self.default(visited=[])
        {
          next_token: 'next_token',
          versions: List____listOfVersionInformation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['Versions'] = Stubs::List____listOfVersionInformation.stub(stub[:versions]) unless stub[:versions].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListResourceDefinitions
    class ListResourceDefinitions
      def self.default(visited=[])
        {
          definitions: List____listOfDefinitionInformation.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Definitions'] = Stubs::List____listOfDefinitionInformation.stub(stub[:definitions]) unless stub[:definitions].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListSubscriptionDefinitionVersions
    class ListSubscriptionDefinitionVersions
      def self.default(visited=[])
        {
          next_token: 'next_token',
          versions: List____listOfVersionInformation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['Versions'] = Stubs::List____listOfVersionInformation.stub(stub[:versions]) unless stub[:versions].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListSubscriptionDefinitions
    class ListSubscriptionDefinitions
      def self.default(visited=[])
        {
          definitions: List____listOfDefinitionInformation.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Definitions'] = Stubs::List____listOfDefinitionInformation.stub(stub[:definitions]) unless stub[:definitions].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ResetDeployments
    class ResetDeployments
      def self.default(visited=[])
        {
          deployment_arn: 'deployment_arn',
          deployment_id: 'deployment_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['DeploymentArn'] = stub[:deployment_arn] unless stub[:deployment_arn].nil?
        data['DeploymentId'] = stub[:deployment_id] unless stub[:deployment_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for StartBulkDeployment
    class StartBulkDeployment
      def self.default(visited=[])
        {
          bulk_deployment_arn: 'bulk_deployment_arn',
          bulk_deployment_id: 'bulk_deployment_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['BulkDeploymentArn'] = stub[:bulk_deployment_arn] unless stub[:bulk_deployment_arn].nil?
        data['BulkDeploymentId'] = stub[:bulk_deployment_id] unless stub[:bulk_deployment_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for StopBulkDeployment
    class StopBulkDeployment
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
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
        http_resp.status = 204
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
        http_resp.status = 204
      end
    end

    # Operation Stubber for UpdateConnectivityInfo
    class UpdateConnectivityInfo
      def self.default(visited=[])
        {
          message: 'message',
          version: 'version',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['message'] = stub[:message] unless stub[:message].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateConnectorDefinition
    class UpdateConnectorDefinition
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateCoreDefinition
    class UpdateCoreDefinition
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateDeviceDefinition
    class UpdateDeviceDefinition
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateFunctionDefinition
    class UpdateFunctionDefinition
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateGroup
    class UpdateGroup
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateGroupCertificateConfiguration
    class UpdateGroupCertificateConfiguration
      def self.default(visited=[])
        {
          certificate_authority_expiry_in_milliseconds: 'certificate_authority_expiry_in_milliseconds',
          certificate_expiry_in_milliseconds: 'certificate_expiry_in_milliseconds',
          group_id: 'group_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['CertificateAuthorityExpiryInMilliseconds'] = stub[:certificate_authority_expiry_in_milliseconds] unless stub[:certificate_authority_expiry_in_milliseconds].nil?
        data['CertificateExpiryInMilliseconds'] = stub[:certificate_expiry_in_milliseconds] unless stub[:certificate_expiry_in_milliseconds].nil?
        data['GroupId'] = stub[:group_id] unless stub[:group_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateLoggerDefinition
    class UpdateLoggerDefinition
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateResourceDefinition
    class UpdateResourceDefinition
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateSubscriptionDefinition
    class UpdateSubscriptionDefinition
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateThingRuntimeConfiguration
    class UpdateThingRuntimeConfiguration
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end
  end
end
