# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Panorama
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module AlternateSoftwareMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AlternateSoftwareMetadata, context: context)
        type = Types::AlternateSoftwareMetadata.new
        type.version = params[:version]
        type
      end
    end

    module AlternateSoftwares
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AlternateSoftwareMetadata.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ApplicationInstance
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApplicationInstance, context: context)
        type = Types::ApplicationInstance.new
        type.name = params[:name]
        type.application_instance_id = params[:application_instance_id]
        type.default_runtime_context_device = params[:default_runtime_context_device]
        type.default_runtime_context_device_name = params[:default_runtime_context_device_name]
        type.description = params[:description]
        type.status = params[:status]
        type.health_status = params[:health_status]
        type.status_description = params[:status_description]
        type.created_time = params[:created_time]
        type.arn = params[:arn]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ApplicationInstances
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ApplicationInstance.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictException, context: context)
        type = Types::ConflictException.new
        type.message = params[:message]
        type.resource_id = params[:resource_id]
        type.resource_type = params[:resource_type]
        type.error_id = params[:error_id]
        type.error_arguments = ConflictExceptionErrorArgumentList.build(params[:error_arguments], context: "#{context}[:error_arguments]") unless params[:error_arguments].nil?
        type
      end
    end

    module ConflictExceptionErrorArgument
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictExceptionErrorArgument, context: context)
        type = Types::ConflictExceptionErrorArgument.new
        type.name = params[:name]
        type.value = params[:value]
        type
      end
    end

    module ConflictExceptionErrorArgumentList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ConflictExceptionErrorArgument.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CreateApplicationInstanceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateApplicationInstanceInput, context: context)
        type = Types::CreateApplicationInstanceInput.new
        type.name = params[:name]
        type.description = params[:description]
        type.manifest_payload = ManifestPayload.build(params[:manifest_payload], context: "#{context}[:manifest_payload]") unless params[:manifest_payload].nil?
        type.manifest_overrides_payload = ManifestOverridesPayload.build(params[:manifest_overrides_payload], context: "#{context}[:manifest_overrides_payload]") unless params[:manifest_overrides_payload].nil?
        type.application_instance_id_to_replace = params[:application_instance_id_to_replace]
        type.runtime_role_arn = params[:runtime_role_arn]
        type.default_runtime_context_device = params[:default_runtime_context_device]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateApplicationInstanceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateApplicationInstanceOutput, context: context)
        type = Types::CreateApplicationInstanceOutput.new
        type.application_instance_id = params[:application_instance_id]
        type
      end
    end

    module CreateJobForDevicesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateJobForDevicesInput, context: context)
        type = Types::CreateJobForDevicesInput.new
        type.device_ids = DeviceIdList.build(params[:device_ids], context: "#{context}[:device_ids]") unless params[:device_ids].nil?
        type.device_job_config = DeviceJobConfig.build(params[:device_job_config], context: "#{context}[:device_job_config]") unless params[:device_job_config].nil?
        type.job_type = params[:job_type]
        type
      end
    end

    module CreateJobForDevicesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateJobForDevicesOutput, context: context)
        type = Types::CreateJobForDevicesOutput.new
        type.jobs = JobList.build(params[:jobs], context: "#{context}[:jobs]") unless params[:jobs].nil?
        type
      end
    end

    module CreateNodeFromTemplateJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateNodeFromTemplateJobInput, context: context)
        type = Types::CreateNodeFromTemplateJobInput.new
        type.template_type = params[:template_type]
        type.output_package_name = params[:output_package_name]
        type.output_package_version = params[:output_package_version]
        type.node_name = params[:node_name]
        type.node_description = params[:node_description]
        type.template_parameters = TemplateParametersMap.build(params[:template_parameters], context: "#{context}[:template_parameters]") unless params[:template_parameters].nil?
        type.job_tags = JobTagsList.build(params[:job_tags], context: "#{context}[:job_tags]") unless params[:job_tags].nil?
        type
      end
    end

    module CreateNodeFromTemplateJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateNodeFromTemplateJobOutput, context: context)
        type = Types::CreateNodeFromTemplateJobOutput.new
        type.job_id = params[:job_id]
        type
      end
    end

    module CreatePackageImportJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePackageImportJobInput, context: context)
        type = Types::CreatePackageImportJobInput.new
        type.job_type = params[:job_type]
        type.input_config = PackageImportJobInputConfig.build(params[:input_config], context: "#{context}[:input_config]") unless params[:input_config].nil?
        type.output_config = PackageImportJobOutputConfig.build(params[:output_config], context: "#{context}[:output_config]") unless params[:output_config].nil?
        type.client_token = params[:client_token]
        type.job_tags = JobTagsList.build(params[:job_tags], context: "#{context}[:job_tags]") unless params[:job_tags].nil?
        type
      end
    end

    module CreatePackageImportJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePackageImportJobOutput, context: context)
        type = Types::CreatePackageImportJobOutput.new
        type.job_id = params[:job_id]
        type
      end
    end

    module CreatePackageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePackageInput, context: context)
        type = Types::CreatePackageInput.new
        type.package_name = params[:package_name]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreatePackageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePackageOutput, context: context)
        type = Types::CreatePackageOutput.new
        type.package_id = params[:package_id]
        type.arn = params[:arn]
        type.storage_location = StorageLocation.build(params[:storage_location], context: "#{context}[:storage_location]") unless params[:storage_location].nil?
        type
      end
    end

    module DeleteDeviceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDeviceInput, context: context)
        type = Types::DeleteDeviceInput.new
        type.device_id = params[:device_id]
        type
      end
    end

    module DeleteDeviceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDeviceOutput, context: context)
        type = Types::DeleteDeviceOutput.new
        type.device_id = params[:device_id]
        type
      end
    end

    module DeletePackageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePackageInput, context: context)
        type = Types::DeletePackageInput.new
        type.package_id = params[:package_id]
        type.force_delete = params[:force_delete]
        type
      end
    end

    module DeletePackageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePackageOutput, context: context)
        type = Types::DeletePackageOutput.new
        type
      end
    end

    module DeregisterPackageVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeregisterPackageVersionInput, context: context)
        type = Types::DeregisterPackageVersionInput.new
        type.owner_account = params[:owner_account]
        type.package_id = params[:package_id]
        type.package_version = params[:package_version]
        type.patch_version = params[:patch_version]
        type.updated_latest_patch_version = params[:updated_latest_patch_version]
        type
      end
    end

    module DeregisterPackageVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeregisterPackageVersionOutput, context: context)
        type = Types::DeregisterPackageVersionOutput.new
        type
      end
    end

    module DescribeApplicationInstanceDetailsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeApplicationInstanceDetailsInput, context: context)
        type = Types::DescribeApplicationInstanceDetailsInput.new
        type.application_instance_id = params[:application_instance_id]
        type
      end
    end

    module DescribeApplicationInstanceDetailsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeApplicationInstanceDetailsOutput, context: context)
        type = Types::DescribeApplicationInstanceDetailsOutput.new
        type.name = params[:name]
        type.description = params[:description]
        type.default_runtime_context_device = params[:default_runtime_context_device]
        type.manifest_payload = ManifestPayload.build(params[:manifest_payload], context: "#{context}[:manifest_payload]") unless params[:manifest_payload].nil?
        type.manifest_overrides_payload = ManifestOverridesPayload.build(params[:manifest_overrides_payload], context: "#{context}[:manifest_overrides_payload]") unless params[:manifest_overrides_payload].nil?
        type.application_instance_id_to_replace = params[:application_instance_id_to_replace]
        type.created_time = params[:created_time]
        type.application_instance_id = params[:application_instance_id]
        type
      end
    end

    module DescribeApplicationInstanceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeApplicationInstanceInput, context: context)
        type = Types::DescribeApplicationInstanceInput.new
        type.application_instance_id = params[:application_instance_id]
        type
      end
    end

    module DescribeApplicationInstanceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeApplicationInstanceOutput, context: context)
        type = Types::DescribeApplicationInstanceOutput.new
        type.name = params[:name]
        type.description = params[:description]
        type.default_runtime_context_device = params[:default_runtime_context_device]
        type.default_runtime_context_device_name = params[:default_runtime_context_device_name]
        type.application_instance_id_to_replace = params[:application_instance_id_to_replace]
        type.runtime_role_arn = params[:runtime_role_arn]
        type.status = params[:status]
        type.health_status = params[:health_status]
        type.status_description = params[:status_description]
        type.created_time = params[:created_time]
        type.last_updated_time = params[:last_updated_time]
        type.application_instance_id = params[:application_instance_id]
        type.arn = params[:arn]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module DescribeDeviceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDeviceInput, context: context)
        type = Types::DescribeDeviceInput.new
        type.device_id = params[:device_id]
        type
      end
    end

    module DescribeDeviceJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDeviceJobInput, context: context)
        type = Types::DescribeDeviceJobInput.new
        type.job_id = params[:job_id]
        type
      end
    end

    module DescribeDeviceJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDeviceJobOutput, context: context)
        type = Types::DescribeDeviceJobOutput.new
        type.job_id = params[:job_id]
        type.device_id = params[:device_id]
        type.device_arn = params[:device_arn]
        type.device_name = params[:device_name]
        type.device_type = params[:device_type]
        type.image_version = params[:image_version]
        type.status = params[:status]
        type.created_time = params[:created_time]
        type
      end
    end

    module DescribeDeviceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDeviceOutput, context: context)
        type = Types::DescribeDeviceOutput.new
        type.device_id = params[:device_id]
        type.name = params[:name]
        type.arn = params[:arn]
        type.description = params[:description]
        type.type = params[:type]
        type.device_connection_status = params[:device_connection_status]
        type.created_time = params[:created_time]
        type.provisioning_status = params[:provisioning_status]
        type.latest_software = params[:latest_software]
        type.current_software = params[:current_software]
        type.serial_number = params[:serial_number]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.networking_configuration = NetworkPayload.build(params[:networking_configuration], context: "#{context}[:networking_configuration]") unless params[:networking_configuration].nil?
        type.current_networking_status = NetworkStatus.build(params[:current_networking_status], context: "#{context}[:current_networking_status]") unless params[:current_networking_status].nil?
        type.lease_expiration_time = params[:lease_expiration_time]
        type.alternate_softwares = AlternateSoftwares.build(params[:alternate_softwares], context: "#{context}[:alternate_softwares]") unless params[:alternate_softwares].nil?
        type.latest_alternate_software = params[:latest_alternate_software]
        type.brand = params[:brand]
        type
      end
    end

    module DescribeNodeFromTemplateJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeNodeFromTemplateJobInput, context: context)
        type = Types::DescribeNodeFromTemplateJobInput.new
        type.job_id = params[:job_id]
        type
      end
    end

    module DescribeNodeFromTemplateJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeNodeFromTemplateJobOutput, context: context)
        type = Types::DescribeNodeFromTemplateJobOutput.new
        type.job_id = params[:job_id]
        type.status = params[:status]
        type.status_message = params[:status_message]
        type.created_time = params[:created_time]
        type.last_updated_time = params[:last_updated_time]
        type.output_package_name = params[:output_package_name]
        type.output_package_version = params[:output_package_version]
        type.node_name = params[:node_name]
        type.node_description = params[:node_description]
        type.template_type = params[:template_type]
        type.template_parameters = TemplateParametersMap.build(params[:template_parameters], context: "#{context}[:template_parameters]") unless params[:template_parameters].nil?
        type.job_tags = JobTagsList.build(params[:job_tags], context: "#{context}[:job_tags]") unless params[:job_tags].nil?
        type
      end
    end

    module DescribeNodeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeNodeInput, context: context)
        type = Types::DescribeNodeInput.new
        type.node_id = params[:node_id]
        type.owner_account = params[:owner_account]
        type
      end
    end

    module DescribeNodeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeNodeOutput, context: context)
        type = Types::DescribeNodeOutput.new
        type.node_id = params[:node_id]
        type.name = params[:name]
        type.category = params[:category]
        type.owner_account = params[:owner_account]
        type.package_name = params[:package_name]
        type.package_id = params[:package_id]
        type.package_arn = params[:package_arn]
        type.package_version = params[:package_version]
        type.patch_version = params[:patch_version]
        type.node_interface = NodeInterface.build(params[:node_interface], context: "#{context}[:node_interface]") unless params[:node_interface].nil?
        type.asset_name = params[:asset_name]
        type.description = params[:description]
        type.created_time = params[:created_time]
        type.last_updated_time = params[:last_updated_time]
        type
      end
    end

    module DescribePackageImportJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePackageImportJobInput, context: context)
        type = Types::DescribePackageImportJobInput.new
        type.job_id = params[:job_id]
        type
      end
    end

    module DescribePackageImportJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePackageImportJobOutput, context: context)
        type = Types::DescribePackageImportJobOutput.new
        type.job_id = params[:job_id]
        type.client_token = params[:client_token]
        type.job_type = params[:job_type]
        type.input_config = PackageImportJobInputConfig.build(params[:input_config], context: "#{context}[:input_config]") unless params[:input_config].nil?
        type.output_config = PackageImportJobOutputConfig.build(params[:output_config], context: "#{context}[:output_config]") unless params[:output_config].nil?
        type.output = PackageImportJobOutput.build(params[:output], context: "#{context}[:output]") unless params[:output].nil?
        type.created_time = params[:created_time]
        type.last_updated_time = params[:last_updated_time]
        type.status = params[:status]
        type.status_message = params[:status_message]
        type.job_tags = JobTagsList.build(params[:job_tags], context: "#{context}[:job_tags]") unless params[:job_tags].nil?
        type
      end
    end

    module DescribePackageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePackageInput, context: context)
        type = Types::DescribePackageInput.new
        type.package_id = params[:package_id]
        type
      end
    end

    module DescribePackageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePackageOutput, context: context)
        type = Types::DescribePackageOutput.new
        type.package_id = params[:package_id]
        type.package_name = params[:package_name]
        type.arn = params[:arn]
        type.storage_location = StorageLocation.build(params[:storage_location], context: "#{context}[:storage_location]") unless params[:storage_location].nil?
        type.read_access_principal_arns = PrincipalArnsList.build(params[:read_access_principal_arns], context: "#{context}[:read_access_principal_arns]") unless params[:read_access_principal_arns].nil?
        type.write_access_principal_arns = PrincipalArnsList.build(params[:write_access_principal_arns], context: "#{context}[:write_access_principal_arns]") unless params[:write_access_principal_arns].nil?
        type.created_time = params[:created_time]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module DescribePackageVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePackageVersionInput, context: context)
        type = Types::DescribePackageVersionInput.new
        type.owner_account = params[:owner_account]
        type.package_id = params[:package_id]
        type.package_version = params[:package_version]
        type.patch_version = params[:patch_version]
        type
      end
    end

    module DescribePackageVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePackageVersionOutput, context: context)
        type = Types::DescribePackageVersionOutput.new
        type.owner_account = params[:owner_account]
        type.package_id = params[:package_id]
        type.package_arn = params[:package_arn]
        type.package_name = params[:package_name]
        type.package_version = params[:package_version]
        type.patch_version = params[:patch_version]
        type.is_latest_patch = params[:is_latest_patch]
        type.status = params[:status]
        type.status_description = params[:status_description]
        type.registered_time = params[:registered_time]
        type
      end
    end

    module Device
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Device, context: context)
        type = Types::Device.new
        type.device_id = params[:device_id]
        type.name = params[:name]
        type.created_time = params[:created_time]
        type.provisioning_status = params[:provisioning_status]
        type.last_updated_time = params[:last_updated_time]
        type.lease_expiration_time = params[:lease_expiration_time]
        type.brand = params[:brand]
        type
      end
    end

    module DeviceIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module DeviceJob
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeviceJob, context: context)
        type = Types::DeviceJob.new
        type.device_name = params[:device_name]
        type.device_id = params[:device_id]
        type.job_id = params[:job_id]
        type.created_time = params[:created_time]
        type
      end
    end

    module DeviceJobConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeviceJobConfig, context: context)
        type = Types::DeviceJobConfig.new
        type.ota_job_config = OTAJobConfig.build(params[:ota_job_config], context: "#{context}[:ota_job_config]") unless params[:ota_job_config].nil?
        type
      end
    end

    module DeviceJobList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DeviceJob.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DeviceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Device.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DnsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module EthernetPayload
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EthernetPayload, context: context)
        type = Types::EthernetPayload.new
        type.connection_type = params[:connection_type]
        type.static_ip_connection_info = StaticIpConnectionInfo.build(params[:static_ip_connection_info], context: "#{context}[:static_ip_connection_info]") unless params[:static_ip_connection_info].nil?
        type
      end
    end

    module EthernetStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EthernetStatus, context: context)
        type = Types::EthernetStatus.new
        type.ip_address = params[:ip_address]
        type.connection_status = params[:connection_status]
        type.hw_address = params[:hw_address]
        type
      end
    end

    module InputPortList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << NodeInputPort.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InternalServerException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerException, context: context)
        type = Types::InternalServerException.new
        type.message = params[:message]
        type.retry_after_seconds = params[:retry_after_seconds]
        type
      end
    end

    module Job
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Job, context: context)
        type = Types::Job.new
        type.job_id = params[:job_id]
        type.device_id = params[:device_id]
        type
      end
    end

    module JobList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Job.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module JobResourceTags
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JobResourceTags, context: context)
        type = Types::JobResourceTags.new
        type.resource_type = params[:resource_type]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module JobTagsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << JobResourceTags.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListApplicationInstanceDependenciesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListApplicationInstanceDependenciesInput, context: context)
        type = Types::ListApplicationInstanceDependenciesInput.new
        type.application_instance_id = params[:application_instance_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListApplicationInstanceDependenciesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListApplicationInstanceDependenciesOutput, context: context)
        type = Types::ListApplicationInstanceDependenciesOutput.new
        type.package_objects = PackageObjects.build(params[:package_objects], context: "#{context}[:package_objects]") unless params[:package_objects].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListApplicationInstanceNodeInstancesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListApplicationInstanceNodeInstancesInput, context: context)
        type = Types::ListApplicationInstanceNodeInstancesInput.new
        type.application_instance_id = params[:application_instance_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListApplicationInstanceNodeInstancesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListApplicationInstanceNodeInstancesOutput, context: context)
        type = Types::ListApplicationInstanceNodeInstancesOutput.new
        type.node_instances = NodeInstances.build(params[:node_instances], context: "#{context}[:node_instances]") unless params[:node_instances].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListApplicationInstancesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListApplicationInstancesInput, context: context)
        type = Types::ListApplicationInstancesInput.new
        type.device_id = params[:device_id]
        type.status_filter = params[:status_filter]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListApplicationInstancesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListApplicationInstancesOutput, context: context)
        type = Types::ListApplicationInstancesOutput.new
        type.application_instances = ApplicationInstances.build(params[:application_instances], context: "#{context}[:application_instances]") unless params[:application_instances].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDevicesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDevicesInput, context: context)
        type = Types::ListDevicesInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListDevicesJobsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDevicesJobsInput, context: context)
        type = Types::ListDevicesJobsInput.new
        type.device_id = params[:device_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListDevicesJobsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDevicesJobsOutput, context: context)
        type = Types::ListDevicesJobsOutput.new
        type.device_jobs = DeviceJobList.build(params[:device_jobs], context: "#{context}[:device_jobs]") unless params[:device_jobs].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDevicesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDevicesOutput, context: context)
        type = Types::ListDevicesOutput.new
        type.devices = DeviceList.build(params[:devices], context: "#{context}[:devices]") unless params[:devices].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListNodeFromTemplateJobsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListNodeFromTemplateJobsInput, context: context)
        type = Types::ListNodeFromTemplateJobsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListNodeFromTemplateJobsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListNodeFromTemplateJobsOutput, context: context)
        type = Types::ListNodeFromTemplateJobsOutput.new
        type.node_from_template_jobs = NodeFromTemplateJobList.build(params[:node_from_template_jobs], context: "#{context}[:node_from_template_jobs]") unless params[:node_from_template_jobs].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListNodesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListNodesInput, context: context)
        type = Types::ListNodesInput.new
        type.category = params[:category]
        type.owner_account = params[:owner_account]
        type.package_name = params[:package_name]
        type.package_version = params[:package_version]
        type.patch_version = params[:patch_version]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListNodesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListNodesOutput, context: context)
        type = Types::ListNodesOutput.new
        type.nodes = NodesList.build(params[:nodes], context: "#{context}[:nodes]") unless params[:nodes].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListPackageImportJobsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPackageImportJobsInput, context: context)
        type = Types::ListPackageImportJobsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListPackageImportJobsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPackageImportJobsOutput, context: context)
        type = Types::ListPackageImportJobsOutput.new
        type.package_import_jobs = PackageImportJobList.build(params[:package_import_jobs], context: "#{context}[:package_import_jobs]") unless params[:package_import_jobs].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListPackagesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPackagesInput, context: context)
        type = Types::ListPackagesInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListPackagesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPackagesOutput, context: context)
        type = Types::ListPackagesOutput.new
        type.packages = PackageList.build(params[:packages], context: "#{context}[:packages]") unless params[:packages].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ManifestOverridesPayload
      def self.build(params, context: '')
        return params if params.is_a?(Types::ManifestOverridesPayload)
        Hearth::Validator.validate!(params, ::Hash, Types::ManifestOverridesPayload, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :payload_data
          Types::ManifestOverridesPayload::PayloadData.new(
            params[:payload_data]
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :payload_data set"
        end
      end
    end

    module ManifestPayload
      def self.build(params, context: '')
        return params if params.is_a?(Types::ManifestPayload)
        Hearth::Validator.validate!(params, ::Hash, Types::ManifestPayload, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :payload_data
          Types::ManifestPayload::PayloadData.new(
            params[:payload_data]
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :payload_data set"
        end
      end
    end

    module NetworkPayload
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NetworkPayload, context: context)
        type = Types::NetworkPayload.new
        type.ethernet0 = EthernetPayload.build(params[:ethernet0], context: "#{context}[:ethernet0]") unless params[:ethernet0].nil?
        type.ethernet1 = EthernetPayload.build(params[:ethernet1], context: "#{context}[:ethernet1]") unless params[:ethernet1].nil?
        type.ntp = NtpPayload.build(params[:ntp], context: "#{context}[:ntp]") unless params[:ntp].nil?
        type
      end
    end

    module NetworkStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NetworkStatus, context: context)
        type = Types::NetworkStatus.new
        type.ethernet0_status = EthernetStatus.build(params[:ethernet0_status], context: "#{context}[:ethernet0_status]") unless params[:ethernet0_status].nil?
        type.ethernet1_status = EthernetStatus.build(params[:ethernet1_status], context: "#{context}[:ethernet1_status]") unless params[:ethernet1_status].nil?
        type.ntp_status = NtpStatus.build(params[:ntp_status], context: "#{context}[:ntp_status]") unless params[:ntp_status].nil?
        type.last_updated_time = params[:last_updated_time]
        type
      end
    end

    module Node
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Node, context: context)
        type = Types::Node.new
        type.node_id = params[:node_id]
        type.name = params[:name]
        type.category = params[:category]
        type.owner_account = params[:owner_account]
        type.package_name = params[:package_name]
        type.package_id = params[:package_id]
        type.package_arn = params[:package_arn]
        type.package_version = params[:package_version]
        type.patch_version = params[:patch_version]
        type.description = params[:description]
        type.created_time = params[:created_time]
        type
      end
    end

    module NodeFromTemplateJob
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NodeFromTemplateJob, context: context)
        type = Types::NodeFromTemplateJob.new
        type.job_id = params[:job_id]
        type.template_type = params[:template_type]
        type.status = params[:status]
        type.status_message = params[:status_message]
        type.created_time = params[:created_time]
        type.node_name = params[:node_name]
        type
      end
    end

    module NodeFromTemplateJobList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << NodeFromTemplateJob.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module NodeInputPort
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NodeInputPort, context: context)
        type = Types::NodeInputPort.new
        type.name = params[:name]
        type.description = params[:description]
        type.type = params[:type]
        type.default_value = params[:default_value]
        type.max_connections = params[:max_connections]
        type
      end
    end

    module NodeInstance
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NodeInstance, context: context)
        type = Types::NodeInstance.new
        type.node_instance_id = params[:node_instance_id]
        type.node_id = params[:node_id]
        type.package_name = params[:package_name]
        type.package_version = params[:package_version]
        type.package_patch_version = params[:package_patch_version]
        type.node_name = params[:node_name]
        type.current_status = params[:current_status]
        type
      end
    end

    module NodeInstances
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << NodeInstance.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module NodeInterface
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NodeInterface, context: context)
        type = Types::NodeInterface.new
        type.inputs = InputPortList.build(params[:inputs], context: "#{context}[:inputs]") unless params[:inputs].nil?
        type.outputs = OutputPortList.build(params[:outputs], context: "#{context}[:outputs]") unless params[:outputs].nil?
        type
      end
    end

    module NodeOutputPort
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NodeOutputPort, context: context)
        type = Types::NodeOutputPort.new
        type.name = params[:name]
        type.description = params[:description]
        type.type = params[:type]
        type
      end
    end

    module NodesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Node.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module NtpPayload
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NtpPayload, context: context)
        type = Types::NtpPayload.new
        type.ntp_servers = NtpServerList.build(params[:ntp_servers], context: "#{context}[:ntp_servers]") unless params[:ntp_servers].nil?
        type
      end
    end

    module NtpServerList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module NtpStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NtpStatus, context: context)
        type = Types::NtpStatus.new
        type.connection_status = params[:connection_status]
        type.ip_address = params[:ip_address]
        type.ntp_server_name = params[:ntp_server_name]
        type
      end
    end

    module OTAJobConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OTAJobConfig, context: context)
        type = Types::OTAJobConfig.new
        type.image_version = params[:image_version]
        type
      end
    end

    module OutPutS3Location
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OutPutS3Location, context: context)
        type = Types::OutPutS3Location.new
        type.bucket_name = params[:bucket_name]
        type.object_key = params[:object_key]
        type
      end
    end

    module OutputPortList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << NodeOutputPort.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PackageImportJob
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PackageImportJob, context: context)
        type = Types::PackageImportJob.new
        type.job_id = params[:job_id]
        type.job_type = params[:job_type]
        type.status = params[:status]
        type.status_message = params[:status_message]
        type.created_time = params[:created_time]
        type.last_updated_time = params[:last_updated_time]
        type
      end
    end

    module PackageImportJobInputConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PackageImportJobInputConfig, context: context)
        type = Types::PackageImportJobInputConfig.new
        type.package_version_input_config = PackageVersionInputConfig.build(params[:package_version_input_config], context: "#{context}[:package_version_input_config]") unless params[:package_version_input_config].nil?
        type
      end
    end

    module PackageImportJobList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PackageImportJob.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PackageImportJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PackageImportJobOutput, context: context)
        type = Types::PackageImportJobOutput.new
        type.package_id = params[:package_id]
        type.package_version = params[:package_version]
        type.patch_version = params[:patch_version]
        type.output_s3_location = OutPutS3Location.build(params[:output_s3_location], context: "#{context}[:output_s3_location]") unless params[:output_s3_location].nil?
        type
      end
    end

    module PackageImportJobOutputConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PackageImportJobOutputConfig, context: context)
        type = Types::PackageImportJobOutputConfig.new
        type.package_version_output_config = PackageVersionOutputConfig.build(params[:package_version_output_config], context: "#{context}[:package_version_output_config]") unless params[:package_version_output_config].nil?
        type
      end
    end

    module PackageList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PackageListItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PackageListItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PackageListItem, context: context)
        type = Types::PackageListItem.new
        type.package_id = params[:package_id]
        type.package_name = params[:package_name]
        type.arn = params[:arn]
        type.created_time = params[:created_time]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module PackageObject
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PackageObject, context: context)
        type = Types::PackageObject.new
        type.name = params[:name]
        type.package_version = params[:package_version]
        type.patch_version = params[:patch_version]
        type
      end
    end

    module PackageObjects
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PackageObject.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PackageVersionInputConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PackageVersionInputConfig, context: context)
        type = Types::PackageVersionInputConfig.new
        type.s3_location = S3Location.build(params[:s3_location], context: "#{context}[:s3_location]") unless params[:s3_location].nil?
        type
      end
    end

    module PackageVersionOutputConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PackageVersionOutputConfig, context: context)
        type = Types::PackageVersionOutputConfig.new
        type.package_name = params[:package_name]
        type.package_version = params[:package_version]
        type.mark_latest = params[:mark_latest]
        type
      end
    end

    module PrincipalArnsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ProvisionDeviceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProvisionDeviceInput, context: context)
        type = Types::ProvisionDeviceInput.new
        type.name = params[:name]
        type.description = params[:description]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.networking_configuration = NetworkPayload.build(params[:networking_configuration], context: "#{context}[:networking_configuration]") unless params[:networking_configuration].nil?
        type
      end
    end

    module ProvisionDeviceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProvisionDeviceOutput, context: context)
        type = Types::ProvisionDeviceOutput.new
        type.device_id = params[:device_id]
        type.arn = params[:arn]
        type.status = params[:status]
        type.certificates = params[:certificates]
        type.iot_thing_name = params[:iot_thing_name]
        type
      end
    end

    module RegisterPackageVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterPackageVersionInput, context: context)
        type = Types::RegisterPackageVersionInput.new
        type.owner_account = params[:owner_account]
        type.package_id = params[:package_id]
        type.package_version = params[:package_version]
        type.patch_version = params[:patch_version]
        type.mark_latest = params[:mark_latest]
        type
      end
    end

    module RegisterPackageVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterPackageVersionOutput, context: context)
        type = Types::RegisterPackageVersionOutput.new
        type
      end
    end

    module RemoveApplicationInstanceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveApplicationInstanceInput, context: context)
        type = Types::RemoveApplicationInstanceInput.new
        type.application_instance_id = params[:application_instance_id]
        type
      end
    end

    module RemoveApplicationInstanceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveApplicationInstanceOutput, context: context)
        type = Types::RemoveApplicationInstanceOutput.new
        type
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type.resource_id = params[:resource_id]
        type.resource_type = params[:resource_type]
        type
      end
    end

    module S3Location
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3Location, context: context)
        type = Types::S3Location.new
        type.region = params[:region]
        type.bucket_name = params[:bucket_name]
        type.object_key = params[:object_key]
        type
      end
    end

    module ServiceQuotaExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceQuotaExceededException, context: context)
        type = Types::ServiceQuotaExceededException.new
        type.message = params[:message]
        type.resource_id = params[:resource_id]
        type.resource_type = params[:resource_type]
        type.quota_code = params[:quota_code]
        type.service_code = params[:service_code]
        type
      end
    end

    module StaticIpConnectionInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StaticIpConnectionInfo, context: context)
        type = Types::StaticIpConnectionInfo.new
        type.ip_address = params[:ip_address]
        type.mask = params[:mask]
        type.dns = DnsList.build(params[:dns], context: "#{context}[:dns]") unless params[:dns].nil?
        type.default_gateway = params[:default_gateway]
        type
      end
    end

    module StorageLocation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StorageLocation, context: context)
        type = Types::StorageLocation.new
        type.bucket = params[:bucket]
        type.repo_prefix_location = params[:repo_prefix_location]
        type.generated_prefix_location = params[:generated_prefix_location]
        type.binary_prefix_location = params[:binary_prefix_location]
        type.manifest_prefix_location = params[:manifest_prefix_location]
        type
      end
    end

    module TagKeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module TagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceOutput, context: context)
        type = Types::TagResourceOutput.new
        type
      end
    end

    module TemplateParametersMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = TagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module UntagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceOutput, context: context)
        type = Types::UntagResourceOutput.new
        type
      end
    end

    module UpdateDeviceMetadataInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDeviceMetadataInput, context: context)
        type = Types::UpdateDeviceMetadataInput.new
        type.device_id = params[:device_id]
        type.description = params[:description]
        type
      end
    end

    module UpdateDeviceMetadataOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDeviceMetadataOutput, context: context)
        type = Types::UpdateDeviceMetadataOutput.new
        type.device_id = params[:device_id]
        type
      end
    end

    module ValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationException, context: context)
        type = Types::ValidationException.new
        type.message = params[:message]
        type.reason = params[:reason]
        type.error_id = params[:error_id]
        type.error_arguments = ValidationExceptionErrorArgumentList.build(params[:error_arguments], context: "#{context}[:error_arguments]") unless params[:error_arguments].nil?
        type.fields = ValidationExceptionFieldList.build(params[:fields], context: "#{context}[:fields]") unless params[:fields].nil?
        type
      end
    end

    module ValidationExceptionErrorArgument
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationExceptionErrorArgument, context: context)
        type = Types::ValidationExceptionErrorArgument.new
        type.name = params[:name]
        type.value = params[:value]
        type
      end
    end

    module ValidationExceptionErrorArgumentList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ValidationExceptionErrorArgument.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ValidationExceptionField
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationExceptionField, context: context)
        type = Types::ValidationExceptionField.new
        type.name = params[:name]
        type.message = params[:message]
        type
      end
    end

    module ValidationExceptionFieldList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ValidationExceptionField.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

  end
end
