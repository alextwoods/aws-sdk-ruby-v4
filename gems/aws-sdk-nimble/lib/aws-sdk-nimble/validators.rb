# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Nimble
  module Validators

    class AcceptEulasInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AcceptEulasInput, context: context)
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Validators::EulaIdList.validate!(input[:eula_ids], context: "#{context}[:eula_ids]") unless input[:eula_ids].nil?
        Hearth::Validator.validate!(input[:studio_id], ::String, context: "#{context}[:studio_id]")
      end
    end

    class AcceptEulasOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AcceptEulasOutput, context: context)
        Validators::EulaAcceptanceList.validate!(input[:eula_acceptances], context: "#{context}[:eula_acceptances]") unless input[:eula_acceptances].nil?
      end
    end

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Validators::ExceptionContext.validate!(input[:context], context: "#{context}[:context]") unless input[:context].nil?
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ActiveDirectoryComputerAttribute
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActiveDirectoryComputerAttribute, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class ActiveDirectoryComputerAttributeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ActiveDirectoryComputerAttribute.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ActiveDirectoryConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActiveDirectoryConfiguration, context: context)
        Validators::ActiveDirectoryComputerAttributeList.validate!(input[:computer_attributes], context: "#{context}[:computer_attributes]") unless input[:computer_attributes].nil?
        Hearth::Validator.validate!(input[:directory_id], ::String, context: "#{context}[:directory_id]")
        Hearth::Validator.validate!(input[:organizational_unit_distinguished_name], ::String, context: "#{context}[:organizational_unit_distinguished_name]")
      end
    end

    class ActiveDirectoryDnsIpAddressList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ComputeFarmConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ComputeFarmConfiguration, context: context)
        Hearth::Validator.validate!(input[:active_directory_user], ::String, context: "#{context}[:active_directory_user]")
        Hearth::Validator.validate!(input[:endpoint], ::String, context: "#{context}[:endpoint]")
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Validators::ExceptionContext.validate!(input[:context], context: "#{context}[:context]") unless input[:context].nil?
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CreateLaunchProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLaunchProfileInput, context: context)
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::EC2SubnetIdList.validate!(input[:ec2_subnet_ids], context: "#{context}[:ec2_subnet_ids]") unless input[:ec2_subnet_ids].nil?
        Validators::LaunchProfileProtocolVersionList.validate!(input[:launch_profile_protocol_versions], context: "#{context}[:launch_profile_protocol_versions]") unless input[:launch_profile_protocol_versions].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::StreamConfigurationCreate.validate!(input[:stream_configuration], context: "#{context}[:stream_configuration]") unless input[:stream_configuration].nil?
        Validators::LaunchProfileStudioComponentIdList.validate!(input[:studio_component_ids], context: "#{context}[:studio_component_ids]") unless input[:studio_component_ids].nil?
        Hearth::Validator.validate!(input[:studio_id], ::String, context: "#{context}[:studio_id]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateLaunchProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLaunchProfileOutput, context: context)
        Validators::LaunchProfile.validate!(input[:launch_profile], context: "#{context}[:launch_profile]") unless input[:launch_profile].nil?
      end
    end

    class CreateStreamingImageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateStreamingImageInput, context: context)
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:ec2_image_id], ::String, context: "#{context}[:ec2_image_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:studio_id], ::String, context: "#{context}[:studio_id]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateStreamingImageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateStreamingImageOutput, context: context)
        Validators::StreamingImage.validate!(input[:streaming_image], context: "#{context}[:streaming_image]") unless input[:streaming_image].nil?
      end
    end

    class CreateStreamingSessionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateStreamingSessionInput, context: context)
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:ec2_instance_type], ::String, context: "#{context}[:ec2_instance_type]")
        Hearth::Validator.validate!(input[:launch_profile_id], ::String, context: "#{context}[:launch_profile_id]")
        Hearth::Validator.validate!(input[:owned_by], ::String, context: "#{context}[:owned_by]")
        Hearth::Validator.validate!(input[:streaming_image_id], ::String, context: "#{context}[:streaming_image_id]")
        Hearth::Validator.validate!(input[:studio_id], ::String, context: "#{context}[:studio_id]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateStreamingSessionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateStreamingSessionOutput, context: context)
        Validators::StreamingSession.validate!(input[:session], context: "#{context}[:session]") unless input[:session].nil?
      end
    end

    class CreateStreamingSessionStreamInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateStreamingSessionStreamInput, context: context)
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:expiration_in_seconds], ::Integer, context: "#{context}[:expiration_in_seconds]")
        Hearth::Validator.validate!(input[:session_id], ::String, context: "#{context}[:session_id]")
        Hearth::Validator.validate!(input[:studio_id], ::String, context: "#{context}[:studio_id]")
      end
    end

    class CreateStreamingSessionStreamOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateStreamingSessionStreamOutput, context: context)
        Validators::StreamingSessionStream.validate!(input[:stream], context: "#{context}[:stream]") unless input[:stream].nil?
      end
    end

    class CreateStudioComponentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateStudioComponentInput, context: context)
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Validators::StudioComponentConfiguration.validate!(input[:configuration], context: "#{context}[:configuration]") unless input[:configuration].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::StudioComponentSecurityGroupIdList.validate!(input[:ec2_security_group_ids], context: "#{context}[:ec2_security_group_ids]") unless input[:ec2_security_group_ids].nil?
        Validators::StudioComponentInitializationScriptList.validate!(input[:initialization_scripts], context: "#{context}[:initialization_scripts]") unless input[:initialization_scripts].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::StudioComponentScriptParameterKeyValueList.validate!(input[:script_parameters], context: "#{context}[:script_parameters]") unless input[:script_parameters].nil?
        Hearth::Validator.validate!(input[:studio_id], ::String, context: "#{context}[:studio_id]")
        Hearth::Validator.validate!(input[:subtype], ::String, context: "#{context}[:subtype]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class CreateStudioComponentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateStudioComponentOutput, context: context)
        Validators::StudioComponent.validate!(input[:studio_component], context: "#{context}[:studio_component]") unless input[:studio_component].nil?
      end
    end

    class CreateStudioInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateStudioInput, context: context)
        Hearth::Validator.validate!(input[:admin_role_arn], ::String, context: "#{context}[:admin_role_arn]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Validators::StudioEncryptionConfiguration.validate!(input[:studio_encryption_configuration], context: "#{context}[:studio_encryption_configuration]") unless input[:studio_encryption_configuration].nil?
        Hearth::Validator.validate!(input[:studio_name], ::String, context: "#{context}[:studio_name]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:user_role_arn], ::String, context: "#{context}[:user_role_arn]")
      end
    end

    class CreateStudioOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateStudioOutput, context: context)
        Validators::Studio.validate!(input[:studio], context: "#{context}[:studio]") unless input[:studio].nil?
      end
    end

    class DeleteLaunchProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteLaunchProfileInput, context: context)
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:launch_profile_id], ::String, context: "#{context}[:launch_profile_id]")
        Hearth::Validator.validate!(input[:studio_id], ::String, context: "#{context}[:studio_id]")
      end
    end

    class DeleteLaunchProfileMemberInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteLaunchProfileMemberInput, context: context)
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:launch_profile_id], ::String, context: "#{context}[:launch_profile_id]")
        Hearth::Validator.validate!(input[:principal_id], ::String, context: "#{context}[:principal_id]")
        Hearth::Validator.validate!(input[:studio_id], ::String, context: "#{context}[:studio_id]")
      end
    end

    class DeleteLaunchProfileMemberOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteLaunchProfileMemberOutput, context: context)
      end
    end

    class DeleteLaunchProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteLaunchProfileOutput, context: context)
        Validators::LaunchProfile.validate!(input[:launch_profile], context: "#{context}[:launch_profile]") unless input[:launch_profile].nil?
      end
    end

    class DeleteStreamingImageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteStreamingImageInput, context: context)
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:streaming_image_id], ::String, context: "#{context}[:streaming_image_id]")
        Hearth::Validator.validate!(input[:studio_id], ::String, context: "#{context}[:studio_id]")
      end
    end

    class DeleteStreamingImageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteStreamingImageOutput, context: context)
        Validators::StreamingImage.validate!(input[:streaming_image], context: "#{context}[:streaming_image]") unless input[:streaming_image].nil?
      end
    end

    class DeleteStreamingSessionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteStreamingSessionInput, context: context)
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:session_id], ::String, context: "#{context}[:session_id]")
        Hearth::Validator.validate!(input[:studio_id], ::String, context: "#{context}[:studio_id]")
      end
    end

    class DeleteStreamingSessionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteStreamingSessionOutput, context: context)
        Validators::StreamingSession.validate!(input[:session], context: "#{context}[:session]") unless input[:session].nil?
      end
    end

    class DeleteStudioComponentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteStudioComponentInput, context: context)
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:studio_component_id], ::String, context: "#{context}[:studio_component_id]")
        Hearth::Validator.validate!(input[:studio_id], ::String, context: "#{context}[:studio_id]")
      end
    end

    class DeleteStudioComponentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteStudioComponentOutput, context: context)
        Validators::StudioComponent.validate!(input[:studio_component], context: "#{context}[:studio_component]") unless input[:studio_component].nil?
      end
    end

    class DeleteStudioInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteStudioInput, context: context)
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:studio_id], ::String, context: "#{context}[:studio_id]")
      end
    end

    class DeleteStudioMemberInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteStudioMemberInput, context: context)
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:principal_id], ::String, context: "#{context}[:principal_id]")
        Hearth::Validator.validate!(input[:studio_id], ::String, context: "#{context}[:studio_id]")
      end
    end

    class DeleteStudioMemberOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteStudioMemberOutput, context: context)
      end
    end

    class DeleteStudioOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteStudioOutput, context: context)
        Validators::Studio.validate!(input[:studio], context: "#{context}[:studio]") unless input[:studio].nil?
      end
    end

    class EC2SubnetIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Eula
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Eula, context: context)
        Hearth::Validator.validate!(input[:content], ::String, context: "#{context}[:content]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:eula_id], ::String, context: "#{context}[:eula_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:updated_at], ::Time, context: "#{context}[:updated_at]")
      end
    end

    class EulaAcceptance
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EulaAcceptance, context: context)
        Hearth::Validator.validate!(input[:accepted_at], ::Time, context: "#{context}[:accepted_at]")
        Hearth::Validator.validate!(input[:accepted_by], ::String, context: "#{context}[:accepted_by]")
        Hearth::Validator.validate!(input[:acceptee_id], ::String, context: "#{context}[:acceptee_id]")
        Hearth::Validator.validate!(input[:eula_acceptance_id], ::String, context: "#{context}[:eula_acceptance_id]")
        Hearth::Validator.validate!(input[:eula_id], ::String, context: "#{context}[:eula_id]")
      end
    end

    class EulaAcceptanceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::EulaAcceptance.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EulaIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class EulaList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Eula.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ExceptionContext
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class GetEulaInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEulaInput, context: context)
        Hearth::Validator.validate!(input[:eula_id], ::String, context: "#{context}[:eula_id]")
      end
    end

    class GetEulaOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEulaOutput, context: context)
        Validators::Eula.validate!(input[:eula], context: "#{context}[:eula]") unless input[:eula].nil?
      end
    end

    class GetLaunchProfileDetailsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLaunchProfileDetailsInput, context: context)
        Hearth::Validator.validate!(input[:launch_profile_id], ::String, context: "#{context}[:launch_profile_id]")
        Hearth::Validator.validate!(input[:studio_id], ::String, context: "#{context}[:studio_id]")
      end
    end

    class GetLaunchProfileDetailsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLaunchProfileDetailsOutput, context: context)
        Validators::LaunchProfile.validate!(input[:launch_profile], context: "#{context}[:launch_profile]") unless input[:launch_profile].nil?
        Validators::StreamingImageList.validate!(input[:streaming_images], context: "#{context}[:streaming_images]") unless input[:streaming_images].nil?
        Validators::StudioComponentSummaryList.validate!(input[:studio_component_summaries], context: "#{context}[:studio_component_summaries]") unless input[:studio_component_summaries].nil?
      end
    end

    class GetLaunchProfileInitializationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLaunchProfileInitializationInput, context: context)
        Hearth::Validator.validate!(input[:launch_profile_id], ::String, context: "#{context}[:launch_profile_id]")
        Validators::StringList.validate!(input[:launch_profile_protocol_versions], context: "#{context}[:launch_profile_protocol_versions]") unless input[:launch_profile_protocol_versions].nil?
        Hearth::Validator.validate!(input[:launch_purpose], ::String, context: "#{context}[:launch_purpose]")
        Hearth::Validator.validate!(input[:platform], ::String, context: "#{context}[:platform]")
        Hearth::Validator.validate!(input[:studio_id], ::String, context: "#{context}[:studio_id]")
      end
    end

    class GetLaunchProfileInitializationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLaunchProfileInitializationOutput, context: context)
        Validators::LaunchProfileInitialization.validate!(input[:launch_profile_initialization], context: "#{context}[:launch_profile_initialization]") unless input[:launch_profile_initialization].nil?
      end
    end

    class GetLaunchProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLaunchProfileInput, context: context)
        Hearth::Validator.validate!(input[:launch_profile_id], ::String, context: "#{context}[:launch_profile_id]")
        Hearth::Validator.validate!(input[:studio_id], ::String, context: "#{context}[:studio_id]")
      end
    end

    class GetLaunchProfileMemberInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLaunchProfileMemberInput, context: context)
        Hearth::Validator.validate!(input[:launch_profile_id], ::String, context: "#{context}[:launch_profile_id]")
        Hearth::Validator.validate!(input[:principal_id], ::String, context: "#{context}[:principal_id]")
        Hearth::Validator.validate!(input[:studio_id], ::String, context: "#{context}[:studio_id]")
      end
    end

    class GetLaunchProfileMemberOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLaunchProfileMemberOutput, context: context)
        Validators::LaunchProfileMembership.validate!(input[:member], context: "#{context}[:member]") unless input[:member].nil?
      end
    end

    class GetLaunchProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLaunchProfileOutput, context: context)
        Validators::LaunchProfile.validate!(input[:launch_profile], context: "#{context}[:launch_profile]") unless input[:launch_profile].nil?
      end
    end

    class GetStreamingImageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetStreamingImageInput, context: context)
        Hearth::Validator.validate!(input[:streaming_image_id], ::String, context: "#{context}[:streaming_image_id]")
        Hearth::Validator.validate!(input[:studio_id], ::String, context: "#{context}[:studio_id]")
      end
    end

    class GetStreamingImageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetStreamingImageOutput, context: context)
        Validators::StreamingImage.validate!(input[:streaming_image], context: "#{context}[:streaming_image]") unless input[:streaming_image].nil?
      end
    end

    class GetStreamingSessionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetStreamingSessionInput, context: context)
        Hearth::Validator.validate!(input[:session_id], ::String, context: "#{context}[:session_id]")
        Hearth::Validator.validate!(input[:studio_id], ::String, context: "#{context}[:studio_id]")
      end
    end

    class GetStreamingSessionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetStreamingSessionOutput, context: context)
        Validators::StreamingSession.validate!(input[:session], context: "#{context}[:session]") unless input[:session].nil?
      end
    end

    class GetStreamingSessionStreamInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetStreamingSessionStreamInput, context: context)
        Hearth::Validator.validate!(input[:session_id], ::String, context: "#{context}[:session_id]")
        Hearth::Validator.validate!(input[:stream_id], ::String, context: "#{context}[:stream_id]")
        Hearth::Validator.validate!(input[:studio_id], ::String, context: "#{context}[:studio_id]")
      end
    end

    class GetStreamingSessionStreamOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetStreamingSessionStreamOutput, context: context)
        Validators::StreamingSessionStream.validate!(input[:stream], context: "#{context}[:stream]") unless input[:stream].nil?
      end
    end

    class GetStudioComponentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetStudioComponentInput, context: context)
        Hearth::Validator.validate!(input[:studio_component_id], ::String, context: "#{context}[:studio_component_id]")
        Hearth::Validator.validate!(input[:studio_id], ::String, context: "#{context}[:studio_id]")
      end
    end

    class GetStudioComponentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetStudioComponentOutput, context: context)
        Validators::StudioComponent.validate!(input[:studio_component], context: "#{context}[:studio_component]") unless input[:studio_component].nil?
      end
    end

    class GetStudioInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetStudioInput, context: context)
        Hearth::Validator.validate!(input[:studio_id], ::String, context: "#{context}[:studio_id]")
      end
    end

    class GetStudioMemberInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetStudioMemberInput, context: context)
        Hearth::Validator.validate!(input[:principal_id], ::String, context: "#{context}[:principal_id]")
        Hearth::Validator.validate!(input[:studio_id], ::String, context: "#{context}[:studio_id]")
      end
    end

    class GetStudioMemberOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetStudioMemberOutput, context: context)
        Validators::StudioMembership.validate!(input[:member], context: "#{context}[:member]") unless input[:member].nil?
      end
    end

    class GetStudioOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetStudioOutput, context: context)
        Validators::Studio.validate!(input[:studio], context: "#{context}[:studio]") unless input[:studio].nil?
      end
    end

    class InternalServerErrorException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerErrorException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Validators::ExceptionContext.validate!(input[:context], context: "#{context}[:context]") unless input[:context].nil?
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class LaunchProfile
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LaunchProfile, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:created_by], ::String, context: "#{context}[:created_by]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::EC2SubnetIdList.validate!(input[:ec2_subnet_ids], context: "#{context}[:ec2_subnet_ids]") unless input[:ec2_subnet_ids].nil?
        Hearth::Validator.validate!(input[:launch_profile_id], ::String, context: "#{context}[:launch_profile_id]")
        Validators::LaunchProfileProtocolVersionList.validate!(input[:launch_profile_protocol_versions], context: "#{context}[:launch_profile_protocol_versions]") unless input[:launch_profile_protocol_versions].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:status_code], ::String, context: "#{context}[:status_code]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
        Validators::StreamConfiguration.validate!(input[:stream_configuration], context: "#{context}[:stream_configuration]") unless input[:stream_configuration].nil?
        Validators::LaunchProfileStudioComponentIdList.validate!(input[:studio_component_ids], context: "#{context}[:studio_component_ids]") unless input[:studio_component_ids].nil?
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:updated_at], ::Time, context: "#{context}[:updated_at]")
        Hearth::Validator.validate!(input[:updated_by], ::String, context: "#{context}[:updated_by]")
        Validators::ValidationResults.validate!(input[:validation_results], context: "#{context}[:validation_results]") unless input[:validation_results].nil?
      end
    end

    class LaunchProfileInitialization
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LaunchProfileInitialization, context: context)
        Validators::LaunchProfileInitializationActiveDirectory.validate!(input[:active_directory], context: "#{context}[:active_directory]") unless input[:active_directory].nil?
        Validators::LaunchProfileSecurityGroupIdList.validate!(input[:ec2_security_group_ids], context: "#{context}[:ec2_security_group_ids]") unless input[:ec2_security_group_ids].nil?
        Hearth::Validator.validate!(input[:launch_profile_id], ::String, context: "#{context}[:launch_profile_id]")
        Hearth::Validator.validate!(input[:launch_profile_protocol_version], ::String, context: "#{context}[:launch_profile_protocol_version]")
        Hearth::Validator.validate!(input[:launch_purpose], ::String, context: "#{context}[:launch_purpose]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:platform], ::String, context: "#{context}[:platform]")
        Validators::LaunchProfileInitializationScriptList.validate!(input[:system_initialization_scripts], context: "#{context}[:system_initialization_scripts]") unless input[:system_initialization_scripts].nil?
        Validators::LaunchProfileInitializationScriptList.validate!(input[:user_initialization_scripts], context: "#{context}[:user_initialization_scripts]") unless input[:user_initialization_scripts].nil?
      end
    end

    class LaunchProfileInitializationActiveDirectory
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LaunchProfileInitializationActiveDirectory, context: context)
        Validators::ActiveDirectoryComputerAttributeList.validate!(input[:computer_attributes], context: "#{context}[:computer_attributes]") unless input[:computer_attributes].nil?
        Hearth::Validator.validate!(input[:directory_id], ::String, context: "#{context}[:directory_id]")
        Hearth::Validator.validate!(input[:directory_name], ::String, context: "#{context}[:directory_name]")
        Validators::ActiveDirectoryDnsIpAddressList.validate!(input[:dns_ip_addresses], context: "#{context}[:dns_ip_addresses]") unless input[:dns_ip_addresses].nil?
        Hearth::Validator.validate!(input[:organizational_unit_distinguished_name], ::String, context: "#{context}[:organizational_unit_distinguished_name]")
        Hearth::Validator.validate!(input[:studio_component_id], ::String, context: "#{context}[:studio_component_id]")
        Hearth::Validator.validate!(input[:studio_component_name], ::String, context: "#{context}[:studio_component_name]")
      end
    end

    class LaunchProfileInitializationScript
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LaunchProfileInitializationScript, context: context)
        Hearth::Validator.validate!(input[:script], ::String, context: "#{context}[:script]")
        Hearth::Validator.validate!(input[:studio_component_id], ::String, context: "#{context}[:studio_component_id]")
        Hearth::Validator.validate!(input[:studio_component_name], ::String, context: "#{context}[:studio_component_name]")
      end
    end

    class LaunchProfileInitializationScriptList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::LaunchProfileInitializationScript.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LaunchProfileList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::LaunchProfile.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LaunchProfileMembership
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LaunchProfileMembership, context: context)
        Hearth::Validator.validate!(input[:identity_store_id], ::String, context: "#{context}[:identity_store_id]")
        Hearth::Validator.validate!(input[:persona], ::String, context: "#{context}[:persona]")
        Hearth::Validator.validate!(input[:principal_id], ::String, context: "#{context}[:principal_id]")
        Hearth::Validator.validate!(input[:sid], ::String, context: "#{context}[:sid]")
      end
    end

    class LaunchProfileMembershipList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::LaunchProfileMembership.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LaunchProfileProtocolVersionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class LaunchProfileSecurityGroupIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class LaunchProfileStateList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class LaunchProfileStudioComponentIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class LicenseServiceConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LicenseServiceConfiguration, context: context)
        Hearth::Validator.validate!(input[:endpoint], ::String, context: "#{context}[:endpoint]")
      end
    end

    class ListEulaAcceptancesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEulaAcceptancesInput, context: context)
        Validators::StringList.validate!(input[:eula_ids], context: "#{context}[:eula_ids]") unless input[:eula_ids].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:studio_id], ::String, context: "#{context}[:studio_id]")
      end
    end

    class ListEulaAcceptancesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEulaAcceptancesOutput, context: context)
        Validators::EulaAcceptanceList.validate!(input[:eula_acceptances], context: "#{context}[:eula_acceptances]") unless input[:eula_acceptances].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListEulasInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEulasInput, context: context)
        Validators::StringList.validate!(input[:eula_ids], context: "#{context}[:eula_ids]") unless input[:eula_ids].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListEulasOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEulasOutput, context: context)
        Validators::EulaList.validate!(input[:eulas], context: "#{context}[:eulas]") unless input[:eulas].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListLaunchProfileMembersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListLaunchProfileMembersInput, context: context)
        Hearth::Validator.validate!(input[:launch_profile_id], ::String, context: "#{context}[:launch_profile_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:studio_id], ::String, context: "#{context}[:studio_id]")
      end
    end

    class ListLaunchProfileMembersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListLaunchProfileMembersOutput, context: context)
        Validators::LaunchProfileMembershipList.validate!(input[:members], context: "#{context}[:members]") unless input[:members].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListLaunchProfilesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListLaunchProfilesInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:principal_id], ::String, context: "#{context}[:principal_id]")
        Validators::LaunchProfileStateList.validate!(input[:states], context: "#{context}[:states]") unless input[:states].nil?
        Hearth::Validator.validate!(input[:studio_id], ::String, context: "#{context}[:studio_id]")
      end
    end

    class ListLaunchProfilesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListLaunchProfilesOutput, context: context)
        Validators::LaunchProfileList.validate!(input[:launch_profiles], context: "#{context}[:launch_profiles]") unless input[:launch_profiles].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListStreamingImagesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListStreamingImagesInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:owner], ::String, context: "#{context}[:owner]")
        Hearth::Validator.validate!(input[:studio_id], ::String, context: "#{context}[:studio_id]")
      end
    end

    class ListStreamingImagesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListStreamingImagesOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::StreamingImageList.validate!(input[:streaming_images], context: "#{context}[:streaming_images]") unless input[:streaming_images].nil?
      end
    end

    class ListStreamingSessionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListStreamingSessionsInput, context: context)
        Hearth::Validator.validate!(input[:created_by], ::String, context: "#{context}[:created_by]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:owned_by], ::String, context: "#{context}[:owned_by]")
        Hearth::Validator.validate!(input[:session_ids], ::String, context: "#{context}[:session_ids]")
        Hearth::Validator.validate!(input[:studio_id], ::String, context: "#{context}[:studio_id]")
      end
    end

    class ListStreamingSessionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListStreamingSessionsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::StreamingSessionList.validate!(input[:sessions], context: "#{context}[:sessions]") unless input[:sessions].nil?
      end
    end

    class ListStudioComponentsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListStudioComponentsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::StudioComponentStateList.validate!(input[:states], context: "#{context}[:states]") unless input[:states].nil?
        Hearth::Validator.validate!(input[:studio_id], ::String, context: "#{context}[:studio_id]")
        Validators::StudioComponentTypeList.validate!(input[:types], context: "#{context}[:types]") unless input[:types].nil?
      end
    end

    class ListStudioComponentsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListStudioComponentsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::StudioComponentList.validate!(input[:studio_components], context: "#{context}[:studio_components]") unless input[:studio_components].nil?
      end
    end

    class ListStudioMembersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListStudioMembersInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:studio_id], ::String, context: "#{context}[:studio_id]")
      end
    end

    class ListStudioMembersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListStudioMembersOutput, context: context)
        Validators::StudioMembershipList.validate!(input[:members], context: "#{context}[:members]") unless input[:members].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListStudiosInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListStudiosInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListStudiosOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListStudiosOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::StudioList.validate!(input[:studios], context: "#{context}[:studios]") unless input[:studios].nil?
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
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class NewLaunchProfileMember
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NewLaunchProfileMember, context: context)
        Hearth::Validator.validate!(input[:persona], ::String, context: "#{context}[:persona]")
        Hearth::Validator.validate!(input[:principal_id], ::String, context: "#{context}[:principal_id]")
      end
    end

    class NewLaunchProfileMemberList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::NewLaunchProfileMember.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class NewStudioMember
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NewStudioMember, context: context)
        Hearth::Validator.validate!(input[:persona], ::String, context: "#{context}[:persona]")
        Hearth::Validator.validate!(input[:principal_id], ::String, context: "#{context}[:principal_id]")
      end
    end

    class NewStudioMemberList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::NewStudioMember.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PutLaunchProfileMembersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutLaunchProfileMembersInput, context: context)
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:identity_store_id], ::String, context: "#{context}[:identity_store_id]")
        Hearth::Validator.validate!(input[:launch_profile_id], ::String, context: "#{context}[:launch_profile_id]")
        Validators::NewLaunchProfileMemberList.validate!(input[:members], context: "#{context}[:members]") unless input[:members].nil?
        Hearth::Validator.validate!(input[:studio_id], ::String, context: "#{context}[:studio_id]")
      end
    end

    class PutLaunchProfileMembersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutLaunchProfileMembersOutput, context: context)
      end
    end

    class PutStudioMembersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutStudioMembersInput, context: context)
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:identity_store_id], ::String, context: "#{context}[:identity_store_id]")
        Validators::NewStudioMemberList.validate!(input[:members], context: "#{context}[:members]") unless input[:members].nil?
        Hearth::Validator.validate!(input[:studio_id], ::String, context: "#{context}[:studio_id]")
      end
    end

    class PutStudioMembersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutStudioMembersOutput, context: context)
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Validators::ExceptionContext.validate!(input[:context], context: "#{context}[:context]") unless input[:context].nil?
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ScriptParameterKeyValue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScriptParameterKeyValue, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class ServiceQuotaExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceQuotaExceededException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Validators::ExceptionContext.validate!(input[:context], context: "#{context}[:context]") unless input[:context].nil?
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SharedFileSystemConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SharedFileSystemConfiguration, context: context)
        Hearth::Validator.validate!(input[:endpoint], ::String, context: "#{context}[:endpoint]")
        Hearth::Validator.validate!(input[:file_system_id], ::String, context: "#{context}[:file_system_id]")
        Hearth::Validator.validate!(input[:linux_mount_point], ::String, context: "#{context}[:linux_mount_point]")
        Hearth::Validator.validate!(input[:share_name], ::String, context: "#{context}[:share_name]")
        Hearth::Validator.validate!(input[:windows_mount_drive], ::String, context: "#{context}[:windows_mount_drive]")
      end
    end

    class StartStreamingSessionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartStreamingSessionInput, context: context)
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:session_id], ::String, context: "#{context}[:session_id]")
        Hearth::Validator.validate!(input[:studio_id], ::String, context: "#{context}[:studio_id]")
      end
    end

    class StartStreamingSessionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartStreamingSessionOutput, context: context)
        Validators::StreamingSession.validate!(input[:session], context: "#{context}[:session]") unless input[:session].nil?
      end
    end

    class StartStudioSSOConfigurationRepairInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartStudioSSOConfigurationRepairInput, context: context)
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:studio_id], ::String, context: "#{context}[:studio_id]")
      end
    end

    class StartStudioSSOConfigurationRepairOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartStudioSSOConfigurationRepairOutput, context: context)
        Validators::Studio.validate!(input[:studio], context: "#{context}[:studio]") unless input[:studio].nil?
      end
    end

    class StopStreamingSessionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopStreamingSessionInput, context: context)
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:session_id], ::String, context: "#{context}[:session_id]")
        Hearth::Validator.validate!(input[:studio_id], ::String, context: "#{context}[:studio_id]")
      end
    end

    class StopStreamingSessionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopStreamingSessionOutput, context: context)
        Validators::StreamingSession.validate!(input[:session], context: "#{context}[:session]") unless input[:session].nil?
      end
    end

    class StreamConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StreamConfiguration, context: context)
        Hearth::Validator.validate!(input[:clipboard_mode], ::String, context: "#{context}[:clipboard_mode]")
        Validators::StreamingInstanceTypeList.validate!(input[:ec2_instance_types], context: "#{context}[:ec2_instance_types]") unless input[:ec2_instance_types].nil?
        Hearth::Validator.validate!(input[:max_session_length_in_minutes], ::Integer, context: "#{context}[:max_session_length_in_minutes]")
        Validators::StreamingImageIdList.validate!(input[:streaming_image_ids], context: "#{context}[:streaming_image_ids]") unless input[:streaming_image_ids].nil?
        Hearth::Validator.validate!(input[:max_stopped_session_length_in_minutes], ::Integer, context: "#{context}[:max_stopped_session_length_in_minutes]")
        Validators::StreamConfigurationSessionStorage.validate!(input[:session_storage], context: "#{context}[:session_storage]") unless input[:session_storage].nil?
      end
    end

    class StreamConfigurationCreate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StreamConfigurationCreate, context: context)
        Hearth::Validator.validate!(input[:clipboard_mode], ::String, context: "#{context}[:clipboard_mode]")
        Validators::StreamingInstanceTypeList.validate!(input[:ec2_instance_types], context: "#{context}[:ec2_instance_types]") unless input[:ec2_instance_types].nil?
        Hearth::Validator.validate!(input[:max_session_length_in_minutes], ::Integer, context: "#{context}[:max_session_length_in_minutes]")
        Validators::StreamingImageIdList.validate!(input[:streaming_image_ids], context: "#{context}[:streaming_image_ids]") unless input[:streaming_image_ids].nil?
        Hearth::Validator.validate!(input[:max_stopped_session_length_in_minutes], ::Integer, context: "#{context}[:max_stopped_session_length_in_minutes]")
        Validators::StreamConfigurationSessionStorage.validate!(input[:session_storage], context: "#{context}[:session_storage]") unless input[:session_storage].nil?
      end
    end

    class StreamConfigurationSessionStorage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StreamConfigurationSessionStorage, context: context)
        Validators::StreamingSessionStorageRoot.validate!(input[:root], context: "#{context}[:root]") unless input[:root].nil?
        Validators::StreamingSessionStorageModeList.validate!(input[:mode], context: "#{context}[:mode]") unless input[:mode].nil?
      end
    end

    class StreamingImage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StreamingImage, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:ec2_image_id], ::String, context: "#{context}[:ec2_image_id]")
        Validators::StreamingImageEncryptionConfiguration.validate!(input[:encryption_configuration], context: "#{context}[:encryption_configuration]") unless input[:encryption_configuration].nil?
        Validators::EulaIdList.validate!(input[:eula_ids], context: "#{context}[:eula_ids]") unless input[:eula_ids].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:owner], ::String, context: "#{context}[:owner]")
        Hearth::Validator.validate!(input[:platform], ::String, context: "#{context}[:platform]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:status_code], ::String, context: "#{context}[:status_code]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
        Hearth::Validator.validate!(input[:streaming_image_id], ::String, context: "#{context}[:streaming_image_id]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class StreamingImageEncryptionConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StreamingImageEncryptionConfiguration, context: context)
        Hearth::Validator.validate!(input[:key_arn], ::String, context: "#{context}[:key_arn]")
        Hearth::Validator.validate!(input[:key_type], ::String, context: "#{context}[:key_type]")
      end
    end

    class StreamingImageIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class StreamingImageList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::StreamingImage.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StreamingInstanceTypeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class StreamingSession
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StreamingSession, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:created_by], ::String, context: "#{context}[:created_by]")
        Hearth::Validator.validate!(input[:ec2_instance_type], ::String, context: "#{context}[:ec2_instance_type]")
        Hearth::Validator.validate!(input[:launch_profile_id], ::String, context: "#{context}[:launch_profile_id]")
        Hearth::Validator.validate!(input[:owned_by], ::String, context: "#{context}[:owned_by]")
        Hearth::Validator.validate!(input[:session_id], ::String, context: "#{context}[:session_id]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:status_code], ::String, context: "#{context}[:status_code]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
        Hearth::Validator.validate!(input[:streaming_image_id], ::String, context: "#{context}[:streaming_image_id]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:terminate_at], ::Time, context: "#{context}[:terminate_at]")
        Hearth::Validator.validate!(input[:updated_at], ::Time, context: "#{context}[:updated_at]")
        Hearth::Validator.validate!(input[:updated_by], ::String, context: "#{context}[:updated_by]")
        Hearth::Validator.validate!(input[:stopped_at], ::Time, context: "#{context}[:stopped_at]")
        Hearth::Validator.validate!(input[:stopped_by], ::String, context: "#{context}[:stopped_by]")
        Hearth::Validator.validate!(input[:started_at], ::Time, context: "#{context}[:started_at]")
        Hearth::Validator.validate!(input[:started_by], ::String, context: "#{context}[:started_by]")
        Hearth::Validator.validate!(input[:stop_at], ::Time, context: "#{context}[:stop_at]")
      end
    end

    class StreamingSessionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::StreamingSession.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StreamingSessionStorageModeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class StreamingSessionStorageRoot
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StreamingSessionStorageRoot, context: context)
        Hearth::Validator.validate!(input[:linux], ::String, context: "#{context}[:linux]")
        Hearth::Validator.validate!(input[:windows], ::String, context: "#{context}[:windows]")
      end
    end

    class StreamingSessionStream
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StreamingSessionStream, context: context)
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:created_by], ::String, context: "#{context}[:created_by]")
        Hearth::Validator.validate!(input[:expires_at], ::Time, context: "#{context}[:expires_at]")
        Hearth::Validator.validate!(input[:owned_by], ::String, context: "#{context}[:owned_by]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:status_code], ::String, context: "#{context}[:status_code]")
        Hearth::Validator.validate!(input[:stream_id], ::String, context: "#{context}[:stream_id]")
        Hearth::Validator.validate!(input[:url], ::String, context: "#{context}[:url]")
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

    class Studio
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Studio, context: context)
        Hearth::Validator.validate!(input[:admin_role_arn], ::String, context: "#{context}[:admin_role_arn]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate!(input[:home_region], ::String, context: "#{context}[:home_region]")
        Hearth::Validator.validate!(input[:sso_client_id], ::String, context: "#{context}[:sso_client_id]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:status_code], ::String, context: "#{context}[:status_code]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
        Validators::StudioEncryptionConfiguration.validate!(input[:studio_encryption_configuration], context: "#{context}[:studio_encryption_configuration]") unless input[:studio_encryption_configuration].nil?
        Hearth::Validator.validate!(input[:studio_id], ::String, context: "#{context}[:studio_id]")
        Hearth::Validator.validate!(input[:studio_name], ::String, context: "#{context}[:studio_name]")
        Hearth::Validator.validate!(input[:studio_url], ::String, context: "#{context}[:studio_url]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:updated_at], ::Time, context: "#{context}[:updated_at]")
        Hearth::Validator.validate!(input[:user_role_arn], ::String, context: "#{context}[:user_role_arn]")
      end
    end

    class StudioComponent
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StudioComponent, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Validators::StudioComponentConfiguration.validate!(input[:configuration], context: "#{context}[:configuration]") unless input[:configuration].nil?
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:created_by], ::String, context: "#{context}[:created_by]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::StudioComponentSecurityGroupIdList.validate!(input[:ec2_security_group_ids], context: "#{context}[:ec2_security_group_ids]") unless input[:ec2_security_group_ids].nil?
        Validators::StudioComponentInitializationScriptList.validate!(input[:initialization_scripts], context: "#{context}[:initialization_scripts]") unless input[:initialization_scripts].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::StudioComponentScriptParameterKeyValueList.validate!(input[:script_parameters], context: "#{context}[:script_parameters]") unless input[:script_parameters].nil?
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:status_code], ::String, context: "#{context}[:status_code]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
        Hearth::Validator.validate!(input[:studio_component_id], ::String, context: "#{context}[:studio_component_id]")
        Hearth::Validator.validate!(input[:subtype], ::String, context: "#{context}[:subtype]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:updated_at], ::Time, context: "#{context}[:updated_at]")
        Hearth::Validator.validate!(input[:updated_by], ::String, context: "#{context}[:updated_by]")
      end
    end

    class StudioComponentConfiguration
      def self.validate!(input, context:)
        case input
        when Types::StudioComponentConfiguration::ActiveDirectoryConfiguration
          Validators::ActiveDirectoryConfiguration.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::StudioComponentConfiguration::ComputeFarmConfiguration
          Validators::ComputeFarmConfiguration.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::StudioComponentConfiguration::LicenseServiceConfiguration
          Validators::LicenseServiceConfiguration.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::StudioComponentConfiguration::SharedFileSystemConfiguration
          Validators::SharedFileSystemConfiguration.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::StudioComponentConfiguration, got #{input.class}."
        end
      end

      class ActiveDirectoryConfiguration
        def self.validate!(input, context:)
          Validators::ActiveDirectoryConfiguration.validate!(input, context: context) unless input.nil?
        end
      end

      class ComputeFarmConfiguration
        def self.validate!(input, context:)
          Validators::ComputeFarmConfiguration.validate!(input, context: context) unless input.nil?
        end
      end

      class LicenseServiceConfiguration
        def self.validate!(input, context:)
          Validators::LicenseServiceConfiguration.validate!(input, context: context) unless input.nil?
        end
      end

      class SharedFileSystemConfiguration
        def self.validate!(input, context:)
          Validators::SharedFileSystemConfiguration.validate!(input, context: context) unless input.nil?
        end
      end
    end

    class StudioComponentInitializationScript
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StudioComponentInitializationScript, context: context)
        Hearth::Validator.validate!(input[:launch_profile_protocol_version], ::String, context: "#{context}[:launch_profile_protocol_version]")
        Hearth::Validator.validate!(input[:platform], ::String, context: "#{context}[:platform]")
        Hearth::Validator.validate!(input[:run_context], ::String, context: "#{context}[:run_context]")
        Hearth::Validator.validate!(input[:script], ::String, context: "#{context}[:script]")
      end
    end

    class StudioComponentInitializationScriptList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::StudioComponentInitializationScript.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StudioComponentList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::StudioComponent.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StudioComponentScriptParameterKeyValueList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ScriptParameterKeyValue.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StudioComponentSecurityGroupIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class StudioComponentStateList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class StudioComponentSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StudioComponentSummary, context: context)
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:created_by], ::String, context: "#{context}[:created_by]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:studio_component_id], ::String, context: "#{context}[:studio_component_id]")
        Hearth::Validator.validate!(input[:subtype], ::String, context: "#{context}[:subtype]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:updated_at], ::Time, context: "#{context}[:updated_at]")
        Hearth::Validator.validate!(input[:updated_by], ::String, context: "#{context}[:updated_by]")
      end
    end

    class StudioComponentSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::StudioComponentSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StudioComponentTypeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class StudioEncryptionConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StudioEncryptionConfiguration, context: context)
        Hearth::Validator.validate!(input[:key_arn], ::String, context: "#{context}[:key_arn]")
        Hearth::Validator.validate!(input[:key_type], ::String, context: "#{context}[:key_type]")
      end
    end

    class StudioList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Studio.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StudioMembership
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StudioMembership, context: context)
        Hearth::Validator.validate!(input[:identity_store_id], ::String, context: "#{context}[:identity_store_id]")
        Hearth::Validator.validate!(input[:persona], ::String, context: "#{context}[:persona]")
        Hearth::Validator.validate!(input[:principal_id], ::String, context: "#{context}[:principal_id]")
        Hearth::Validator.validate!(input[:sid], ::String, context: "#{context}[:sid]")
      end
    end

    class StudioMembershipList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::StudioMembership.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
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

    class ThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottlingException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Validators::ExceptionContext.validate!(input[:context], context: "#{context}[:context]") unless input[:context].nil?
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::StringList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateLaunchProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateLaunchProfileInput, context: context)
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:launch_profile_id], ::String, context: "#{context}[:launch_profile_id]")
        Validators::LaunchProfileProtocolVersionList.validate!(input[:launch_profile_protocol_versions], context: "#{context}[:launch_profile_protocol_versions]") unless input[:launch_profile_protocol_versions].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::StreamConfigurationCreate.validate!(input[:stream_configuration], context: "#{context}[:stream_configuration]") unless input[:stream_configuration].nil?
        Validators::LaunchProfileStudioComponentIdList.validate!(input[:studio_component_ids], context: "#{context}[:studio_component_ids]") unless input[:studio_component_ids].nil?
        Hearth::Validator.validate!(input[:studio_id], ::String, context: "#{context}[:studio_id]")
      end
    end

    class UpdateLaunchProfileMemberInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateLaunchProfileMemberInput, context: context)
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:launch_profile_id], ::String, context: "#{context}[:launch_profile_id]")
        Hearth::Validator.validate!(input[:persona], ::String, context: "#{context}[:persona]")
        Hearth::Validator.validate!(input[:principal_id], ::String, context: "#{context}[:principal_id]")
        Hearth::Validator.validate!(input[:studio_id], ::String, context: "#{context}[:studio_id]")
      end
    end

    class UpdateLaunchProfileMemberOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateLaunchProfileMemberOutput, context: context)
        Validators::LaunchProfileMembership.validate!(input[:member], context: "#{context}[:member]") unless input[:member].nil?
      end
    end

    class UpdateLaunchProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateLaunchProfileOutput, context: context)
        Validators::LaunchProfile.validate!(input[:launch_profile], context: "#{context}[:launch_profile]") unless input[:launch_profile].nil?
      end
    end

    class UpdateStreamingImageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateStreamingImageInput, context: context)
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:streaming_image_id], ::String, context: "#{context}[:streaming_image_id]")
        Hearth::Validator.validate!(input[:studio_id], ::String, context: "#{context}[:studio_id]")
      end
    end

    class UpdateStreamingImageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateStreamingImageOutput, context: context)
        Validators::StreamingImage.validate!(input[:streaming_image], context: "#{context}[:streaming_image]") unless input[:streaming_image].nil?
      end
    end

    class UpdateStudioComponentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateStudioComponentInput, context: context)
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Validators::StudioComponentConfiguration.validate!(input[:configuration], context: "#{context}[:configuration]") unless input[:configuration].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::StudioComponentSecurityGroupIdList.validate!(input[:ec2_security_group_ids], context: "#{context}[:ec2_security_group_ids]") unless input[:ec2_security_group_ids].nil?
        Validators::StudioComponentInitializationScriptList.validate!(input[:initialization_scripts], context: "#{context}[:initialization_scripts]") unless input[:initialization_scripts].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::StudioComponentScriptParameterKeyValueList.validate!(input[:script_parameters], context: "#{context}[:script_parameters]") unless input[:script_parameters].nil?
        Hearth::Validator.validate!(input[:studio_component_id], ::String, context: "#{context}[:studio_component_id]")
        Hearth::Validator.validate!(input[:studio_id], ::String, context: "#{context}[:studio_id]")
        Hearth::Validator.validate!(input[:subtype], ::String, context: "#{context}[:subtype]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class UpdateStudioComponentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateStudioComponentOutput, context: context)
        Validators::StudioComponent.validate!(input[:studio_component], context: "#{context}[:studio_component]") unless input[:studio_component].nil?
      end
    end

    class UpdateStudioInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateStudioInput, context: context)
        Hearth::Validator.validate!(input[:admin_role_arn], ::String, context: "#{context}[:admin_role_arn]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate!(input[:studio_id], ::String, context: "#{context}[:studio_id]")
        Hearth::Validator.validate!(input[:user_role_arn], ::String, context: "#{context}[:user_role_arn]")
      end
    end

    class UpdateStudioOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateStudioOutput, context: context)
        Validators::Studio.validate!(input[:studio], context: "#{context}[:studio]") unless input[:studio].nil?
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Validators::ExceptionContext.validate!(input[:context], context: "#{context}[:context]") unless input[:context].nil?
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ValidationResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationResult, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:status_code], ::String, context: "#{context}[:status_code]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
      end
    end

    class ValidationResults
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ValidationResult.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

  end
end
