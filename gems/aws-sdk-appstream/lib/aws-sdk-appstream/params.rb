# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::AppStream
  module Params

    module AccessEndpoint
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessEndpoint, context: context)
        type = Types::AccessEndpoint.new
        type.endpoint_type = params[:endpoint_type]
        type.vpce_id = params[:vpce_id]
        type
      end
    end

    module AccessEndpointList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AccessEndpoint.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AppBlock
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AppBlock, context: context)
        type = Types::AppBlock.new
        type.name = params[:name]
        type.arn = params[:arn]
        type.description = params[:description]
        type.display_name = params[:display_name]
        type.source_s3_location = S3Location.build(params[:source_s3_location], context: "#{context}[:source_s3_location]") unless params[:source_s3_location].nil?
        type.setup_script_details = ScriptDetails.build(params[:setup_script_details], context: "#{context}[:setup_script_details]") unless params[:setup_script_details].nil?
        type.created_time = params[:created_time]
        type
      end
    end

    module AppBlocks
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AppBlock.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Application
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Application, context: context)
        type = Types::Application.new
        type.name = params[:name]
        type.display_name = params[:display_name]
        type.icon_url = params[:icon_url]
        type.launch_path = params[:launch_path]
        type.launch_parameters = params[:launch_parameters]
        type.enabled = params[:enabled]
        type.metadata = Metadata.build(params[:metadata], context: "#{context}[:metadata]") unless params[:metadata].nil?
        type.working_directory = params[:working_directory]
        type.description = params[:description]
        type.arn = params[:arn]
        type.app_block_arn = params[:app_block_arn]
        type.icon_s3_location = S3Location.build(params[:icon_s3_location], context: "#{context}[:icon_s3_location]") unless params[:icon_s3_location].nil?
        type.platforms = Platforms.build(params[:platforms], context: "#{context}[:platforms]") unless params[:platforms].nil?
        type.instance_families = StringList.build(params[:instance_families], context: "#{context}[:instance_families]") unless params[:instance_families].nil?
        type.created_time = params[:created_time]
        type
      end
    end

    module ApplicationAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ApplicationFleetAssociation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApplicationFleetAssociation, context: context)
        type = Types::ApplicationFleetAssociation.new
        type.fleet_name = params[:fleet_name]
        type.application_arn = params[:application_arn]
        type
      end
    end

    module ApplicationFleetAssociationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ApplicationFleetAssociation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ApplicationSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApplicationSettings, context: context)
        type = Types::ApplicationSettings.new
        type.enabled = params[:enabled]
        type.settings_group = params[:settings_group]
        type
      end
    end

    module ApplicationSettingsResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApplicationSettingsResponse, context: context)
        type = Types::ApplicationSettingsResponse.new
        type.enabled = params[:enabled]
        type.settings_group = params[:settings_group]
        type.s3_bucket_name = params[:s3_bucket_name]
        type
      end
    end

    module Applications
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Application.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ArnList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AssociateApplicationFleetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateApplicationFleetInput, context: context)
        type = Types::AssociateApplicationFleetInput.new
        type.fleet_name = params[:fleet_name]
        type.application_arn = params[:application_arn]
        type
      end
    end

    module AssociateApplicationFleetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateApplicationFleetOutput, context: context)
        type = Types::AssociateApplicationFleetOutput.new
        type.application_fleet_association = ApplicationFleetAssociation.build(params[:application_fleet_association], context: "#{context}[:application_fleet_association]") unless params[:application_fleet_association].nil?
        type
      end
    end

    module AssociateApplicationToEntitlementInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateApplicationToEntitlementInput, context: context)
        type = Types::AssociateApplicationToEntitlementInput.new
        type.stack_name = params[:stack_name]
        type.entitlement_name = params[:entitlement_name]
        type.application_identifier = params[:application_identifier]
        type
      end
    end

    module AssociateApplicationToEntitlementOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateApplicationToEntitlementOutput, context: context)
        type = Types::AssociateApplicationToEntitlementOutput.new
        type
      end
    end

    module AssociateFleetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateFleetInput, context: context)
        type = Types::AssociateFleetInput.new
        type.fleet_name = params[:fleet_name]
        type.stack_name = params[:stack_name]
        type
      end
    end

    module AssociateFleetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateFleetOutput, context: context)
        type = Types::AssociateFleetOutput.new
        type
      end
    end

    module AwsAccountIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module BatchAssociateUserStackInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchAssociateUserStackInput, context: context)
        type = Types::BatchAssociateUserStackInput.new
        type.user_stack_associations = UserStackAssociationList.build(params[:user_stack_associations], context: "#{context}[:user_stack_associations]") unless params[:user_stack_associations].nil?
        type
      end
    end

    module BatchAssociateUserStackOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchAssociateUserStackOutput, context: context)
        type = Types::BatchAssociateUserStackOutput.new
        type.errors = UserStackAssociationErrorList.build(params[:errors], context: "#{context}[:errors]") unless params[:errors].nil?
        type
      end
    end

    module BatchDisassociateUserStackInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDisassociateUserStackInput, context: context)
        type = Types::BatchDisassociateUserStackInput.new
        type.user_stack_associations = UserStackAssociationList.build(params[:user_stack_associations], context: "#{context}[:user_stack_associations]") unless params[:user_stack_associations].nil?
        type
      end
    end

    module BatchDisassociateUserStackOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDisassociateUserStackOutput, context: context)
        type = Types::BatchDisassociateUserStackOutput.new
        type.errors = UserStackAssociationErrorList.build(params[:errors], context: "#{context}[:errors]") unless params[:errors].nil?
        type
      end
    end

    module ComputeCapacity
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ComputeCapacity, context: context)
        type = Types::ComputeCapacity.new
        type.desired_instances = params[:desired_instances]
        type
      end
    end

    module ComputeCapacityStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ComputeCapacityStatus, context: context)
        type = Types::ComputeCapacityStatus.new
        type.desired = params[:desired]
        type.running = params[:running]
        type.in_use = params[:in_use]
        type.available = params[:available]
        type
      end
    end

    module ConcurrentModificationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConcurrentModificationException, context: context)
        type = Types::ConcurrentModificationException.new
        type.message = params[:message]
        type
      end
    end

    module CopyImageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CopyImageInput, context: context)
        type = Types::CopyImageInput.new
        type.source_image_name = params[:source_image_name]
        type.destination_image_name = params[:destination_image_name]
        type.destination_region = params[:destination_region]
        type.destination_image_description = params[:destination_image_description]
        type
      end
    end

    module CopyImageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CopyImageOutput, context: context)
        type = Types::CopyImageOutput.new
        type.destination_image_name = params[:destination_image_name]
        type
      end
    end

    module CreateAppBlockInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAppBlockInput, context: context)
        type = Types::CreateAppBlockInput.new
        type.name = params[:name]
        type.description = params[:description]
        type.display_name = params[:display_name]
        type.source_s3_location = S3Location.build(params[:source_s3_location], context: "#{context}[:source_s3_location]") unless params[:source_s3_location].nil?
        type.setup_script_details = ScriptDetails.build(params[:setup_script_details], context: "#{context}[:setup_script_details]") unless params[:setup_script_details].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateAppBlockOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAppBlockOutput, context: context)
        type = Types::CreateAppBlockOutput.new
        type.app_block = AppBlock.build(params[:app_block], context: "#{context}[:app_block]") unless params[:app_block].nil?
        type
      end
    end

    module CreateApplicationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateApplicationInput, context: context)
        type = Types::CreateApplicationInput.new
        type.name = params[:name]
        type.display_name = params[:display_name]
        type.description = params[:description]
        type.icon_s3_location = S3Location.build(params[:icon_s3_location], context: "#{context}[:icon_s3_location]") unless params[:icon_s3_location].nil?
        type.launch_path = params[:launch_path]
        type.working_directory = params[:working_directory]
        type.launch_parameters = params[:launch_parameters]
        type.platforms = Platforms.build(params[:platforms], context: "#{context}[:platforms]") unless params[:platforms].nil?
        type.instance_families = StringList.build(params[:instance_families], context: "#{context}[:instance_families]") unless params[:instance_families].nil?
        type.app_block_arn = params[:app_block_arn]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateApplicationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateApplicationOutput, context: context)
        type = Types::CreateApplicationOutput.new
        type.application = Application.build(params[:application], context: "#{context}[:application]") unless params[:application].nil?
        type
      end
    end

    module CreateDirectoryConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDirectoryConfigInput, context: context)
        type = Types::CreateDirectoryConfigInput.new
        type.directory_name = params[:directory_name]
        type.organizational_unit_distinguished_names = OrganizationalUnitDistinguishedNamesList.build(params[:organizational_unit_distinguished_names], context: "#{context}[:organizational_unit_distinguished_names]") unless params[:organizational_unit_distinguished_names].nil?
        type.service_account_credentials = ServiceAccountCredentials.build(params[:service_account_credentials], context: "#{context}[:service_account_credentials]") unless params[:service_account_credentials].nil?
        type
      end
    end

    module CreateDirectoryConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDirectoryConfigOutput, context: context)
        type = Types::CreateDirectoryConfigOutput.new
        type.directory_config = DirectoryConfig.build(params[:directory_config], context: "#{context}[:directory_config]") unless params[:directory_config].nil?
        type
      end
    end

    module CreateEntitlementInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateEntitlementInput, context: context)
        type = Types::CreateEntitlementInput.new
        type.name = params[:name]
        type.stack_name = params[:stack_name]
        type.description = params[:description]
        type.app_visibility = params[:app_visibility]
        type.attributes = EntitlementAttributeList.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type
      end
    end

    module CreateEntitlementOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateEntitlementOutput, context: context)
        type = Types::CreateEntitlementOutput.new
        type.entitlement = Entitlement.build(params[:entitlement], context: "#{context}[:entitlement]") unless params[:entitlement].nil?
        type
      end
    end

    module CreateFleetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateFleetInput, context: context)
        type = Types::CreateFleetInput.new
        type.name = params[:name]
        type.image_name = params[:image_name]
        type.image_arn = params[:image_arn]
        type.instance_type = params[:instance_type]
        type.fleet_type = params[:fleet_type]
        type.compute_capacity = ComputeCapacity.build(params[:compute_capacity], context: "#{context}[:compute_capacity]") unless params[:compute_capacity].nil?
        type.vpc_config = VpcConfig.build(params[:vpc_config], context: "#{context}[:vpc_config]") unless params[:vpc_config].nil?
        type.max_user_duration_in_seconds = params[:max_user_duration_in_seconds]
        type.disconnect_timeout_in_seconds = params[:disconnect_timeout_in_seconds]
        type.description = params[:description]
        type.display_name = params[:display_name]
        type.enable_default_internet_access = params[:enable_default_internet_access]
        type.domain_join_info = DomainJoinInfo.build(params[:domain_join_info], context: "#{context}[:domain_join_info]") unless params[:domain_join_info].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.idle_disconnect_timeout_in_seconds = params[:idle_disconnect_timeout_in_seconds]
        type.iam_role_arn = params[:iam_role_arn]
        type.stream_view = params[:stream_view]
        type.platform = params[:platform]
        type.max_concurrent_sessions = params[:max_concurrent_sessions]
        type.usb_device_filter_strings = UsbDeviceFilterStrings.build(params[:usb_device_filter_strings], context: "#{context}[:usb_device_filter_strings]") unless params[:usb_device_filter_strings].nil?
        type.session_script_s3_location = S3Location.build(params[:session_script_s3_location], context: "#{context}[:session_script_s3_location]") unless params[:session_script_s3_location].nil?
        type
      end
    end

    module CreateFleetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateFleetOutput, context: context)
        type = Types::CreateFleetOutput.new
        type.fleet = Fleet.build(params[:fleet], context: "#{context}[:fleet]") unless params[:fleet].nil?
        type
      end
    end

    module CreateImageBuilderInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateImageBuilderInput, context: context)
        type = Types::CreateImageBuilderInput.new
        type.name = params[:name]
        type.image_name = params[:image_name]
        type.image_arn = params[:image_arn]
        type.instance_type = params[:instance_type]
        type.description = params[:description]
        type.display_name = params[:display_name]
        type.vpc_config = VpcConfig.build(params[:vpc_config], context: "#{context}[:vpc_config]") unless params[:vpc_config].nil?
        type.iam_role_arn = params[:iam_role_arn]
        type.enable_default_internet_access = params[:enable_default_internet_access]
        type.domain_join_info = DomainJoinInfo.build(params[:domain_join_info], context: "#{context}[:domain_join_info]") unless params[:domain_join_info].nil?
        type.appstream_agent_version = params[:appstream_agent_version]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.access_endpoints = AccessEndpointList.build(params[:access_endpoints], context: "#{context}[:access_endpoints]") unless params[:access_endpoints].nil?
        type
      end
    end

    module CreateImageBuilderOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateImageBuilderOutput, context: context)
        type = Types::CreateImageBuilderOutput.new
        type.image_builder = ImageBuilder.build(params[:image_builder], context: "#{context}[:image_builder]") unless params[:image_builder].nil?
        type
      end
    end

    module CreateImageBuilderStreamingURLInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateImageBuilderStreamingURLInput, context: context)
        type = Types::CreateImageBuilderStreamingURLInput.new
        type.name = params[:name]
        type.validity = params[:validity]
        type
      end
    end

    module CreateImageBuilderStreamingURLOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateImageBuilderStreamingURLOutput, context: context)
        type = Types::CreateImageBuilderStreamingURLOutput.new
        type.streaming_url = params[:streaming_url]
        type.expires = params[:expires]
        type
      end
    end

    module CreateStackInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateStackInput, context: context)
        type = Types::CreateStackInput.new
        type.name = params[:name]
        type.description = params[:description]
        type.display_name = params[:display_name]
        type.storage_connectors = StorageConnectorList.build(params[:storage_connectors], context: "#{context}[:storage_connectors]") unless params[:storage_connectors].nil?
        type.redirect_url = params[:redirect_url]
        type.feedback_url = params[:feedback_url]
        type.user_settings = UserSettingList.build(params[:user_settings], context: "#{context}[:user_settings]") unless params[:user_settings].nil?
        type.application_settings = ApplicationSettings.build(params[:application_settings], context: "#{context}[:application_settings]") unless params[:application_settings].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.access_endpoints = AccessEndpointList.build(params[:access_endpoints], context: "#{context}[:access_endpoints]") unless params[:access_endpoints].nil?
        type.embed_host_domains = EmbedHostDomains.build(params[:embed_host_domains], context: "#{context}[:embed_host_domains]") unless params[:embed_host_domains].nil?
        type
      end
    end

    module CreateStackOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateStackOutput, context: context)
        type = Types::CreateStackOutput.new
        type.stack = Stack.build(params[:stack], context: "#{context}[:stack]") unless params[:stack].nil?
        type
      end
    end

    module CreateStreamingURLInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateStreamingURLInput, context: context)
        type = Types::CreateStreamingURLInput.new
        type.stack_name = params[:stack_name]
        type.fleet_name = params[:fleet_name]
        type.user_id = params[:user_id]
        type.application_id = params[:application_id]
        type.validity = params[:validity]
        type.session_context = params[:session_context]
        type
      end
    end

    module CreateStreamingURLOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateStreamingURLOutput, context: context)
        type = Types::CreateStreamingURLOutput.new
        type.streaming_url = params[:streaming_url]
        type.expires = params[:expires]
        type
      end
    end

    module CreateUpdatedImageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateUpdatedImageInput, context: context)
        type = Types::CreateUpdatedImageInput.new
        type.existing_image_name = params[:existing_image_name]
        type.new_image_name = params[:new_image_name]
        type.new_image_description = params[:new_image_description]
        type.new_image_display_name = params[:new_image_display_name]
        type.new_image_tags = Tags.build(params[:new_image_tags], context: "#{context}[:new_image_tags]") unless params[:new_image_tags].nil?
        type.dry_run = params[:dry_run]
        type
      end
    end

    module CreateUpdatedImageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateUpdatedImageOutput, context: context)
        type = Types::CreateUpdatedImageOutput.new
        type.image = Image.build(params[:image], context: "#{context}[:image]") unless params[:image].nil?
        type.can_update_image = params[:can_update_image]
        type
      end
    end

    module CreateUsageReportSubscriptionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateUsageReportSubscriptionInput, context: context)
        type = Types::CreateUsageReportSubscriptionInput.new
        type
      end
    end

    module CreateUsageReportSubscriptionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateUsageReportSubscriptionOutput, context: context)
        type = Types::CreateUsageReportSubscriptionOutput.new
        type.s3_bucket_name = params[:s3_bucket_name]
        type.schedule = params[:schedule]
        type
      end
    end

    module CreateUserInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateUserInput, context: context)
        type = Types::CreateUserInput.new
        type.user_name = params[:user_name]
        type.message_action = params[:message_action]
        type.first_name = params[:first_name]
        type.last_name = params[:last_name]
        type.authentication_type = params[:authentication_type]
        type
      end
    end

    module CreateUserOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateUserOutput, context: context)
        type = Types::CreateUserOutput.new
        type
      end
    end

    module DeleteAppBlockInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAppBlockInput, context: context)
        type = Types::DeleteAppBlockInput.new
        type.name = params[:name]
        type
      end
    end

    module DeleteAppBlockOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAppBlockOutput, context: context)
        type = Types::DeleteAppBlockOutput.new
        type
      end
    end

    module DeleteApplicationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteApplicationInput, context: context)
        type = Types::DeleteApplicationInput.new
        type.name = params[:name]
        type
      end
    end

    module DeleteApplicationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteApplicationOutput, context: context)
        type = Types::DeleteApplicationOutput.new
        type
      end
    end

    module DeleteDirectoryConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDirectoryConfigInput, context: context)
        type = Types::DeleteDirectoryConfigInput.new
        type.directory_name = params[:directory_name]
        type
      end
    end

    module DeleteDirectoryConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDirectoryConfigOutput, context: context)
        type = Types::DeleteDirectoryConfigOutput.new
        type
      end
    end

    module DeleteEntitlementInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEntitlementInput, context: context)
        type = Types::DeleteEntitlementInput.new
        type.name = params[:name]
        type.stack_name = params[:stack_name]
        type
      end
    end

    module DeleteEntitlementOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEntitlementOutput, context: context)
        type = Types::DeleteEntitlementOutput.new
        type
      end
    end

    module DeleteFleetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFleetInput, context: context)
        type = Types::DeleteFleetInput.new
        type.name = params[:name]
        type
      end
    end

    module DeleteFleetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFleetOutput, context: context)
        type = Types::DeleteFleetOutput.new
        type
      end
    end

    module DeleteImageBuilderInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteImageBuilderInput, context: context)
        type = Types::DeleteImageBuilderInput.new
        type.name = params[:name]
        type
      end
    end

    module DeleteImageBuilderOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteImageBuilderOutput, context: context)
        type = Types::DeleteImageBuilderOutput.new
        type.image_builder = ImageBuilder.build(params[:image_builder], context: "#{context}[:image_builder]") unless params[:image_builder].nil?
        type
      end
    end

    module DeleteImageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteImageInput, context: context)
        type = Types::DeleteImageInput.new
        type.name = params[:name]
        type
      end
    end

    module DeleteImageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteImageOutput, context: context)
        type = Types::DeleteImageOutput.new
        type.image = Image.build(params[:image], context: "#{context}[:image]") unless params[:image].nil?
        type
      end
    end

    module DeleteImagePermissionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteImagePermissionsInput, context: context)
        type = Types::DeleteImagePermissionsInput.new
        type.name = params[:name]
        type.shared_account_id = params[:shared_account_id]
        type
      end
    end

    module DeleteImagePermissionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteImagePermissionsOutput, context: context)
        type = Types::DeleteImagePermissionsOutput.new
        type
      end
    end

    module DeleteStackInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteStackInput, context: context)
        type = Types::DeleteStackInput.new
        type.name = params[:name]
        type
      end
    end

    module DeleteStackOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteStackOutput, context: context)
        type = Types::DeleteStackOutput.new
        type
      end
    end

    module DeleteUsageReportSubscriptionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteUsageReportSubscriptionInput, context: context)
        type = Types::DeleteUsageReportSubscriptionInput.new
        type
      end
    end

    module DeleteUsageReportSubscriptionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteUsageReportSubscriptionOutput, context: context)
        type = Types::DeleteUsageReportSubscriptionOutput.new
        type
      end
    end

    module DeleteUserInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteUserInput, context: context)
        type = Types::DeleteUserInput.new
        type.user_name = params[:user_name]
        type.authentication_type = params[:authentication_type]
        type
      end
    end

    module DeleteUserOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteUserOutput, context: context)
        type = Types::DeleteUserOutput.new
        type
      end
    end

    module DescribeAppBlocksInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAppBlocksInput, context: context)
        type = Types::DescribeAppBlocksInput.new
        type.arns = ArnList.build(params[:arns], context: "#{context}[:arns]") unless params[:arns].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module DescribeAppBlocksOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAppBlocksOutput, context: context)
        type = Types::DescribeAppBlocksOutput.new
        type.app_blocks = AppBlocks.build(params[:app_blocks], context: "#{context}[:app_blocks]") unless params[:app_blocks].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeApplicationFleetAssociationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeApplicationFleetAssociationsInput, context: context)
        type = Types::DescribeApplicationFleetAssociationsInput.new
        type.fleet_name = params[:fleet_name]
        type.application_arn = params[:application_arn]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeApplicationFleetAssociationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeApplicationFleetAssociationsOutput, context: context)
        type = Types::DescribeApplicationFleetAssociationsOutput.new
        type.application_fleet_associations = ApplicationFleetAssociationList.build(params[:application_fleet_associations], context: "#{context}[:application_fleet_associations]") unless params[:application_fleet_associations].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeApplicationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeApplicationsInput, context: context)
        type = Types::DescribeApplicationsInput.new
        type.arns = ArnList.build(params[:arns], context: "#{context}[:arns]") unless params[:arns].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module DescribeApplicationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeApplicationsOutput, context: context)
        type = Types::DescribeApplicationsOutput.new
        type.applications = Applications.build(params[:applications], context: "#{context}[:applications]") unless params[:applications].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeDirectoryConfigsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDirectoryConfigsInput, context: context)
        type = Types::DescribeDirectoryConfigsInput.new
        type.directory_names = DirectoryNameList.build(params[:directory_names], context: "#{context}[:directory_names]") unless params[:directory_names].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeDirectoryConfigsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDirectoryConfigsOutput, context: context)
        type = Types::DescribeDirectoryConfigsOutput.new
        type.directory_configs = DirectoryConfigList.build(params[:directory_configs], context: "#{context}[:directory_configs]") unless params[:directory_configs].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeEntitlementsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEntitlementsInput, context: context)
        type = Types::DescribeEntitlementsInput.new
        type.name = params[:name]
        type.stack_name = params[:stack_name]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module DescribeEntitlementsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEntitlementsOutput, context: context)
        type = Types::DescribeEntitlementsOutput.new
        type.entitlements = EntitlementList.build(params[:entitlements], context: "#{context}[:entitlements]") unless params[:entitlements].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeFleetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFleetsInput, context: context)
        type = Types::DescribeFleetsInput.new
        type.names = StringList.build(params[:names], context: "#{context}[:names]") unless params[:names].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeFleetsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFleetsOutput, context: context)
        type = Types::DescribeFleetsOutput.new
        type.fleets = FleetList.build(params[:fleets], context: "#{context}[:fleets]") unless params[:fleets].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeImageBuildersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeImageBuildersInput, context: context)
        type = Types::DescribeImageBuildersInput.new
        type.names = StringList.build(params[:names], context: "#{context}[:names]") unless params[:names].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeImageBuildersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeImageBuildersOutput, context: context)
        type = Types::DescribeImageBuildersOutput.new
        type.image_builders = ImageBuilderList.build(params[:image_builders], context: "#{context}[:image_builders]") unless params[:image_builders].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeImagePermissionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeImagePermissionsInput, context: context)
        type = Types::DescribeImagePermissionsInput.new
        type.name = params[:name]
        type.max_results = params[:max_results]
        type.shared_aws_account_ids = AwsAccountIdList.build(params[:shared_aws_account_ids], context: "#{context}[:shared_aws_account_ids]") unless params[:shared_aws_account_ids].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeImagePermissionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeImagePermissionsOutput, context: context)
        type = Types::DescribeImagePermissionsOutput.new
        type.name = params[:name]
        type.shared_image_permissions_list = SharedImagePermissionsList.build(params[:shared_image_permissions_list], context: "#{context}[:shared_image_permissions_list]") unless params[:shared_image_permissions_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeImagesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeImagesInput, context: context)
        type = Types::DescribeImagesInput.new
        type.names = StringList.build(params[:names], context: "#{context}[:names]") unless params[:names].nil?
        type.arns = ArnList.build(params[:arns], context: "#{context}[:arns]") unless params[:arns].nil?
        type.type = params[:type]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module DescribeImagesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeImagesOutput, context: context)
        type = Types::DescribeImagesOutput.new
        type.images = ImageList.build(params[:images], context: "#{context}[:images]") unless params[:images].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeSessionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSessionsInput, context: context)
        type = Types::DescribeSessionsInput.new
        type.stack_name = params[:stack_name]
        type.fleet_name = params[:fleet_name]
        type.user_id = params[:user_id]
        type.next_token = params[:next_token]
        type.limit = params[:limit]
        type.authentication_type = params[:authentication_type]
        type
      end
    end

    module DescribeSessionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSessionsOutput, context: context)
        type = Types::DescribeSessionsOutput.new
        type.sessions = SessionList.build(params[:sessions], context: "#{context}[:sessions]") unless params[:sessions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeStacksInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeStacksInput, context: context)
        type = Types::DescribeStacksInput.new
        type.names = StringList.build(params[:names], context: "#{context}[:names]") unless params[:names].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeStacksOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeStacksOutput, context: context)
        type = Types::DescribeStacksOutput.new
        type.stacks = StackList.build(params[:stacks], context: "#{context}[:stacks]") unless params[:stacks].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeUsageReportSubscriptionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeUsageReportSubscriptionsInput, context: context)
        type = Types::DescribeUsageReportSubscriptionsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeUsageReportSubscriptionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeUsageReportSubscriptionsOutput, context: context)
        type = Types::DescribeUsageReportSubscriptionsOutput.new
        type.usage_report_subscriptions = UsageReportSubscriptionList.build(params[:usage_report_subscriptions], context: "#{context}[:usage_report_subscriptions]") unless params[:usage_report_subscriptions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeUserStackAssociationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeUserStackAssociationsInput, context: context)
        type = Types::DescribeUserStackAssociationsInput.new
        type.stack_name = params[:stack_name]
        type.user_name = params[:user_name]
        type.authentication_type = params[:authentication_type]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeUserStackAssociationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeUserStackAssociationsOutput, context: context)
        type = Types::DescribeUserStackAssociationsOutput.new
        type.user_stack_associations = UserStackAssociationList.build(params[:user_stack_associations], context: "#{context}[:user_stack_associations]") unless params[:user_stack_associations].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeUsersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeUsersInput, context: context)
        type = Types::DescribeUsersInput.new
        type.authentication_type = params[:authentication_type]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeUsersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeUsersOutput, context: context)
        type = Types::DescribeUsersOutput.new
        type.users = UserList.build(params[:users], context: "#{context}[:users]") unless params[:users].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DirectoryConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DirectoryConfig, context: context)
        type = Types::DirectoryConfig.new
        type.directory_name = params[:directory_name]
        type.organizational_unit_distinguished_names = OrganizationalUnitDistinguishedNamesList.build(params[:organizational_unit_distinguished_names], context: "#{context}[:organizational_unit_distinguished_names]") unless params[:organizational_unit_distinguished_names].nil?
        type.service_account_credentials = ServiceAccountCredentials.build(params[:service_account_credentials], context: "#{context}[:service_account_credentials]") unless params[:service_account_credentials].nil?
        type.created_time = params[:created_time]
        type
      end
    end

    module DirectoryConfigList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DirectoryConfig.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DirectoryNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module DisableUserInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisableUserInput, context: context)
        type = Types::DisableUserInput.new
        type.user_name = params[:user_name]
        type.authentication_type = params[:authentication_type]
        type
      end
    end

    module DisableUserOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisableUserOutput, context: context)
        type = Types::DisableUserOutput.new
        type
      end
    end

    module DisassociateApplicationFleetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateApplicationFleetInput, context: context)
        type = Types::DisassociateApplicationFleetInput.new
        type.fleet_name = params[:fleet_name]
        type.application_arn = params[:application_arn]
        type
      end
    end

    module DisassociateApplicationFleetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateApplicationFleetOutput, context: context)
        type = Types::DisassociateApplicationFleetOutput.new
        type
      end
    end

    module DisassociateApplicationFromEntitlementInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateApplicationFromEntitlementInput, context: context)
        type = Types::DisassociateApplicationFromEntitlementInput.new
        type.stack_name = params[:stack_name]
        type.entitlement_name = params[:entitlement_name]
        type.application_identifier = params[:application_identifier]
        type
      end
    end

    module DisassociateApplicationFromEntitlementOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateApplicationFromEntitlementOutput, context: context)
        type = Types::DisassociateApplicationFromEntitlementOutput.new
        type
      end
    end

    module DisassociateFleetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateFleetInput, context: context)
        type = Types::DisassociateFleetInput.new
        type.fleet_name = params[:fleet_name]
        type.stack_name = params[:stack_name]
        type
      end
    end

    module DisassociateFleetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateFleetOutput, context: context)
        type = Types::DisassociateFleetOutput.new
        type
      end
    end

    module DomainJoinInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DomainJoinInfo, context: context)
        type = Types::DomainJoinInfo.new
        type.directory_name = params[:directory_name]
        type.organizational_unit_distinguished_name = params[:organizational_unit_distinguished_name]
        type
      end
    end

    module DomainList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module EmbedHostDomains
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module EnableUserInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableUserInput, context: context)
        type = Types::EnableUserInput.new
        type.user_name = params[:user_name]
        type.authentication_type = params[:authentication_type]
        type
      end
    end

    module EnableUserOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableUserOutput, context: context)
        type = Types::EnableUserOutput.new
        type
      end
    end

    module EntitledApplication
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EntitledApplication, context: context)
        type = Types::EntitledApplication.new
        type.application_identifier = params[:application_identifier]
        type
      end
    end

    module EntitledApplicationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EntitledApplication.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Entitlement
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Entitlement, context: context)
        type = Types::Entitlement.new
        type.name = params[:name]
        type.stack_name = params[:stack_name]
        type.description = params[:description]
        type.app_visibility = params[:app_visibility]
        type.attributes = EntitlementAttributeList.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type.created_time = params[:created_time]
        type.last_modified_time = params[:last_modified_time]
        type
      end
    end

    module EntitlementAlreadyExistsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EntitlementAlreadyExistsException, context: context)
        type = Types::EntitlementAlreadyExistsException.new
        type.message = params[:message]
        type
      end
    end

    module EntitlementAttribute
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EntitlementAttribute, context: context)
        type = Types::EntitlementAttribute.new
        type.name = params[:name]
        type.value = params[:value]
        type
      end
    end

    module EntitlementAttributeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EntitlementAttribute.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EntitlementList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Entitlement.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EntitlementNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EntitlementNotFoundException, context: context)
        type = Types::EntitlementNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module ExpireSessionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExpireSessionInput, context: context)
        type = Types::ExpireSessionInput.new
        type.session_id = params[:session_id]
        type
      end
    end

    module ExpireSessionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExpireSessionOutput, context: context)
        type = Types::ExpireSessionOutput.new
        type
      end
    end

    module Fleet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Fleet, context: context)
        type = Types::Fleet.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.display_name = params[:display_name]
        type.description = params[:description]
        type.image_name = params[:image_name]
        type.image_arn = params[:image_arn]
        type.instance_type = params[:instance_type]
        type.fleet_type = params[:fleet_type]
        type.compute_capacity_status = ComputeCapacityStatus.build(params[:compute_capacity_status], context: "#{context}[:compute_capacity_status]") unless params[:compute_capacity_status].nil?
        type.max_user_duration_in_seconds = params[:max_user_duration_in_seconds]
        type.disconnect_timeout_in_seconds = params[:disconnect_timeout_in_seconds]
        type.state = params[:state]
        type.vpc_config = VpcConfig.build(params[:vpc_config], context: "#{context}[:vpc_config]") unless params[:vpc_config].nil?
        type.created_time = params[:created_time]
        type.fleet_errors = FleetErrors.build(params[:fleet_errors], context: "#{context}[:fleet_errors]") unless params[:fleet_errors].nil?
        type.enable_default_internet_access = params[:enable_default_internet_access]
        type.domain_join_info = DomainJoinInfo.build(params[:domain_join_info], context: "#{context}[:domain_join_info]") unless params[:domain_join_info].nil?
        type.idle_disconnect_timeout_in_seconds = params[:idle_disconnect_timeout_in_seconds]
        type.iam_role_arn = params[:iam_role_arn]
        type.stream_view = params[:stream_view]
        type.platform = params[:platform]
        type.max_concurrent_sessions = params[:max_concurrent_sessions]
        type.usb_device_filter_strings = UsbDeviceFilterStrings.build(params[:usb_device_filter_strings], context: "#{context}[:usb_device_filter_strings]") unless params[:usb_device_filter_strings].nil?
        type.session_script_s3_location = S3Location.build(params[:session_script_s3_location], context: "#{context}[:session_script_s3_location]") unless params[:session_script_s3_location].nil?
        type
      end
    end

    module FleetAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module FleetError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FleetError, context: context)
        type = Types::FleetError.new
        type.error_code = params[:error_code]
        type.error_message = params[:error_message]
        type
      end
    end

    module FleetErrors
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FleetError.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FleetList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Fleet.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Image
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Image, context: context)
        type = Types::Image.new
        type.name = params[:name]
        type.arn = params[:arn]
        type.base_image_arn = params[:base_image_arn]
        type.display_name = params[:display_name]
        type.state = params[:state]
        type.visibility = params[:visibility]
        type.image_builder_supported = params[:image_builder_supported]
        type.image_builder_name = params[:image_builder_name]
        type.platform = params[:platform]
        type.description = params[:description]
        type.state_change_reason = ImageStateChangeReason.build(params[:state_change_reason], context: "#{context}[:state_change_reason]") unless params[:state_change_reason].nil?
        type.applications = Applications.build(params[:applications], context: "#{context}[:applications]") unless params[:applications].nil?
        type.created_time = params[:created_time]
        type.public_base_image_released_date = params[:public_base_image_released_date]
        type.appstream_agent_version = params[:appstream_agent_version]
        type.image_permissions = ImagePermissions.build(params[:image_permissions], context: "#{context}[:image_permissions]") unless params[:image_permissions].nil?
        type.image_errors = ResourceErrors.build(params[:image_errors], context: "#{context}[:image_errors]") unless params[:image_errors].nil?
        type
      end
    end

    module ImageBuilder
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImageBuilder, context: context)
        type = Types::ImageBuilder.new
        type.name = params[:name]
        type.arn = params[:arn]
        type.image_arn = params[:image_arn]
        type.description = params[:description]
        type.display_name = params[:display_name]
        type.vpc_config = VpcConfig.build(params[:vpc_config], context: "#{context}[:vpc_config]") unless params[:vpc_config].nil?
        type.instance_type = params[:instance_type]
        type.platform = params[:platform]
        type.iam_role_arn = params[:iam_role_arn]
        type.state = params[:state]
        type.state_change_reason = ImageBuilderStateChangeReason.build(params[:state_change_reason], context: "#{context}[:state_change_reason]") unless params[:state_change_reason].nil?
        type.created_time = params[:created_time]
        type.enable_default_internet_access = params[:enable_default_internet_access]
        type.domain_join_info = DomainJoinInfo.build(params[:domain_join_info], context: "#{context}[:domain_join_info]") unless params[:domain_join_info].nil?
        type.network_access_configuration = NetworkAccessConfiguration.build(params[:network_access_configuration], context: "#{context}[:network_access_configuration]") unless params[:network_access_configuration].nil?
        type.image_builder_errors = ResourceErrors.build(params[:image_builder_errors], context: "#{context}[:image_builder_errors]") unless params[:image_builder_errors].nil?
        type.appstream_agent_version = params[:appstream_agent_version]
        type.access_endpoints = AccessEndpointList.build(params[:access_endpoints], context: "#{context}[:access_endpoints]") unless params[:access_endpoints].nil?
        type
      end
    end

    module ImageBuilderList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ImageBuilder.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ImageBuilderStateChangeReason
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImageBuilderStateChangeReason, context: context)
        type = Types::ImageBuilderStateChangeReason.new
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module ImageList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Image.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ImagePermissions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImagePermissions, context: context)
        type = Types::ImagePermissions.new
        type.allow_fleet = params[:allow_fleet]
        type.allow_image_builder = params[:allow_image_builder]
        type
      end
    end

    module ImageStateChangeReason
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImageStateChangeReason, context: context)
        type = Types::ImageStateChangeReason.new
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module IncompatibleImageException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IncompatibleImageException, context: context)
        type = Types::IncompatibleImageException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidAccountStatusException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidAccountStatusException, context: context)
        type = Types::InvalidAccountStatusException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidParameterCombinationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidParameterCombinationException, context: context)
        type = Types::InvalidParameterCombinationException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidRoleException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidRoleException, context: context)
        type = Types::InvalidRoleException.new
        type.message = params[:message]
        type
      end
    end

    module LastReportGenerationExecutionError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LastReportGenerationExecutionError, context: context)
        type = Types::LastReportGenerationExecutionError.new
        type.error_code = params[:error_code]
        type.error_message = params[:error_message]
        type
      end
    end

    module LastReportGenerationExecutionErrors
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LastReportGenerationExecutionError.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LimitExceededException, context: context)
        type = Types::LimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module ListAssociatedFleetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAssociatedFleetsInput, context: context)
        type = Types::ListAssociatedFleetsInput.new
        type.stack_name = params[:stack_name]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAssociatedFleetsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAssociatedFleetsOutput, context: context)
        type = Types::ListAssociatedFleetsOutput.new
        type.names = StringList.build(params[:names], context: "#{context}[:names]") unless params[:names].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAssociatedStacksInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAssociatedStacksInput, context: context)
        type = Types::ListAssociatedStacksInput.new
        type.fleet_name = params[:fleet_name]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAssociatedStacksOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAssociatedStacksOutput, context: context)
        type = Types::ListAssociatedStacksOutput.new
        type.names = StringList.build(params[:names], context: "#{context}[:names]") unless params[:names].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListEntitledApplicationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEntitledApplicationsInput, context: context)
        type = Types::ListEntitledApplicationsInput.new
        type.stack_name = params[:stack_name]
        type.entitlement_name = params[:entitlement_name]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListEntitledApplicationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEntitledApplicationsOutput, context: context)
        type = Types::ListEntitledApplicationsOutput.new
        type.entitled_applications = EntitledApplicationList.build(params[:entitled_applications], context: "#{context}[:entitled_applications]") unless params[:entitled_applications].nil?
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
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module Metadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module NetworkAccessConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NetworkAccessConfiguration, context: context)
        type = Types::NetworkAccessConfiguration.new
        type.eni_private_ip_address = params[:eni_private_ip_address]
        type.eni_id = params[:eni_id]
        type
      end
    end

    module OperationNotPermittedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OperationNotPermittedException, context: context)
        type = Types::OperationNotPermittedException.new
        type.message = params[:message]
        type
      end
    end

    module OrganizationalUnitDistinguishedNamesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Platforms
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module RequestLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RequestLimitExceededException, context: context)
        type = Types::RequestLimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module ResourceAlreadyExistsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceAlreadyExistsException, context: context)
        type = Types::ResourceAlreadyExistsException.new
        type.message = params[:message]
        type
      end
    end

    module ResourceError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceError, context: context)
        type = Types::ResourceError.new
        type.error_code = params[:error_code]
        type.error_message = params[:error_message]
        type.error_timestamp = params[:error_timestamp]
        type
      end
    end

    module ResourceErrors
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ResourceError.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResourceInUseException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceInUseException, context: context)
        type = Types::ResourceInUseException.new
        type.message = params[:message]
        type
      end
    end

    module ResourceNotAvailableException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotAvailableException, context: context)
        type = Types::ResourceNotAvailableException.new
        type.message = params[:message]
        type
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module S3Location
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3Location, context: context)
        type = Types::S3Location.new
        type.s3_bucket = params[:s3_bucket]
        type.s3_key = params[:s3_key]
        type
      end
    end

    module ScriptDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ScriptDetails, context: context)
        type = Types::ScriptDetails.new
        type.script_s3_location = S3Location.build(params[:script_s3_location], context: "#{context}[:script_s3_location]") unless params[:script_s3_location].nil?
        type.executable_path = params[:executable_path]
        type.executable_parameters = params[:executable_parameters]
        type.timeout_in_seconds = params[:timeout_in_seconds]
        type
      end
    end

    module SecurityGroupIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ServiceAccountCredentials
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceAccountCredentials, context: context)
        type = Types::ServiceAccountCredentials.new
        type.account_name = params[:account_name]
        type.account_password = params[:account_password]
        type
      end
    end

    module Session
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Session, context: context)
        type = Types::Session.new
        type.id = params[:id]
        type.user_id = params[:user_id]
        type.stack_name = params[:stack_name]
        type.fleet_name = params[:fleet_name]
        type.state = params[:state]
        type.connection_state = params[:connection_state]
        type.start_time = params[:start_time]
        type.max_expiration_time = params[:max_expiration_time]
        type.authentication_type = params[:authentication_type]
        type.network_access_configuration = NetworkAccessConfiguration.build(params[:network_access_configuration], context: "#{context}[:network_access_configuration]") unless params[:network_access_configuration].nil?
        type
      end
    end

    module SessionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Session.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SharedImagePermissions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SharedImagePermissions, context: context)
        type = Types::SharedImagePermissions.new
        type.shared_account_id = params[:shared_account_id]
        type.image_permissions = ImagePermissions.build(params[:image_permissions], context: "#{context}[:image_permissions]") unless params[:image_permissions].nil?
        type
      end
    end

    module SharedImagePermissionsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SharedImagePermissions.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Stack
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Stack, context: context)
        type = Types::Stack.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.description = params[:description]
        type.display_name = params[:display_name]
        type.created_time = params[:created_time]
        type.storage_connectors = StorageConnectorList.build(params[:storage_connectors], context: "#{context}[:storage_connectors]") unless params[:storage_connectors].nil?
        type.redirect_url = params[:redirect_url]
        type.feedback_url = params[:feedback_url]
        type.stack_errors = StackErrors.build(params[:stack_errors], context: "#{context}[:stack_errors]") unless params[:stack_errors].nil?
        type.user_settings = UserSettingList.build(params[:user_settings], context: "#{context}[:user_settings]") unless params[:user_settings].nil?
        type.application_settings = ApplicationSettingsResponse.build(params[:application_settings], context: "#{context}[:application_settings]") unless params[:application_settings].nil?
        type.access_endpoints = AccessEndpointList.build(params[:access_endpoints], context: "#{context}[:access_endpoints]") unless params[:access_endpoints].nil?
        type.embed_host_domains = EmbedHostDomains.build(params[:embed_host_domains], context: "#{context}[:embed_host_domains]") unless params[:embed_host_domains].nil?
        type
      end
    end

    module StackAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module StackError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StackError, context: context)
        type = Types::StackError.new
        type.error_code = params[:error_code]
        type.error_message = params[:error_message]
        type
      end
    end

    module StackErrors
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << StackError.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StackList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Stack.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StartFleetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartFleetInput, context: context)
        type = Types::StartFleetInput.new
        type.name = params[:name]
        type
      end
    end

    module StartFleetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartFleetOutput, context: context)
        type = Types::StartFleetOutput.new
        type
      end
    end

    module StartImageBuilderInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartImageBuilderInput, context: context)
        type = Types::StartImageBuilderInput.new
        type.name = params[:name]
        type.appstream_agent_version = params[:appstream_agent_version]
        type
      end
    end

    module StartImageBuilderOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartImageBuilderOutput, context: context)
        type = Types::StartImageBuilderOutput.new
        type.image_builder = ImageBuilder.build(params[:image_builder], context: "#{context}[:image_builder]") unless params[:image_builder].nil?
        type
      end
    end

    module StopFleetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopFleetInput, context: context)
        type = Types::StopFleetInput.new
        type.name = params[:name]
        type
      end
    end

    module StopFleetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopFleetOutput, context: context)
        type = Types::StopFleetOutput.new
        type
      end
    end

    module StopImageBuilderInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopImageBuilderInput, context: context)
        type = Types::StopImageBuilderInput.new
        type.name = params[:name]
        type
      end
    end

    module StopImageBuilderOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopImageBuilderOutput, context: context)
        type = Types::StopImageBuilderOutput.new
        type.image_builder = ImageBuilder.build(params[:image_builder], context: "#{context}[:image_builder]") unless params[:image_builder].nil?
        type
      end
    end

    module StorageConnector
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StorageConnector, context: context)
        type = Types::StorageConnector.new
        type.connector_type = params[:connector_type]
        type.resource_identifier = params[:resource_identifier]
        type.domains = DomainList.build(params[:domains], context: "#{context}[:domains]") unless params[:domains].nil?
        type
      end
    end

    module StorageConnectorList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << StorageConnector.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SubnetIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
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

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
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

    module Tags
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

    module UpdateApplicationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateApplicationInput, context: context)
        type = Types::UpdateApplicationInput.new
        type.name = params[:name]
        type.display_name = params[:display_name]
        type.description = params[:description]
        type.icon_s3_location = S3Location.build(params[:icon_s3_location], context: "#{context}[:icon_s3_location]") unless params[:icon_s3_location].nil?
        type.launch_path = params[:launch_path]
        type.working_directory = params[:working_directory]
        type.launch_parameters = params[:launch_parameters]
        type.app_block_arn = params[:app_block_arn]
        type.attributes_to_delete = ApplicationAttributes.build(params[:attributes_to_delete], context: "#{context}[:attributes_to_delete]") unless params[:attributes_to_delete].nil?
        type
      end
    end

    module UpdateApplicationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateApplicationOutput, context: context)
        type = Types::UpdateApplicationOutput.new
        type.application = Application.build(params[:application], context: "#{context}[:application]") unless params[:application].nil?
        type
      end
    end

    module UpdateDirectoryConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDirectoryConfigInput, context: context)
        type = Types::UpdateDirectoryConfigInput.new
        type.directory_name = params[:directory_name]
        type.organizational_unit_distinguished_names = OrganizationalUnitDistinguishedNamesList.build(params[:organizational_unit_distinguished_names], context: "#{context}[:organizational_unit_distinguished_names]") unless params[:organizational_unit_distinguished_names].nil?
        type.service_account_credentials = ServiceAccountCredentials.build(params[:service_account_credentials], context: "#{context}[:service_account_credentials]") unless params[:service_account_credentials].nil?
        type
      end
    end

    module UpdateDirectoryConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDirectoryConfigOutput, context: context)
        type = Types::UpdateDirectoryConfigOutput.new
        type.directory_config = DirectoryConfig.build(params[:directory_config], context: "#{context}[:directory_config]") unless params[:directory_config].nil?
        type
      end
    end

    module UpdateEntitlementInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateEntitlementInput, context: context)
        type = Types::UpdateEntitlementInput.new
        type.name = params[:name]
        type.stack_name = params[:stack_name]
        type.description = params[:description]
        type.app_visibility = params[:app_visibility]
        type.attributes = EntitlementAttributeList.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type
      end
    end

    module UpdateEntitlementOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateEntitlementOutput, context: context)
        type = Types::UpdateEntitlementOutput.new
        type.entitlement = Entitlement.build(params[:entitlement], context: "#{context}[:entitlement]") unless params[:entitlement].nil?
        type
      end
    end

    module UpdateFleetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFleetInput, context: context)
        type = Types::UpdateFleetInput.new
        type.image_name = params[:image_name]
        type.image_arn = params[:image_arn]
        type.name = params[:name]
        type.instance_type = params[:instance_type]
        type.compute_capacity = ComputeCapacity.build(params[:compute_capacity], context: "#{context}[:compute_capacity]") unless params[:compute_capacity].nil?
        type.vpc_config = VpcConfig.build(params[:vpc_config], context: "#{context}[:vpc_config]") unless params[:vpc_config].nil?
        type.max_user_duration_in_seconds = params[:max_user_duration_in_seconds]
        type.disconnect_timeout_in_seconds = params[:disconnect_timeout_in_seconds]
        type.delete_vpc_config = params[:delete_vpc_config]
        type.description = params[:description]
        type.display_name = params[:display_name]
        type.enable_default_internet_access = params[:enable_default_internet_access]
        type.domain_join_info = DomainJoinInfo.build(params[:domain_join_info], context: "#{context}[:domain_join_info]") unless params[:domain_join_info].nil?
        type.idle_disconnect_timeout_in_seconds = params[:idle_disconnect_timeout_in_seconds]
        type.attributes_to_delete = FleetAttributes.build(params[:attributes_to_delete], context: "#{context}[:attributes_to_delete]") unless params[:attributes_to_delete].nil?
        type.iam_role_arn = params[:iam_role_arn]
        type.stream_view = params[:stream_view]
        type.platform = params[:platform]
        type.max_concurrent_sessions = params[:max_concurrent_sessions]
        type.usb_device_filter_strings = UsbDeviceFilterStrings.build(params[:usb_device_filter_strings], context: "#{context}[:usb_device_filter_strings]") unless params[:usb_device_filter_strings].nil?
        type.session_script_s3_location = S3Location.build(params[:session_script_s3_location], context: "#{context}[:session_script_s3_location]") unless params[:session_script_s3_location].nil?
        type
      end
    end

    module UpdateFleetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFleetOutput, context: context)
        type = Types::UpdateFleetOutput.new
        type.fleet = Fleet.build(params[:fleet], context: "#{context}[:fleet]") unless params[:fleet].nil?
        type
      end
    end

    module UpdateImagePermissionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateImagePermissionsInput, context: context)
        type = Types::UpdateImagePermissionsInput.new
        type.name = params[:name]
        type.shared_account_id = params[:shared_account_id]
        type.image_permissions = ImagePermissions.build(params[:image_permissions], context: "#{context}[:image_permissions]") unless params[:image_permissions].nil?
        type
      end
    end

    module UpdateImagePermissionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateImagePermissionsOutput, context: context)
        type = Types::UpdateImagePermissionsOutput.new
        type
      end
    end

    module UpdateStackInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateStackInput, context: context)
        type = Types::UpdateStackInput.new
        type.display_name = params[:display_name]
        type.description = params[:description]
        type.name = params[:name]
        type.storage_connectors = StorageConnectorList.build(params[:storage_connectors], context: "#{context}[:storage_connectors]") unless params[:storage_connectors].nil?
        type.delete_storage_connectors = params[:delete_storage_connectors]
        type.redirect_url = params[:redirect_url]
        type.feedback_url = params[:feedback_url]
        type.attributes_to_delete = StackAttributes.build(params[:attributes_to_delete], context: "#{context}[:attributes_to_delete]") unless params[:attributes_to_delete].nil?
        type.user_settings = UserSettingList.build(params[:user_settings], context: "#{context}[:user_settings]") unless params[:user_settings].nil?
        type.application_settings = ApplicationSettings.build(params[:application_settings], context: "#{context}[:application_settings]") unless params[:application_settings].nil?
        type.access_endpoints = AccessEndpointList.build(params[:access_endpoints], context: "#{context}[:access_endpoints]") unless params[:access_endpoints].nil?
        type.embed_host_domains = EmbedHostDomains.build(params[:embed_host_domains], context: "#{context}[:embed_host_domains]") unless params[:embed_host_domains].nil?
        type
      end
    end

    module UpdateStackOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateStackOutput, context: context)
        type = Types::UpdateStackOutput.new
        type.stack = Stack.build(params[:stack], context: "#{context}[:stack]") unless params[:stack].nil?
        type
      end
    end

    module UsageReportSubscription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UsageReportSubscription, context: context)
        type = Types::UsageReportSubscription.new
        type.s3_bucket_name = params[:s3_bucket_name]
        type.schedule = params[:schedule]
        type.last_generated_report_date = params[:last_generated_report_date]
        type.subscription_errors = LastReportGenerationExecutionErrors.build(params[:subscription_errors], context: "#{context}[:subscription_errors]") unless params[:subscription_errors].nil?
        type
      end
    end

    module UsageReportSubscriptionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << UsageReportSubscription.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module UsbDeviceFilterStrings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module User
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::User, context: context)
        type = Types::User.new
        type.arn = params[:arn]
        type.user_name = params[:user_name]
        type.enabled = params[:enabled]
        type.status = params[:status]
        type.first_name = params[:first_name]
        type.last_name = params[:last_name]
        type.created_time = params[:created_time]
        type.authentication_type = params[:authentication_type]
        type
      end
    end

    module UserList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << User.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module UserSetting
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UserSetting, context: context)
        type = Types::UserSetting.new
        type.action = params[:action]
        type.permission = params[:permission]
        type
      end
    end

    module UserSettingList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << UserSetting.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module UserStackAssociation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UserStackAssociation, context: context)
        type = Types::UserStackAssociation.new
        type.stack_name = params[:stack_name]
        type.user_name = params[:user_name]
        type.authentication_type = params[:authentication_type]
        type.send_email_notification = params[:send_email_notification]
        type
      end
    end

    module UserStackAssociationError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UserStackAssociationError, context: context)
        type = Types::UserStackAssociationError.new
        type.user_stack_association = UserStackAssociation.build(params[:user_stack_association], context: "#{context}[:user_stack_association]") unless params[:user_stack_association].nil?
        type.error_code = params[:error_code]
        type.error_message = params[:error_message]
        type
      end
    end

    module UserStackAssociationErrorList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << UserStackAssociationError.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module UserStackAssociationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << UserStackAssociation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module VpcConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VpcConfig, context: context)
        type = Types::VpcConfig.new
        type.subnet_ids = SubnetIdList.build(params[:subnet_ids], context: "#{context}[:subnet_ids]") unless params[:subnet_ids].nil?
        type.security_group_ids = SecurityGroupIdList.build(params[:security_group_ids], context: "#{context}[:security_group_ids]") unless params[:security_group_ids].nil?
        type
      end
    end

  end
end
