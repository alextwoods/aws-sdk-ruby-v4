# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Panorama
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AlternateSoftwareMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AlternateSoftwareMetadata, context: context)
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class AlternateSoftwares
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AlternateSoftwareMetadata.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ApplicationInstance
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApplicationInstance, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:application_instance_id], ::String, context: "#{context}[:application_instance_id]")
        Hearth::Validator.validate!(input[:default_runtime_context_device], ::String, context: "#{context}[:default_runtime_context_device]")
        Hearth::Validator.validate!(input[:default_runtime_context_device_name], ::String, context: "#{context}[:default_runtime_context_device_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:health_status], ::String, context: "#{context}[:health_status]")
        Hearth::Validator.validate!(input[:status_description], ::String, context: "#{context}[:status_description]")
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ApplicationInstances
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ApplicationInstance.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:error_id], ::String, context: "#{context}[:error_id]")
        Validators::ConflictExceptionErrorArgumentList.validate!(input[:error_arguments], context: "#{context}[:error_arguments]") unless input[:error_arguments].nil?
      end
    end

    class ConflictExceptionErrorArgument
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictExceptionErrorArgument, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class ConflictExceptionErrorArgumentList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ConflictExceptionErrorArgument.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CreateApplicationInstanceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateApplicationInstanceInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::ManifestPayload.validate!(input[:manifest_payload], context: "#{context}[:manifest_payload]") unless input[:manifest_payload].nil?
        Validators::ManifestOverridesPayload.validate!(input[:manifest_overrides_payload], context: "#{context}[:manifest_overrides_payload]") unless input[:manifest_overrides_payload].nil?
        Hearth::Validator.validate!(input[:application_instance_id_to_replace], ::String, context: "#{context}[:application_instance_id_to_replace]")
        Hearth::Validator.validate!(input[:runtime_role_arn], ::String, context: "#{context}[:runtime_role_arn]")
        Hearth::Validator.validate!(input[:default_runtime_context_device], ::String, context: "#{context}[:default_runtime_context_device]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateApplicationInstanceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateApplicationInstanceOutput, context: context)
        Hearth::Validator.validate!(input[:application_instance_id], ::String, context: "#{context}[:application_instance_id]")
      end
    end

    class CreateJobForDevicesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateJobForDevicesInput, context: context)
        Validators::DeviceIdList.validate!(input[:device_ids], context: "#{context}[:device_ids]") unless input[:device_ids].nil?
        Validators::DeviceJobConfig.validate!(input[:device_job_config], context: "#{context}[:device_job_config]") unless input[:device_job_config].nil?
        Hearth::Validator.validate!(input[:job_type], ::String, context: "#{context}[:job_type]")
      end
    end

    class CreateJobForDevicesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateJobForDevicesOutput, context: context)
        Validators::JobList.validate!(input[:jobs], context: "#{context}[:jobs]") unless input[:jobs].nil?
      end
    end

    class CreateNodeFromTemplateJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateNodeFromTemplateJobInput, context: context)
        Hearth::Validator.validate!(input[:template_type], ::String, context: "#{context}[:template_type]")
        Hearth::Validator.validate!(input[:output_package_name], ::String, context: "#{context}[:output_package_name]")
        Hearth::Validator.validate!(input[:output_package_version], ::String, context: "#{context}[:output_package_version]")
        Hearth::Validator.validate!(input[:node_name], ::String, context: "#{context}[:node_name]")
        Hearth::Validator.validate!(input[:node_description], ::String, context: "#{context}[:node_description]")
        Validators::TemplateParametersMap.validate!(input[:template_parameters], context: "#{context}[:template_parameters]") unless input[:template_parameters].nil?
        Validators::JobTagsList.validate!(input[:job_tags], context: "#{context}[:job_tags]") unless input[:job_tags].nil?
      end
    end

    class CreateNodeFromTemplateJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateNodeFromTemplateJobOutput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class CreatePackageImportJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePackageImportJobInput, context: context)
        Hearth::Validator.validate!(input[:job_type], ::String, context: "#{context}[:job_type]")
        Validators::PackageImportJobInputConfig.validate!(input[:input_config], context: "#{context}[:input_config]") unless input[:input_config].nil?
        Validators::PackageImportJobOutputConfig.validate!(input[:output_config], context: "#{context}[:output_config]") unless input[:output_config].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Validators::JobTagsList.validate!(input[:job_tags], context: "#{context}[:job_tags]") unless input[:job_tags].nil?
      end
    end

    class CreatePackageImportJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePackageImportJobOutput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class CreatePackageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePackageInput, context: context)
        Hearth::Validator.validate!(input[:package_name], ::String, context: "#{context}[:package_name]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreatePackageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePackageOutput, context: context)
        Hearth::Validator.validate!(input[:package_id], ::String, context: "#{context}[:package_id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Validators::StorageLocation.validate!(input[:storage_location], context: "#{context}[:storage_location]") unless input[:storage_location].nil?
      end
    end

    class DeleteDeviceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDeviceInput, context: context)
        Hearth::Validator.validate!(input[:device_id], ::String, context: "#{context}[:device_id]")
      end
    end

    class DeleteDeviceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDeviceOutput, context: context)
        Hearth::Validator.validate!(input[:device_id], ::String, context: "#{context}[:device_id]")
      end
    end

    class DeletePackageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePackageInput, context: context)
        Hearth::Validator.validate!(input[:package_id], ::String, context: "#{context}[:package_id]")
        Hearth::Validator.validate!(input[:force_delete], ::TrueClass, ::FalseClass, context: "#{context}[:force_delete]")
      end
    end

    class DeletePackageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePackageOutput, context: context)
      end
    end

    class DeregisterPackageVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeregisterPackageVersionInput, context: context)
        Hearth::Validator.validate!(input[:owner_account], ::String, context: "#{context}[:owner_account]")
        Hearth::Validator.validate!(input[:package_id], ::String, context: "#{context}[:package_id]")
        Hearth::Validator.validate!(input[:package_version], ::String, context: "#{context}[:package_version]")
        Hearth::Validator.validate!(input[:patch_version], ::String, context: "#{context}[:patch_version]")
        Hearth::Validator.validate!(input[:updated_latest_patch_version], ::String, context: "#{context}[:updated_latest_patch_version]")
      end
    end

    class DeregisterPackageVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeregisterPackageVersionOutput, context: context)
      end
    end

    class DescribeApplicationInstanceDetailsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeApplicationInstanceDetailsInput, context: context)
        Hearth::Validator.validate!(input[:application_instance_id], ::String, context: "#{context}[:application_instance_id]")
      end
    end

    class DescribeApplicationInstanceDetailsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeApplicationInstanceDetailsOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:default_runtime_context_device], ::String, context: "#{context}[:default_runtime_context_device]")
        Validators::ManifestPayload.validate!(input[:manifest_payload], context: "#{context}[:manifest_payload]") unless input[:manifest_payload].nil?
        Validators::ManifestOverridesPayload.validate!(input[:manifest_overrides_payload], context: "#{context}[:manifest_overrides_payload]") unless input[:manifest_overrides_payload].nil?
        Hearth::Validator.validate!(input[:application_instance_id_to_replace], ::String, context: "#{context}[:application_instance_id_to_replace]")
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
        Hearth::Validator.validate!(input[:application_instance_id], ::String, context: "#{context}[:application_instance_id]")
      end
    end

    class DescribeApplicationInstanceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeApplicationInstanceInput, context: context)
        Hearth::Validator.validate!(input[:application_instance_id], ::String, context: "#{context}[:application_instance_id]")
      end
    end

    class DescribeApplicationInstanceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeApplicationInstanceOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:default_runtime_context_device], ::String, context: "#{context}[:default_runtime_context_device]")
        Hearth::Validator.validate!(input[:default_runtime_context_device_name], ::String, context: "#{context}[:default_runtime_context_device_name]")
        Hearth::Validator.validate!(input[:application_instance_id_to_replace], ::String, context: "#{context}[:application_instance_id_to_replace]")
        Hearth::Validator.validate!(input[:runtime_role_arn], ::String, context: "#{context}[:runtime_role_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:health_status], ::String, context: "#{context}[:health_status]")
        Hearth::Validator.validate!(input[:status_description], ::String, context: "#{context}[:status_description]")
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
        Hearth::Validator.validate!(input[:last_updated_time], ::Time, context: "#{context}[:last_updated_time]")
        Hearth::Validator.validate!(input[:application_instance_id], ::String, context: "#{context}[:application_instance_id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class DescribeDeviceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDeviceInput, context: context)
        Hearth::Validator.validate!(input[:device_id], ::String, context: "#{context}[:device_id]")
      end
    end

    class DescribeDeviceJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDeviceJobInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class DescribeDeviceJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDeviceJobOutput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:device_id], ::String, context: "#{context}[:device_id]")
        Hearth::Validator.validate!(input[:device_arn], ::String, context: "#{context}[:device_arn]")
        Hearth::Validator.validate!(input[:device_name], ::String, context: "#{context}[:device_name]")
        Hearth::Validator.validate!(input[:device_type], ::String, context: "#{context}[:device_type]")
        Hearth::Validator.validate!(input[:image_version], ::String, context: "#{context}[:image_version]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
      end
    end

    class DescribeDeviceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDeviceOutput, context: context)
        Hearth::Validator.validate!(input[:device_id], ::String, context: "#{context}[:device_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:device_connection_status], ::String, context: "#{context}[:device_connection_status]")
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
        Hearth::Validator.validate!(input[:provisioning_status], ::String, context: "#{context}[:provisioning_status]")
        Hearth::Validator.validate!(input[:latest_software], ::String, context: "#{context}[:latest_software]")
        Hearth::Validator.validate!(input[:current_software], ::String, context: "#{context}[:current_software]")
        Hearth::Validator.validate!(input[:serial_number], ::String, context: "#{context}[:serial_number]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Validators::NetworkPayload.validate!(input[:networking_configuration], context: "#{context}[:networking_configuration]") unless input[:networking_configuration].nil?
        Validators::NetworkStatus.validate!(input[:current_networking_status], context: "#{context}[:current_networking_status]") unless input[:current_networking_status].nil?
        Hearth::Validator.validate!(input[:lease_expiration_time], ::Time, context: "#{context}[:lease_expiration_time]")
        Validators::AlternateSoftwares.validate!(input[:alternate_softwares], context: "#{context}[:alternate_softwares]") unless input[:alternate_softwares].nil?
        Hearth::Validator.validate!(input[:latest_alternate_software], ::String, context: "#{context}[:latest_alternate_software]")
        Hearth::Validator.validate!(input[:brand], ::String, context: "#{context}[:brand]")
      end
    end

    class DescribeNodeFromTemplateJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeNodeFromTemplateJobInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class DescribeNodeFromTemplateJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeNodeFromTemplateJobOutput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
        Hearth::Validator.validate!(input[:last_updated_time], ::Time, context: "#{context}[:last_updated_time]")
        Hearth::Validator.validate!(input[:output_package_name], ::String, context: "#{context}[:output_package_name]")
        Hearth::Validator.validate!(input[:output_package_version], ::String, context: "#{context}[:output_package_version]")
        Hearth::Validator.validate!(input[:node_name], ::String, context: "#{context}[:node_name]")
        Hearth::Validator.validate!(input[:node_description], ::String, context: "#{context}[:node_description]")
        Hearth::Validator.validate!(input[:template_type], ::String, context: "#{context}[:template_type]")
        Validators::TemplateParametersMap.validate!(input[:template_parameters], context: "#{context}[:template_parameters]") unless input[:template_parameters].nil?
        Validators::JobTagsList.validate!(input[:job_tags], context: "#{context}[:job_tags]") unless input[:job_tags].nil?
      end
    end

    class DescribeNodeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeNodeInput, context: context)
        Hearth::Validator.validate!(input[:node_id], ::String, context: "#{context}[:node_id]")
        Hearth::Validator.validate!(input[:owner_account], ::String, context: "#{context}[:owner_account]")
      end
    end

    class DescribeNodeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeNodeOutput, context: context)
        Hearth::Validator.validate!(input[:node_id], ::String, context: "#{context}[:node_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:category], ::String, context: "#{context}[:category]")
        Hearth::Validator.validate!(input[:owner_account], ::String, context: "#{context}[:owner_account]")
        Hearth::Validator.validate!(input[:package_name], ::String, context: "#{context}[:package_name]")
        Hearth::Validator.validate!(input[:package_id], ::String, context: "#{context}[:package_id]")
        Hearth::Validator.validate!(input[:package_arn], ::String, context: "#{context}[:package_arn]")
        Hearth::Validator.validate!(input[:package_version], ::String, context: "#{context}[:package_version]")
        Hearth::Validator.validate!(input[:patch_version], ::String, context: "#{context}[:patch_version]")
        Validators::NodeInterface.validate!(input[:node_interface], context: "#{context}[:node_interface]") unless input[:node_interface].nil?
        Hearth::Validator.validate!(input[:asset_name], ::String, context: "#{context}[:asset_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
        Hearth::Validator.validate!(input[:last_updated_time], ::Time, context: "#{context}[:last_updated_time]")
      end
    end

    class DescribePackageImportJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePackageImportJobInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class DescribePackageImportJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePackageImportJobOutput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:job_type], ::String, context: "#{context}[:job_type]")
        Validators::PackageImportJobInputConfig.validate!(input[:input_config], context: "#{context}[:input_config]") unless input[:input_config].nil?
        Validators::PackageImportJobOutputConfig.validate!(input[:output_config], context: "#{context}[:output_config]") unless input[:output_config].nil?
        Validators::PackageImportJobOutput.validate!(input[:output], context: "#{context}[:output]") unless input[:output].nil?
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
        Hearth::Validator.validate!(input[:last_updated_time], ::Time, context: "#{context}[:last_updated_time]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
        Validators::JobTagsList.validate!(input[:job_tags], context: "#{context}[:job_tags]") unless input[:job_tags].nil?
      end
    end

    class DescribePackageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePackageInput, context: context)
        Hearth::Validator.validate!(input[:package_id], ::String, context: "#{context}[:package_id]")
      end
    end

    class DescribePackageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePackageOutput, context: context)
        Hearth::Validator.validate!(input[:package_id], ::String, context: "#{context}[:package_id]")
        Hearth::Validator.validate!(input[:package_name], ::String, context: "#{context}[:package_name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Validators::StorageLocation.validate!(input[:storage_location], context: "#{context}[:storage_location]") unless input[:storage_location].nil?
        Validators::PrincipalArnsList.validate!(input[:read_access_principal_arns], context: "#{context}[:read_access_principal_arns]") unless input[:read_access_principal_arns].nil?
        Validators::PrincipalArnsList.validate!(input[:write_access_principal_arns], context: "#{context}[:write_access_principal_arns]") unless input[:write_access_principal_arns].nil?
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class DescribePackageVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePackageVersionInput, context: context)
        Hearth::Validator.validate!(input[:owner_account], ::String, context: "#{context}[:owner_account]")
        Hearth::Validator.validate!(input[:package_id], ::String, context: "#{context}[:package_id]")
        Hearth::Validator.validate!(input[:package_version], ::String, context: "#{context}[:package_version]")
        Hearth::Validator.validate!(input[:patch_version], ::String, context: "#{context}[:patch_version]")
      end
    end

    class DescribePackageVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePackageVersionOutput, context: context)
        Hearth::Validator.validate!(input[:owner_account], ::String, context: "#{context}[:owner_account]")
        Hearth::Validator.validate!(input[:package_id], ::String, context: "#{context}[:package_id]")
        Hearth::Validator.validate!(input[:package_arn], ::String, context: "#{context}[:package_arn]")
        Hearth::Validator.validate!(input[:package_name], ::String, context: "#{context}[:package_name]")
        Hearth::Validator.validate!(input[:package_version], ::String, context: "#{context}[:package_version]")
        Hearth::Validator.validate!(input[:patch_version], ::String, context: "#{context}[:patch_version]")
        Hearth::Validator.validate!(input[:is_latest_patch], ::TrueClass, ::FalseClass, context: "#{context}[:is_latest_patch]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_description], ::String, context: "#{context}[:status_description]")
        Hearth::Validator.validate!(input[:registered_time], ::Time, context: "#{context}[:registered_time]")
      end
    end

    class Device
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Device, context: context)
        Hearth::Validator.validate!(input[:device_id], ::String, context: "#{context}[:device_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
        Hearth::Validator.validate!(input[:provisioning_status], ::String, context: "#{context}[:provisioning_status]")
        Hearth::Validator.validate!(input[:last_updated_time], ::Time, context: "#{context}[:last_updated_time]")
        Hearth::Validator.validate!(input[:lease_expiration_time], ::Time, context: "#{context}[:lease_expiration_time]")
        Hearth::Validator.validate!(input[:brand], ::String, context: "#{context}[:brand]")
      end
    end

    class DeviceIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DeviceJob
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeviceJob, context: context)
        Hearth::Validator.validate!(input[:device_name], ::String, context: "#{context}[:device_name]")
        Hearth::Validator.validate!(input[:device_id], ::String, context: "#{context}[:device_id]")
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
      end
    end

    class DeviceJobConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeviceJobConfig, context: context)
        Validators::OTAJobConfig.validate!(input[:ota_job_config], context: "#{context}[:ota_job_config]") unless input[:ota_job_config].nil?
      end
    end

    class DeviceJobList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DeviceJob.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DeviceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Device.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DnsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class EthernetPayload
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EthernetPayload, context: context)
        Hearth::Validator.validate!(input[:connection_type], ::String, context: "#{context}[:connection_type]")
        Validators::StaticIpConnectionInfo.validate!(input[:static_ip_connection_info], context: "#{context}[:static_ip_connection_info]") unless input[:static_ip_connection_info].nil?
      end
    end

    class EthernetStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EthernetStatus, context: context)
        Hearth::Validator.validate!(input[:ip_address], ::String, context: "#{context}[:ip_address]")
        Hearth::Validator.validate!(input[:connection_status], ::String, context: "#{context}[:connection_status]")
        Hearth::Validator.validate!(input[:hw_address], ::String, context: "#{context}[:hw_address]")
      end
    end

    class InputPortList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::NodeInputPort.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InternalServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:retry_after_seconds], ::Integer, context: "#{context}[:retry_after_seconds]")
      end
    end

    class Job
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Job, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:device_id], ::String, context: "#{context}[:device_id]")
      end
    end

    class JobList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Job.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class JobResourceTags
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JobResourceTags, context: context)
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class JobTagsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::JobResourceTags.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListApplicationInstanceDependenciesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListApplicationInstanceDependenciesInput, context: context)
        Hearth::Validator.validate!(input[:application_instance_id], ::String, context: "#{context}[:application_instance_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListApplicationInstanceDependenciesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListApplicationInstanceDependenciesOutput, context: context)
        Validators::PackageObjects.validate!(input[:package_objects], context: "#{context}[:package_objects]") unless input[:package_objects].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListApplicationInstanceNodeInstancesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListApplicationInstanceNodeInstancesInput, context: context)
        Hearth::Validator.validate!(input[:application_instance_id], ::String, context: "#{context}[:application_instance_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListApplicationInstanceNodeInstancesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListApplicationInstanceNodeInstancesOutput, context: context)
        Validators::NodeInstances.validate!(input[:node_instances], context: "#{context}[:node_instances]") unless input[:node_instances].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListApplicationInstancesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListApplicationInstancesInput, context: context)
        Hearth::Validator.validate!(input[:device_id], ::String, context: "#{context}[:device_id]")
        Hearth::Validator.validate!(input[:status_filter], ::String, context: "#{context}[:status_filter]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListApplicationInstancesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListApplicationInstancesOutput, context: context)
        Validators::ApplicationInstances.validate!(input[:application_instances], context: "#{context}[:application_instances]") unless input[:application_instances].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDevicesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDevicesInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListDevicesJobsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDevicesJobsInput, context: context)
        Hearth::Validator.validate!(input[:device_id], ::String, context: "#{context}[:device_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListDevicesJobsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDevicesJobsOutput, context: context)
        Validators::DeviceJobList.validate!(input[:device_jobs], context: "#{context}[:device_jobs]") unless input[:device_jobs].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDevicesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDevicesOutput, context: context)
        Validators::DeviceList.validate!(input[:devices], context: "#{context}[:devices]") unless input[:devices].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListNodeFromTemplateJobsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListNodeFromTemplateJobsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListNodeFromTemplateJobsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListNodeFromTemplateJobsOutput, context: context)
        Validators::NodeFromTemplateJobList.validate!(input[:node_from_template_jobs], context: "#{context}[:node_from_template_jobs]") unless input[:node_from_template_jobs].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListNodesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListNodesInput, context: context)
        Hearth::Validator.validate!(input[:category], ::String, context: "#{context}[:category]")
        Hearth::Validator.validate!(input[:owner_account], ::String, context: "#{context}[:owner_account]")
        Hearth::Validator.validate!(input[:package_name], ::String, context: "#{context}[:package_name]")
        Hearth::Validator.validate!(input[:package_version], ::String, context: "#{context}[:package_version]")
        Hearth::Validator.validate!(input[:patch_version], ::String, context: "#{context}[:patch_version]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListNodesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListNodesOutput, context: context)
        Validators::NodesList.validate!(input[:nodes], context: "#{context}[:nodes]") unless input[:nodes].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListPackageImportJobsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPackageImportJobsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListPackageImportJobsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPackageImportJobsOutput, context: context)
        Validators::PackageImportJobList.validate!(input[:package_import_jobs], context: "#{context}[:package_import_jobs]") unless input[:package_import_jobs].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListPackagesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPackagesInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListPackagesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPackagesOutput, context: context)
        Validators::PackageList.validate!(input[:packages], context: "#{context}[:packages]") unless input[:packages].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ManifestOverridesPayload
      def self.validate!(input, context:)
        case input
        when Types::ManifestOverridesPayload::PayloadData
          Hearth::Validator.validate!(input.__getobj__, ::String, context: context)
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::ManifestOverridesPayload, got #{input.class}."
        end
      end

      class PayloadData
        def self.validate!(input, context:)
          Hearth::Validator.validate!(input, ::String, context: context)
        end
      end
    end

    class ManifestPayload
      def self.validate!(input, context:)
        case input
        when Types::ManifestPayload::PayloadData
          Hearth::Validator.validate!(input.__getobj__, ::String, context: context)
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::ManifestPayload, got #{input.class}."
        end
      end

      class PayloadData
        def self.validate!(input, context:)
          Hearth::Validator.validate!(input, ::String, context: context)
        end
      end
    end

    class NetworkPayload
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NetworkPayload, context: context)
        Validators::EthernetPayload.validate!(input[:ethernet0], context: "#{context}[:ethernet0]") unless input[:ethernet0].nil?
        Validators::EthernetPayload.validate!(input[:ethernet1], context: "#{context}[:ethernet1]") unless input[:ethernet1].nil?
        Validators::NtpPayload.validate!(input[:ntp], context: "#{context}[:ntp]") unless input[:ntp].nil?
      end
    end

    class NetworkStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NetworkStatus, context: context)
        Validators::EthernetStatus.validate!(input[:ethernet0_status], context: "#{context}[:ethernet0_status]") unless input[:ethernet0_status].nil?
        Validators::EthernetStatus.validate!(input[:ethernet1_status], context: "#{context}[:ethernet1_status]") unless input[:ethernet1_status].nil?
        Validators::NtpStatus.validate!(input[:ntp_status], context: "#{context}[:ntp_status]") unless input[:ntp_status].nil?
        Hearth::Validator.validate!(input[:last_updated_time], ::Time, context: "#{context}[:last_updated_time]")
      end
    end

    class Node
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Node, context: context)
        Hearth::Validator.validate!(input[:node_id], ::String, context: "#{context}[:node_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:category], ::String, context: "#{context}[:category]")
        Hearth::Validator.validate!(input[:owner_account], ::String, context: "#{context}[:owner_account]")
        Hearth::Validator.validate!(input[:package_name], ::String, context: "#{context}[:package_name]")
        Hearth::Validator.validate!(input[:package_id], ::String, context: "#{context}[:package_id]")
        Hearth::Validator.validate!(input[:package_arn], ::String, context: "#{context}[:package_arn]")
        Hearth::Validator.validate!(input[:package_version], ::String, context: "#{context}[:package_version]")
        Hearth::Validator.validate!(input[:patch_version], ::String, context: "#{context}[:patch_version]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
      end
    end

    class NodeFromTemplateJob
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NodeFromTemplateJob, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:template_type], ::String, context: "#{context}[:template_type]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
        Hearth::Validator.validate!(input[:node_name], ::String, context: "#{context}[:node_name]")
      end
    end

    class NodeFromTemplateJobList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::NodeFromTemplateJob.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class NodeInputPort
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NodeInputPort, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:default_value], ::String, context: "#{context}[:default_value]")
        Hearth::Validator.validate!(input[:max_connections], ::Integer, context: "#{context}[:max_connections]")
      end
    end

    class NodeInstance
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NodeInstance, context: context)
        Hearth::Validator.validate!(input[:node_instance_id], ::String, context: "#{context}[:node_instance_id]")
        Hearth::Validator.validate!(input[:node_id], ::String, context: "#{context}[:node_id]")
        Hearth::Validator.validate!(input[:package_name], ::String, context: "#{context}[:package_name]")
        Hearth::Validator.validate!(input[:package_version], ::String, context: "#{context}[:package_version]")
        Hearth::Validator.validate!(input[:package_patch_version], ::String, context: "#{context}[:package_patch_version]")
        Hearth::Validator.validate!(input[:node_name], ::String, context: "#{context}[:node_name]")
        Hearth::Validator.validate!(input[:current_status], ::String, context: "#{context}[:current_status]")
      end
    end

    class NodeInstances
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::NodeInstance.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class NodeInterface
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NodeInterface, context: context)
        Validators::InputPortList.validate!(input[:inputs], context: "#{context}[:inputs]") unless input[:inputs].nil?
        Validators::OutputPortList.validate!(input[:outputs], context: "#{context}[:outputs]") unless input[:outputs].nil?
      end
    end

    class NodeOutputPort
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NodeOutputPort, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class NodesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Node.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class NtpPayload
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NtpPayload, context: context)
        Validators::NtpServerList.validate!(input[:ntp_servers], context: "#{context}[:ntp_servers]") unless input[:ntp_servers].nil?
      end
    end

    class NtpServerList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class NtpStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NtpStatus, context: context)
        Hearth::Validator.validate!(input[:connection_status], ::String, context: "#{context}[:connection_status]")
        Hearth::Validator.validate!(input[:ip_address], ::String, context: "#{context}[:ip_address]")
        Hearth::Validator.validate!(input[:ntp_server_name], ::String, context: "#{context}[:ntp_server_name]")
      end
    end

    class OTAJobConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OTAJobConfig, context: context)
        Hearth::Validator.validate!(input[:image_version], ::String, context: "#{context}[:image_version]")
      end
    end

    class OutPutS3Location
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OutPutS3Location, context: context)
        Hearth::Validator.validate!(input[:bucket_name], ::String, context: "#{context}[:bucket_name]")
        Hearth::Validator.validate!(input[:object_key], ::String, context: "#{context}[:object_key]")
      end
    end

    class OutputPortList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::NodeOutputPort.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PackageImportJob
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PackageImportJob, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:job_type], ::String, context: "#{context}[:job_type]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
        Hearth::Validator.validate!(input[:last_updated_time], ::Time, context: "#{context}[:last_updated_time]")
      end
    end

    class PackageImportJobInputConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PackageImportJobInputConfig, context: context)
        Validators::PackageVersionInputConfig.validate!(input[:package_version_input_config], context: "#{context}[:package_version_input_config]") unless input[:package_version_input_config].nil?
      end
    end

    class PackageImportJobList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::PackageImportJob.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PackageImportJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PackageImportJobOutput, context: context)
        Hearth::Validator.validate!(input[:package_id], ::String, context: "#{context}[:package_id]")
        Hearth::Validator.validate!(input[:package_version], ::String, context: "#{context}[:package_version]")
        Hearth::Validator.validate!(input[:patch_version], ::String, context: "#{context}[:patch_version]")
        Validators::OutPutS3Location.validate!(input[:output_s3_location], context: "#{context}[:output_s3_location]") unless input[:output_s3_location].nil?
      end
    end

    class PackageImportJobOutputConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PackageImportJobOutputConfig, context: context)
        Validators::PackageVersionOutputConfig.validate!(input[:package_version_output_config], context: "#{context}[:package_version_output_config]") unless input[:package_version_output_config].nil?
      end
    end

    class PackageList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::PackageListItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PackageListItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PackageListItem, context: context)
        Hearth::Validator.validate!(input[:package_id], ::String, context: "#{context}[:package_id]")
        Hearth::Validator.validate!(input[:package_name], ::String, context: "#{context}[:package_name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class PackageObject
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PackageObject, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:package_version], ::String, context: "#{context}[:package_version]")
        Hearth::Validator.validate!(input[:patch_version], ::String, context: "#{context}[:patch_version]")
      end
    end

    class PackageObjects
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::PackageObject.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PackageVersionInputConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PackageVersionInputConfig, context: context)
        Validators::S3Location.validate!(input[:s3_location], context: "#{context}[:s3_location]") unless input[:s3_location].nil?
      end
    end

    class PackageVersionOutputConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PackageVersionOutputConfig, context: context)
        Hearth::Validator.validate!(input[:package_name], ::String, context: "#{context}[:package_name]")
        Hearth::Validator.validate!(input[:package_version], ::String, context: "#{context}[:package_version]")
        Hearth::Validator.validate!(input[:mark_latest], ::TrueClass, ::FalseClass, context: "#{context}[:mark_latest]")
      end
    end

    class PrincipalArnsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ProvisionDeviceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProvisionDeviceInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Validators::NetworkPayload.validate!(input[:networking_configuration], context: "#{context}[:networking_configuration]") unless input[:networking_configuration].nil?
      end
    end

    class ProvisionDeviceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProvisionDeviceOutput, context: context)
        Hearth::Validator.validate!(input[:device_id], ::String, context: "#{context}[:device_id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:certificates], ::String, context: "#{context}[:certificates]")
        Hearth::Validator.validate!(input[:iot_thing_name], ::String, context: "#{context}[:iot_thing_name]")
      end
    end

    class RegisterPackageVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterPackageVersionInput, context: context)
        Hearth::Validator.validate!(input[:owner_account], ::String, context: "#{context}[:owner_account]")
        Hearth::Validator.validate!(input[:package_id], ::String, context: "#{context}[:package_id]")
        Hearth::Validator.validate!(input[:package_version], ::String, context: "#{context}[:package_version]")
        Hearth::Validator.validate!(input[:patch_version], ::String, context: "#{context}[:patch_version]")
        Hearth::Validator.validate!(input[:mark_latest], ::TrueClass, ::FalseClass, context: "#{context}[:mark_latest]")
      end
    end

    class RegisterPackageVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterPackageVersionOutput, context: context)
      end
    end

    class RemoveApplicationInstanceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveApplicationInstanceInput, context: context)
        Hearth::Validator.validate!(input[:application_instance_id], ::String, context: "#{context}[:application_instance_id]")
      end
    end

    class RemoveApplicationInstanceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveApplicationInstanceOutput, context: context)
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
      end
    end

    class S3Location
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3Location, context: context)
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        Hearth::Validator.validate!(input[:bucket_name], ::String, context: "#{context}[:bucket_name]")
        Hearth::Validator.validate!(input[:object_key], ::String, context: "#{context}[:object_key]")
      end
    end

    class ServiceQuotaExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceQuotaExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:quota_code], ::String, context: "#{context}[:quota_code]")
        Hearth::Validator.validate!(input[:service_code], ::String, context: "#{context}[:service_code]")
      end
    end

    class StaticIpConnectionInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StaticIpConnectionInfo, context: context)
        Hearth::Validator.validate!(input[:ip_address], ::String, context: "#{context}[:ip_address]")
        Hearth::Validator.validate!(input[:mask], ::String, context: "#{context}[:mask]")
        Validators::DnsList.validate!(input[:dns], context: "#{context}[:dns]") unless input[:dns].nil?
        Hearth::Validator.validate!(input[:default_gateway], ::String, context: "#{context}[:default_gateway]")
      end
    end

    class StorageLocation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StorageLocation, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:repo_prefix_location], ::String, context: "#{context}[:repo_prefix_location]")
        Hearth::Validator.validate!(input[:generated_prefix_location], ::String, context: "#{context}[:generated_prefix_location]")
        Hearth::Validator.validate!(input[:binary_prefix_location], ::String, context: "#{context}[:binary_prefix_location]")
        Hearth::Validator.validate!(input[:manifest_prefix_location], ::String, context: "#{context}[:manifest_prefix_location]")
      end
    end

    class TagKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class TemplateParametersMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateDeviceMetadataInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDeviceMetadataInput, context: context)
        Hearth::Validator.validate!(input[:device_id], ::String, context: "#{context}[:device_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class UpdateDeviceMetadataOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDeviceMetadataOutput, context: context)
        Hearth::Validator.validate!(input[:device_id], ::String, context: "#{context}[:device_id]")
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
        Hearth::Validator.validate!(input[:error_id], ::String, context: "#{context}[:error_id]")
        Validators::ValidationExceptionErrorArgumentList.validate!(input[:error_arguments], context: "#{context}[:error_arguments]") unless input[:error_arguments].nil?
        Validators::ValidationExceptionFieldList.validate!(input[:fields], context: "#{context}[:fields]") unless input[:fields].nil?
      end
    end

    class ValidationExceptionErrorArgument
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationExceptionErrorArgument, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class ValidationExceptionErrorArgumentList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ValidationExceptionErrorArgument.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ValidationExceptionField
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationExceptionField, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ValidationExceptionFieldList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ValidationExceptionField.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

  end
end
