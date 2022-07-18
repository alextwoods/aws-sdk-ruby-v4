# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::AppStream
  module Validators

    class AccessEndpoint
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessEndpoint, context: context)
        Hearth::Validator.validate!(input[:endpoint_type], ::String, context: "#{context}[:endpoint_type]")
        Hearth::Validator.validate!(input[:vpce_id], ::String, context: "#{context}[:vpce_id]")
      end
    end

    class AccessEndpointList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AccessEndpoint.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AppBlock
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AppBlock, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        S3Location.validate!(input[:source_s3_location], context: "#{context}[:source_s3_location]") unless input[:source_s3_location].nil?
        ScriptDetails.validate!(input[:setup_script_details], context: "#{context}[:setup_script_details]") unless input[:setup_script_details].nil?
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
      end
    end

    class AppBlocks
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AppBlock.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Application
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Application, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate!(input[:icon_url], ::String, context: "#{context}[:icon_url]")
        Hearth::Validator.validate!(input[:launch_path], ::String, context: "#{context}[:launch_path]")
        Hearth::Validator.validate!(input[:launch_parameters], ::String, context: "#{context}[:launch_parameters]")
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Metadata.validate!(input[:metadata], context: "#{context}[:metadata]") unless input[:metadata].nil?
        Hearth::Validator.validate!(input[:working_directory], ::String, context: "#{context}[:working_directory]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:app_block_arn], ::String, context: "#{context}[:app_block_arn]")
        S3Location.validate!(input[:icon_s3_location], context: "#{context}[:icon_s3_location]") unless input[:icon_s3_location].nil?
        Platforms.validate!(input[:platforms], context: "#{context}[:platforms]") unless input[:platforms].nil?
        StringList.validate!(input[:instance_families], context: "#{context}[:instance_families]") unless input[:instance_families].nil?
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
      end
    end

    class ApplicationAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ApplicationFleetAssociation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApplicationFleetAssociation, context: context)
        Hearth::Validator.validate!(input[:fleet_name], ::String, context: "#{context}[:fleet_name]")
        Hearth::Validator.validate!(input[:application_arn], ::String, context: "#{context}[:application_arn]")
      end
    end

    class ApplicationFleetAssociationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ApplicationFleetAssociation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ApplicationSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApplicationSettings, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:settings_group], ::String, context: "#{context}[:settings_group]")
      end
    end

    class ApplicationSettingsResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApplicationSettingsResponse, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:settings_group], ::String, context: "#{context}[:settings_group]")
        Hearth::Validator.validate!(input[:s3_bucket_name], ::String, context: "#{context}[:s3_bucket_name]")
      end
    end

    class Applications
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Application.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ArnList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AssociateApplicationFleetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateApplicationFleetInput, context: context)
        Hearth::Validator.validate!(input[:fleet_name], ::String, context: "#{context}[:fleet_name]")
        Hearth::Validator.validate!(input[:application_arn], ::String, context: "#{context}[:application_arn]")
      end
    end

    class AssociateApplicationFleetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateApplicationFleetOutput, context: context)
        ApplicationFleetAssociation.validate!(input[:application_fleet_association], context: "#{context}[:application_fleet_association]") unless input[:application_fleet_association].nil?
      end
    end

    class AssociateApplicationToEntitlementInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateApplicationToEntitlementInput, context: context)
        Hearth::Validator.validate!(input[:stack_name], ::String, context: "#{context}[:stack_name]")
        Hearth::Validator.validate!(input[:entitlement_name], ::String, context: "#{context}[:entitlement_name]")
        Hearth::Validator.validate!(input[:application_identifier], ::String, context: "#{context}[:application_identifier]")
      end
    end

    class AssociateApplicationToEntitlementOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateApplicationToEntitlementOutput, context: context)
      end
    end

    class AssociateFleetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateFleetInput, context: context)
        Hearth::Validator.validate!(input[:fleet_name], ::String, context: "#{context}[:fleet_name]")
        Hearth::Validator.validate!(input[:stack_name], ::String, context: "#{context}[:stack_name]")
      end
    end

    class AssociateFleetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateFleetOutput, context: context)
      end
    end

    class AwsAccountIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class BatchAssociateUserStackInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchAssociateUserStackInput, context: context)
        UserStackAssociationList.validate!(input[:user_stack_associations], context: "#{context}[:user_stack_associations]") unless input[:user_stack_associations].nil?
      end
    end

    class BatchAssociateUserStackOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchAssociateUserStackOutput, context: context)
        UserStackAssociationErrorList.validate!(input[:errors], context: "#{context}[:errors]") unless input[:errors].nil?
      end
    end

    class BatchDisassociateUserStackInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDisassociateUserStackInput, context: context)
        UserStackAssociationList.validate!(input[:user_stack_associations], context: "#{context}[:user_stack_associations]") unless input[:user_stack_associations].nil?
      end
    end

    class BatchDisassociateUserStackOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDisassociateUserStackOutput, context: context)
        UserStackAssociationErrorList.validate!(input[:errors], context: "#{context}[:errors]") unless input[:errors].nil?
      end
    end

    class ComputeCapacity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ComputeCapacity, context: context)
        Hearth::Validator.validate!(input[:desired_instances], ::Integer, context: "#{context}[:desired_instances]")
      end
    end

    class ComputeCapacityStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ComputeCapacityStatus, context: context)
        Hearth::Validator.validate!(input[:desired], ::Integer, context: "#{context}[:desired]")
        Hearth::Validator.validate!(input[:running], ::Integer, context: "#{context}[:running]")
        Hearth::Validator.validate!(input[:in_use], ::Integer, context: "#{context}[:in_use]")
        Hearth::Validator.validate!(input[:available], ::Integer, context: "#{context}[:available]")
      end
    end

    class ConcurrentModificationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConcurrentModificationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CopyImageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CopyImageInput, context: context)
        Hearth::Validator.validate!(input[:source_image_name], ::String, context: "#{context}[:source_image_name]")
        Hearth::Validator.validate!(input[:destination_image_name], ::String, context: "#{context}[:destination_image_name]")
        Hearth::Validator.validate!(input[:destination_region], ::String, context: "#{context}[:destination_region]")
        Hearth::Validator.validate!(input[:destination_image_description], ::String, context: "#{context}[:destination_image_description]")
      end
    end

    class CopyImageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CopyImageOutput, context: context)
        Hearth::Validator.validate!(input[:destination_image_name], ::String, context: "#{context}[:destination_image_name]")
      end
    end

    class CreateAppBlockInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAppBlockInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        S3Location.validate!(input[:source_s3_location], context: "#{context}[:source_s3_location]") unless input[:source_s3_location].nil?
        ScriptDetails.validate!(input[:setup_script_details], context: "#{context}[:setup_script_details]") unless input[:setup_script_details].nil?
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateAppBlockOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAppBlockOutput, context: context)
        AppBlock.validate!(input[:app_block], context: "#{context}[:app_block]") unless input[:app_block].nil?
      end
    end

    class CreateApplicationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateApplicationInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        S3Location.validate!(input[:icon_s3_location], context: "#{context}[:icon_s3_location]") unless input[:icon_s3_location].nil?
        Hearth::Validator.validate!(input[:launch_path], ::String, context: "#{context}[:launch_path]")
        Hearth::Validator.validate!(input[:working_directory], ::String, context: "#{context}[:working_directory]")
        Hearth::Validator.validate!(input[:launch_parameters], ::String, context: "#{context}[:launch_parameters]")
        Platforms.validate!(input[:platforms], context: "#{context}[:platforms]") unless input[:platforms].nil?
        StringList.validate!(input[:instance_families], context: "#{context}[:instance_families]") unless input[:instance_families].nil?
        Hearth::Validator.validate!(input[:app_block_arn], ::String, context: "#{context}[:app_block_arn]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateApplicationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateApplicationOutput, context: context)
        Application.validate!(input[:application], context: "#{context}[:application]") unless input[:application].nil?
      end
    end

    class CreateDirectoryConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDirectoryConfigInput, context: context)
        Hearth::Validator.validate!(input[:directory_name], ::String, context: "#{context}[:directory_name]")
        OrganizationalUnitDistinguishedNamesList.validate!(input[:organizational_unit_distinguished_names], context: "#{context}[:organizational_unit_distinguished_names]") unless input[:organizational_unit_distinguished_names].nil?
        ServiceAccountCredentials.validate!(input[:service_account_credentials], context: "#{context}[:service_account_credentials]") unless input[:service_account_credentials].nil?
      end
    end

    class CreateDirectoryConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDirectoryConfigOutput, context: context)
        DirectoryConfig.validate!(input[:directory_config], context: "#{context}[:directory_config]") unless input[:directory_config].nil?
      end
    end

    class CreateEntitlementInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateEntitlementInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:stack_name], ::String, context: "#{context}[:stack_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:app_visibility], ::String, context: "#{context}[:app_visibility]")
        EntitlementAttributeList.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
      end
    end

    class CreateEntitlementOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateEntitlementOutput, context: context)
        Entitlement.validate!(input[:entitlement], context: "#{context}[:entitlement]") unless input[:entitlement].nil?
      end
    end

    class CreateFleetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFleetInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:image_name], ::String, context: "#{context}[:image_name]")
        Hearth::Validator.validate!(input[:image_arn], ::String, context: "#{context}[:image_arn]")
        Hearth::Validator.validate!(input[:instance_type], ::String, context: "#{context}[:instance_type]")
        Hearth::Validator.validate!(input[:fleet_type], ::String, context: "#{context}[:fleet_type]")
        ComputeCapacity.validate!(input[:compute_capacity], context: "#{context}[:compute_capacity]") unless input[:compute_capacity].nil?
        VpcConfig.validate!(input[:vpc_config], context: "#{context}[:vpc_config]") unless input[:vpc_config].nil?
        Hearth::Validator.validate!(input[:max_user_duration_in_seconds], ::Integer, context: "#{context}[:max_user_duration_in_seconds]")
        Hearth::Validator.validate!(input[:disconnect_timeout_in_seconds], ::Integer, context: "#{context}[:disconnect_timeout_in_seconds]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate!(input[:enable_default_internet_access], ::TrueClass, ::FalseClass, context: "#{context}[:enable_default_internet_access]")
        DomainJoinInfo.validate!(input[:domain_join_info], context: "#{context}[:domain_join_info]") unless input[:domain_join_info].nil?
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:idle_disconnect_timeout_in_seconds], ::Integer, context: "#{context}[:idle_disconnect_timeout_in_seconds]")
        Hearth::Validator.validate!(input[:iam_role_arn], ::String, context: "#{context}[:iam_role_arn]")
        Hearth::Validator.validate!(input[:stream_view], ::String, context: "#{context}[:stream_view]")
        Hearth::Validator.validate!(input[:platform], ::String, context: "#{context}[:platform]")
        Hearth::Validator.validate!(input[:max_concurrent_sessions], ::Integer, context: "#{context}[:max_concurrent_sessions]")
        UsbDeviceFilterStrings.validate!(input[:usb_device_filter_strings], context: "#{context}[:usb_device_filter_strings]") unless input[:usb_device_filter_strings].nil?
        S3Location.validate!(input[:session_script_s3_location], context: "#{context}[:session_script_s3_location]") unless input[:session_script_s3_location].nil?
      end
    end

    class CreateFleetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFleetOutput, context: context)
        Fleet.validate!(input[:fleet], context: "#{context}[:fleet]") unless input[:fleet].nil?
      end
    end

    class CreateImageBuilderInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateImageBuilderInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:image_name], ::String, context: "#{context}[:image_name]")
        Hearth::Validator.validate!(input[:image_arn], ::String, context: "#{context}[:image_arn]")
        Hearth::Validator.validate!(input[:instance_type], ::String, context: "#{context}[:instance_type]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        VpcConfig.validate!(input[:vpc_config], context: "#{context}[:vpc_config]") unless input[:vpc_config].nil?
        Hearth::Validator.validate!(input[:iam_role_arn], ::String, context: "#{context}[:iam_role_arn]")
        Hearth::Validator.validate!(input[:enable_default_internet_access], ::TrueClass, ::FalseClass, context: "#{context}[:enable_default_internet_access]")
        DomainJoinInfo.validate!(input[:domain_join_info], context: "#{context}[:domain_join_info]") unless input[:domain_join_info].nil?
        Hearth::Validator.validate!(input[:appstream_agent_version], ::String, context: "#{context}[:appstream_agent_version]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        AccessEndpointList.validate!(input[:access_endpoints], context: "#{context}[:access_endpoints]") unless input[:access_endpoints].nil?
      end
    end

    class CreateImageBuilderOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateImageBuilderOutput, context: context)
        ImageBuilder.validate!(input[:image_builder], context: "#{context}[:image_builder]") unless input[:image_builder].nil?
      end
    end

    class CreateImageBuilderStreamingURLInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateImageBuilderStreamingURLInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:validity], ::Integer, context: "#{context}[:validity]")
      end
    end

    class CreateImageBuilderStreamingURLOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateImageBuilderStreamingURLOutput, context: context)
        Hearth::Validator.validate!(input[:streaming_url], ::String, context: "#{context}[:streaming_url]")
        Hearth::Validator.validate!(input[:expires], ::Time, context: "#{context}[:expires]")
      end
    end

    class CreateStackInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateStackInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        StorageConnectorList.validate!(input[:storage_connectors], context: "#{context}[:storage_connectors]") unless input[:storage_connectors].nil?
        Hearth::Validator.validate!(input[:redirect_url], ::String, context: "#{context}[:redirect_url]")
        Hearth::Validator.validate!(input[:feedback_url], ::String, context: "#{context}[:feedback_url]")
        UserSettingList.validate!(input[:user_settings], context: "#{context}[:user_settings]") unless input[:user_settings].nil?
        ApplicationSettings.validate!(input[:application_settings], context: "#{context}[:application_settings]") unless input[:application_settings].nil?
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        AccessEndpointList.validate!(input[:access_endpoints], context: "#{context}[:access_endpoints]") unless input[:access_endpoints].nil?
        EmbedHostDomains.validate!(input[:embed_host_domains], context: "#{context}[:embed_host_domains]") unless input[:embed_host_domains].nil?
      end
    end

    class CreateStackOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateStackOutput, context: context)
        Stack.validate!(input[:stack], context: "#{context}[:stack]") unless input[:stack].nil?
      end
    end

    class CreateStreamingURLInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateStreamingURLInput, context: context)
        Hearth::Validator.validate!(input[:stack_name], ::String, context: "#{context}[:stack_name]")
        Hearth::Validator.validate!(input[:fleet_name], ::String, context: "#{context}[:fleet_name]")
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:validity], ::Integer, context: "#{context}[:validity]")
        Hearth::Validator.validate!(input[:session_context], ::String, context: "#{context}[:session_context]")
      end
    end

    class CreateStreamingURLOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateStreamingURLOutput, context: context)
        Hearth::Validator.validate!(input[:streaming_url], ::String, context: "#{context}[:streaming_url]")
        Hearth::Validator.validate!(input[:expires], ::Time, context: "#{context}[:expires]")
      end
    end

    class CreateUpdatedImageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateUpdatedImageInput, context: context)
        Hearth::Validator.validate!(input[:existing_image_name], ::String, context: "#{context}[:existing_image_name]")
        Hearth::Validator.validate!(input[:new_image_name], ::String, context: "#{context}[:new_image_name]")
        Hearth::Validator.validate!(input[:new_image_description], ::String, context: "#{context}[:new_image_description]")
        Hearth::Validator.validate!(input[:new_image_display_name], ::String, context: "#{context}[:new_image_display_name]")
        Tags.validate!(input[:new_image_tags], context: "#{context}[:new_image_tags]") unless input[:new_image_tags].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class CreateUpdatedImageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateUpdatedImageOutput, context: context)
        Image.validate!(input[:image], context: "#{context}[:image]") unless input[:image].nil?
        Hearth::Validator.validate!(input[:can_update_image], ::TrueClass, ::FalseClass, context: "#{context}[:can_update_image]")
      end
    end

    class CreateUsageReportSubscriptionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateUsageReportSubscriptionInput, context: context)
      end
    end

    class CreateUsageReportSubscriptionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateUsageReportSubscriptionOutput, context: context)
        Hearth::Validator.validate!(input[:s3_bucket_name], ::String, context: "#{context}[:s3_bucket_name]")
        Hearth::Validator.validate!(input[:schedule], ::String, context: "#{context}[:schedule]")
      end
    end

    class CreateUserInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateUserInput, context: context)
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Hearth::Validator.validate!(input[:message_action], ::String, context: "#{context}[:message_action]")
        Hearth::Validator.validate!(input[:first_name], ::String, context: "#{context}[:first_name]")
        Hearth::Validator.validate!(input[:last_name], ::String, context: "#{context}[:last_name]")
        Hearth::Validator.validate!(input[:authentication_type], ::String, context: "#{context}[:authentication_type]")
      end
    end

    class CreateUserOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateUserOutput, context: context)
      end
    end

    class DeleteAppBlockInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAppBlockInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DeleteAppBlockOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAppBlockOutput, context: context)
      end
    end

    class DeleteApplicationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteApplicationInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DeleteApplicationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteApplicationOutput, context: context)
      end
    end

    class DeleteDirectoryConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDirectoryConfigInput, context: context)
        Hearth::Validator.validate!(input[:directory_name], ::String, context: "#{context}[:directory_name]")
      end
    end

    class DeleteDirectoryConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDirectoryConfigOutput, context: context)
      end
    end

    class DeleteEntitlementInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEntitlementInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:stack_name], ::String, context: "#{context}[:stack_name]")
      end
    end

    class DeleteEntitlementOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEntitlementOutput, context: context)
      end
    end

    class DeleteFleetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFleetInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DeleteFleetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFleetOutput, context: context)
      end
    end

    class DeleteImageBuilderInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteImageBuilderInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DeleteImageBuilderOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteImageBuilderOutput, context: context)
        ImageBuilder.validate!(input[:image_builder], context: "#{context}[:image_builder]") unless input[:image_builder].nil?
      end
    end

    class DeleteImageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteImageInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DeleteImageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteImageOutput, context: context)
        Image.validate!(input[:image], context: "#{context}[:image]") unless input[:image].nil?
      end
    end

    class DeleteImagePermissionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteImagePermissionsInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:shared_account_id], ::String, context: "#{context}[:shared_account_id]")
      end
    end

    class DeleteImagePermissionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteImagePermissionsOutput, context: context)
      end
    end

    class DeleteStackInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteStackInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DeleteStackOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteStackOutput, context: context)
      end
    end

    class DeleteUsageReportSubscriptionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteUsageReportSubscriptionInput, context: context)
      end
    end

    class DeleteUsageReportSubscriptionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteUsageReportSubscriptionOutput, context: context)
      end
    end

    class DeleteUserInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteUserInput, context: context)
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Hearth::Validator.validate!(input[:authentication_type], ::String, context: "#{context}[:authentication_type]")
      end
    end

    class DeleteUserOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteUserOutput, context: context)
      end
    end

    class DescribeAppBlocksInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAppBlocksInput, context: context)
        ArnList.validate!(input[:arns], context: "#{context}[:arns]") unless input[:arns].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class DescribeAppBlocksOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAppBlocksOutput, context: context)
        AppBlocks.validate!(input[:app_blocks], context: "#{context}[:app_blocks]") unless input[:app_blocks].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeApplicationFleetAssociationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeApplicationFleetAssociationsInput, context: context)
        Hearth::Validator.validate!(input[:fleet_name], ::String, context: "#{context}[:fleet_name]")
        Hearth::Validator.validate!(input[:application_arn], ::String, context: "#{context}[:application_arn]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeApplicationFleetAssociationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeApplicationFleetAssociationsOutput, context: context)
        ApplicationFleetAssociationList.validate!(input[:application_fleet_associations], context: "#{context}[:application_fleet_associations]") unless input[:application_fleet_associations].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeApplicationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeApplicationsInput, context: context)
        ArnList.validate!(input[:arns], context: "#{context}[:arns]") unless input[:arns].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class DescribeApplicationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeApplicationsOutput, context: context)
        Applications.validate!(input[:applications], context: "#{context}[:applications]") unless input[:applications].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeDirectoryConfigsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDirectoryConfigsInput, context: context)
        DirectoryNameList.validate!(input[:directory_names], context: "#{context}[:directory_names]") unless input[:directory_names].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeDirectoryConfigsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDirectoryConfigsOutput, context: context)
        DirectoryConfigList.validate!(input[:directory_configs], context: "#{context}[:directory_configs]") unless input[:directory_configs].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeEntitlementsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEntitlementsInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:stack_name], ::String, context: "#{context}[:stack_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class DescribeEntitlementsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEntitlementsOutput, context: context)
        EntitlementList.validate!(input[:entitlements], context: "#{context}[:entitlements]") unless input[:entitlements].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeFleetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFleetsInput, context: context)
        StringList.validate!(input[:names], context: "#{context}[:names]") unless input[:names].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeFleetsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFleetsOutput, context: context)
        FleetList.validate!(input[:fleets], context: "#{context}[:fleets]") unless input[:fleets].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeImageBuildersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeImageBuildersInput, context: context)
        StringList.validate!(input[:names], context: "#{context}[:names]") unless input[:names].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeImageBuildersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeImageBuildersOutput, context: context)
        ImageBuilderList.validate!(input[:image_builders], context: "#{context}[:image_builders]") unless input[:image_builders].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeImagePermissionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeImagePermissionsInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        AwsAccountIdList.validate!(input[:shared_aws_account_ids], context: "#{context}[:shared_aws_account_ids]") unless input[:shared_aws_account_ids].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeImagePermissionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeImagePermissionsOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        SharedImagePermissionsList.validate!(input[:shared_image_permissions_list], context: "#{context}[:shared_image_permissions_list]") unless input[:shared_image_permissions_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeImagesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeImagesInput, context: context)
        StringList.validate!(input[:names], context: "#{context}[:names]") unless input[:names].nil?
        ArnList.validate!(input[:arns], context: "#{context}[:arns]") unless input[:arns].nil?
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class DescribeImagesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeImagesOutput, context: context)
        ImageList.validate!(input[:images], context: "#{context}[:images]") unless input[:images].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeSessionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSessionsInput, context: context)
        Hearth::Validator.validate!(input[:stack_name], ::String, context: "#{context}[:stack_name]")
        Hearth::Validator.validate!(input[:fleet_name], ::String, context: "#{context}[:fleet_name]")
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:authentication_type], ::String, context: "#{context}[:authentication_type]")
      end
    end

    class DescribeSessionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSessionsOutput, context: context)
        SessionList.validate!(input[:sessions], context: "#{context}[:sessions]") unless input[:sessions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeStacksInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeStacksInput, context: context)
        StringList.validate!(input[:names], context: "#{context}[:names]") unless input[:names].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeStacksOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeStacksOutput, context: context)
        StackList.validate!(input[:stacks], context: "#{context}[:stacks]") unless input[:stacks].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeUsageReportSubscriptionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeUsageReportSubscriptionsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeUsageReportSubscriptionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeUsageReportSubscriptionsOutput, context: context)
        UsageReportSubscriptionList.validate!(input[:usage_report_subscriptions], context: "#{context}[:usage_report_subscriptions]") unless input[:usage_report_subscriptions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeUserStackAssociationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeUserStackAssociationsInput, context: context)
        Hearth::Validator.validate!(input[:stack_name], ::String, context: "#{context}[:stack_name]")
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Hearth::Validator.validate!(input[:authentication_type], ::String, context: "#{context}[:authentication_type]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeUserStackAssociationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeUserStackAssociationsOutput, context: context)
        UserStackAssociationList.validate!(input[:user_stack_associations], context: "#{context}[:user_stack_associations]") unless input[:user_stack_associations].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeUsersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeUsersInput, context: context)
        Hearth::Validator.validate!(input[:authentication_type], ::String, context: "#{context}[:authentication_type]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeUsersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeUsersOutput, context: context)
        UserList.validate!(input[:users], context: "#{context}[:users]") unless input[:users].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DirectoryConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DirectoryConfig, context: context)
        Hearth::Validator.validate!(input[:directory_name], ::String, context: "#{context}[:directory_name]")
        OrganizationalUnitDistinguishedNamesList.validate!(input[:organizational_unit_distinguished_names], context: "#{context}[:organizational_unit_distinguished_names]") unless input[:organizational_unit_distinguished_names].nil?
        ServiceAccountCredentials.validate!(input[:service_account_credentials], context: "#{context}[:service_account_credentials]") unless input[:service_account_credentials].nil?
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
      end
    end

    class DirectoryConfigList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DirectoryConfig.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DirectoryNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DisableUserInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisableUserInput, context: context)
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Hearth::Validator.validate!(input[:authentication_type], ::String, context: "#{context}[:authentication_type]")
      end
    end

    class DisableUserOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisableUserOutput, context: context)
      end
    end

    class DisassociateApplicationFleetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateApplicationFleetInput, context: context)
        Hearth::Validator.validate!(input[:fleet_name], ::String, context: "#{context}[:fleet_name]")
        Hearth::Validator.validate!(input[:application_arn], ::String, context: "#{context}[:application_arn]")
      end
    end

    class DisassociateApplicationFleetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateApplicationFleetOutput, context: context)
      end
    end

    class DisassociateApplicationFromEntitlementInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateApplicationFromEntitlementInput, context: context)
        Hearth::Validator.validate!(input[:stack_name], ::String, context: "#{context}[:stack_name]")
        Hearth::Validator.validate!(input[:entitlement_name], ::String, context: "#{context}[:entitlement_name]")
        Hearth::Validator.validate!(input[:application_identifier], ::String, context: "#{context}[:application_identifier]")
      end
    end

    class DisassociateApplicationFromEntitlementOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateApplicationFromEntitlementOutput, context: context)
      end
    end

    class DisassociateFleetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateFleetInput, context: context)
        Hearth::Validator.validate!(input[:fleet_name], ::String, context: "#{context}[:fleet_name]")
        Hearth::Validator.validate!(input[:stack_name], ::String, context: "#{context}[:stack_name]")
      end
    end

    class DisassociateFleetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateFleetOutput, context: context)
      end
    end

    class DomainJoinInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DomainJoinInfo, context: context)
        Hearth::Validator.validate!(input[:directory_name], ::String, context: "#{context}[:directory_name]")
        Hearth::Validator.validate!(input[:organizational_unit_distinguished_name], ::String, context: "#{context}[:organizational_unit_distinguished_name]")
      end
    end

    class DomainList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class EmbedHostDomains
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class EnableUserInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableUserInput, context: context)
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Hearth::Validator.validate!(input[:authentication_type], ::String, context: "#{context}[:authentication_type]")
      end
    end

    class EnableUserOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableUserOutput, context: context)
      end
    end

    class EntitledApplication
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EntitledApplication, context: context)
        Hearth::Validator.validate!(input[:application_identifier], ::String, context: "#{context}[:application_identifier]")
      end
    end

    class EntitledApplicationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          EntitledApplication.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Entitlement
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Entitlement, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:stack_name], ::String, context: "#{context}[:stack_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:app_visibility], ::String, context: "#{context}[:app_visibility]")
        EntitlementAttributeList.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
      end
    end

    class EntitlementAlreadyExistsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EntitlementAlreadyExistsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class EntitlementAttribute
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EntitlementAttribute, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class EntitlementAttributeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          EntitlementAttribute.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EntitlementList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Entitlement.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EntitlementNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EntitlementNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ExpireSessionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExpireSessionInput, context: context)
        Hearth::Validator.validate!(input[:session_id], ::String, context: "#{context}[:session_id]")
      end
    end

    class ExpireSessionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExpireSessionOutput, context: context)
      end
    end

    class Fleet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Fleet, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:image_name], ::String, context: "#{context}[:image_name]")
        Hearth::Validator.validate!(input[:image_arn], ::String, context: "#{context}[:image_arn]")
        Hearth::Validator.validate!(input[:instance_type], ::String, context: "#{context}[:instance_type]")
        Hearth::Validator.validate!(input[:fleet_type], ::String, context: "#{context}[:fleet_type]")
        ComputeCapacityStatus.validate!(input[:compute_capacity_status], context: "#{context}[:compute_capacity_status]") unless input[:compute_capacity_status].nil?
        Hearth::Validator.validate!(input[:max_user_duration_in_seconds], ::Integer, context: "#{context}[:max_user_duration_in_seconds]")
        Hearth::Validator.validate!(input[:disconnect_timeout_in_seconds], ::Integer, context: "#{context}[:disconnect_timeout_in_seconds]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        VpcConfig.validate!(input[:vpc_config], context: "#{context}[:vpc_config]") unless input[:vpc_config].nil?
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
        FleetErrors.validate!(input[:fleet_errors], context: "#{context}[:fleet_errors]") unless input[:fleet_errors].nil?
        Hearth::Validator.validate!(input[:enable_default_internet_access], ::TrueClass, ::FalseClass, context: "#{context}[:enable_default_internet_access]")
        DomainJoinInfo.validate!(input[:domain_join_info], context: "#{context}[:domain_join_info]") unless input[:domain_join_info].nil?
        Hearth::Validator.validate!(input[:idle_disconnect_timeout_in_seconds], ::Integer, context: "#{context}[:idle_disconnect_timeout_in_seconds]")
        Hearth::Validator.validate!(input[:iam_role_arn], ::String, context: "#{context}[:iam_role_arn]")
        Hearth::Validator.validate!(input[:stream_view], ::String, context: "#{context}[:stream_view]")
        Hearth::Validator.validate!(input[:platform], ::String, context: "#{context}[:platform]")
        Hearth::Validator.validate!(input[:max_concurrent_sessions], ::Integer, context: "#{context}[:max_concurrent_sessions]")
        UsbDeviceFilterStrings.validate!(input[:usb_device_filter_strings], context: "#{context}[:usb_device_filter_strings]") unless input[:usb_device_filter_strings].nil?
        S3Location.validate!(input[:session_script_s3_location], context: "#{context}[:session_script_s3_location]") unless input[:session_script_s3_location].nil?
      end
    end

    class FleetAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class FleetError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FleetError, context: context)
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
      end
    end

    class FleetErrors
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          FleetError.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FleetList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Fleet.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Image
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Image, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:base_image_arn], ::String, context: "#{context}[:base_image_arn]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:visibility], ::String, context: "#{context}[:visibility]")
        Hearth::Validator.validate!(input[:image_builder_supported], ::TrueClass, ::FalseClass, context: "#{context}[:image_builder_supported]")
        Hearth::Validator.validate!(input[:image_builder_name], ::String, context: "#{context}[:image_builder_name]")
        Hearth::Validator.validate!(input[:platform], ::String, context: "#{context}[:platform]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        ImageStateChangeReason.validate!(input[:state_change_reason], context: "#{context}[:state_change_reason]") unless input[:state_change_reason].nil?
        Applications.validate!(input[:applications], context: "#{context}[:applications]") unless input[:applications].nil?
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
        Hearth::Validator.validate!(input[:public_base_image_released_date], ::Time, context: "#{context}[:public_base_image_released_date]")
        Hearth::Validator.validate!(input[:appstream_agent_version], ::String, context: "#{context}[:appstream_agent_version]")
        ImagePermissions.validate!(input[:image_permissions], context: "#{context}[:image_permissions]") unless input[:image_permissions].nil?
        ResourceErrors.validate!(input[:image_errors], context: "#{context}[:image_errors]") unless input[:image_errors].nil?
      end
    end

    class ImageBuilder
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImageBuilder, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:image_arn], ::String, context: "#{context}[:image_arn]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        VpcConfig.validate!(input[:vpc_config], context: "#{context}[:vpc_config]") unless input[:vpc_config].nil?
        Hearth::Validator.validate!(input[:instance_type], ::String, context: "#{context}[:instance_type]")
        Hearth::Validator.validate!(input[:platform], ::String, context: "#{context}[:platform]")
        Hearth::Validator.validate!(input[:iam_role_arn], ::String, context: "#{context}[:iam_role_arn]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        ImageBuilderStateChangeReason.validate!(input[:state_change_reason], context: "#{context}[:state_change_reason]") unless input[:state_change_reason].nil?
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
        Hearth::Validator.validate!(input[:enable_default_internet_access], ::TrueClass, ::FalseClass, context: "#{context}[:enable_default_internet_access]")
        DomainJoinInfo.validate!(input[:domain_join_info], context: "#{context}[:domain_join_info]") unless input[:domain_join_info].nil?
        NetworkAccessConfiguration.validate!(input[:network_access_configuration], context: "#{context}[:network_access_configuration]") unless input[:network_access_configuration].nil?
        ResourceErrors.validate!(input[:image_builder_errors], context: "#{context}[:image_builder_errors]") unless input[:image_builder_errors].nil?
        Hearth::Validator.validate!(input[:appstream_agent_version], ::String, context: "#{context}[:appstream_agent_version]")
        AccessEndpointList.validate!(input[:access_endpoints], context: "#{context}[:access_endpoints]") unless input[:access_endpoints].nil?
      end
    end

    class ImageBuilderList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ImageBuilder.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ImageBuilderStateChangeReason
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImageBuilderStateChangeReason, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ImageList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Image.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ImagePermissions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImagePermissions, context: context)
        Hearth::Validator.validate!(input[:allow_fleet], ::TrueClass, ::FalseClass, context: "#{context}[:allow_fleet]")
        Hearth::Validator.validate!(input[:allow_image_builder], ::TrueClass, ::FalseClass, context: "#{context}[:allow_image_builder]")
      end
    end

    class ImageStateChangeReason
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImageStateChangeReason, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class IncompatibleImageException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IncompatibleImageException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidAccountStatusException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidAccountStatusException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidParameterCombinationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidParameterCombinationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidRoleException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidRoleException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class LastReportGenerationExecutionError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LastReportGenerationExecutionError, context: context)
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
      end
    end

    class LastReportGenerationExecutionErrors
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          LastReportGenerationExecutionError.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListAssociatedFleetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAssociatedFleetsInput, context: context)
        Hearth::Validator.validate!(input[:stack_name], ::String, context: "#{context}[:stack_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAssociatedFleetsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAssociatedFleetsOutput, context: context)
        StringList.validate!(input[:names], context: "#{context}[:names]") unless input[:names].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAssociatedStacksInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAssociatedStacksInput, context: context)
        Hearth::Validator.validate!(input[:fleet_name], ::String, context: "#{context}[:fleet_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAssociatedStacksOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAssociatedStacksOutput, context: context)
        StringList.validate!(input[:names], context: "#{context}[:names]") unless input[:names].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListEntitledApplicationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEntitledApplicationsInput, context: context)
        Hearth::Validator.validate!(input[:stack_name], ::String, context: "#{context}[:stack_name]")
        Hearth::Validator.validate!(input[:entitlement_name], ::String, context: "#{context}[:entitlement_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListEntitledApplicationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEntitledApplicationsOutput, context: context)
        EntitledApplicationList.validate!(input[:entitled_applications], context: "#{context}[:entitled_applications]") unless input[:entitled_applications].nil?
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
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class Metadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class NetworkAccessConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NetworkAccessConfiguration, context: context)
        Hearth::Validator.validate!(input[:eni_private_ip_address], ::String, context: "#{context}[:eni_private_ip_address]")
        Hearth::Validator.validate!(input[:eni_id], ::String, context: "#{context}[:eni_id]")
      end
    end

    class OperationNotPermittedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OperationNotPermittedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class OrganizationalUnitDistinguishedNamesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Platforms
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class RequestLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RequestLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceAlreadyExistsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceAlreadyExistsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceError, context: context)
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
        Hearth::Validator.validate!(input[:error_timestamp], ::Time, context: "#{context}[:error_timestamp]")
      end
    end

    class ResourceErrors
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ResourceError.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResourceInUseException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceInUseException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceNotAvailableException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotAvailableException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class S3Location
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3Location, context: context)
        Hearth::Validator.validate!(input[:s3_bucket], ::String, context: "#{context}[:s3_bucket]")
        Hearth::Validator.validate!(input[:s3_key], ::String, context: "#{context}[:s3_key]")
      end
    end

    class ScriptDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScriptDetails, context: context)
        S3Location.validate!(input[:script_s3_location], context: "#{context}[:script_s3_location]") unless input[:script_s3_location].nil?
        Hearth::Validator.validate!(input[:executable_path], ::String, context: "#{context}[:executable_path]")
        Hearth::Validator.validate!(input[:executable_parameters], ::String, context: "#{context}[:executable_parameters]")
        Hearth::Validator.validate!(input[:timeout_in_seconds], ::Integer, context: "#{context}[:timeout_in_seconds]")
      end
    end

    class SecurityGroupIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ServiceAccountCredentials
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceAccountCredentials, context: context)
        Hearth::Validator.validate!(input[:account_name], ::String, context: "#{context}[:account_name]")
        Hearth::Validator.validate!(input[:account_password], ::String, context: "#{context}[:account_password]")
      end
    end

    class Session
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Session, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
        Hearth::Validator.validate!(input[:stack_name], ::String, context: "#{context}[:stack_name]")
        Hearth::Validator.validate!(input[:fleet_name], ::String, context: "#{context}[:fleet_name]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:connection_state], ::String, context: "#{context}[:connection_state]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:max_expiration_time], ::Time, context: "#{context}[:max_expiration_time]")
        Hearth::Validator.validate!(input[:authentication_type], ::String, context: "#{context}[:authentication_type]")
        NetworkAccessConfiguration.validate!(input[:network_access_configuration], context: "#{context}[:network_access_configuration]") unless input[:network_access_configuration].nil?
      end
    end

    class SessionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Session.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SharedImagePermissions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SharedImagePermissions, context: context)
        Hearth::Validator.validate!(input[:shared_account_id], ::String, context: "#{context}[:shared_account_id]")
        ImagePermissions.validate!(input[:image_permissions], context: "#{context}[:image_permissions]") unless input[:image_permissions].nil?
      end
    end

    class SharedImagePermissionsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SharedImagePermissions.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Stack
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Stack, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
        StorageConnectorList.validate!(input[:storage_connectors], context: "#{context}[:storage_connectors]") unless input[:storage_connectors].nil?
        Hearth::Validator.validate!(input[:redirect_url], ::String, context: "#{context}[:redirect_url]")
        Hearth::Validator.validate!(input[:feedback_url], ::String, context: "#{context}[:feedback_url]")
        StackErrors.validate!(input[:stack_errors], context: "#{context}[:stack_errors]") unless input[:stack_errors].nil?
        UserSettingList.validate!(input[:user_settings], context: "#{context}[:user_settings]") unless input[:user_settings].nil?
        ApplicationSettingsResponse.validate!(input[:application_settings], context: "#{context}[:application_settings]") unless input[:application_settings].nil?
        AccessEndpointList.validate!(input[:access_endpoints], context: "#{context}[:access_endpoints]") unless input[:access_endpoints].nil?
        EmbedHostDomains.validate!(input[:embed_host_domains], context: "#{context}[:embed_host_domains]") unless input[:embed_host_domains].nil?
      end
    end

    class StackAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class StackError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StackError, context: context)
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
      end
    end

    class StackErrors
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          StackError.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StackList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Stack.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StartFleetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartFleetInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class StartFleetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartFleetOutput, context: context)
      end
    end

    class StartImageBuilderInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartImageBuilderInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:appstream_agent_version], ::String, context: "#{context}[:appstream_agent_version]")
      end
    end

    class StartImageBuilderOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartImageBuilderOutput, context: context)
        ImageBuilder.validate!(input[:image_builder], context: "#{context}[:image_builder]") unless input[:image_builder].nil?
      end
    end

    class StopFleetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopFleetInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class StopFleetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopFleetOutput, context: context)
      end
    end

    class StopImageBuilderInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopImageBuilderInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class StopImageBuilderOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopImageBuilderOutput, context: context)
        ImageBuilder.validate!(input[:image_builder], context: "#{context}[:image_builder]") unless input[:image_builder].nil?
      end
    end

    class StorageConnector
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StorageConnector, context: context)
        Hearth::Validator.validate!(input[:connector_type], ::String, context: "#{context}[:connector_type]")
        Hearth::Validator.validate!(input[:resource_identifier], ::String, context: "#{context}[:resource_identifier]")
        DomainList.validate!(input[:domains], context: "#{context}[:domains]") unless input[:domains].nil?
      end
    end

    class StorageConnectorList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          StorageConnector.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SubnetIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
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

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class Tags
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
        TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateApplicationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateApplicationInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        S3Location.validate!(input[:icon_s3_location], context: "#{context}[:icon_s3_location]") unless input[:icon_s3_location].nil?
        Hearth::Validator.validate!(input[:launch_path], ::String, context: "#{context}[:launch_path]")
        Hearth::Validator.validate!(input[:working_directory], ::String, context: "#{context}[:working_directory]")
        Hearth::Validator.validate!(input[:launch_parameters], ::String, context: "#{context}[:launch_parameters]")
        Hearth::Validator.validate!(input[:app_block_arn], ::String, context: "#{context}[:app_block_arn]")
        ApplicationAttributes.validate!(input[:attributes_to_delete], context: "#{context}[:attributes_to_delete]") unless input[:attributes_to_delete].nil?
      end
    end

    class UpdateApplicationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateApplicationOutput, context: context)
        Application.validate!(input[:application], context: "#{context}[:application]") unless input[:application].nil?
      end
    end

    class UpdateDirectoryConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDirectoryConfigInput, context: context)
        Hearth::Validator.validate!(input[:directory_name], ::String, context: "#{context}[:directory_name]")
        OrganizationalUnitDistinguishedNamesList.validate!(input[:organizational_unit_distinguished_names], context: "#{context}[:organizational_unit_distinguished_names]") unless input[:organizational_unit_distinguished_names].nil?
        ServiceAccountCredentials.validate!(input[:service_account_credentials], context: "#{context}[:service_account_credentials]") unless input[:service_account_credentials].nil?
      end
    end

    class UpdateDirectoryConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDirectoryConfigOutput, context: context)
        DirectoryConfig.validate!(input[:directory_config], context: "#{context}[:directory_config]") unless input[:directory_config].nil?
      end
    end

    class UpdateEntitlementInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateEntitlementInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:stack_name], ::String, context: "#{context}[:stack_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:app_visibility], ::String, context: "#{context}[:app_visibility]")
        EntitlementAttributeList.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
      end
    end

    class UpdateEntitlementOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateEntitlementOutput, context: context)
        Entitlement.validate!(input[:entitlement], context: "#{context}[:entitlement]") unless input[:entitlement].nil?
      end
    end

    class UpdateFleetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFleetInput, context: context)
        Hearth::Validator.validate!(input[:image_name], ::String, context: "#{context}[:image_name]")
        Hearth::Validator.validate!(input[:image_arn], ::String, context: "#{context}[:image_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:instance_type], ::String, context: "#{context}[:instance_type]")
        ComputeCapacity.validate!(input[:compute_capacity], context: "#{context}[:compute_capacity]") unless input[:compute_capacity].nil?
        VpcConfig.validate!(input[:vpc_config], context: "#{context}[:vpc_config]") unless input[:vpc_config].nil?
        Hearth::Validator.validate!(input[:max_user_duration_in_seconds], ::Integer, context: "#{context}[:max_user_duration_in_seconds]")
        Hearth::Validator.validate!(input[:disconnect_timeout_in_seconds], ::Integer, context: "#{context}[:disconnect_timeout_in_seconds]")
        Hearth::Validator.validate!(input[:delete_vpc_config], ::TrueClass, ::FalseClass, context: "#{context}[:delete_vpc_config]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate!(input[:enable_default_internet_access], ::TrueClass, ::FalseClass, context: "#{context}[:enable_default_internet_access]")
        DomainJoinInfo.validate!(input[:domain_join_info], context: "#{context}[:domain_join_info]") unless input[:domain_join_info].nil?
        Hearth::Validator.validate!(input[:idle_disconnect_timeout_in_seconds], ::Integer, context: "#{context}[:idle_disconnect_timeout_in_seconds]")
        FleetAttributes.validate!(input[:attributes_to_delete], context: "#{context}[:attributes_to_delete]") unless input[:attributes_to_delete].nil?
        Hearth::Validator.validate!(input[:iam_role_arn], ::String, context: "#{context}[:iam_role_arn]")
        Hearth::Validator.validate!(input[:stream_view], ::String, context: "#{context}[:stream_view]")
        Hearth::Validator.validate!(input[:platform], ::String, context: "#{context}[:platform]")
        Hearth::Validator.validate!(input[:max_concurrent_sessions], ::Integer, context: "#{context}[:max_concurrent_sessions]")
        UsbDeviceFilterStrings.validate!(input[:usb_device_filter_strings], context: "#{context}[:usb_device_filter_strings]") unless input[:usb_device_filter_strings].nil?
        S3Location.validate!(input[:session_script_s3_location], context: "#{context}[:session_script_s3_location]") unless input[:session_script_s3_location].nil?
      end
    end

    class UpdateFleetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFleetOutput, context: context)
        Fleet.validate!(input[:fleet], context: "#{context}[:fleet]") unless input[:fleet].nil?
      end
    end

    class UpdateImagePermissionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateImagePermissionsInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:shared_account_id], ::String, context: "#{context}[:shared_account_id]")
        ImagePermissions.validate!(input[:image_permissions], context: "#{context}[:image_permissions]") unless input[:image_permissions].nil?
      end
    end

    class UpdateImagePermissionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateImagePermissionsOutput, context: context)
      end
    end

    class UpdateStackInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateStackInput, context: context)
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        StorageConnectorList.validate!(input[:storage_connectors], context: "#{context}[:storage_connectors]") unless input[:storage_connectors].nil?
        Hearth::Validator.validate!(input[:delete_storage_connectors], ::TrueClass, ::FalseClass, context: "#{context}[:delete_storage_connectors]")
        Hearth::Validator.validate!(input[:redirect_url], ::String, context: "#{context}[:redirect_url]")
        Hearth::Validator.validate!(input[:feedback_url], ::String, context: "#{context}[:feedback_url]")
        StackAttributes.validate!(input[:attributes_to_delete], context: "#{context}[:attributes_to_delete]") unless input[:attributes_to_delete].nil?
        UserSettingList.validate!(input[:user_settings], context: "#{context}[:user_settings]") unless input[:user_settings].nil?
        ApplicationSettings.validate!(input[:application_settings], context: "#{context}[:application_settings]") unless input[:application_settings].nil?
        AccessEndpointList.validate!(input[:access_endpoints], context: "#{context}[:access_endpoints]") unless input[:access_endpoints].nil?
        EmbedHostDomains.validate!(input[:embed_host_domains], context: "#{context}[:embed_host_domains]") unless input[:embed_host_domains].nil?
      end
    end

    class UpdateStackOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateStackOutput, context: context)
        Stack.validate!(input[:stack], context: "#{context}[:stack]") unless input[:stack].nil?
      end
    end

    class UsageReportSubscription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UsageReportSubscription, context: context)
        Hearth::Validator.validate!(input[:s3_bucket_name], ::String, context: "#{context}[:s3_bucket_name]")
        Hearth::Validator.validate!(input[:schedule], ::String, context: "#{context}[:schedule]")
        Hearth::Validator.validate!(input[:last_generated_report_date], ::Time, context: "#{context}[:last_generated_report_date]")
        LastReportGenerationExecutionErrors.validate!(input[:subscription_errors], context: "#{context}[:subscription_errors]") unless input[:subscription_errors].nil?
      end
    end

    class UsageReportSubscriptionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          UsageReportSubscription.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UsbDeviceFilterStrings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class User
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::User, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:first_name], ::String, context: "#{context}[:first_name]")
        Hearth::Validator.validate!(input[:last_name], ::String, context: "#{context}[:last_name]")
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
        Hearth::Validator.validate!(input[:authentication_type], ::String, context: "#{context}[:authentication_type]")
      end
    end

    class UserList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          User.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UserSetting
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UserSetting, context: context)
        Hearth::Validator.validate!(input[:action], ::String, context: "#{context}[:action]")
        Hearth::Validator.validate!(input[:permission], ::String, context: "#{context}[:permission]")
      end
    end

    class UserSettingList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          UserSetting.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UserStackAssociation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UserStackAssociation, context: context)
        Hearth::Validator.validate!(input[:stack_name], ::String, context: "#{context}[:stack_name]")
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Hearth::Validator.validate!(input[:authentication_type], ::String, context: "#{context}[:authentication_type]")
        Hearth::Validator.validate!(input[:send_email_notification], ::TrueClass, ::FalseClass, context: "#{context}[:send_email_notification]")
      end
    end

    class UserStackAssociationError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UserStackAssociationError, context: context)
        UserStackAssociation.validate!(input[:user_stack_association], context: "#{context}[:user_stack_association]") unless input[:user_stack_association].nil?
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
      end
    end

    class UserStackAssociationErrorList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          UserStackAssociationError.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UserStackAssociationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          UserStackAssociation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class VpcConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VpcConfig, context: context)
        SubnetIdList.validate!(input[:subnet_ids], context: "#{context}[:subnet_ids]") unless input[:subnet_ids].nil?
        SecurityGroupIdList.validate!(input[:security_group_ids], context: "#{context}[:security_group_ids]") unless input[:security_group_ids].nil?
      end
    end

  end
end
