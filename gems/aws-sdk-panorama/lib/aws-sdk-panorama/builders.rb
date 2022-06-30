# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::Panorama
  module Builders

    # Operation Builder for CreateApplicationInstance
    class CreateApplicationInstance
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/application-instances')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['ManifestPayload'] = Builders::ManifestPayload.build(input[:manifest_payload]) unless input[:manifest_payload].nil?
        data['ManifestOverridesPayload'] = Builders::ManifestOverridesPayload.build(input[:manifest_overrides_payload]) unless input[:manifest_overrides_payload].nil?
        data['ApplicationInstanceIdToReplace'] = input[:application_instance_id_to_replace] unless input[:application_instance_id_to_replace].nil?
        data['RuntimeRoleArn'] = input[:runtime_role_arn] unless input[:runtime_role_arn].nil?
        data['DefaultRuntimeContextDevice'] = input[:default_runtime_context_device] unless input[:default_runtime_context_device].nil?
        data['Tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for TagMap
    class TagMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for ManifestOverridesPayload
    class ManifestOverridesPayload
      def self.build(input)
        data = {}
        case input
        when Types::ManifestOverridesPayload::PayloadData
          data['PayloadData'] = input
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::ManifestOverridesPayload"
        end

        data
      end
    end

    # Structure Builder for ManifestPayload
    class ManifestPayload
      def self.build(input)
        data = {}
        case input
        when Types::ManifestPayload::PayloadData
          data['PayloadData'] = input
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::ManifestPayload"
        end

        data
      end
    end

    # Operation Builder for CreateJobForDevices
    class CreateJobForDevices
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/jobs')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['DeviceIds'] = Builders::DeviceIdList.build(input[:device_ids]) unless input[:device_ids].nil?
        data['DeviceJobConfig'] = Builders::DeviceJobConfig.build(input[:device_job_config]) unless input[:device_job_config].nil?
        data['JobType'] = input[:job_type] unless input[:job_type].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for DeviceJobConfig
    class DeviceJobConfig
      def self.build(input)
        data = {}
        data['OTAJobConfig'] = Builders::OTAJobConfig.build(input[:ota_job_config]) unless input[:ota_job_config].nil?
        data
      end
    end

    # Structure Builder for OTAJobConfig
    class OTAJobConfig
      def self.build(input)
        data = {}
        data['ImageVersion'] = input[:image_version] unless input[:image_version].nil?
        data
      end
    end

    # List Builder for DeviceIdList
    class DeviceIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateNodeFromTemplateJob
    class CreateNodeFromTemplateJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/packages/template-job')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['TemplateType'] = input[:template_type] unless input[:template_type].nil?
        data['OutputPackageName'] = input[:output_package_name] unless input[:output_package_name].nil?
        data['OutputPackageVersion'] = input[:output_package_version] unless input[:output_package_version].nil?
        data['NodeName'] = input[:node_name] unless input[:node_name].nil?
        data['NodeDescription'] = input[:node_description] unless input[:node_description].nil?
        data['TemplateParameters'] = Builders::TemplateParametersMap.build(input[:template_parameters]) unless input[:template_parameters].nil?
        data['JobTags'] = Builders::JobTagsList.build(input[:job_tags]) unless input[:job_tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for JobTagsList
    class JobTagsList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::JobResourceTags.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for JobResourceTags
    class JobResourceTags
      def self.build(input)
        data = {}
        data['ResourceType'] = input[:resource_type] unless input[:resource_type].nil?
        data['Tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        data
      end
    end

    # Map Builder for TemplateParametersMap
    class TemplateParametersMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for CreatePackage
    class CreatePackage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/packages')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['PackageName'] = input[:package_name] unless input[:package_name].nil?
        data['Tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreatePackageImportJob
    class CreatePackageImportJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/packages/import-jobs')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['JobType'] = input[:job_type] unless input[:job_type].nil?
        data['InputConfig'] = Builders::PackageImportJobInputConfig.build(input[:input_config]) unless input[:input_config].nil?
        data['OutputConfig'] = Builders::PackageImportJobOutputConfig.build(input[:output_config]) unless input[:output_config].nil?
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        data['JobTags'] = Builders::JobTagsList.build(input[:job_tags]) unless input[:job_tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for PackageImportJobOutputConfig
    class PackageImportJobOutputConfig
      def self.build(input)
        data = {}
        data['PackageVersionOutputConfig'] = Builders::PackageVersionOutputConfig.build(input[:package_version_output_config]) unless input[:package_version_output_config].nil?
        data
      end
    end

    # Structure Builder for PackageVersionOutputConfig
    class PackageVersionOutputConfig
      def self.build(input)
        data = {}
        data['PackageName'] = input[:package_name] unless input[:package_name].nil?
        data['PackageVersion'] = input[:package_version] unless input[:package_version].nil?
        data['MarkLatest'] = input[:mark_latest] unless input[:mark_latest].nil?
        data
      end
    end

    # Structure Builder for PackageImportJobInputConfig
    class PackageImportJobInputConfig
      def self.build(input)
        data = {}
        data['PackageVersionInputConfig'] = Builders::PackageVersionInputConfig.build(input[:package_version_input_config]) unless input[:package_version_input_config].nil?
        data
      end
    end

    # Structure Builder for PackageVersionInputConfig
    class PackageVersionInputConfig
      def self.build(input)
        data = {}
        data['S3Location'] = Builders::S3Location.build(input[:s3_location]) unless input[:s3_location].nil?
        data
      end
    end

    # Structure Builder for S3Location
    class S3Location
      def self.build(input)
        data = {}
        data['Region'] = input[:region] unless input[:region].nil?
        data['BucketName'] = input[:bucket_name] unless input[:bucket_name].nil?
        data['ObjectKey'] = input[:object_key] unless input[:object_key].nil?
        data
      end
    end

    # Operation Builder for DeleteDevice
    class DeleteDevice
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:device_id].to_s.empty?
          raise ArgumentError, "HTTP label :device_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/devices/%<DeviceId>s',
            DeviceId: Hearth::HTTP.uri_escape(input[:device_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeletePackage
    class DeletePackage
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:package_id].to_s.empty?
          raise ArgumentError, "HTTP label :package_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/packages/%<PackageId>s',
            PackageId: Hearth::HTTP.uri_escape(input[:package_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['ForceDelete'] = input[:force_delete].to_s unless input[:force_delete].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeregisterPackageVersion
    class DeregisterPackageVersion
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:package_id].to_s.empty?
          raise ArgumentError, "HTTP label :package_id cannot be nil or empty."
        end
        if input[:package_version].to_s.empty?
          raise ArgumentError, "HTTP label :package_version cannot be nil or empty."
        end
        if input[:patch_version].to_s.empty?
          raise ArgumentError, "HTTP label :patch_version cannot be nil or empty."
        end
        http_req.append_path(format(
            '/packages/%<PackageId>s/versions/%<PackageVersion>s/patch/%<PatchVersion>s',
            PackageId: Hearth::HTTP.uri_escape(input[:package_id].to_s),
            PackageVersion: Hearth::HTTP.uri_escape(input[:package_version].to_s),
            PatchVersion: Hearth::HTTP.uri_escape(input[:patch_version].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['OwnerAccount'] = input[:owner_account].to_s unless input[:owner_account].nil?
        params['UpdatedLatestPatchVersion'] = input[:updated_latest_patch_version].to_s unless input[:updated_latest_patch_version].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeApplicationInstance
    class DescribeApplicationInstance
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:application_instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_instance_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/application-instances/%<ApplicationInstanceId>s',
            ApplicationInstanceId: Hearth::HTTP.uri_escape(input[:application_instance_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeApplicationInstanceDetails
    class DescribeApplicationInstanceDetails
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:application_instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_instance_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/application-instances/%<ApplicationInstanceId>s/details',
            ApplicationInstanceId: Hearth::HTTP.uri_escape(input[:application_instance_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeDevice
    class DescribeDevice
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:device_id].to_s.empty?
          raise ArgumentError, "HTTP label :device_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/devices/%<DeviceId>s',
            DeviceId: Hearth::HTTP.uri_escape(input[:device_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeDeviceJob
    class DescribeDeviceJob
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:job_id].to_s.empty?
          raise ArgumentError, "HTTP label :job_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/jobs/%<JobId>s',
            JobId: Hearth::HTTP.uri_escape(input[:job_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeNode
    class DescribeNode
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:node_id].to_s.empty?
          raise ArgumentError, "HTTP label :node_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/nodes/%<NodeId>s',
            NodeId: Hearth::HTTP.uri_escape(input[:node_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['OwnerAccount'] = input[:owner_account].to_s unless input[:owner_account].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeNodeFromTemplateJob
    class DescribeNodeFromTemplateJob
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:job_id].to_s.empty?
          raise ArgumentError, "HTTP label :job_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/packages/template-job/%<JobId>s',
            JobId: Hearth::HTTP.uri_escape(input[:job_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribePackage
    class DescribePackage
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:package_id].to_s.empty?
          raise ArgumentError, "HTTP label :package_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/packages/metadata/%<PackageId>s',
            PackageId: Hearth::HTTP.uri_escape(input[:package_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribePackageImportJob
    class DescribePackageImportJob
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:job_id].to_s.empty?
          raise ArgumentError, "HTTP label :job_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/packages/import-jobs/%<JobId>s',
            JobId: Hearth::HTTP.uri_escape(input[:job_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribePackageVersion
    class DescribePackageVersion
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:package_id].to_s.empty?
          raise ArgumentError, "HTTP label :package_id cannot be nil or empty."
        end
        if input[:package_version].to_s.empty?
          raise ArgumentError, "HTTP label :package_version cannot be nil or empty."
        end
        http_req.append_path(format(
            '/packages/metadata/%<PackageId>s/versions/%<PackageVersion>s',
            PackageId: Hearth::HTTP.uri_escape(input[:package_id].to_s),
            PackageVersion: Hearth::HTTP.uri_escape(input[:package_version].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['OwnerAccount'] = input[:owner_account].to_s unless input[:owner_account].nil?
        params['PatchVersion'] = input[:patch_version].to_s unless input[:patch_version].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListApplicationInstanceDependencies
    class ListApplicationInstanceDependencies
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:application_instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_instance_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/application-instances/%<ApplicationInstanceId>s/package-dependencies',
            ApplicationInstanceId: Hearth::HTTP.uri_escape(input[:application_instance_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListApplicationInstanceNodeInstances
    class ListApplicationInstanceNodeInstances
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:application_instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_instance_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/application-instances/%<ApplicationInstanceId>s/node-instances',
            ApplicationInstanceId: Hearth::HTTP.uri_escape(input[:application_instance_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListApplicationInstances
    class ListApplicationInstances
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/application-instances')
        params = Hearth::Query::ParamList.new
        params['deviceId'] = input[:device_id].to_s unless input[:device_id].nil?
        params['statusFilter'] = input[:status_filter].to_s unless input[:status_filter].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListDevices
    class ListDevices
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/devices')
        params = Hearth::Query::ParamList.new
        params['NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListDevicesJobs
    class ListDevicesJobs
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/jobs')
        params = Hearth::Query::ParamList.new
        params['DeviceId'] = input[:device_id].to_s unless input[:device_id].nil?
        params['NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListNodeFromTemplateJobs
    class ListNodeFromTemplateJobs
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/packages/template-job')
        params = Hearth::Query::ParamList.new
        params['NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListNodes
    class ListNodes
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/nodes')
        params = Hearth::Query::ParamList.new
        params['category'] = input[:category].to_s unless input[:category].nil?
        params['ownerAccount'] = input[:owner_account].to_s unless input[:owner_account].nil?
        params['packageName'] = input[:package_name].to_s unless input[:package_name].nil?
        params['packageVersion'] = input[:package_version].to_s unless input[:package_version].nil?
        params['patchVersion'] = input[:patch_version].to_s unless input[:patch_version].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListPackageImportJobs
    class ListPackageImportJobs
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/packages/import-jobs')
        params = Hearth::Query::ParamList.new
        params['NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListPackages
    class ListPackages
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/packages')
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ProvisionDevice
    class ProvisionDevice
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/devices')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        data['NetworkingConfiguration'] = Builders::NetworkPayload.build(input[:networking_configuration]) unless input[:networking_configuration].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for NetworkPayload
    class NetworkPayload
      def self.build(input)
        data = {}
        data['Ethernet0'] = Builders::EthernetPayload.build(input[:ethernet0]) unless input[:ethernet0].nil?
        data['Ethernet1'] = Builders::EthernetPayload.build(input[:ethernet1]) unless input[:ethernet1].nil?
        data['Ntp'] = Builders::NtpPayload.build(input[:ntp]) unless input[:ntp].nil?
        data
      end
    end

    # Structure Builder for NtpPayload
    class NtpPayload
      def self.build(input)
        data = {}
        data['NtpServers'] = Builders::NtpServerList.build(input[:ntp_servers]) unless input[:ntp_servers].nil?
        data
      end
    end

    # List Builder for NtpServerList
    class NtpServerList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for EthernetPayload
    class EthernetPayload
      def self.build(input)
        data = {}
        data['ConnectionType'] = input[:connection_type] unless input[:connection_type].nil?
        data['StaticIpConnectionInfo'] = Builders::StaticIpConnectionInfo.build(input[:static_ip_connection_info]) unless input[:static_ip_connection_info].nil?
        data
      end
    end

    # Structure Builder for StaticIpConnectionInfo
    class StaticIpConnectionInfo
      def self.build(input)
        data = {}
        data['IpAddress'] = input[:ip_address] unless input[:ip_address].nil?
        data['Mask'] = input[:mask] unless input[:mask].nil?
        data['Dns'] = Builders::DnsList.build(input[:dns]) unless input[:dns].nil?
        data['DefaultGateway'] = input[:default_gateway] unless input[:default_gateway].nil?
        data
      end
    end

    # List Builder for DnsList
    class DnsList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for RegisterPackageVersion
    class RegisterPackageVersion
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:package_id].to_s.empty?
          raise ArgumentError, "HTTP label :package_id cannot be nil or empty."
        end
        if input[:package_version].to_s.empty?
          raise ArgumentError, "HTTP label :package_version cannot be nil or empty."
        end
        if input[:patch_version].to_s.empty?
          raise ArgumentError, "HTTP label :patch_version cannot be nil or empty."
        end
        http_req.append_path(format(
            '/packages/%<PackageId>s/versions/%<PackageVersion>s/patch/%<PatchVersion>s',
            PackageId: Hearth::HTTP.uri_escape(input[:package_id].to_s),
            PackageVersion: Hearth::HTTP.uri_escape(input[:package_version].to_s),
            PatchVersion: Hearth::HTTP.uri_escape(input[:patch_version].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['OwnerAccount'] = input[:owner_account] unless input[:owner_account].nil?
        data['MarkLatest'] = input[:mark_latest] unless input[:mark_latest].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RemoveApplicationInstance
    class RemoveApplicationInstance
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:application_instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_instance_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/application-instances/%<ApplicationInstanceId>s',
            ApplicationInstanceId: Hearth::HTTP.uri_escape(input[:application_instance_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        unless input[:tag_keys].nil? || input[:tag_keys].empty?
          params['tagKeys'] = input[:tag_keys].map do |value|
            value.to_s unless value.nil?
          end
        end
        http_req.append_query_params(params)
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

    # Operation Builder for UpdateDeviceMetadata
    class UpdateDeviceMetadata
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:device_id].to_s.empty?
          raise ArgumentError, "HTTP label :device_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/devices/%<DeviceId>s',
            DeviceId: Hearth::HTTP.uri_escape(input[:device_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Description'] = input[:description] unless input[:description].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
