# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::Nimble
  module Params

    module AcceptEulasInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AcceptEulasInput, context: context)
        type = Types::AcceptEulasInput.new
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.eula_ids = EulaIdList.build(params[:eula_ids], context: "#{context}[:eula_ids]") unless params[:eula_ids].nil?
        type.studio_id = params[:studio_id]
        type
      end
    end

    module AcceptEulasOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AcceptEulasOutput, context: context)
        type = Types::AcceptEulasOutput.new
        type.eula_acceptances = EulaAcceptanceList.build(params[:eula_acceptances], context: "#{context}[:eula_acceptances]") unless params[:eula_acceptances].nil?
        type
      end
    end

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.code = params[:code]
        type.context = ExceptionContext.build(params[:context], context: "#{context}[:context]") unless params[:context].nil?
        type.message = params[:message]
        type
      end
    end

    module ActiveDirectoryComputerAttribute
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActiveDirectoryComputerAttribute, context: context)
        type = Types::ActiveDirectoryComputerAttribute.new
        type.name = params[:name]
        type.value = params[:value]
        type
      end
    end

    module ActiveDirectoryComputerAttributeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ActiveDirectoryComputerAttribute.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ActiveDirectoryConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActiveDirectoryConfiguration, context: context)
        type = Types::ActiveDirectoryConfiguration.new
        type.computer_attributes = ActiveDirectoryComputerAttributeList.build(params[:computer_attributes], context: "#{context}[:computer_attributes]") unless params[:computer_attributes].nil?
        type.directory_id = params[:directory_id]
        type.organizational_unit_distinguished_name = params[:organizational_unit_distinguished_name]
        type
      end
    end

    module ActiveDirectoryDnsIpAddressList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ComputeFarmConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ComputeFarmConfiguration, context: context)
        type = Types::ComputeFarmConfiguration.new
        type.active_directory_user = params[:active_directory_user]
        type.endpoint = params[:endpoint]
        type
      end
    end

    module ConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictException, context: context)
        type = Types::ConflictException.new
        type.code = params[:code]
        type.context = ExceptionContext.build(params[:context], context: "#{context}[:context]") unless params[:context].nil?
        type.message = params[:message]
        type
      end
    end

    module CreateLaunchProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLaunchProfileInput, context: context)
        type = Types::CreateLaunchProfileInput.new
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.description = params[:description]
        type.ec2_subnet_ids = EC2SubnetIdList.build(params[:ec2_subnet_ids], context: "#{context}[:ec2_subnet_ids]") unless params[:ec2_subnet_ids].nil?
        type.launch_profile_protocol_versions = LaunchProfileProtocolVersionList.build(params[:launch_profile_protocol_versions], context: "#{context}[:launch_profile_protocol_versions]") unless params[:launch_profile_protocol_versions].nil?
        type.name = params[:name]
        type.stream_configuration = StreamConfigurationCreate.build(params[:stream_configuration], context: "#{context}[:stream_configuration]") unless params[:stream_configuration].nil?
        type.studio_component_ids = LaunchProfileStudioComponentIdList.build(params[:studio_component_ids], context: "#{context}[:studio_component_ids]") unless params[:studio_component_ids].nil?
        type.studio_id = params[:studio_id]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateLaunchProfileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLaunchProfileOutput, context: context)
        type = Types::CreateLaunchProfileOutput.new
        type.launch_profile = LaunchProfile.build(params[:launch_profile], context: "#{context}[:launch_profile]") unless params[:launch_profile].nil?
        type
      end
    end

    module CreateStreamingImageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateStreamingImageInput, context: context)
        type = Types::CreateStreamingImageInput.new
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.description = params[:description]
        type.ec2_image_id = params[:ec2_image_id]
        type.name = params[:name]
        type.studio_id = params[:studio_id]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateStreamingImageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateStreamingImageOutput, context: context)
        type = Types::CreateStreamingImageOutput.new
        type.streaming_image = StreamingImage.build(params[:streaming_image], context: "#{context}[:streaming_image]") unless params[:streaming_image].nil?
        type
      end
    end

    module CreateStreamingSessionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateStreamingSessionInput, context: context)
        type = Types::CreateStreamingSessionInput.new
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.ec2_instance_type = params[:ec2_instance_type]
        type.launch_profile_id = params[:launch_profile_id]
        type.owned_by = params[:owned_by]
        type.streaming_image_id = params[:streaming_image_id]
        type.studio_id = params[:studio_id]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateStreamingSessionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateStreamingSessionOutput, context: context)
        type = Types::CreateStreamingSessionOutput.new
        type.session = StreamingSession.build(params[:session], context: "#{context}[:session]") unless params[:session].nil?
        type
      end
    end

    module CreateStreamingSessionStreamInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateStreamingSessionStreamInput, context: context)
        type = Types::CreateStreamingSessionStreamInput.new
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.expiration_in_seconds = params[:expiration_in_seconds]
        type.session_id = params[:session_id]
        type.studio_id = params[:studio_id]
        type
      end
    end

    module CreateStreamingSessionStreamOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateStreamingSessionStreamOutput, context: context)
        type = Types::CreateStreamingSessionStreamOutput.new
        type.stream = StreamingSessionStream.build(params[:stream], context: "#{context}[:stream]") unless params[:stream].nil?
        type
      end
    end

    module CreateStudioComponentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateStudioComponentInput, context: context)
        type = Types::CreateStudioComponentInput.new
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.configuration = StudioComponentConfiguration.build(params[:configuration], context: "#{context}[:configuration]") unless params[:configuration].nil?
        type.description = params[:description]
        type.ec2_security_group_ids = StudioComponentSecurityGroupIdList.build(params[:ec2_security_group_ids], context: "#{context}[:ec2_security_group_ids]") unless params[:ec2_security_group_ids].nil?
        type.initialization_scripts = StudioComponentInitializationScriptList.build(params[:initialization_scripts], context: "#{context}[:initialization_scripts]") unless params[:initialization_scripts].nil?
        type.name = params[:name]
        type.script_parameters = StudioComponentScriptParameterKeyValueList.build(params[:script_parameters], context: "#{context}[:script_parameters]") unless params[:script_parameters].nil?
        type.studio_id = params[:studio_id]
        type.subtype = params[:subtype]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.type = params[:type]
        type.secure_initialization_role_arn = params[:secure_initialization_role_arn]
        type.runtime_role_arn = params[:runtime_role_arn]
        type
      end
    end

    module CreateStudioComponentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateStudioComponentOutput, context: context)
        type = Types::CreateStudioComponentOutput.new
        type.studio_component = StudioComponent.build(params[:studio_component], context: "#{context}[:studio_component]") unless params[:studio_component].nil?
        type
      end
    end

    module CreateStudioInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateStudioInput, context: context)
        type = Types::CreateStudioInput.new
        type.admin_role_arn = params[:admin_role_arn]
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.display_name = params[:display_name]
        type.studio_encryption_configuration = StudioEncryptionConfiguration.build(params[:studio_encryption_configuration], context: "#{context}[:studio_encryption_configuration]") unless params[:studio_encryption_configuration].nil?
        type.studio_name = params[:studio_name]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.user_role_arn = params[:user_role_arn]
        type
      end
    end

    module CreateStudioOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateStudioOutput, context: context)
        type = Types::CreateStudioOutput.new
        type.studio = Studio.build(params[:studio], context: "#{context}[:studio]") unless params[:studio].nil?
        type
      end
    end

    module DeleteLaunchProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteLaunchProfileInput, context: context)
        type = Types::DeleteLaunchProfileInput.new
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.launch_profile_id = params[:launch_profile_id]
        type.studio_id = params[:studio_id]
        type
      end
    end

    module DeleteLaunchProfileMemberInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteLaunchProfileMemberInput, context: context)
        type = Types::DeleteLaunchProfileMemberInput.new
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.launch_profile_id = params[:launch_profile_id]
        type.principal_id = params[:principal_id]
        type.studio_id = params[:studio_id]
        type
      end
    end

    module DeleteLaunchProfileMemberOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteLaunchProfileMemberOutput, context: context)
        type = Types::DeleteLaunchProfileMemberOutput.new
        type
      end
    end

    module DeleteLaunchProfileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteLaunchProfileOutput, context: context)
        type = Types::DeleteLaunchProfileOutput.new
        type.launch_profile = LaunchProfile.build(params[:launch_profile], context: "#{context}[:launch_profile]") unless params[:launch_profile].nil?
        type
      end
    end

    module DeleteStreamingImageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteStreamingImageInput, context: context)
        type = Types::DeleteStreamingImageInput.new
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.streaming_image_id = params[:streaming_image_id]
        type.studio_id = params[:studio_id]
        type
      end
    end

    module DeleteStreamingImageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteStreamingImageOutput, context: context)
        type = Types::DeleteStreamingImageOutput.new
        type.streaming_image = StreamingImage.build(params[:streaming_image], context: "#{context}[:streaming_image]") unless params[:streaming_image].nil?
        type
      end
    end

    module DeleteStreamingSessionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteStreamingSessionInput, context: context)
        type = Types::DeleteStreamingSessionInput.new
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.session_id = params[:session_id]
        type.studio_id = params[:studio_id]
        type
      end
    end

    module DeleteStreamingSessionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteStreamingSessionOutput, context: context)
        type = Types::DeleteStreamingSessionOutput.new
        type.session = StreamingSession.build(params[:session], context: "#{context}[:session]") unless params[:session].nil?
        type
      end
    end

    module DeleteStudioComponentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteStudioComponentInput, context: context)
        type = Types::DeleteStudioComponentInput.new
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.studio_component_id = params[:studio_component_id]
        type.studio_id = params[:studio_id]
        type
      end
    end

    module DeleteStudioComponentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteStudioComponentOutput, context: context)
        type = Types::DeleteStudioComponentOutput.new
        type.studio_component = StudioComponent.build(params[:studio_component], context: "#{context}[:studio_component]") unless params[:studio_component].nil?
        type
      end
    end

    module DeleteStudioInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteStudioInput, context: context)
        type = Types::DeleteStudioInput.new
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.studio_id = params[:studio_id]
        type
      end
    end

    module DeleteStudioMemberInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteStudioMemberInput, context: context)
        type = Types::DeleteStudioMemberInput.new
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.principal_id = params[:principal_id]
        type.studio_id = params[:studio_id]
        type
      end
    end

    module DeleteStudioMemberOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteStudioMemberOutput, context: context)
        type = Types::DeleteStudioMemberOutput.new
        type
      end
    end

    module DeleteStudioOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteStudioOutput, context: context)
        type = Types::DeleteStudioOutput.new
        type.studio = Studio.build(params[:studio], context: "#{context}[:studio]") unless params[:studio].nil?
        type
      end
    end

    module EC2SubnetIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Eula
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Eula, context: context)
        type = Types::Eula.new
        type.content = params[:content]
        type.created_at = params[:created_at]
        type.eula_id = params[:eula_id]
        type.name = params[:name]
        type.updated_at = params[:updated_at]
        type
      end
    end

    module EulaAcceptance
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EulaAcceptance, context: context)
        type = Types::EulaAcceptance.new
        type.accepted_at = params[:accepted_at]
        type.accepted_by = params[:accepted_by]
        type.acceptee_id = params[:acceptee_id]
        type.eula_acceptance_id = params[:eula_acceptance_id]
        type.eula_id = params[:eula_id]
        type
      end
    end

    module EulaAcceptanceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EulaAcceptance.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EulaIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module EulaList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Eula.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ExceptionContext
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module GetEulaInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEulaInput, context: context)
        type = Types::GetEulaInput.new
        type.eula_id = params[:eula_id]
        type
      end
    end

    module GetEulaOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEulaOutput, context: context)
        type = Types::GetEulaOutput.new
        type.eula = Eula.build(params[:eula], context: "#{context}[:eula]") unless params[:eula].nil?
        type
      end
    end

    module GetLaunchProfileDetailsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLaunchProfileDetailsInput, context: context)
        type = Types::GetLaunchProfileDetailsInput.new
        type.launch_profile_id = params[:launch_profile_id]
        type.studio_id = params[:studio_id]
        type
      end
    end

    module GetLaunchProfileDetailsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLaunchProfileDetailsOutput, context: context)
        type = Types::GetLaunchProfileDetailsOutput.new
        type.launch_profile = LaunchProfile.build(params[:launch_profile], context: "#{context}[:launch_profile]") unless params[:launch_profile].nil?
        type.streaming_images = StreamingImageList.build(params[:streaming_images], context: "#{context}[:streaming_images]") unless params[:streaming_images].nil?
        type.studio_component_summaries = StudioComponentSummaryList.build(params[:studio_component_summaries], context: "#{context}[:studio_component_summaries]") unless params[:studio_component_summaries].nil?
        type
      end
    end

    module GetLaunchProfileInitializationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLaunchProfileInitializationInput, context: context)
        type = Types::GetLaunchProfileInitializationInput.new
        type.launch_profile_id = params[:launch_profile_id]
        type.launch_profile_protocol_versions = StringList.build(params[:launch_profile_protocol_versions], context: "#{context}[:launch_profile_protocol_versions]") unless params[:launch_profile_protocol_versions].nil?
        type.launch_purpose = params[:launch_purpose]
        type.platform = params[:platform]
        type.studio_id = params[:studio_id]
        type
      end
    end

    module GetLaunchProfileInitializationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLaunchProfileInitializationOutput, context: context)
        type = Types::GetLaunchProfileInitializationOutput.new
        type.launch_profile_initialization = LaunchProfileInitialization.build(params[:launch_profile_initialization], context: "#{context}[:launch_profile_initialization]") unless params[:launch_profile_initialization].nil?
        type
      end
    end

    module GetLaunchProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLaunchProfileInput, context: context)
        type = Types::GetLaunchProfileInput.new
        type.launch_profile_id = params[:launch_profile_id]
        type.studio_id = params[:studio_id]
        type
      end
    end

    module GetLaunchProfileMemberInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLaunchProfileMemberInput, context: context)
        type = Types::GetLaunchProfileMemberInput.new
        type.launch_profile_id = params[:launch_profile_id]
        type.principal_id = params[:principal_id]
        type.studio_id = params[:studio_id]
        type
      end
    end

    module GetLaunchProfileMemberOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLaunchProfileMemberOutput, context: context)
        type = Types::GetLaunchProfileMemberOutput.new
        type.member = LaunchProfileMembership.build(params[:member], context: "#{context}[:member]") unless params[:member].nil?
        type
      end
    end

    module GetLaunchProfileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLaunchProfileOutput, context: context)
        type = Types::GetLaunchProfileOutput.new
        type.launch_profile = LaunchProfile.build(params[:launch_profile], context: "#{context}[:launch_profile]") unless params[:launch_profile].nil?
        type
      end
    end

    module GetStreamingImageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetStreamingImageInput, context: context)
        type = Types::GetStreamingImageInput.new
        type.streaming_image_id = params[:streaming_image_id]
        type.studio_id = params[:studio_id]
        type
      end
    end

    module GetStreamingImageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetStreamingImageOutput, context: context)
        type = Types::GetStreamingImageOutput.new
        type.streaming_image = StreamingImage.build(params[:streaming_image], context: "#{context}[:streaming_image]") unless params[:streaming_image].nil?
        type
      end
    end

    module GetStreamingSessionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetStreamingSessionInput, context: context)
        type = Types::GetStreamingSessionInput.new
        type.session_id = params[:session_id]
        type.studio_id = params[:studio_id]
        type
      end
    end

    module GetStreamingSessionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetStreamingSessionOutput, context: context)
        type = Types::GetStreamingSessionOutput.new
        type.session = StreamingSession.build(params[:session], context: "#{context}[:session]") unless params[:session].nil?
        type
      end
    end

    module GetStreamingSessionStreamInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetStreamingSessionStreamInput, context: context)
        type = Types::GetStreamingSessionStreamInput.new
        type.session_id = params[:session_id]
        type.stream_id = params[:stream_id]
        type.studio_id = params[:studio_id]
        type
      end
    end

    module GetStreamingSessionStreamOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetStreamingSessionStreamOutput, context: context)
        type = Types::GetStreamingSessionStreamOutput.new
        type.stream = StreamingSessionStream.build(params[:stream], context: "#{context}[:stream]") unless params[:stream].nil?
        type
      end
    end

    module GetStudioComponentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetStudioComponentInput, context: context)
        type = Types::GetStudioComponentInput.new
        type.studio_component_id = params[:studio_component_id]
        type.studio_id = params[:studio_id]
        type
      end
    end

    module GetStudioComponentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetStudioComponentOutput, context: context)
        type = Types::GetStudioComponentOutput.new
        type.studio_component = StudioComponent.build(params[:studio_component], context: "#{context}[:studio_component]") unless params[:studio_component].nil?
        type
      end
    end

    module GetStudioInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetStudioInput, context: context)
        type = Types::GetStudioInput.new
        type.studio_id = params[:studio_id]
        type
      end
    end

    module GetStudioMemberInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetStudioMemberInput, context: context)
        type = Types::GetStudioMemberInput.new
        type.principal_id = params[:principal_id]
        type.studio_id = params[:studio_id]
        type
      end
    end

    module GetStudioMemberOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetStudioMemberOutput, context: context)
        type = Types::GetStudioMemberOutput.new
        type.member = StudioMembership.build(params[:member], context: "#{context}[:member]") unless params[:member].nil?
        type
      end
    end

    module GetStudioOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetStudioOutput, context: context)
        type = Types::GetStudioOutput.new
        type.studio = Studio.build(params[:studio], context: "#{context}[:studio]") unless params[:studio].nil?
        type
      end
    end

    module InternalServerErrorException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerErrorException, context: context)
        type = Types::InternalServerErrorException.new
        type.code = params[:code]
        type.context = ExceptionContext.build(params[:context], context: "#{context}[:context]") unless params[:context].nil?
        type.message = params[:message]
        type
      end
    end

    module LaunchProfile
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LaunchProfile, context: context)
        type = Types::LaunchProfile.new
        type.arn = params[:arn]
        type.created_at = params[:created_at]
        type.created_by = params[:created_by]
        type.description = params[:description]
        type.ec2_subnet_ids = EC2SubnetIdList.build(params[:ec2_subnet_ids], context: "#{context}[:ec2_subnet_ids]") unless params[:ec2_subnet_ids].nil?
        type.launch_profile_id = params[:launch_profile_id]
        type.launch_profile_protocol_versions = LaunchProfileProtocolVersionList.build(params[:launch_profile_protocol_versions], context: "#{context}[:launch_profile_protocol_versions]") unless params[:launch_profile_protocol_versions].nil?
        type.name = params[:name]
        type.state = params[:state]
        type.status_code = params[:status_code]
        type.status_message = params[:status_message]
        type.stream_configuration = StreamConfiguration.build(params[:stream_configuration], context: "#{context}[:stream_configuration]") unless params[:stream_configuration].nil?
        type.studio_component_ids = LaunchProfileStudioComponentIdList.build(params[:studio_component_ids], context: "#{context}[:studio_component_ids]") unless params[:studio_component_ids].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.updated_at = params[:updated_at]
        type.updated_by = params[:updated_by]
        type.validation_results = ValidationResults.build(params[:validation_results], context: "#{context}[:validation_results]") unless params[:validation_results].nil?
        type
      end
    end

    module LaunchProfileInitialization
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LaunchProfileInitialization, context: context)
        type = Types::LaunchProfileInitialization.new
        type.active_directory = LaunchProfileInitializationActiveDirectory.build(params[:active_directory], context: "#{context}[:active_directory]") unless params[:active_directory].nil?
        type.ec2_security_group_ids = LaunchProfileSecurityGroupIdList.build(params[:ec2_security_group_ids], context: "#{context}[:ec2_security_group_ids]") unless params[:ec2_security_group_ids].nil?
        type.launch_profile_id = params[:launch_profile_id]
        type.launch_profile_protocol_version = params[:launch_profile_protocol_version]
        type.launch_purpose = params[:launch_purpose]
        type.name = params[:name]
        type.platform = params[:platform]
        type.system_initialization_scripts = LaunchProfileInitializationScriptList.build(params[:system_initialization_scripts], context: "#{context}[:system_initialization_scripts]") unless params[:system_initialization_scripts].nil?
        type.user_initialization_scripts = LaunchProfileInitializationScriptList.build(params[:user_initialization_scripts], context: "#{context}[:user_initialization_scripts]") unless params[:user_initialization_scripts].nil?
        type
      end
    end

    module LaunchProfileInitializationActiveDirectory
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LaunchProfileInitializationActiveDirectory, context: context)
        type = Types::LaunchProfileInitializationActiveDirectory.new
        type.computer_attributes = ActiveDirectoryComputerAttributeList.build(params[:computer_attributes], context: "#{context}[:computer_attributes]") unless params[:computer_attributes].nil?
        type.directory_id = params[:directory_id]
        type.directory_name = params[:directory_name]
        type.dns_ip_addresses = ActiveDirectoryDnsIpAddressList.build(params[:dns_ip_addresses], context: "#{context}[:dns_ip_addresses]") unless params[:dns_ip_addresses].nil?
        type.organizational_unit_distinguished_name = params[:organizational_unit_distinguished_name]
        type.studio_component_id = params[:studio_component_id]
        type.studio_component_name = params[:studio_component_name]
        type
      end
    end

    module LaunchProfileInitializationScript
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LaunchProfileInitializationScript, context: context)
        type = Types::LaunchProfileInitializationScript.new
        type.script = params[:script]
        type.studio_component_id = params[:studio_component_id]
        type.studio_component_name = params[:studio_component_name]
        type.secure_initialization_role_arn = params[:secure_initialization_role_arn]
        type.runtime_role_arn = params[:runtime_role_arn]
        type
      end
    end

    module LaunchProfileInitializationScriptList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LaunchProfileInitializationScript.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LaunchProfileList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LaunchProfile.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LaunchProfileMembership
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LaunchProfileMembership, context: context)
        type = Types::LaunchProfileMembership.new
        type.identity_store_id = params[:identity_store_id]
        type.persona = params[:persona]
        type.principal_id = params[:principal_id]
        type.sid = params[:sid]
        type
      end
    end

    module LaunchProfileMembershipList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LaunchProfileMembership.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LaunchProfileProtocolVersionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module LaunchProfileSecurityGroupIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module LaunchProfileStateList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module LaunchProfileStudioComponentIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module LicenseServiceConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LicenseServiceConfiguration, context: context)
        type = Types::LicenseServiceConfiguration.new
        type.endpoint = params[:endpoint]
        type
      end
    end

    module ListEulaAcceptancesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEulaAcceptancesInput, context: context)
        type = Types::ListEulaAcceptancesInput.new
        type.eula_ids = StringList.build(params[:eula_ids], context: "#{context}[:eula_ids]") unless params[:eula_ids].nil?
        type.next_token = params[:next_token]
        type.studio_id = params[:studio_id]
        type
      end
    end

    module ListEulaAcceptancesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEulaAcceptancesOutput, context: context)
        type = Types::ListEulaAcceptancesOutput.new
        type.eula_acceptances = EulaAcceptanceList.build(params[:eula_acceptances], context: "#{context}[:eula_acceptances]") unless params[:eula_acceptances].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListEulasInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEulasInput, context: context)
        type = Types::ListEulasInput.new
        type.eula_ids = StringList.build(params[:eula_ids], context: "#{context}[:eula_ids]") unless params[:eula_ids].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListEulasOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEulasOutput, context: context)
        type = Types::ListEulasOutput.new
        type.eulas = EulaList.build(params[:eulas], context: "#{context}[:eulas]") unless params[:eulas].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListLaunchProfileMembersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListLaunchProfileMembersInput, context: context)
        type = Types::ListLaunchProfileMembersInput.new
        type.launch_profile_id = params[:launch_profile_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.studio_id = params[:studio_id]
        type
      end
    end

    module ListLaunchProfileMembersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListLaunchProfileMembersOutput, context: context)
        type = Types::ListLaunchProfileMembersOutput.new
        type.members = LaunchProfileMembershipList.build(params[:members], context: "#{context}[:members]") unless params[:members].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListLaunchProfilesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListLaunchProfilesInput, context: context)
        type = Types::ListLaunchProfilesInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.principal_id = params[:principal_id]
        type.states = LaunchProfileStateList.build(params[:states], context: "#{context}[:states]") unless params[:states].nil?
        type.studio_id = params[:studio_id]
        type
      end
    end

    module ListLaunchProfilesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListLaunchProfilesOutput, context: context)
        type = Types::ListLaunchProfilesOutput.new
        type.launch_profiles = LaunchProfileList.build(params[:launch_profiles], context: "#{context}[:launch_profiles]") unless params[:launch_profiles].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListStreamingImagesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListStreamingImagesInput, context: context)
        type = Types::ListStreamingImagesInput.new
        type.next_token = params[:next_token]
        type.owner = params[:owner]
        type.studio_id = params[:studio_id]
        type
      end
    end

    module ListStreamingImagesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListStreamingImagesOutput, context: context)
        type = Types::ListStreamingImagesOutput.new
        type.next_token = params[:next_token]
        type.streaming_images = StreamingImageList.build(params[:streaming_images], context: "#{context}[:streaming_images]") unless params[:streaming_images].nil?
        type
      end
    end

    module ListStreamingSessionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListStreamingSessionsInput, context: context)
        type = Types::ListStreamingSessionsInput.new
        type.created_by = params[:created_by]
        type.next_token = params[:next_token]
        type.owned_by = params[:owned_by]
        type.session_ids = params[:session_ids]
        type.studio_id = params[:studio_id]
        type
      end
    end

    module ListStreamingSessionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListStreamingSessionsOutput, context: context)
        type = Types::ListStreamingSessionsOutput.new
        type.next_token = params[:next_token]
        type.sessions = StreamingSessionList.build(params[:sessions], context: "#{context}[:sessions]") unless params[:sessions].nil?
        type
      end
    end

    module ListStudioComponentsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListStudioComponentsInput, context: context)
        type = Types::ListStudioComponentsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.states = StudioComponentStateList.build(params[:states], context: "#{context}[:states]") unless params[:states].nil?
        type.studio_id = params[:studio_id]
        type.types = StudioComponentTypeList.build(params[:types], context: "#{context}[:types]") unless params[:types].nil?
        type
      end
    end

    module ListStudioComponentsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListStudioComponentsOutput, context: context)
        type = Types::ListStudioComponentsOutput.new
        type.next_token = params[:next_token]
        type.studio_components = StudioComponentList.build(params[:studio_components], context: "#{context}[:studio_components]") unless params[:studio_components].nil?
        type
      end
    end

    module ListStudioMembersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListStudioMembersInput, context: context)
        type = Types::ListStudioMembersInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.studio_id = params[:studio_id]
        type
      end
    end

    module ListStudioMembersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListStudioMembersOutput, context: context)
        type = Types::ListStudioMembersOutput.new
        type.members = StudioMembershipList.build(params[:members], context: "#{context}[:members]") unless params[:members].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListStudiosInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListStudiosInput, context: context)
        type = Types::ListStudiosInput.new
        type.next_token = params[:next_token]
        type
      end
    end

    module ListStudiosOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListStudiosOutput, context: context)
        type = Types::ListStudiosOutput.new
        type.next_token = params[:next_token]
        type.studios = StudioList.build(params[:studios], context: "#{context}[:studios]") unless params[:studios].nil?
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

    module NewLaunchProfileMember
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NewLaunchProfileMember, context: context)
        type = Types::NewLaunchProfileMember.new
        type.persona = params[:persona]
        type.principal_id = params[:principal_id]
        type
      end
    end

    module NewLaunchProfileMemberList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << NewLaunchProfileMember.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module NewStudioMember
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NewStudioMember, context: context)
        type = Types::NewStudioMember.new
        type.persona = params[:persona]
        type.principal_id = params[:principal_id]
        type
      end
    end

    module NewStudioMemberList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << NewStudioMember.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PutLaunchProfileMembersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutLaunchProfileMembersInput, context: context)
        type = Types::PutLaunchProfileMembersInput.new
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.identity_store_id = params[:identity_store_id]
        type.launch_profile_id = params[:launch_profile_id]
        type.members = NewLaunchProfileMemberList.build(params[:members], context: "#{context}[:members]") unless params[:members].nil?
        type.studio_id = params[:studio_id]
        type
      end
    end

    module PutLaunchProfileMembersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutLaunchProfileMembersOutput, context: context)
        type = Types::PutLaunchProfileMembersOutput.new
        type
      end
    end

    module PutStudioMembersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutStudioMembersInput, context: context)
        type = Types::PutStudioMembersInput.new
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.identity_store_id = params[:identity_store_id]
        type.members = NewStudioMemberList.build(params[:members], context: "#{context}[:members]") unless params[:members].nil?
        type.studio_id = params[:studio_id]
        type
      end
    end

    module PutStudioMembersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutStudioMembersOutput, context: context)
        type = Types::PutStudioMembersOutput.new
        type
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.code = params[:code]
        type.context = ExceptionContext.build(params[:context], context: "#{context}[:context]") unless params[:context].nil?
        type.message = params[:message]
        type
      end
    end

    module ScriptParameterKeyValue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ScriptParameterKeyValue, context: context)
        type = Types::ScriptParameterKeyValue.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module ServiceQuotaExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceQuotaExceededException, context: context)
        type = Types::ServiceQuotaExceededException.new
        type.code = params[:code]
        type.context = ExceptionContext.build(params[:context], context: "#{context}[:context]") unless params[:context].nil?
        type.message = params[:message]
        type
      end
    end

    module SharedFileSystemConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SharedFileSystemConfiguration, context: context)
        type = Types::SharedFileSystemConfiguration.new
        type.endpoint = params[:endpoint]
        type.file_system_id = params[:file_system_id]
        type.linux_mount_point = params[:linux_mount_point]
        type.share_name = params[:share_name]
        type.windows_mount_drive = params[:windows_mount_drive]
        type
      end
    end

    module StartStreamingSessionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartStreamingSessionInput, context: context)
        type = Types::StartStreamingSessionInput.new
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.session_id = params[:session_id]
        type.studio_id = params[:studio_id]
        type
      end
    end

    module StartStreamingSessionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartStreamingSessionOutput, context: context)
        type = Types::StartStreamingSessionOutput.new
        type.session = StreamingSession.build(params[:session], context: "#{context}[:session]") unless params[:session].nil?
        type
      end
    end

    module StartStudioSSOConfigurationRepairInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartStudioSSOConfigurationRepairInput, context: context)
        type = Types::StartStudioSSOConfigurationRepairInput.new
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.studio_id = params[:studio_id]
        type
      end
    end

    module StartStudioSSOConfigurationRepairOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartStudioSSOConfigurationRepairOutput, context: context)
        type = Types::StartStudioSSOConfigurationRepairOutput.new
        type.studio = Studio.build(params[:studio], context: "#{context}[:studio]") unless params[:studio].nil?
        type
      end
    end

    module StopStreamingSessionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopStreamingSessionInput, context: context)
        type = Types::StopStreamingSessionInput.new
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.session_id = params[:session_id]
        type.studio_id = params[:studio_id]
        type
      end
    end

    module StopStreamingSessionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopStreamingSessionOutput, context: context)
        type = Types::StopStreamingSessionOutput.new
        type.session = StreamingSession.build(params[:session], context: "#{context}[:session]") unless params[:session].nil?
        type
      end
    end

    module StreamConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StreamConfiguration, context: context)
        type = Types::StreamConfiguration.new
        type.clipboard_mode = params[:clipboard_mode]
        type.ec2_instance_types = StreamingInstanceTypeList.build(params[:ec2_instance_types], context: "#{context}[:ec2_instance_types]") unless params[:ec2_instance_types].nil?
        type.max_session_length_in_minutes = params[:max_session_length_in_minutes]
        type.streaming_image_ids = StreamingImageIdList.build(params[:streaming_image_ids], context: "#{context}[:streaming_image_ids]") unless params[:streaming_image_ids].nil?
        type.max_stopped_session_length_in_minutes = params[:max_stopped_session_length_in_minutes]
        type.session_storage = StreamConfigurationSessionStorage.build(params[:session_storage], context: "#{context}[:session_storage]") unless params[:session_storage].nil?
        type
      end
    end

    module StreamConfigurationCreate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StreamConfigurationCreate, context: context)
        type = Types::StreamConfigurationCreate.new
        type.clipboard_mode = params[:clipboard_mode]
        type.ec2_instance_types = StreamingInstanceTypeList.build(params[:ec2_instance_types], context: "#{context}[:ec2_instance_types]") unless params[:ec2_instance_types].nil?
        type.max_session_length_in_minutes = params[:max_session_length_in_minutes]
        type.streaming_image_ids = StreamingImageIdList.build(params[:streaming_image_ids], context: "#{context}[:streaming_image_ids]") unless params[:streaming_image_ids].nil?
        type.max_stopped_session_length_in_minutes = params[:max_stopped_session_length_in_minutes]
        type.session_storage = StreamConfigurationSessionStorage.build(params[:session_storage], context: "#{context}[:session_storage]") unless params[:session_storage].nil?
        type
      end
    end

    module StreamConfigurationSessionStorage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StreamConfigurationSessionStorage, context: context)
        type = Types::StreamConfigurationSessionStorage.new
        type.root = StreamingSessionStorageRoot.build(params[:root], context: "#{context}[:root]") unless params[:root].nil?
        type.mode = StreamingSessionStorageModeList.build(params[:mode], context: "#{context}[:mode]") unless params[:mode].nil?
        type
      end
    end

    module StreamingImage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StreamingImage, context: context)
        type = Types::StreamingImage.new
        type.arn = params[:arn]
        type.description = params[:description]
        type.ec2_image_id = params[:ec2_image_id]
        type.encryption_configuration = StreamingImageEncryptionConfiguration.build(params[:encryption_configuration], context: "#{context}[:encryption_configuration]") unless params[:encryption_configuration].nil?
        type.eula_ids = EulaIdList.build(params[:eula_ids], context: "#{context}[:eula_ids]") unless params[:eula_ids].nil?
        type.name = params[:name]
        type.owner = params[:owner]
        type.platform = params[:platform]
        type.state = params[:state]
        type.status_code = params[:status_code]
        type.status_message = params[:status_message]
        type.streaming_image_id = params[:streaming_image_id]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module StreamingImageEncryptionConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StreamingImageEncryptionConfiguration, context: context)
        type = Types::StreamingImageEncryptionConfiguration.new
        type.key_arn = params[:key_arn]
        type.key_type = params[:key_type]
        type
      end
    end

    module StreamingImageIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module StreamingImageList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << StreamingImage.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StreamingInstanceTypeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module StreamingSession
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StreamingSession, context: context)
        type = Types::StreamingSession.new
        type.arn = params[:arn]
        type.created_at = params[:created_at]
        type.created_by = params[:created_by]
        type.ec2_instance_type = params[:ec2_instance_type]
        type.launch_profile_id = params[:launch_profile_id]
        type.owned_by = params[:owned_by]
        type.session_id = params[:session_id]
        type.state = params[:state]
        type.status_code = params[:status_code]
        type.status_message = params[:status_message]
        type.streaming_image_id = params[:streaming_image_id]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.terminate_at = params[:terminate_at]
        type.updated_at = params[:updated_at]
        type.updated_by = params[:updated_by]
        type.stopped_at = params[:stopped_at]
        type.stopped_by = params[:stopped_by]
        type.started_at = params[:started_at]
        type.started_by = params[:started_by]
        type.stop_at = params[:stop_at]
        type
      end
    end

    module StreamingSessionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << StreamingSession.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StreamingSessionStorageModeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module StreamingSessionStorageRoot
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StreamingSessionStorageRoot, context: context)
        type = Types::StreamingSessionStorageRoot.new
        type.linux = params[:linux]
        type.windows = params[:windows]
        type
      end
    end

    module StreamingSessionStream
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StreamingSessionStream, context: context)
        type = Types::StreamingSessionStream.new
        type.created_at = params[:created_at]
        type.created_by = params[:created_by]
        type.expires_at = params[:expires_at]
        type.owned_by = params[:owned_by]
        type.state = params[:state]
        type.status_code = params[:status_code]
        type.stream_id = params[:stream_id]
        type.url = params[:url]
        type
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

    module Studio
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Studio, context: context)
        type = Types::Studio.new
        type.admin_role_arn = params[:admin_role_arn]
        type.arn = params[:arn]
        type.created_at = params[:created_at]
        type.display_name = params[:display_name]
        type.home_region = params[:home_region]
        type.sso_client_id = params[:sso_client_id]
        type.state = params[:state]
        type.status_code = params[:status_code]
        type.status_message = params[:status_message]
        type.studio_encryption_configuration = StudioEncryptionConfiguration.build(params[:studio_encryption_configuration], context: "#{context}[:studio_encryption_configuration]") unless params[:studio_encryption_configuration].nil?
        type.studio_id = params[:studio_id]
        type.studio_name = params[:studio_name]
        type.studio_url = params[:studio_url]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.updated_at = params[:updated_at]
        type.user_role_arn = params[:user_role_arn]
        type
      end
    end

    module StudioComponent
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StudioComponent, context: context)
        type = Types::StudioComponent.new
        type.arn = params[:arn]
        type.configuration = StudioComponentConfiguration.build(params[:configuration], context: "#{context}[:configuration]") unless params[:configuration].nil?
        type.created_at = params[:created_at]
        type.created_by = params[:created_by]
        type.description = params[:description]
        type.ec2_security_group_ids = StudioComponentSecurityGroupIdList.build(params[:ec2_security_group_ids], context: "#{context}[:ec2_security_group_ids]") unless params[:ec2_security_group_ids].nil?
        type.initialization_scripts = StudioComponentInitializationScriptList.build(params[:initialization_scripts], context: "#{context}[:initialization_scripts]") unless params[:initialization_scripts].nil?
        type.name = params[:name]
        type.script_parameters = StudioComponentScriptParameterKeyValueList.build(params[:script_parameters], context: "#{context}[:script_parameters]") unless params[:script_parameters].nil?
        type.state = params[:state]
        type.status_code = params[:status_code]
        type.status_message = params[:status_message]
        type.studio_component_id = params[:studio_component_id]
        type.subtype = params[:subtype]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.type = params[:type]
        type.updated_at = params[:updated_at]
        type.updated_by = params[:updated_by]
        type.secure_initialization_role_arn = params[:secure_initialization_role_arn]
        type.runtime_role_arn = params[:runtime_role_arn]
        type
      end
    end

    module StudioComponentConfiguration
      def self.build(params, context: '')
        return params if params.is_a?(Types::StudioComponentConfiguration)
        Hearth::Validator.validate!(params, ::Hash, Types::StudioComponentConfiguration, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :active_directory_configuration
          Types::StudioComponentConfiguration::ActiveDirectoryConfiguration.new(
            (ActiveDirectoryConfiguration.build(params[:active_directory_configuration], context: "#{context}[:active_directory_configuration]") unless params[:active_directory_configuration].nil?)
          )
        when :compute_farm_configuration
          Types::StudioComponentConfiguration::ComputeFarmConfiguration.new(
            (ComputeFarmConfiguration.build(params[:compute_farm_configuration], context: "#{context}[:compute_farm_configuration]") unless params[:compute_farm_configuration].nil?)
          )
        when :license_service_configuration
          Types::StudioComponentConfiguration::LicenseServiceConfiguration.new(
            (LicenseServiceConfiguration.build(params[:license_service_configuration], context: "#{context}[:license_service_configuration]") unless params[:license_service_configuration].nil?)
          )
        when :shared_file_system_configuration
          Types::StudioComponentConfiguration::SharedFileSystemConfiguration.new(
            (SharedFileSystemConfiguration.build(params[:shared_file_system_configuration], context: "#{context}[:shared_file_system_configuration]") unless params[:shared_file_system_configuration].nil?)
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :active_directory_configuration, :compute_farm_configuration, :license_service_configuration, :shared_file_system_configuration set"
        end
      end
    end

    module StudioComponentInitializationScript
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StudioComponentInitializationScript, context: context)
        type = Types::StudioComponentInitializationScript.new
        type.launch_profile_protocol_version = params[:launch_profile_protocol_version]
        type.platform = params[:platform]
        type.run_context = params[:run_context]
        type.script = params[:script]
        type
      end
    end

    module StudioComponentInitializationScriptList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << StudioComponentInitializationScript.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StudioComponentList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << StudioComponent.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StudioComponentScriptParameterKeyValueList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ScriptParameterKeyValue.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StudioComponentSecurityGroupIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module StudioComponentStateList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module StudioComponentSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StudioComponentSummary, context: context)
        type = Types::StudioComponentSummary.new
        type.created_at = params[:created_at]
        type.created_by = params[:created_by]
        type.description = params[:description]
        type.name = params[:name]
        type.studio_component_id = params[:studio_component_id]
        type.subtype = params[:subtype]
        type.type = params[:type]
        type.updated_at = params[:updated_at]
        type.updated_by = params[:updated_by]
        type
      end
    end

    module StudioComponentSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << StudioComponentSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StudioComponentTypeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module StudioEncryptionConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StudioEncryptionConfiguration, context: context)
        type = Types::StudioEncryptionConfiguration.new
        type.key_arn = params[:key_arn]
        type.key_type = params[:key_type]
        type
      end
    end

    module StudioList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Studio.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StudioMembership
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StudioMembership, context: context)
        type = Types::StudioMembership.new
        type.identity_store_id = params[:identity_store_id]
        type.persona = params[:persona]
        type.principal_id = params[:principal_id]
        type.sid = params[:sid]
        type
      end
    end

    module StudioMembershipList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << StudioMembership.build(element, context: "#{context}[#{index}]") unless element.nil?
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

    module ThrottlingException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThrottlingException, context: context)
        type = Types::ThrottlingException.new
        type.code = params[:code]
        type.context = ExceptionContext.build(params[:context], context: "#{context}[:context]") unless params[:context].nil?
        type.message = params[:message]
        type
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = StringList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
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

    module UpdateLaunchProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateLaunchProfileInput, context: context)
        type = Types::UpdateLaunchProfileInput.new
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.description = params[:description]
        type.launch_profile_id = params[:launch_profile_id]
        type.launch_profile_protocol_versions = LaunchProfileProtocolVersionList.build(params[:launch_profile_protocol_versions], context: "#{context}[:launch_profile_protocol_versions]") unless params[:launch_profile_protocol_versions].nil?
        type.name = params[:name]
        type.stream_configuration = StreamConfigurationCreate.build(params[:stream_configuration], context: "#{context}[:stream_configuration]") unless params[:stream_configuration].nil?
        type.studio_component_ids = LaunchProfileStudioComponentIdList.build(params[:studio_component_ids], context: "#{context}[:studio_component_ids]") unless params[:studio_component_ids].nil?
        type.studio_id = params[:studio_id]
        type
      end
    end

    module UpdateLaunchProfileMemberInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateLaunchProfileMemberInput, context: context)
        type = Types::UpdateLaunchProfileMemberInput.new
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.launch_profile_id = params[:launch_profile_id]
        type.persona = params[:persona]
        type.principal_id = params[:principal_id]
        type.studio_id = params[:studio_id]
        type
      end
    end

    module UpdateLaunchProfileMemberOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateLaunchProfileMemberOutput, context: context)
        type = Types::UpdateLaunchProfileMemberOutput.new
        type.member = LaunchProfileMembership.build(params[:member], context: "#{context}[:member]") unless params[:member].nil?
        type
      end
    end

    module UpdateLaunchProfileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateLaunchProfileOutput, context: context)
        type = Types::UpdateLaunchProfileOutput.new
        type.launch_profile = LaunchProfile.build(params[:launch_profile], context: "#{context}[:launch_profile]") unless params[:launch_profile].nil?
        type
      end
    end

    module UpdateStreamingImageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateStreamingImageInput, context: context)
        type = Types::UpdateStreamingImageInput.new
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.description = params[:description]
        type.name = params[:name]
        type.streaming_image_id = params[:streaming_image_id]
        type.studio_id = params[:studio_id]
        type
      end
    end

    module UpdateStreamingImageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateStreamingImageOutput, context: context)
        type = Types::UpdateStreamingImageOutput.new
        type.streaming_image = StreamingImage.build(params[:streaming_image], context: "#{context}[:streaming_image]") unless params[:streaming_image].nil?
        type
      end
    end

    module UpdateStudioComponentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateStudioComponentInput, context: context)
        type = Types::UpdateStudioComponentInput.new
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.configuration = StudioComponentConfiguration.build(params[:configuration], context: "#{context}[:configuration]") unless params[:configuration].nil?
        type.description = params[:description]
        type.ec2_security_group_ids = StudioComponentSecurityGroupIdList.build(params[:ec2_security_group_ids], context: "#{context}[:ec2_security_group_ids]") unless params[:ec2_security_group_ids].nil?
        type.initialization_scripts = StudioComponentInitializationScriptList.build(params[:initialization_scripts], context: "#{context}[:initialization_scripts]") unless params[:initialization_scripts].nil?
        type.name = params[:name]
        type.script_parameters = StudioComponentScriptParameterKeyValueList.build(params[:script_parameters], context: "#{context}[:script_parameters]") unless params[:script_parameters].nil?
        type.studio_component_id = params[:studio_component_id]
        type.studio_id = params[:studio_id]
        type.subtype = params[:subtype]
        type.type = params[:type]
        type.secure_initialization_role_arn = params[:secure_initialization_role_arn]
        type.runtime_role_arn = params[:runtime_role_arn]
        type
      end
    end

    module UpdateStudioComponentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateStudioComponentOutput, context: context)
        type = Types::UpdateStudioComponentOutput.new
        type.studio_component = StudioComponent.build(params[:studio_component], context: "#{context}[:studio_component]") unless params[:studio_component].nil?
        type
      end
    end

    module UpdateStudioInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateStudioInput, context: context)
        type = Types::UpdateStudioInput.new
        type.admin_role_arn = params[:admin_role_arn]
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.display_name = params[:display_name]
        type.studio_id = params[:studio_id]
        type.user_role_arn = params[:user_role_arn]
        type
      end
    end

    module UpdateStudioOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateStudioOutput, context: context)
        type = Types::UpdateStudioOutput.new
        type.studio = Studio.build(params[:studio], context: "#{context}[:studio]") unless params[:studio].nil?
        type
      end
    end

    module ValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationException, context: context)
        type = Types::ValidationException.new
        type.code = params[:code]
        type.context = ExceptionContext.build(params[:context], context: "#{context}[:context]") unless params[:context].nil?
        type.message = params[:message]
        type
      end
    end

    module ValidationResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationResult, context: context)
        type = Types::ValidationResult.new
        type.type = params[:type]
        type.state = params[:state]
        type.status_code = params[:status_code]
        type.status_message = params[:status_message]
        type
      end
    end

    module ValidationResults
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ValidationResult.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

  end
end
