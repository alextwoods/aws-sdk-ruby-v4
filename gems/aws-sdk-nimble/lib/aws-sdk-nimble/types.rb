# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Nimble
  module Types

    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If you don’t specify a client token, the AWS SDK automatically generates a
    #               client token and uses it for the request to ensure idempotency.</p>
    #
    #   @return [String]
    #
    # @!attribute eula_ids
    #   <p>The EULA ID.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute studio_id
    #   <p>A collection of EULA IDs.</p>
    #
    #   @return [String]
    #
    AcceptEulasInput = ::Struct.new(
      :client_token,
      :eula_ids,
      :studio_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute eula_acceptances
    #   <p>A collection of EULA acceptances.</p>
    #
    #   @return [Array<EulaAcceptance>]
    #
    AcceptEulasOutput = ::Struct.new(
      :eula_acceptances,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You are not authorized to perform this operation. Check your IAM policies, and ensure
    #             that you are using the correct access keys.</p>
    #
    # @!attribute code
    #   <p>A more specific error code.</p>
    #
    #   @return [String]
    #
    # @!attribute context
    #   <p>The exception context.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute message
    #   <p>A human-readable description of the error.</p>
    #
    #   @return [String]
    #
    AccessDeniedException = ::Struct.new(
      :code,
      :context,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An LDAP attribute of an Active Directory computer account, in the form of a name:value
    #             pair.</p>
    #
    # @!attribute name
    #   <p>The name for the LDAP attribute.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value for the LDAP attribute.</p>
    #
    #   @return [String]
    #
    ActiveDirectoryComputerAttribute = ::Struct.new(
      :name,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The configuration for a Microsoft Active Directory (Microsoft AD) studio
    #             resource.</p>
    #
    # @!attribute computer_attributes
    #   <p>A collection of custom attributes for an Active Directory computer.</p>
    #
    #   @return [Array<ActiveDirectoryComputerAttribute>]
    #
    # @!attribute directory_id
    #   <p>The directory ID of the Directory Service for Microsoft Active Directory to access
    #               using this studio component.</p>
    #
    #   @return [String]
    #
    # @!attribute organizational_unit_distinguished_name
    #   <p>The distinguished name (DN) and organizational unit (OU) of an Active Directory
    #               computer.</p>
    #
    #   @return [String]
    #
    ActiveDirectoryConfiguration = ::Struct.new(
      :computer_attributes,
      :directory_id,
      :organizational_unit_distinguished_name,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Nimble::Types::ActiveDirectoryConfiguration "\
          "computer_attributes=\"[SENSITIVE]\", "\
          "directory_id=#{directory_id || 'nil'}, "\
          "organizational_unit_distinguished_name=#{organizational_unit_distinguished_name || 'nil'}>"
      end
    end

    # <p>The configuration for a render farm that is associated with a studio resource.</p>
    #
    # @!attribute active_directory_user
    #   <p>The name of an Active Directory user that is used on ComputeFarm worker
    #               instances.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoint
    #   <p>The endpoint of the ComputeFarm that is accessed by the studio component
    #               resource.</p>
    #
    #   @return [String]
    #
    ComputeFarmConfiguration = ::Struct.new(
      :active_directory_user,
      :endpoint,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Nimble::Types::ComputeFarmConfiguration "\
          "active_directory_user=#{active_directory_user || 'nil'}, "\
          "endpoint=\"[SENSITIVE]\">"
      end
    end

    # <p>Another operation is in progress. </p>
    #
    # @!attribute code
    #   <p>A more specific error code.</p>
    #
    #   @return [String]
    #
    # @!attribute context
    #   <p>The exception context.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute message
    #   <p>A human-readable description of the error.</p>
    #
    #   @return [String]
    #
    ConflictException = ::Struct.new(
      :code,
      :context,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If you don’t specify a client token, the AWS SDK automatically generates a
    #               client token and uses it for the request to ensure idempotency.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description.</p>
    #
    #   @return [String]
    #
    # @!attribute ec2_subnet_ids
    #   <p>Specifies the IDs of the EC2 subnets where streaming sessions will be accessible from.
    #               These subnets must support the specified instance types. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute launch_profile_protocol_versions
    #   <p>The version number of the protocol that is used by the launch profile. The only valid
    #               version is "2021-03-31".</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute name
    #   <p>The name for the launch profile.</p>
    #
    #   @return [String]
    #
    # @!attribute stream_configuration
    #   <p>A configuration for a streaming session.</p>
    #
    #   @return [StreamConfigurationCreate]
    #
    # @!attribute studio_component_ids
    #   <p>Unique identifiers for a collection of studio components that can be used with this
    #               launch profile.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute studio_id
    #   <p>The studio ID. </p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A collection of labels, in the form of key:value pairs, that apply to this
    #               resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateLaunchProfileInput = ::Struct.new(
      :client_token,
      :description,
      :ec2_subnet_ids,
      :launch_profile_protocol_versions,
      :name,
      :stream_configuration,
      :studio_component_ids,
      :studio_id,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Nimble::Types::CreateLaunchProfileInput "\
          "client_token=#{client_token || 'nil'}, "\
          "description=\"[SENSITIVE]\", "\
          "ec2_subnet_ids=#{ec2_subnet_ids || 'nil'}, "\
          "launch_profile_protocol_versions=#{launch_profile_protocol_versions || 'nil'}, "\
          "name=\"[SENSITIVE]\", "\
          "stream_configuration=#{stream_configuration || 'nil'}, "\
          "studio_component_ids=#{studio_component_ids || 'nil'}, "\
          "studio_id=#{studio_id || 'nil'}, "\
          "tags=#{tags || 'nil'}>"
      end
    end

    # @!attribute launch_profile
    #   <p>The launch profile.</p>
    #
    #   @return [LaunchProfile]
    #
    CreateLaunchProfileOutput = ::Struct.new(
      :launch_profile,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If you don’t specify a client token, the AWS SDK automatically generates a
    #               client token and uses it for the request to ensure idempotency.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A human-readable description of the streaming image.</p>
    #
    #   @return [String]
    #
    # @!attribute ec2_image_id
    #   <p>The ID of an EC2 machine image with which to create this streaming image.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>A friendly name for a streaming image resource.</p>
    #
    #   @return [String]
    #
    # @!attribute studio_id
    #   <p>The studio ID. </p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A collection of labels, in the form of key:value pairs, that apply to this
    #               resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateStreamingImageInput = ::Struct.new(
      :client_token,
      :description,
      :ec2_image_id,
      :name,
      :studio_id,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Nimble::Types::CreateStreamingImageInput "\
          "client_token=#{client_token || 'nil'}, "\
          "description=\"[SENSITIVE]\", "\
          "ec2_image_id=#{ec2_image_id || 'nil'}, "\
          "name=\"[SENSITIVE]\", "\
          "studio_id=#{studio_id || 'nil'}, "\
          "tags=#{tags || 'nil'}>"
      end
    end

    # @!attribute streaming_image
    #   <p>The streaming image.</p>
    #
    #   @return [StreamingImage]
    #
    CreateStreamingImageOutput = ::Struct.new(
      :streaming_image,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If you don’t specify a client token, the AWS SDK automatically generates a
    #               client token and uses it for the request to ensure idempotency.</p>
    #
    #   @return [String]
    #
    # @!attribute ec2_instance_type
    #   <p>The EC2 Instance type used for the streaming session.</p>
    #
    #   Enum, one of: ["g4dn.xlarge", "g4dn.2xlarge", "g4dn.4xlarge", "g4dn.8xlarge", "g4dn.12xlarge", "g4dn.16xlarge"]
    #
    #   @return [String]
    #
    # @!attribute launch_profile_id
    #   <p>The launch profile ID.</p>
    #
    #   @return [String]
    #
    # @!attribute owned_by
    #   <p>The user ID of the user that owns the streaming session. The user that owns the
    #               session will be logging into the session and interacting with the virtual
    #               workstation.</p>
    #
    #   @return [String]
    #
    # @!attribute streaming_image_id
    #   <p>The ID of the streaming image.</p>
    #
    #   @return [String]
    #
    # @!attribute studio_id
    #   <p>The studio ID. </p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A collection of labels, in the form of key:value pairs, that apply to this
    #               resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateStreamingSessionInput = ::Struct.new(
      :client_token,
      :ec2_instance_type,
      :launch_profile_id,
      :owned_by,
      :streaming_image_id,
      :studio_id,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute session
    #   <p>The session.</p>
    #
    #   @return [StreamingSession]
    #
    CreateStreamingSessionOutput = ::Struct.new(
      :session,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If you don’t specify a client token, the AWS SDK automatically generates a
    #               client token and uses it for the request to ensure idempotency.</p>
    #
    #   @return [String]
    #
    # @!attribute expiration_in_seconds
    #   <p>The expiration time in seconds.</p>
    #
    #   @return [Integer]
    #
    # @!attribute session_id
    #   <p>The streaming session ID.</p>
    #
    #   @return [String]
    #
    # @!attribute studio_id
    #   <p>The studio ID. </p>
    #
    #   @return [String]
    #
    CreateStreamingSessionStreamInput = ::Struct.new(
      :client_token,
      :expiration_in_seconds,
      :session_id,
      :studio_id,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.expiration_in_seconds ||= 0
      end

    end

    # @!attribute stream
    #   <p>The stream.</p>
    #
    #   @return [StreamingSessionStream]
    #
    CreateStreamingSessionStreamOutput = ::Struct.new(
      :stream,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If you don’t specify a client token, the AWS SDK automatically generates a
    #               client token and uses it for the request to ensure idempotency.</p>
    #
    #   @return [String]
    #
    # @!attribute configuration
    #   <p>The configuration of the studio component, based on component type.</p>
    #
    #   @return [StudioComponentConfiguration]
    #
    # @!attribute description
    #   <p>The description.</p>
    #
    #   @return [String]
    #
    # @!attribute ec2_security_group_ids
    #   <p>The EC2 security groups that control access to the studio component.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute initialization_scripts
    #   <p>Initialization scripts for studio components.</p>
    #
    #   @return [Array<StudioComponentInitializationScript>]
    #
    # @!attribute name
    #   <p>The name for the studio component.</p>
    #
    #   @return [String]
    #
    # @!attribute script_parameters
    #   <p>Parameters for the studio component scripts.</p>
    #
    #   @return [Array<ScriptParameterKeyValue>]
    #
    # @!attribute studio_id
    #   <p>The studio ID. </p>
    #
    #   @return [String]
    #
    # @!attribute subtype
    #   <p>The specific subtype of a studio component.</p>
    #
    #   Enum, one of: ["AWS_MANAGED_MICROSOFT_AD", "AMAZON_FSX_FOR_WINDOWS", "AMAZON_FSX_FOR_LUSTRE", "CUSTOM"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A collection of labels, in the form of key:value pairs, that apply to this
    #               resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute type
    #   <p>The type of the studio component.</p>
    #
    #   Enum, one of: ["ACTIVE_DIRECTORY", "SHARED_FILE_SYSTEM", "COMPUTE_FARM", "LICENSE_SERVICE", "CUSTOM"]
    #
    #   @return [String]
    #
    CreateStudioComponentInput = ::Struct.new(
      :client_token,
      :configuration,
      :description,
      :ec2_security_group_ids,
      :initialization_scripts,
      :name,
      :script_parameters,
      :studio_id,
      :subtype,
      :tags,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Nimble::Types::CreateStudioComponentInput "\
          "client_token=#{client_token || 'nil'}, "\
          "configuration=#{configuration || 'nil'}, "\
          "description=\"[SENSITIVE]\", "\
          "ec2_security_group_ids=#{ec2_security_group_ids || 'nil'}, "\
          "initialization_scripts=#{initialization_scripts || 'nil'}, "\
          "name=\"[SENSITIVE]\", "\
          "script_parameters=\"[SENSITIVE]\", "\
          "studio_id=#{studio_id || 'nil'}, "\
          "subtype=#{subtype || 'nil'}, "\
          "tags=#{tags || 'nil'}, "\
          "type=#{type || 'nil'}>"
      end
    end

    # @!attribute studio_component
    #   <p>Information about the studio component.</p>
    #
    #   @return [StudioComponent]
    #
    CreateStudioComponentOutput = ::Struct.new(
      :studio_component,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute admin_role_arn
    #   <p>The IAM role that Studio Admins will assume when logging in to the Nimble Studio
    #               portal.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If you don’t specify a client token, the AWS SDK automatically generates a
    #               client token and uses it for the request to ensure idempotency.</p>
    #
    #   @return [String]
    #
    # @!attribute display_name
    #   <p>A friendly name for the studio.</p>
    #
    #   @return [String]
    #
    # @!attribute studio_encryption_configuration
    #   <p>The studio encryption configuration.</p>
    #
    #   @return [StudioEncryptionConfiguration]
    #
    # @!attribute studio_name
    #   <p>The studio name that is used in the URL of the Nimble Studio portal when accessed
    #               by Nimble Studio users.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A collection of labels, in the form of key:value pairs, that apply to this
    #               resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute user_role_arn
    #   <p>The IAM role that Studio Users will assume when logging in to the Nimble Studio
    #               portal.</p>
    #
    #   @return [String]
    #
    CreateStudioInput = ::Struct.new(
      :admin_role_arn,
      :client_token,
      :display_name,
      :studio_encryption_configuration,
      :studio_name,
      :tags,
      :user_role_arn,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Nimble::Types::CreateStudioInput "\
          "admin_role_arn=#{admin_role_arn || 'nil'}, "\
          "client_token=#{client_token || 'nil'}, "\
          "display_name=\"[SENSITIVE]\", "\
          "studio_encryption_configuration=#{studio_encryption_configuration || 'nil'}, "\
          "studio_name=#{studio_name || 'nil'}, "\
          "tags=#{tags || 'nil'}, "\
          "user_role_arn=#{user_role_arn || 'nil'}>"
      end
    end

    # @!attribute studio
    #   <p>Information about a studio.</p>
    #
    #   @return [Studio]
    #
    CreateStudioOutput = ::Struct.new(
      :studio,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If you don’t specify a client token, the AWS SDK automatically generates a
    #               client token and uses it for the request to ensure idempotency.</p>
    #
    #   @return [String]
    #
    # @!attribute launch_profile_id
    #   <p>The Launch Profile ID.</p>
    #
    #   @return [String]
    #
    # @!attribute studio_id
    #   <p>The studio ID. </p>
    #
    #   @return [String]
    #
    DeleteLaunchProfileInput = ::Struct.new(
      :client_token,
      :launch_profile_id,
      :studio_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If you don’t specify a client token, the AWS SDK automatically generates a
    #               client token and uses it for the request to ensure idempotency.</p>
    #
    #   @return [String]
    #
    # @!attribute launch_profile_id
    #   <p>The Launch Profile ID.</p>
    #
    #   @return [String]
    #
    # @!attribute principal_id
    #   <p>The principal ID. This currently supports a Amazon Web Services SSO UserId. </p>
    #
    #   @return [String]
    #
    # @!attribute studio_id
    #   <p>The studio ID. </p>
    #
    #   @return [String]
    #
    DeleteLaunchProfileMemberInput = ::Struct.new(
      :client_token,
      :launch_profile_id,
      :principal_id,
      :studio_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteLaunchProfileMemberOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute launch_profile
    #   <p>The launch profile.</p>
    #
    #   @return [LaunchProfile]
    #
    DeleteLaunchProfileOutput = ::Struct.new(
      :launch_profile,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If you don’t specify a client token, the AWS SDK automatically generates a
    #               client token and uses it for the request to ensure idempotency.</p>
    #
    #   @return [String]
    #
    # @!attribute streaming_image_id
    #   <p>The streaming image ID.</p>
    #
    #   @return [String]
    #
    # @!attribute studio_id
    #   <p>The studio ID. </p>
    #
    #   @return [String]
    #
    DeleteStreamingImageInput = ::Struct.new(
      :client_token,
      :streaming_image_id,
      :studio_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute streaming_image
    #   <p>The streaming image.</p>
    #
    #   @return [StreamingImage]
    #
    DeleteStreamingImageOutput = ::Struct.new(
      :streaming_image,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If you don’t specify a client token, the AWS SDK automatically generates a
    #               client token and uses it for the request to ensure idempotency.</p>
    #
    #   @return [String]
    #
    # @!attribute session_id
    #   <p>The streaming session ID.</p>
    #
    #   @return [String]
    #
    # @!attribute studio_id
    #   <p>The studio ID. </p>
    #
    #   @return [String]
    #
    DeleteStreamingSessionInput = ::Struct.new(
      :client_token,
      :session_id,
      :studio_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute session
    #   <p>The session.</p>
    #
    #   @return [StreamingSession]
    #
    DeleteStreamingSessionOutput = ::Struct.new(
      :session,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If you don’t specify a client token, the AWS SDK automatically generates a
    #               client token and uses it for the request to ensure idempotency.</p>
    #
    #   @return [String]
    #
    # @!attribute studio_component_id
    #   <p>The studio component ID.</p>
    #
    #   @return [String]
    #
    # @!attribute studio_id
    #   <p>The studio ID. </p>
    #
    #   @return [String]
    #
    DeleteStudioComponentInput = ::Struct.new(
      :client_token,
      :studio_component_id,
      :studio_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute studio_component
    #   <p>Information about the studio component.</p>
    #
    #   @return [StudioComponent]
    #
    DeleteStudioComponentOutput = ::Struct.new(
      :studio_component,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If you don’t specify a client token, the AWS SDK automatically generates a
    #               client token and uses it for the request to ensure idempotency.</p>
    #
    #   @return [String]
    #
    # @!attribute studio_id
    #   <p>The studio ID. </p>
    #
    #   @return [String]
    #
    DeleteStudioInput = ::Struct.new(
      :client_token,
      :studio_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If you don’t specify a client token, the AWS SDK automatically generates a
    #               client token and uses it for the request to ensure idempotency.</p>
    #
    #   @return [String]
    #
    # @!attribute principal_id
    #   <p>The principal ID. This currently supports a Amazon Web Services SSO UserId. </p>
    #
    #   @return [String]
    #
    # @!attribute studio_id
    #   <p>The studio ID. </p>
    #
    #   @return [String]
    #
    DeleteStudioMemberInput = ::Struct.new(
      :client_token,
      :principal_id,
      :studio_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteStudioMemberOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute studio
    #   <p>Information about a studio.</p>
    #
    #   @return [Studio]
    #
    DeleteStudioOutput = ::Struct.new(
      :studio,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a EULA resource.</p>
    #
    # @!attribute content
    #   <p>The EULA content.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The Unix epoch timestamp in seconds for when the resource was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute eula_id
    #   <p>The EULA ID.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name for the EULA.</p>
    #
    #   @return [String]
    #
    # @!attribute updated_at
    #   <p>The Unix epoch timestamp in seconds for when the resource was updated.</p>
    #
    #   @return [Time]
    #
    Eula = ::Struct.new(
      :content,
      :created_at,
      :eula_id,
      :name,
      :updated_at,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The acceptance of a EULA, required to use Amazon-provided streaming images.</p>
    #
    # @!attribute accepted_at
    #   <p>The Unix epoch timestamp in seconds for when the EULA was accepted.</p>
    #
    #   @return [Time]
    #
    # @!attribute accepted_by
    #   <p>The ID of the person who accepted the EULA.</p>
    #
    #   @return [String]
    #
    # @!attribute acceptee_id
    #   <p>The ID of the acceptee.</p>
    #
    #   @return [String]
    #
    # @!attribute eula_acceptance_id
    #   <p>The EULA acceptance ID.</p>
    #
    #   @return [String]
    #
    # @!attribute eula_id
    #   <p>The EULA ID.</p>
    #
    #   @return [String]
    #
    EulaAcceptance = ::Struct.new(
      :accepted_at,
      :accepted_by,
      :acceptee_id,
      :eula_acceptance_id,
      :eula_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute eula_id
    #   <p>The EULA ID.</p>
    #
    #   @return [String]
    #
    GetEulaInput = ::Struct.new(
      :eula_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute eula
    #   <p>The EULA.</p>
    #
    #   @return [Eula]
    #
    GetEulaOutput = ::Struct.new(
      :eula,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute launch_profile_id
    #   <p>The Launch Profile ID.</p>
    #
    #   @return [String]
    #
    # @!attribute studio_id
    #   <p>The studio ID. </p>
    #
    #   @return [String]
    #
    GetLaunchProfileDetailsInput = ::Struct.new(
      :launch_profile_id,
      :studio_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute launch_profile
    #   <p>The launch profile.</p>
    #
    #   @return [LaunchProfile]
    #
    # @!attribute streaming_images
    #   <p>A collection of streaming images.</p>
    #
    #   @return [Array<StreamingImage>]
    #
    # @!attribute studio_component_summaries
    #   <p>A collection of studio component summaries.</p>
    #
    #   @return [Array<StudioComponentSummary>]
    #
    GetLaunchProfileDetailsOutput = ::Struct.new(
      :launch_profile,
      :streaming_images,
      :studio_component_summaries,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute launch_profile_id
    #   <p>The Launch Profile ID.</p>
    #
    #   @return [String]
    #
    # @!attribute launch_profile_protocol_versions
    #   <p>The launch profile protocol versions supported by the client.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute launch_purpose
    #   <p>The launch purpose.</p>
    #
    #   @return [String]
    #
    # @!attribute platform
    #   <p>The platform where this Launch Profile will be used, either WINDOWS or LINUX.</p>
    #
    #   @return [String]
    #
    # @!attribute studio_id
    #   <p>The studio ID. </p>
    #
    #   @return [String]
    #
    GetLaunchProfileInitializationInput = ::Struct.new(
      :launch_profile_id,
      :launch_profile_protocol_versions,
      :launch_purpose,
      :platform,
      :studio_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute launch_profile_initialization
    #   <p>The launch profile initialization.</p>
    #
    #   @return [LaunchProfileInitialization]
    #
    GetLaunchProfileInitializationOutput = ::Struct.new(
      :launch_profile_initialization,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute launch_profile_id
    #   <p>The Launch Profile ID.</p>
    #
    #   @return [String]
    #
    # @!attribute studio_id
    #   <p>The studio ID. </p>
    #
    #   @return [String]
    #
    GetLaunchProfileInput = ::Struct.new(
      :launch_profile_id,
      :studio_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute launch_profile_id
    #   <p>The Launch Profile ID.</p>
    #
    #   @return [String]
    #
    # @!attribute principal_id
    #   <p>The principal ID. This currently supports a Amazon Web Services SSO UserId. </p>
    #
    #   @return [String]
    #
    # @!attribute studio_id
    #   <p>The studio ID. </p>
    #
    #   @return [String]
    #
    GetLaunchProfileMemberInput = ::Struct.new(
      :launch_profile_id,
      :principal_id,
      :studio_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute member
    #   <p>The member.</p>
    #
    #   @return [LaunchProfileMembership]
    #
    GetLaunchProfileMemberOutput = ::Struct.new(
      :member,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute launch_profile
    #   <p>The launch profile.</p>
    #
    #   @return [LaunchProfile]
    #
    GetLaunchProfileOutput = ::Struct.new(
      :launch_profile,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute streaming_image_id
    #   <p>The streaming image ID.</p>
    #
    #   @return [String]
    #
    # @!attribute studio_id
    #   <p>The studio ID. </p>
    #
    #   @return [String]
    #
    GetStreamingImageInput = ::Struct.new(
      :streaming_image_id,
      :studio_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute streaming_image
    #   <p>The streaming image.</p>
    #
    #   @return [StreamingImage]
    #
    GetStreamingImageOutput = ::Struct.new(
      :streaming_image,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute session_id
    #   <p>The streaming session ID.</p>
    #
    #   @return [String]
    #
    # @!attribute studio_id
    #   <p>The studio ID. </p>
    #
    #   @return [String]
    #
    GetStreamingSessionInput = ::Struct.new(
      :session_id,
      :studio_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute session
    #   <p>The session.</p>
    #
    #   @return [StreamingSession]
    #
    GetStreamingSessionOutput = ::Struct.new(
      :session,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute session_id
    #   <p>The streaming session ID.</p>
    #
    #   @return [String]
    #
    # @!attribute stream_id
    #   <p>The streaming session stream ID.</p>
    #
    #   @return [String]
    #
    # @!attribute studio_id
    #   <p>The studio ID. </p>
    #
    #   @return [String]
    #
    GetStreamingSessionStreamInput = ::Struct.new(
      :session_id,
      :stream_id,
      :studio_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute stream
    #   <p>The stream.</p>
    #
    #   @return [StreamingSessionStream]
    #
    GetStreamingSessionStreamOutput = ::Struct.new(
      :stream,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute studio_component_id
    #   <p>The studio component ID.</p>
    #
    #   @return [String]
    #
    # @!attribute studio_id
    #   <p>The studio ID. </p>
    #
    #   @return [String]
    #
    GetStudioComponentInput = ::Struct.new(
      :studio_component_id,
      :studio_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute studio_component
    #   <p>Information about the studio component.</p>
    #
    #   @return [StudioComponent]
    #
    GetStudioComponentOutput = ::Struct.new(
      :studio_component,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute studio_id
    #   <p>The studio ID. </p>
    #
    #   @return [String]
    #
    GetStudioInput = ::Struct.new(
      :studio_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute principal_id
    #   <p>The principal ID. This currently supports a Amazon Web Services SSO UserId. </p>
    #
    #   @return [String]
    #
    # @!attribute studio_id
    #   <p>The studio ID. </p>
    #
    #   @return [String]
    #
    GetStudioMemberInput = ::Struct.new(
      :principal_id,
      :studio_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute member
    #   <p>The member.</p>
    #
    #   @return [StudioMembership]
    #
    GetStudioMemberOutput = ::Struct.new(
      :member,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute studio
    #   <p>Information about a studio.</p>
    #
    #   @return [Studio]
    #
    GetStudioOutput = ::Struct.new(
      :studio,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An internal error has occurred. Please retry your request.</p>
    #
    # @!attribute code
    #   <p>A more specific error code.</p>
    #
    #   @return [String]
    #
    # @!attribute context
    #   <p>The exception context.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute message
    #   <p>A human-readable description of the error.</p>
    #
    #   @return [String]
    #
    InternalServerErrorException = ::Struct.new(
      :code,
      :context,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A launch profile controls your artist workforce’s access to studio components, like
    #             compute farms, shared file systems, managed file systems, and license server
    #             configurations, as well as instance types and Amazon Machine Images (AMIs). </p>
    #
    #         <p>Studio administrators create launch profiles in the Nimble Studio console.
    #             Artists can use their launch profiles to launch an instance from the Nimble Studio
    #             portal. Each user’s launch profile defines how they can launch a streaming session. By
    #             default, studio admins can use all launch profiles.</p>
    #
    # @!attribute arn
    #   <p>The ARN of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The Unix epoch timestamp in seconds for when the resource was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute created_by
    #   <p>The user ID of the user that created the launch profile.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A human-readable description of the launch profile.</p>
    #
    #   @return [String]
    #
    # @!attribute ec2_subnet_ids
    #   <p>Unique identifiers for a collection of EC2 subnets.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute launch_profile_id
    #   <p>The launch profile ID.</p>
    #
    #   @return [String]
    #
    # @!attribute launch_profile_protocol_versions
    #   <p>The version number of the protocol that is used by the launch profile. The only valid
    #               version is "2021-03-31".</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute name
    #   <p>A friendly name for the launch profile.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The current state.</p>
    #
    #   Enum, one of: ["CREATE_IN_PROGRESS", "READY", "UPDATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "DELETED", "DELETE_FAILED", "CREATE_FAILED", "UPDATE_FAILED"]
    #
    #   @return [String]
    #
    # @!attribute status_code
    #   <p>The status code.</p>
    #
    #   Enum, one of: ["LAUNCH_PROFILE_CREATED", "LAUNCH_PROFILE_UPDATED", "LAUNCH_PROFILE_DELETED", "LAUNCH_PROFILE_CREATE_IN_PROGRESS", "LAUNCH_PROFILE_UPDATE_IN_PROGRESS", "LAUNCH_PROFILE_DELETE_IN_PROGRESS", "INTERNAL_ERROR", "STREAMING_IMAGE_NOT_FOUND", "STREAMING_IMAGE_NOT_READY", "LAUNCH_PROFILE_WITH_STREAM_SESSIONS_NOT_DELETED", "ENCRYPTION_KEY_ACCESS_DENIED", "ENCRYPTION_KEY_NOT_FOUND", "INVALID_SUBNETS_PROVIDED"]
    #
    #   @return [String]
    #
    # @!attribute status_message
    #   <p>The status message for the launch profile.</p>
    #
    #   @return [String]
    #
    # @!attribute stream_configuration
    #   <p>A configuration for a streaming session.</p>
    #
    #   @return [StreamConfiguration]
    #
    # @!attribute studio_component_ids
    #   <p>Unique identifiers for a collection of studio components that can be used with this
    #               launch profile.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute tags
    #   <p>A collection of labels, in the form of key:value pairs, that apply to this
    #               resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute updated_at
    #   <p>The Unix epoch timestamp in seconds for when the resource was updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute updated_by
    #   <p>The user ID of the user that most recently updated the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute validation_results
    #   <p>The list of the latest validation results.</p>
    #
    #   Tags: ["launch_profile_validation"]
    #
    #   @return [Array<ValidationResult>]
    #
    LaunchProfile = ::Struct.new(
      :arn,
      :created_at,
      :created_by,
      :description,
      :ec2_subnet_ids,
      :launch_profile_id,
      :launch_profile_protocol_versions,
      :name,
      :state,
      :status_code,
      :status_message,
      :stream_configuration,
      :studio_component_ids,
      :tags,
      :updated_at,
      :updated_by,
      :validation_results,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Nimble::Types::LaunchProfile "\
          "arn=#{arn || 'nil'}, "\
          "created_at=#{created_at || 'nil'}, "\
          "created_by=#{created_by || 'nil'}, "\
          "description=\"[SENSITIVE]\", "\
          "ec2_subnet_ids=#{ec2_subnet_ids || 'nil'}, "\
          "launch_profile_id=#{launch_profile_id || 'nil'}, "\
          "launch_profile_protocol_versions=#{launch_profile_protocol_versions || 'nil'}, "\
          "name=\"[SENSITIVE]\", "\
          "state=#{state || 'nil'}, "\
          "status_code=#{status_code || 'nil'}, "\
          "status_message=#{status_message || 'nil'}, "\
          "stream_configuration=#{stream_configuration || 'nil'}, "\
          "studio_component_ids=#{studio_component_ids || 'nil'}, "\
          "tags=#{tags || 'nil'}, "\
          "updated_at=#{updated_at || 'nil'}, "\
          "updated_by=#{updated_by || 'nil'}, "\
          "validation_results=#{validation_results || 'nil'}>"
      end
    end

    # <p>A Launch Profile Initialization contains information required for a workstation or
    #             server to connect to a launch profile.</p>
    #         <p>This includes scripts, endpoints, security groups, subnets, and other
    #             configuration.</p>
    #
    # @!attribute active_directory
    #   <p>A LaunchProfileInitializationActiveDirectory resource.</p>
    #
    #   @return [LaunchProfileInitializationActiveDirectory]
    #
    # @!attribute ec2_security_group_ids
    #   <p>The EC2 security groups that control access to the studio component.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute launch_profile_id
    #   <p>The launch profile ID.</p>
    #
    #   @return [String]
    #
    # @!attribute launch_profile_protocol_version
    #   <p>The version number of the protocol that is used by the launch profile. The only valid
    #               version is "2021-03-31".</p>
    #
    #   @return [String]
    #
    # @!attribute launch_purpose
    #   <p>The launch purpose.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name for the launch profile.</p>
    #
    #   @return [String]
    #
    # @!attribute platform
    #   <p>The platform of the launch platform, either WINDOWS or LINUX.</p>
    #
    #   Enum, one of: ["LINUX", "WINDOWS"]
    #
    #   @return [String]
    #
    # @!attribute system_initialization_scripts
    #   <p>The system initializtion scripts.</p>
    #
    #   @return [Array<LaunchProfileInitializationScript>]
    #
    # @!attribute user_initialization_scripts
    #   <p>The user initializtion scripts.</p>
    #
    #   @return [Array<LaunchProfileInitializationScript>]
    #
    LaunchProfileInitialization = ::Struct.new(
      :active_directory,
      :ec2_security_group_ids,
      :launch_profile_id,
      :launch_profile_protocol_version,
      :launch_purpose,
      :name,
      :platform,
      :system_initialization_scripts,
      :user_initialization_scripts,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Nimble::Types::LaunchProfileInitialization "\
          "active_directory=#{active_directory || 'nil'}, "\
          "ec2_security_group_ids=#{ec2_security_group_ids || 'nil'}, "\
          "launch_profile_id=#{launch_profile_id || 'nil'}, "\
          "launch_profile_protocol_version=#{launch_profile_protocol_version || 'nil'}, "\
          "launch_purpose=#{launch_purpose || 'nil'}, "\
          "name=\"[SENSITIVE]\", "\
          "platform=#{platform || 'nil'}, "\
          "system_initialization_scripts=#{system_initialization_scripts || 'nil'}, "\
          "user_initialization_scripts=#{user_initialization_scripts || 'nil'}>"
      end
    end

    # <p>The Launch Profile Initialization Active Directory contains information required for
    #             the launch profile to connect to the Active Directory.</p>
    #
    # @!attribute computer_attributes
    #   <p>A collection of custom attributes for an Active Directory computer.</p>
    #
    #   @return [Array<ActiveDirectoryComputerAttribute>]
    #
    # @!attribute directory_id
    #   <p>The directory ID of the Directory Service for Microsoft Active Directory to access
    #               using this launch profile.</p>
    #
    #   @return [String]
    #
    # @!attribute directory_name
    #   <p>The directory name.</p>
    #
    #   @return [String]
    #
    # @!attribute dns_ip_addresses
    #   <p>The DNS IP address.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute organizational_unit_distinguished_name
    #   <p>The name for the organizational unit distinguished name.</p>
    #
    #   @return [String]
    #
    # @!attribute studio_component_id
    #   <p>The unique identifier for a studio component resource.</p>
    #
    #   @return [String]
    #
    # @!attribute studio_component_name
    #   <p>The name for the studio component.</p>
    #
    #   @return [String]
    #
    LaunchProfileInitializationActiveDirectory = ::Struct.new(
      :computer_attributes,
      :directory_id,
      :directory_name,
      :dns_ip_addresses,
      :organizational_unit_distinguished_name,
      :studio_component_id,
      :studio_component_name,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Nimble::Types::LaunchProfileInitializationActiveDirectory "\
          "computer_attributes=\"[SENSITIVE]\", "\
          "directory_id=#{directory_id || 'nil'}, "\
          "directory_name=#{directory_name || 'nil'}, "\
          "dns_ip_addresses=#{dns_ip_addresses || 'nil'}, "\
          "organizational_unit_distinguished_name=#{organizational_unit_distinguished_name || 'nil'}, "\
          "studio_component_id=#{studio_component_id || 'nil'}, "\
          "studio_component_name=\"[SENSITIVE]\">"
      end
    end

    # <p>The Launch Profile Initialization Script is used when start streaming session
    #             runs.</p>
    #
    # @!attribute script
    #   <p>The initialization script.</p>
    #
    #   @return [String]
    #
    # @!attribute studio_component_id
    #   <p>The unique identifier for a studio component resource.</p>
    #
    #   @return [String]
    #
    # @!attribute studio_component_name
    #   <p>The name for the studio component.</p>
    #
    #   @return [String]
    #
    LaunchProfileInitializationScript = ::Struct.new(
      :script,
      :studio_component_id,
      :studio_component_name,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Nimble::Types::LaunchProfileInitializationScript "\
          "script=\"[SENSITIVE]\", "\
          "studio_component_id=#{studio_component_id || 'nil'}, "\
          "studio_component_name=\"[SENSITIVE]\">"
      end
    end

    # <p>Launch profile membership enables your studio admins to delegate launch profile access
    #             to other studio users in the Nimble Studio portal without needing to write or
    #             maintain complex IAM policies. A launch profile member is a user association from your
    #             studio identity source who is granted permissions to a launch profile.</p>
    #         <p>A launch profile member (type USER) provides the following permissions to that launch
    #             profile:</p>
    #         <ul>
    #             <li>
    #                 <p>GetLaunchProfile</p>
    #             </li>
    #             <li>
    #                 <p>GetLaunchProfileInitialization</p>
    #             </li>
    #             <li>
    #                 <p>GetLaunchProfileMembers</p>
    #             </li>
    #             <li>
    #                 <p>GetLaunchProfileMember</p>
    #             </li>
    #             <li>
    #                 <p>CreateStreamingSession</p>
    #             </li>
    #             <li>
    #                 <p>GetLaunchProfileDetails</p>
    #             </li>
    #          </ul>
    #
    # @!attribute identity_store_id
    #   <p>The ID of the identity store.</p>
    #
    #   @return [String]
    #
    # @!attribute persona
    #   <p>The persona.</p>
    #
    #   Enum, one of: ["USER"]
    #
    #   @return [String]
    #
    # @!attribute principal_id
    #   <p>The principal ID.</p>
    #
    #   @return [String]
    #
    # @!attribute sid
    #   <p>The Active Directory Security Identifier for this user, if available.</p>
    #
    #   @return [String]
    #
    LaunchProfileMembership = ::Struct.new(
      :identity_store_id,
      :persona,
      :principal_id,
      :sid,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for LaunchProfilePersona
    #
    module LaunchProfilePersona
      # No documentation available.
      #
      USER = "USER"
    end

    # Includes enum constants for LaunchProfilePlatform
    #
    module LaunchProfilePlatform
      # No documentation available.
      #
      LINUX = "LINUX"

      # No documentation available.
      #
      WINDOWS = "WINDOWS"
    end

    # Includes enum constants for LaunchProfileState
    #
    module LaunchProfileState
      # No documentation available.
      #
      CREATE_IN_PROGRESS = "CREATE_IN_PROGRESS"

      # No documentation available.
      #
      READY = "READY"

      # No documentation available.
      #
      UPDATE_IN_PROGRESS = "UPDATE_IN_PROGRESS"

      # No documentation available.
      #
      DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS"

      # No documentation available.
      #
      DELETED = "DELETED"

      # No documentation available.
      #
      DELETE_FAILED = "DELETE_FAILED"

      # No documentation available.
      #
      CREATE_FAILED = "CREATE_FAILED"

      # No documentation available.
      #
      UPDATE_FAILED = "UPDATE_FAILED"
    end

    # Includes enum constants for LaunchProfileStatusCode
    #
    module LaunchProfileStatusCode
      # No documentation available.
      #
      LAUNCH_PROFILE_CREATED = "LAUNCH_PROFILE_CREATED"

      # No documentation available.
      #
      LAUNCH_PROFILE_UPDATED = "LAUNCH_PROFILE_UPDATED"

      # No documentation available.
      #
      LAUNCH_PROFILE_DELETED = "LAUNCH_PROFILE_DELETED"

      # No documentation available.
      #
      LAUNCH_PROFILE_CREATE_IN_PROGRESS = "LAUNCH_PROFILE_CREATE_IN_PROGRESS"

      # No documentation available.
      #
      LAUNCH_PROFILE_UPDATE_IN_PROGRESS = "LAUNCH_PROFILE_UPDATE_IN_PROGRESS"

      # No documentation available.
      #
      LAUNCH_PROFILE_DELETE_IN_PROGRESS = "LAUNCH_PROFILE_DELETE_IN_PROGRESS"

      # No documentation available.
      #
      INTERNAL_ERROR = "INTERNAL_ERROR"

      # No documentation available.
      #
      STREAMING_IMAGE_NOT_FOUND = "STREAMING_IMAGE_NOT_FOUND"

      # No documentation available.
      #
      STREAMING_IMAGE_NOT_READY = "STREAMING_IMAGE_NOT_READY"

      # No documentation available.
      #
      LAUNCH_PROFILE_WITH_STREAM_SESSIONS_NOT_DELETED = "LAUNCH_PROFILE_WITH_STREAM_SESSIONS_NOT_DELETED"

      # No documentation available.
      #
      ENCRYPTION_KEY_ACCESS_DENIED = "ENCRYPTION_KEY_ACCESS_DENIED"

      # No documentation available.
      #
      ENCRYPTION_KEY_NOT_FOUND = "ENCRYPTION_KEY_NOT_FOUND"

      # No documentation available.
      #
      INVALID_SUBNETS_PROVIDED = "INVALID_SUBNETS_PROVIDED"
    end

    # Includes enum constants for LaunchProfileValidationState
    #
    module LaunchProfileValidationState
      # No documentation available.
      #
      VALIDATION_NOT_STARTED = "VALIDATION_NOT_STARTED"

      # No documentation available.
      #
      VALIDATION_IN_PROGRESS = "VALIDATION_IN_PROGRESS"

      # No documentation available.
      #
      VALIDATION_SUCCESS = "VALIDATION_SUCCESS"

      # No documentation available.
      #
      VALIDATION_FAILED = "VALIDATION_FAILED"

      # No documentation available.
      #
      VALIDATION_FAILED_INTERNAL_SERVER_ERROR = "VALIDATION_FAILED_INTERNAL_SERVER_ERROR"
    end

    # Includes enum constants for LaunchProfileValidationStatusCode
    #
    module LaunchProfileValidationStatusCode
      # No documentation available.
      #
      VALIDATION_NOT_STARTED = "VALIDATION_NOT_STARTED"

      # No documentation available.
      #
      VALIDATION_IN_PROGRESS = "VALIDATION_IN_PROGRESS"

      # No documentation available.
      #
      VALIDATION_SUCCESS = "VALIDATION_SUCCESS"

      # No documentation available.
      #
      VALIDATION_FAILED_INVALID_SUBNET_ROUTE_TABLE_ASSOCIATION = "VALIDATION_FAILED_INVALID_SUBNET_ROUTE_TABLE_ASSOCIATION"

      # No documentation available.
      #
      VALIDATION_FAILED_SUBNET_NOT_FOUND = "VALIDATION_FAILED_SUBNET_NOT_FOUND"

      # No documentation available.
      #
      VALIDATION_FAILED_INVALID_SECURITY_GROUP_ASSOCIATION = "VALIDATION_FAILED_INVALID_SECURITY_GROUP_ASSOCIATION"

      # No documentation available.
      #
      VALIDATION_FAILED_INVALID_ACTIVE_DIRECTORY = "VALIDATION_FAILED_INVALID_ACTIVE_DIRECTORY"

      # No documentation available.
      #
      VALIDATION_FAILED_UNAUTHORIZED = "VALIDATION_FAILED_UNAUTHORIZED"

      # No documentation available.
      #
      VALIDATION_FAILED_INTERNAL_SERVER_ERROR = "VALIDATION_FAILED_INTERNAL_SERVER_ERROR"
    end

    # Includes enum constants for LaunchProfileValidationType
    #
    module LaunchProfileValidationType
      # No documentation available.
      #
      VALIDATE_ACTIVE_DIRECTORY_STUDIO_COMPONENT = "VALIDATE_ACTIVE_DIRECTORY_STUDIO_COMPONENT"

      # No documentation available.
      #
      VALIDATE_SUBNET_ASSOCIATION = "VALIDATE_SUBNET_ASSOCIATION"

      # No documentation available.
      #
      VALIDATE_NETWORK_ACL_ASSOCIATION = "VALIDATE_NETWORK_ACL_ASSOCIATION"

      # No documentation available.
      #
      VALIDATE_SECURITY_GROUP_ASSOCIATION = "VALIDATE_SECURITY_GROUP_ASSOCIATION"
    end

    # <p>The configuration for a license service that is associated with a studio
    #             resource.</p>
    #
    # @!attribute endpoint
    #   <p>The endpoint of the license service that is accessed by the studio component
    #               resource.</p>
    #
    #   @return [String]
    #
    LicenseServiceConfiguration = ::Struct.new(
      :endpoint,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Nimble::Types::LicenseServiceConfiguration "\
          "endpoint=\"[SENSITIVE]\">"
      end
    end

    # @!attribute eula_ids
    #   <p>The list of EULA IDs that have been previously accepted.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>The token to request the next page of results. </p>
    #
    #   @return [String]
    #
    # @!attribute studio_id
    #   <p>The studio ID. </p>
    #
    #   @return [String]
    #
    ListEulaAcceptancesInput = ::Struct.new(
      :eula_ids,
      :next_token,
      :studio_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute eula_acceptances
    #   <p>A collection of EULA acceptances.</p>
    #
    #   @return [Array<EulaAcceptance>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no more results.</p>
    #
    #   @return [String]
    #
    ListEulaAcceptancesOutput = ::Struct.new(
      :eula_acceptances,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute eula_ids
    #   <p>The list of EULA IDs that should be returned</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>The token to request the next page of results. </p>
    #
    #   @return [String]
    #
    ListEulasInput = ::Struct.new(
      :eula_ids,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute eulas
    #   <p>A collection of EULA resources.</p>
    #
    #   @return [Array<Eula>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no more results.</p>
    #
    #   @return [String]
    #
    ListEulasOutput = ::Struct.new(
      :eulas,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute launch_profile_id
    #   <p>The Launch Profile ID.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The max number of results to return in the response.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token to request the next page of results. </p>
    #
    #   @return [String]
    #
    # @!attribute studio_id
    #   <p>The studio ID. </p>
    #
    #   @return [String]
    #
    ListLaunchProfileMembersInput = ::Struct.new(
      :launch_profile_id,
      :max_results,
      :next_token,
      :studio_id,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.max_results ||= 0
      end

    end

    # @!attribute members
    #   <p>A list of members.</p>
    #
    #   @return [Array<LaunchProfileMembership>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no more results.</p>
    #
    #   @return [String]
    #
    ListLaunchProfileMembersOutput = ::Struct.new(
      :members,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>The max number of results to return in the response.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token to request the next page of results. </p>
    #
    #   @return [String]
    #
    # @!attribute principal_id
    #   <p>The principal ID. This currently supports a Amazon Web Services SSO UserId. </p>
    #
    #   @return [String]
    #
    # @!attribute states
    #   <p>Filter this request to launch profiles in any of the given states.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute studio_id
    #   <p>The studio ID. </p>
    #
    #   @return [String]
    #
    ListLaunchProfilesInput = ::Struct.new(
      :max_results,
      :next_token,
      :principal_id,
      :states,
      :studio_id,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.max_results ||= 0
      end

    end

    # @!attribute launch_profiles
    #   <p>A collection of launch profiles.</p>
    #
    #   @return [Array<LaunchProfile>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no more results.</p>
    #
    #   @return [String]
    #
    ListLaunchProfilesOutput = ::Struct.new(
      :launch_profiles,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The token to request the next page of results. </p>
    #
    #   @return [String]
    #
    # @!attribute owner
    #   <p>Filter this request to streaming images with the given owner</p>
    #
    #   @return [String]
    #
    # @!attribute studio_id
    #   <p>The studio ID. </p>
    #
    #   @return [String]
    #
    ListStreamingImagesInput = ::Struct.new(
      :next_token,
      :owner,
      :studio_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no more results.</p>
    #
    #   @return [String]
    #
    # @!attribute streaming_images
    #   <p>A collection of streaming images.</p>
    #
    #   @return [Array<StreamingImage>]
    #
    ListStreamingImagesOutput = ::Struct.new(
      :next_token,
      :streaming_images,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute created_by
    #   <p>Filters the request to streaming sessions created by the given user.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token to request the next page of results. </p>
    #
    #   @return [String]
    #
    # @!attribute owned_by
    #   <p>Filters the request to streaming session owned by the given user</p>
    #
    #   @return [String]
    #
    # @!attribute session_ids
    #   <p>Filters the request to only the provided session IDs.</p>
    #
    #   @return [String]
    #
    # @!attribute studio_id
    #   <p>The studio ID. </p>
    #
    #   @return [String]
    #
    ListStreamingSessionsInput = ::Struct.new(
      :created_by,
      :next_token,
      :owned_by,
      :session_ids,
      :studio_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no more results.</p>
    #
    #   @return [String]
    #
    # @!attribute sessions
    #   <p>A collection of streaming sessions.</p>
    #
    #   @return [Array<StreamingSession>]
    #
    ListStreamingSessionsOutput = ::Struct.new(
      :next_token,
      :sessions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>The max number of results to return in the response.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token to request the next page of results. </p>
    #
    #   @return [String]
    #
    # @!attribute states
    #   <p>Filters the request to studio components that are in one of the given states. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute studio_id
    #   <p>The studio ID. </p>
    #
    #   @return [String]
    #
    # @!attribute types
    #   <p>Filters the request to studio components that are of one of the given types.</p>
    #
    #   @return [Array<String>]
    #
    ListStudioComponentsInput = ::Struct.new(
      :max_results,
      :next_token,
      :states,
      :studio_id,
      :types,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.max_results ||= 0
      end

    end

    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no more results.</p>
    #
    #   @return [String]
    #
    # @!attribute studio_components
    #   <p>A collection of studio components.</p>
    #
    #   @return [Array<StudioComponent>]
    #
    ListStudioComponentsOutput = ::Struct.new(
      :next_token,
      :studio_components,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>The max number of results to return in the response.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token to request the next page of results. </p>
    #
    #   @return [String]
    #
    # @!attribute studio_id
    #   <p>The studio ID. </p>
    #
    #   @return [String]
    #
    ListStudioMembersInput = ::Struct.new(
      :max_results,
      :next_token,
      :studio_id,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.max_results ||= 0
      end

    end

    # @!attribute members
    #   <p>A list of admin members.</p>
    #
    #   @return [Array<StudioMembership>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no more results.</p>
    #
    #   @return [String]
    #
    ListStudioMembersOutput = ::Struct.new(
      :members,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The token to request the next page of results. </p>
    #
    #   @return [String]
    #
    ListStudiosInput = ::Struct.new(
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no more results.</p>
    #
    #   @return [String]
    #
    # @!attribute studios
    #   <p>A collection of studios.</p>
    #
    #   @return [Array<Studio>]
    #
    ListStudiosOutput = ::Struct.new(
      :next_token,
      :studios,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource for which you want to list tags.</p>
    #
    #   @return [String]
    #
    ListTagsForResourceInput = ::Struct.new(
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tags
    #   <p>A collection of labels, in the form of key:value pairs, that apply to this
    #               resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A new member that is added to a launch profile.</p>
    #
    # @!attribute persona
    #   <p>The persona.</p>
    #
    #   Enum, one of: ["USER"]
    #
    #   @return [String]
    #
    # @!attribute principal_id
    #   <p>The principal ID.</p>
    #
    #   @return [String]
    #
    NewLaunchProfileMember = ::Struct.new(
      :persona,
      :principal_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A new studio user's membership.</p>
    #
    # @!attribute persona
    #   <p>The persona.</p>
    #
    #   Enum, one of: ["ADMINISTRATOR"]
    #
    #   @return [String]
    #
    # @!attribute principal_id
    #   <p>The principal ID.</p>
    #
    #   @return [String]
    #
    NewStudioMember = ::Struct.new(
      :persona,
      :principal_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If you don’t specify a client token, the AWS SDK automatically generates a
    #               client token and uses it for the request to ensure idempotency.</p>
    #
    #   @return [String]
    #
    # @!attribute identity_store_id
    #   <p>The ID of the identity store.</p>
    #
    #   @return [String]
    #
    # @!attribute launch_profile_id
    #   <p>The Launch Profile ID.</p>
    #
    #   @return [String]
    #
    # @!attribute members
    #   <p>A list of members.</p>
    #
    #   @return [Array<NewLaunchProfileMember>]
    #
    # @!attribute studio_id
    #   <p>The studio ID. </p>
    #
    #   @return [String]
    #
    PutLaunchProfileMembersInput = ::Struct.new(
      :client_token,
      :identity_store_id,
      :launch_profile_id,
      :members,
      :studio_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutLaunchProfileMembersOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If you don’t specify a client token, the AWS SDK automatically generates a
    #               client token and uses it for the request to ensure idempotency.</p>
    #
    #   @return [String]
    #
    # @!attribute identity_store_id
    #   <p>The ID of the identity store.</p>
    #
    #   @return [String]
    #
    # @!attribute members
    #   <p>A list of members.</p>
    #
    #   @return [Array<NewStudioMember>]
    #
    # @!attribute studio_id
    #   <p>The studio ID. </p>
    #
    #   @return [String]
    #
    PutStudioMembersInput = ::Struct.new(
      :client_token,
      :identity_store_id,
      :members,
      :studio_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutStudioMembersOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified resource could not be found.</p>
    #
    # @!attribute code
    #   <p>A more specific error code.</p>
    #
    #   @return [String]
    #
    # @!attribute context
    #   <p>The exception context.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute message
    #   <p>A human-readable description of the error.</p>
    #
    #   @return [String]
    #
    ResourceNotFoundException = ::Struct.new(
      :code,
      :context,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A parameter for a studio component script, in the form of a key:value pair.</p>
    #
    # @!attribute key
    #   <p>A script parameter key.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>A script parameter value.</p>
    #
    #   @return [String]
    #
    ScriptParameterKeyValue = ::Struct.new(
      :key,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Your current quota does not allow you to perform the request action. You can request
    #             increases for some quotas, and other quotas cannot be increased.</p>
    #         <p>Please use AWS Service Quotas to request an increase. </p>
    #
    # @!attribute code
    #   <p>A more specific error code.</p>
    #
    #   @return [String]
    #
    # @!attribute context
    #   <p>The exception context.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute message
    #   <p>A human-readable description of the error.</p>
    #
    #   @return [String]
    #
    ServiceQuotaExceededException = ::Struct.new(
      :code,
      :context,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The configuration for a shared file storage system that is associated with a studio
    #             resource.</p>
    #
    # @!attribute endpoint
    #   <p>The endpoint of the shared file system that is accessed by the studio component
    #               resource.</p>
    #
    #   @return [String]
    #
    # @!attribute file_system_id
    #   <p>The unique identifier for a file system.</p>
    #
    #   @return [String]
    #
    # @!attribute linux_mount_point
    #   <p>The mount location for a shared file system on a Linux virtual workstation.</p>
    #
    #   @return [String]
    #
    # @!attribute share_name
    #   <p>The name of the file share.</p>
    #
    #   @return [String]
    #
    # @!attribute windows_mount_drive
    #   <p>The mount location for a shared file system on a Windows virtual workstation.</p>
    #
    #   @return [String]
    #
    SharedFileSystemConfiguration = ::Struct.new(
      :endpoint,
      :file_system_id,
      :linux_mount_point,
      :share_name,
      :windows_mount_drive,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Nimble::Types::SharedFileSystemConfiguration "\
          "endpoint=\"[SENSITIVE]\", "\
          "file_system_id=#{file_system_id || 'nil'}, "\
          "linux_mount_point=\"[SENSITIVE]\", "\
          "share_name=\"[SENSITIVE]\", "\
          "windows_mount_drive=#{windows_mount_drive || 'nil'}>"
      end
    end

    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If you don’t specify a client token, the AWS SDK automatically generates a
    #               client token and uses it for the request to ensure idempotency.</p>
    #
    #   @return [String]
    #
    # @!attribute session_id
    #   <p>The streaming session ID for the StartStreamingSessionRequest.</p>
    #
    #   @return [String]
    #
    # @!attribute studio_id
    #   <p>The studio ID for the StartStreamingSessionRequest.</p>
    #
    #   @return [String]
    #
    StartStreamingSessionInput = ::Struct.new(
      :client_token,
      :session_id,
      :studio_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute session
    #   <p>A streaming session is a virtual workstation created using a particular launch
    #               profile.</p>
    #
    #   @return [StreamingSession]
    #
    StartStreamingSessionOutput = ::Struct.new(
      :session,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If you don’t specify a client token, the AWS SDK automatically generates a
    #               client token and uses it for the request to ensure idempotency.</p>
    #
    #   @return [String]
    #
    # @!attribute studio_id
    #   <p>The studio ID. </p>
    #
    #   @return [String]
    #
    StartStudioSSOConfigurationRepairInput = ::Struct.new(
      :client_token,
      :studio_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute studio
    #   <p>Information about a studio.</p>
    #
    #   @return [Studio]
    #
    StartStudioSSOConfigurationRepairOutput = ::Struct.new(
      :studio,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If you don’t specify a client token, the AWS SDK automatically generates a
    #               client token and uses it for the request to ensure idempotency.</p>
    #
    #   @return [String]
    #
    # @!attribute session_id
    #   <p>The streaming session ID for the StopStreamingSessionRequest.</p>
    #
    #   @return [String]
    #
    # @!attribute studio_id
    #   <p>The studioId for the StopStreamingSessionRequest.</p>
    #
    #   @return [String]
    #
    StopStreamingSessionInput = ::Struct.new(
      :client_token,
      :session_id,
      :studio_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute session
    #   <p>A streaming session is a virtual workstation created using a particular launch
    #               profile.</p>
    #
    #   @return [StreamingSession]
    #
    StopStreamingSessionOutput = ::Struct.new(
      :session,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A configuration for a streaming session.</p>
    #
    # @!attribute clipboard_mode
    #   <p>Enable or disable the use of the system clipboard to copy and paste between the
    #               streaming session and streaming client.</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute ec2_instance_types
    #   <p>The EC2 instance types that users can select from when launching a streaming session
    #               with this launch profile.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute max_session_length_in_minutes
    #   <p>The length of time, in minutes, that a streaming session can be active before it is
    #               stopped or terminated. After this point, Nimble Studio automatically terminates or
    #               stops the session. The default length of time is 690 minutes, and the maximum length of
    #               time is 30 days.</p>
    #
    #   @return [Integer]
    #
    # @!attribute streaming_image_ids
    #   <p>The streaming images that users can select from when launching a streaming session
    #               with this launch profile.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute max_stopped_session_length_in_minutes
    #   <p>Integer that determines if you can start and stop your sessions and how long a session
    #               can stay in the STOPPED state. The default value is 0. The maximum value is 5760.</p>
    #           <p>If the value is missing or set to 0, your sessions can’t be stopped. If you then call
    #                   <code>StopStreamingSession</code>, the session fails. If the time that a session
    #               stays in the READY state exceeds the <code>maxSessionLengthInMinutes</code> value, the
    #               session will automatically be terminated by AWS (instead of stopped).</p>
    #           <p>If the value is set to a positive number, the session can be stopped. You can call
    #                   <code>StopStreamingSession</code> to stop sessions in the READY state. If the time
    #               that a session stays in the READY state exceeds the
    #                   <code>maxSessionLengthInMinutes</code> value, the session will automatically be
    #               stopped by AWS (instead of terminated).</p>
    #
    #   Tags: ["stop_start_streaming_session"]
    #
    #   @return [Integer]
    #
    # @!attribute session_storage
    #   <p>(Optional) The upload storage for a streaming session.</p>
    #
    #   Tags: ["session_storage"]
    #
    #   @return [StreamConfigurationSessionStorage]
    #
    StreamConfiguration = ::Struct.new(
      :clipboard_mode,
      :ec2_instance_types,
      :max_session_length_in_minutes,
      :streaming_image_ids,
      :max_stopped_session_length_in_minutes,
      :session_storage,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.max_session_length_in_minutes ||= 0
        self.max_stopped_session_length_in_minutes ||= 0
      end

    end

    # <p>Configuration for streaming workstations created using this launch profile.</p>
    #
    # @!attribute clipboard_mode
    #   <p>Enable or disable the use of the system clipboard to copy and paste between the
    #               streaming session and streaming client.</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute ec2_instance_types
    #   <p>The EC2 instance types that users can select from when launching a streaming session
    #               with this launch profile.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute max_session_length_in_minutes
    #   <p>The length of time, in minutes, that a streaming session can be active before it is
    #               stopped or terminated. After this point, Nimble Studio automatically terminates or
    #               stops the session. The default length of time is 690 minutes, and the maximum length of
    #               time is 30 days.</p>
    #
    #   @return [Integer]
    #
    # @!attribute streaming_image_ids
    #   <p>The streaming images that users can select from when launching a streaming session
    #               with this launch profile.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute max_stopped_session_length_in_minutes
    #   <p>Integer that determines if you can start and stop your sessions and how long a session
    #               can stay in the STOPPED state. The default value is 0. The maximum value is 5760.</p>
    #           <p>If the value is missing or set to 0, your sessions can’t be stopped. If you then call
    #                   <code>StopStreamingSession</code>, the session fails. If the time that a session
    #               stays in the READY state exceeds the <code>maxSessionLengthInMinutes</code> value, the
    #               session will automatically be terminated by AWS (instead of stopped).</p>
    #           <p>If the value is set to a positive number, the session can be stopped. You can call
    #                   <code>StopStreamingSession</code> to stop sessions in the READY state. If the time
    #               that a session stays in the READY state exceeds the
    #                   <code>maxSessionLengthInMinutes</code> value, the session will automatically be
    #               stopped by AWS (instead of terminated).</p>
    #
    #   Tags: ["stop_start_streaming_session"]
    #
    #   @return [Integer]
    #
    # @!attribute session_storage
    #   <p>(Optional) The upload storage for a streaming workstation that is created using this
    #               launch profile.</p>
    #
    #   Tags: ["session_storage"]
    #
    #   @return [StreamConfigurationSessionStorage]
    #
    StreamConfigurationCreate = ::Struct.new(
      :clipboard_mode,
      :ec2_instance_types,
      :max_session_length_in_minutes,
      :streaming_image_ids,
      :max_stopped_session_length_in_minutes,
      :session_storage,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.max_session_length_in_minutes ||= 0
        self.max_stopped_session_length_in_minutes ||= 0
      end

    end

    # <p>The configuration for a streaming session’s upload storage.</p>
    #
    # @!attribute root
    #   <p>The configuration for the upload storage root of the streaming session.</p>
    #
    #   @return [StreamingSessionStorageRoot]
    #
    # @!attribute mode
    #   <p>Allows artists to upload files to their workstations. The only valid option is
    #                   <code>UPLOAD</code>.</p>
    #
    #   @return [Array<String>]
    #
    StreamConfigurationSessionStorage = ::Struct.new(
      :root,
      :mode,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for StreamingClipboardMode
    #
    module StreamingClipboardMode
      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      DISABLED = "DISABLED"
    end

    # <p>Represents a streaming image resource.</p>
    #         <p>Streaming images are used by studio users to select which operating system and
    #             software they want to use in a Nimble Studio streaming session.</p>
    #         <p>Amazon provides a number of streaming images that include popular 3rd-party
    #             software.</p>
    #         <p>You can create your own streaming images using an Amazon Elastic Compute Cloud (Amazon
    #             EC2) machine image that you create for this purpose. You can also include software that
    #             your users require.</p>
    #
    # @!attribute arn
    #   <p>The ARN of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A human-readable description of the streaming image.</p>
    #
    #   @return [String]
    #
    # @!attribute ec2_image_id
    #   <p>The ID of an EC2 machine image with which to create the streaming image.</p>
    #
    #   @return [String]
    #
    # @!attribute encryption_configuration
    #   <p>The encryption configuration.</p>
    #
    #   @return [StreamingImageEncryptionConfiguration]
    #
    # @!attribute eula_ids
    #   <p>The list of EULAs that must be accepted before a Streaming Session can be started
    #               using this streaming image.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute name
    #   <p>A friendly name for a streaming image resource.</p>
    #
    #   @return [String]
    #
    # @!attribute owner
    #   <p>The owner of the streaming image, either the studioId that contains the streaming
    #               image, or 'amazon' for images that are provided by Amazon Nimble Studio.</p>
    #
    #   @return [String]
    #
    # @!attribute platform
    #   <p>The platform of the streaming image, either WINDOWS or LINUX.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The current state.</p>
    #
    #   Enum, one of: ["CREATE_IN_PROGRESS", "READY", "DELETE_IN_PROGRESS", "DELETED", "UPDATE_IN_PROGRESS", "UPDATE_FAILED", "CREATE_FAILED", "DELETE_FAILED"]
    #
    #   @return [String]
    #
    # @!attribute status_code
    #   <p>The status code.</p>
    #
    #   Enum, one of: ["STREAMING_IMAGE_CREATE_IN_PROGRESS", "STREAMING_IMAGE_READY", "STREAMING_IMAGE_DELETE_IN_PROGRESS", "STREAMING_IMAGE_DELETED", "STREAMING_IMAGE_UPDATE_IN_PROGRESS", "INTERNAL_ERROR", "ACCESS_DENIED"]
    #
    #   @return [String]
    #
    # @!attribute status_message
    #   <p>The status message for the streaming image.</p>
    #
    #   @return [String]
    #
    # @!attribute streaming_image_id
    #   <p>The ID of the streaming image.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A collection of labels, in the form of key:value pairs, that apply to this
    #               resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    StreamingImage = ::Struct.new(
      :arn,
      :description,
      :ec2_image_id,
      :encryption_configuration,
      :eula_ids,
      :name,
      :owner,
      :platform,
      :state,
      :status_code,
      :status_message,
      :streaming_image_id,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Nimble::Types::StreamingImage "\
          "arn=#{arn || 'nil'}, "\
          "description=\"[SENSITIVE]\", "\
          "ec2_image_id=#{ec2_image_id || 'nil'}, "\
          "encryption_configuration=#{encryption_configuration || 'nil'}, "\
          "eula_ids=#{eula_ids || 'nil'}, "\
          "name=\"[SENSITIVE]\", "\
          "owner=#{owner || 'nil'}, "\
          "platform=#{platform || 'nil'}, "\
          "state=#{state || 'nil'}, "\
          "status_code=#{status_code || 'nil'}, "\
          "status_message=#{status_message || 'nil'}, "\
          "streaming_image_id=#{streaming_image_id || 'nil'}, "\
          "tags=#{tags || 'nil'}>"
      end
    end

    # <p>Specifies how a streaming image is encrypted.</p>
    #
    # @!attribute key_arn
    #   <p>The ARN for a KMS key that is used to encrypt studio data.</p>
    #
    #   @return [String]
    #
    # @!attribute key_type
    #   <p>The type of KMS key that is used to encrypt studio data.</p>
    #
    #   Enum, one of: ["CUSTOMER_MANAGED_KEY"]
    #
    #   @return [String]
    #
    StreamingImageEncryptionConfiguration = ::Struct.new(
      :key_arn,
      :key_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for StreamingImageEncryptionConfigurationKeyType
    #
    module StreamingImageEncryptionConfigurationKeyType
      # No documentation available.
      #
      CUSTOMER_MANAGED_KEY = "CUSTOMER_MANAGED_KEY"
    end

    # Includes enum constants for StreamingImageState
    #
    module StreamingImageState
      # No documentation available.
      #
      CREATE_IN_PROGRESS = "CREATE_IN_PROGRESS"

      # No documentation available.
      #
      READY = "READY"

      # No documentation available.
      #
      DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS"

      # No documentation available.
      #
      DELETED = "DELETED"

      # No documentation available.
      #
      UPDATE_IN_PROGRESS = "UPDATE_IN_PROGRESS"

      # No documentation available.
      #
      UPDATE_FAILED = "UPDATE_FAILED"

      # No documentation available.
      #
      CREATE_FAILED = "CREATE_FAILED"

      # No documentation available.
      #
      DELETE_FAILED = "DELETE_FAILED"
    end

    # Includes enum constants for StreamingImageStatusCode
    #
    module StreamingImageStatusCode
      # No documentation available.
      #
      STREAMING_IMAGE_CREATE_IN_PROGRESS = "STREAMING_IMAGE_CREATE_IN_PROGRESS"

      # No documentation available.
      #
      STREAMING_IMAGE_READY = "STREAMING_IMAGE_READY"

      # No documentation available.
      #
      STREAMING_IMAGE_DELETE_IN_PROGRESS = "STREAMING_IMAGE_DELETE_IN_PROGRESS"

      # No documentation available.
      #
      STREAMING_IMAGE_DELETED = "STREAMING_IMAGE_DELETED"

      # No documentation available.
      #
      STREAMING_IMAGE_UPDATE_IN_PROGRESS = "STREAMING_IMAGE_UPDATE_IN_PROGRESS"

      # No documentation available.
      #
      INTERNAL_ERROR = "INTERNAL_ERROR"

      # No documentation available.
      #
      ACCESS_DENIED = "ACCESS_DENIED"
    end

    # Includes enum constants for StreamingInstanceType
    #
    module StreamingInstanceType
      # No documentation available.
      #
      g4dn_xlarge = "g4dn.xlarge"

      # No documentation available.
      #
      g4dn_2xlarge = "g4dn.2xlarge"

      # No documentation available.
      #
      g4dn_4xlarge = "g4dn.4xlarge"

      # No documentation available.
      #
      g4dn_8xlarge = "g4dn.8xlarge"

      # No documentation available.
      #
      g4dn_12xlarge = "g4dn.12xlarge"

      # No documentation available.
      #
      g4dn_16xlarge = "g4dn.16xlarge"
    end

    # <p>A streaming session is a virtual workstation created using a particular launch
    #             profile.</p>
    #
    # @!attribute arn
    #   <p>The ARN of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The Unix epoch timestamp in seconds for when the resource was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute created_by
    #   <p>The user ID of the user that created the streaming session.</p>
    #
    #   @return [String]
    #
    # @!attribute ec2_instance_type
    #   <p>The EC2 Instance type used for the streaming session.</p>
    #
    #   @return [String]
    #
    # @!attribute launch_profile_id
    #   <p>The ID of the launch profile used to control access from the streaming session.</p>
    #
    #   @return [String]
    #
    # @!attribute owned_by
    #   <p>The user ID of the user that owns the streaming session. The user that owns the
    #               session will be logging into the session and interacting with the virtual
    #               workstation.</p>
    #
    #   @return [String]
    #
    # @!attribute session_id
    #   <p>The session ID.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The current state.</p>
    #
    #   Enum, one of: ["CREATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "READY", "DELETED", "CREATE_FAILED", "DELETE_FAILED", "STOP_IN_PROGRESS", "START_IN_PROGRESS", "STOPPED", "STOP_FAILED", "START_FAILED"]
    #
    #   @return [String]
    #
    # @!attribute status_code
    #   <p>The status code.</p>
    #
    #   Enum, one of: ["STREAMING_SESSION_READY", "STREAMING_SESSION_DELETED", "STREAMING_SESSION_CREATE_IN_PROGRESS", "STREAMING_SESSION_DELETE_IN_PROGRESS", "INTERNAL_ERROR", "INSUFFICIENT_CAPACITY", "ACTIVE_DIRECTORY_DOMAIN_JOIN_ERROR", "NETWORK_CONNECTION_ERROR", "INITIALIZATION_SCRIPT_ERROR", "DECRYPT_STREAMING_IMAGE_ERROR", "NETWORK_INTERFACE_ERROR", "STREAMING_SESSION_STOPPED", "STREAMING_SESSION_STARTED", "STREAMING_SESSION_STOP_IN_PROGRESS", "STREAMING_SESSION_START_IN_PROGRESS", "AMI_VALIDATION_ERROR"]
    #
    #   @return [String]
    #
    # @!attribute status_message
    #   <p>The status message for the streaming session.</p>
    #
    #   @return [String]
    #
    # @!attribute streaming_image_id
    #   <p>The ID of the streaming image.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A collection of labels, in the form of key:value pairs, that apply to this
    #               resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute terminate_at
    #   <p>The time the streaming session will automatically terminate if not terminated by the
    #               user.</p>
    #
    #   @return [Time]
    #
    # @!attribute updated_at
    #   <p>The Unix epoch timestamp in seconds for when the resource was updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute updated_by
    #   <p>The user ID of the user that most recently updated the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute stopped_at
    #   <p>The time the session entered STOP_IN_PROGRESS state.</p>
    #
    #   Tags: ["stop_start_streaming_session"]
    #
    #   @return [Time]
    #
    # @!attribute stopped_by
    #   <p>The user ID of the user that stopped the streaming session.</p>
    #
    #   Tags: ["stop_start_streaming_session"]
    #
    #   @return [String]
    #
    # @!attribute started_at
    #   <p>The time the session entered START_IN_PROGRESS state.</p>
    #
    #   Tags: ["stop_start_streaming_session"]
    #
    #   @return [Time]
    #
    # @!attribute started_by
    #   <p>The user ID of the user that started the streaming session.</p>
    #
    #   Tags: ["stop_start_streaming_session"]
    #
    #   @return [String]
    #
    # @!attribute stop_at
    #   <p>The time the streaming session will automatically be stopped if the user doesn’t stop
    #               the session themselves. </p>
    #
    #   Tags: ["stop_start_streaming_session"]
    #
    #   @return [Time]
    #
    StreamingSession = ::Struct.new(
      :arn,
      :created_at,
      :created_by,
      :ec2_instance_type,
      :launch_profile_id,
      :owned_by,
      :session_id,
      :state,
      :status_code,
      :status_message,
      :streaming_image_id,
      :tags,
      :terminate_at,
      :updated_at,
      :updated_by,
      :stopped_at,
      :stopped_by,
      :started_at,
      :started_by,
      :stop_at,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for StreamingSessionState
    #
    module StreamingSessionState
      # No documentation available.
      #
      CREATE_IN_PROGRESS = "CREATE_IN_PROGRESS"

      # No documentation available.
      #
      DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS"

      # No documentation available.
      #
      READY = "READY"

      # No documentation available.
      #
      DELETED = "DELETED"

      # No documentation available.
      #
      CREATE_FAILED = "CREATE_FAILED"

      # No documentation available.
      #
      DELETE_FAILED = "DELETE_FAILED"

      # No documentation available.
      #
      STOP_IN_PROGRESS = "STOP_IN_PROGRESS"

      # No documentation available.
      #
      START_IN_PROGRESS = "START_IN_PROGRESS"

      # No documentation available.
      #
      STOPPED = "STOPPED"

      # No documentation available.
      #
      STOP_FAILED = "STOP_FAILED"

      # No documentation available.
      #
      START_FAILED = "START_FAILED"
    end

    # Includes enum constants for StreamingSessionStatusCode
    #
    module StreamingSessionStatusCode
      # No documentation available.
      #
      STREAMING_SESSION_READY = "STREAMING_SESSION_READY"

      # No documentation available.
      #
      STREAMING_SESSION_DELETED = "STREAMING_SESSION_DELETED"

      # No documentation available.
      #
      STREAMING_SESSION_CREATE_IN_PROGRESS = "STREAMING_SESSION_CREATE_IN_PROGRESS"

      # No documentation available.
      #
      STREAMING_SESSION_DELETE_IN_PROGRESS = "STREAMING_SESSION_DELETE_IN_PROGRESS"

      # No documentation available.
      #
      INTERNAL_ERROR = "INTERNAL_ERROR"

      # No documentation available.
      #
      INSUFFICIENT_CAPACITY = "INSUFFICIENT_CAPACITY"

      # No documentation available.
      #
      ACTIVE_DIRECTORY_DOMAIN_JOIN_ERROR = "ACTIVE_DIRECTORY_DOMAIN_JOIN_ERROR"

      # No documentation available.
      #
      NETWORK_CONNECTION_ERROR = "NETWORK_CONNECTION_ERROR"

      # No documentation available.
      #
      INITIALIZATION_SCRIPT_ERROR = "INITIALIZATION_SCRIPT_ERROR"

      # No documentation available.
      #
      DECRYPT_STREAMING_IMAGE_ERROR = "DECRYPT_STREAMING_IMAGE_ERROR"

      # No documentation available.
      #
      NETWORK_INTERFACE_ERROR = "NETWORK_INTERFACE_ERROR"

      # No documentation available.
      #
      STREAMING_SESSION_STOPPED = "STREAMING_SESSION_STOPPED"

      # No documentation available.
      #
      STREAMING_SESSION_STARTED = "STREAMING_SESSION_STARTED"

      # No documentation available.
      #
      STREAMING_SESSION_STOP_IN_PROGRESS = "STREAMING_SESSION_STOP_IN_PROGRESS"

      # No documentation available.
      #
      STREAMING_SESSION_START_IN_PROGRESS = "STREAMING_SESSION_START_IN_PROGRESS"

      # No documentation available.
      #
      AMI_VALIDATION_ERROR = "AMI_VALIDATION_ERROR"
    end

    # Includes enum constants for StreamingSessionStorageMode
    #
    module StreamingSessionStorageMode
      # No documentation available.
      #
      UPLOAD = "UPLOAD"
    end

    # <p>The upload storage root location (folder) on streaming workstations where files are
    #             uploaded.</p>
    #
    # @!attribute linux
    #   <p>The folder path in Linux workstations where files are uploaded.</p>
    #
    #   @return [String]
    #
    # @!attribute windows
    #   <p>The folder path in Windows workstations where files are uploaded.</p>
    #
    #   @return [String]
    #
    StreamingSessionStorageRoot = ::Struct.new(
      :linux,
      :windows,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Nimble::Types::StreamingSessionStorageRoot "\
          "linux=\"[SENSITIVE]\", "\
          "windows=\"[SENSITIVE]\">"
      end
    end

    # <p>A stream is an active connection to a streaming session, enabling a studio user to
    #             control the streaming session using a compatible client. Streaming session streams are
    #             compatible with the NICE DCV web client, included in the Nimble Studio portal, or
    #             the NICE DCV desktop client.</p>
    #
    # @!attribute created_at
    #   <p>The Unix epoch timestamp in seconds for when the resource was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute created_by
    #   <p>The user ID of the user that created the streaming session stream.</p>
    #
    #   @return [String]
    #
    # @!attribute expires_at
    #   <p>The Unix epoch timestamp in seconds for when the resource expires.</p>
    #
    #   @return [Time]
    #
    # @!attribute owned_by
    #   <p>The user ID of the user that owns the streaming session. The user that owns the
    #               session will be logging into the session and interacting with the virtual
    #               workstation.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The current state.</p>
    #
    #   Enum, one of: ["READY", "CREATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "DELETED", "CREATE_FAILED", "DELETE_FAILED"]
    #
    #   @return [String]
    #
    # @!attribute status_code
    #   <p>The streaming session stream status code.</p>
    #
    #   Enum, one of: ["STREAM_CREATE_IN_PROGRESS", "STREAM_READY", "STREAM_DELETE_IN_PROGRESS", "STREAM_DELETED", "INTERNAL_ERROR", "NETWORK_CONNECTION_ERROR"]
    #
    #   @return [String]
    #
    # @!attribute stream_id
    #   <p>The stream ID.</p>
    #
    #   @return [String]
    #
    # @!attribute url
    #   <p>The URL to connect to this stream using the DCV client.</p>
    #
    #   @return [String]
    #
    StreamingSessionStream = ::Struct.new(
      :created_at,
      :created_by,
      :expires_at,
      :owned_by,
      :state,
      :status_code,
      :stream_id,
      :url,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Nimble::Types::StreamingSessionStream "\
          "created_at=#{created_at || 'nil'}, "\
          "created_by=#{created_by || 'nil'}, "\
          "expires_at=#{expires_at || 'nil'}, "\
          "owned_by=#{owned_by || 'nil'}, "\
          "state=#{state || 'nil'}, "\
          "status_code=#{status_code || 'nil'}, "\
          "stream_id=#{stream_id || 'nil'}, "\
          "url=\"[SENSITIVE]\">"
      end
    end

    # Includes enum constants for StreamingSessionStreamState
    #
    module StreamingSessionStreamState
      # No documentation available.
      #
      READY = "READY"

      # No documentation available.
      #
      CREATE_IN_PROGRESS = "CREATE_IN_PROGRESS"

      # No documentation available.
      #
      DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS"

      # No documentation available.
      #
      DELETED = "DELETED"

      # No documentation available.
      #
      CREATE_FAILED = "CREATE_FAILED"

      # No documentation available.
      #
      DELETE_FAILED = "DELETE_FAILED"
    end

    # Includes enum constants for StreamingSessionStreamStatusCode
    #
    module StreamingSessionStreamStatusCode
      # No documentation available.
      #
      STREAM_CREATE_IN_PROGRESS = "STREAM_CREATE_IN_PROGRESS"

      # No documentation available.
      #
      STREAM_READY = "STREAM_READY"

      # No documentation available.
      #
      STREAM_DELETE_IN_PROGRESS = "STREAM_DELETE_IN_PROGRESS"

      # No documentation available.
      #
      STREAM_DELETED = "STREAM_DELETED"

      # No documentation available.
      #
      INTERNAL_ERROR = "INTERNAL_ERROR"

      # No documentation available.
      #
      NETWORK_CONNECTION_ERROR = "NETWORK_CONNECTION_ERROR"
    end

    # <p>Represents a studio resource.</p>
    #         <p>A studio is the core resource used with Nimble Studio. You must create a studio
    #             first, before any other resource type can be created. All other resources you create and
    #             manage in Nimble Studio are contained within a studio.</p>
    #         <p>When creating a studio, you must provides two IAM roles for use with the Nimble Studio portal. These roles are assumed by your users when they log in to the
    #                 Nimble Studio portal via Amazon Web Services SSO and your identity source.</p>
    #         <p>The user role must have the AmazonNimbleStudio-StudioUser managed policy attached for
    #             the portal to function properly.</p>
    #         <p>The admin role must have the AmazonNimbleStudio-StudioAdmin managed policy attached
    #             for the portal to function properly.</p>
    #         <p>Your studio roles must trust the identity.nimble.amazonaws.com service principal to
    #             function properly.</p>
    #
    # @!attribute admin_role_arn
    #   <p>The IAM role that studio admins assume when logging in to the Nimble Studio
    #               portal.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) that is assigned to a studio resource and uniquely
    #               identifies it. ARNs are unique across all Regions.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The Unix epoch timestamp in seconds for when the resource was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute display_name
    #   <p>A friendly name for the studio.</p>
    #
    #   @return [String]
    #
    # @!attribute home_region
    #   <p>The Amazon Web Services Region where the studio resource is located.</p>
    #
    #   @return [String]
    #
    # @!attribute sso_client_id
    #   <p>The Amazon Web Services SSO application client ID used to integrate with Amazon Web Services SSO
    #               to enable Amazon Web Services SSO users to log in to Nimble Studio portal.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The current state of the studio resource.</p>
    #
    #   Enum, one of: ["CREATE_IN_PROGRESS", "READY", "UPDATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "DELETED", "DELETE_FAILED", "CREATE_FAILED", "UPDATE_FAILED"]
    #
    #   @return [String]
    #
    # @!attribute status_code
    #   <p>Status codes that provide additional detail on the studio state.</p>
    #
    #   Enum, one of: ["STUDIO_CREATED", "STUDIO_DELETED", "STUDIO_UPDATED", "STUDIO_CREATE_IN_PROGRESS", "STUDIO_UPDATE_IN_PROGRESS", "STUDIO_DELETE_IN_PROGRESS", "STUDIO_WITH_LAUNCH_PROFILES_NOT_DELETED", "STUDIO_WITH_STUDIO_COMPONENTS_NOT_DELETED", "STUDIO_WITH_STREAMING_IMAGES_NOT_DELETED", "AWS_SSO_NOT_ENABLED", "AWS_SSO_ACCESS_DENIED", "ROLE_NOT_OWNED_BY_STUDIO_OWNER", "ROLE_COULD_NOT_BE_ASSUMED", "INTERNAL_ERROR", "ENCRYPTION_KEY_NOT_FOUND", "ENCRYPTION_KEY_ACCESS_DENIED", "AWS_SSO_CONFIGURATION_REPAIRED", "AWS_SSO_CONFIGURATION_REPAIR_IN_PROGRESS"]
    #
    #   @return [String]
    #
    # @!attribute status_message
    #   <p>Additional detail on the studio state.</p>
    #
    #   @return [String]
    #
    # @!attribute studio_encryption_configuration
    #   <p>Configuration of the encryption method that is used for the studio.</p>
    #
    #   @return [StudioEncryptionConfiguration]
    #
    # @!attribute studio_id
    #   <p>The unique identifier for a studio resource. In Nimble Studio, all other
    #               resources are contained in a studio resource.</p>
    #
    #   @return [String]
    #
    # @!attribute studio_name
    #   <p>The name of the studio, as included in the URL when accessing it in the Nimble Studio portal.</p>
    #
    #   @return [String]
    #
    # @!attribute studio_url
    #   <p>The address of the web page for the studio.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A collection of labels, in the form of key:value pairs, that apply to this
    #               resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute updated_at
    #   <p>The Unix epoch timestamp in seconds for when the resource was updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute user_role_arn
    #   <p>The IAM role that studio users assume when logging in to the Nimble Studio
    #               portal.</p>
    #
    #   @return [String]
    #
    Studio = ::Struct.new(
      :admin_role_arn,
      :arn,
      :created_at,
      :display_name,
      :home_region,
      :sso_client_id,
      :state,
      :status_code,
      :status_message,
      :studio_encryption_configuration,
      :studio_id,
      :studio_name,
      :studio_url,
      :tags,
      :updated_at,
      :user_role_arn,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Nimble::Types::Studio "\
          "admin_role_arn=#{admin_role_arn || 'nil'}, "\
          "arn=#{arn || 'nil'}, "\
          "created_at=#{created_at || 'nil'}, "\
          "display_name=\"[SENSITIVE]\", "\
          "home_region=#{home_region || 'nil'}, "\
          "sso_client_id=#{sso_client_id || 'nil'}, "\
          "state=#{state || 'nil'}, "\
          "status_code=#{status_code || 'nil'}, "\
          "status_message=#{status_message || 'nil'}, "\
          "studio_encryption_configuration=#{studio_encryption_configuration || 'nil'}, "\
          "studio_id=#{studio_id || 'nil'}, "\
          "studio_name=#{studio_name || 'nil'}, "\
          "studio_url=#{studio_url || 'nil'}, "\
          "tags=#{tags || 'nil'}, "\
          "updated_at=#{updated_at || 'nil'}, "\
          "user_role_arn=#{user_role_arn || 'nil'}>"
      end
    end

    # <p>A studio component represents a network resource to be used by a studio's users and
    #             workflows. A typical studio contains studio components for each of the following: render
    #             farm, Active Directory, licensing, and file system.</p>
    #         <p>Access to a studio component is managed by specifying security groups for the
    #             resource, as well as its endpoint.</p>
    #         <p>A studio component also has a set of initialization scripts that are returned by
    #                 <code>GetLaunchProfileInitialization</code>. These initialization scripts run on
    #             streaming sessions when they start. They provide users with flexibility in controlling
    #             how the studio resources are configured on a streaming session.</p>
    #
    # @!attribute arn
    #   <p>The ARN of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute configuration
    #   <p>The configuration of the studio component, based on component type.</p>
    #
    #   @return [StudioComponentConfiguration]
    #
    # @!attribute created_at
    #   <p>The Unix epoch timestamp in seconds for when the resource was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute created_by
    #   <p>The user ID of the user that created the studio component.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A human-readable description for the studio component resource.</p>
    #
    #   @return [String]
    #
    # @!attribute ec2_security_group_ids
    #   <p>The EC2 security groups that control access to the studio component.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute initialization_scripts
    #   <p>Initialization scripts for studio components.</p>
    #
    #   @return [Array<StudioComponentInitializationScript>]
    #
    # @!attribute name
    #   <p>A friendly name for the studio component resource.</p>
    #
    #   @return [String]
    #
    # @!attribute script_parameters
    #   <p>Parameters for the studio component scripts.</p>
    #
    #   @return [Array<ScriptParameterKeyValue>]
    #
    # @!attribute state
    #   <p>The current state.</p>
    #
    #   Enum, one of: ["CREATE_IN_PROGRESS", "READY", "UPDATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "DELETED", "DELETE_FAILED", "CREATE_FAILED", "UPDATE_FAILED"]
    #
    #   @return [String]
    #
    # @!attribute status_code
    #   <p>The status code.</p>
    #
    #   Enum, one of: ["ACTIVE_DIRECTORY_ALREADY_EXISTS", "STUDIO_COMPONENT_CREATED", "STUDIO_COMPONENT_UPDATED", "STUDIO_COMPONENT_DELETED", "ENCRYPTION_KEY_ACCESS_DENIED", "ENCRYPTION_KEY_NOT_FOUND", "STUDIO_COMPONENT_CREATE_IN_PROGRESS", "STUDIO_COMPONENT_UPDATE_IN_PROGRESS", "STUDIO_COMPONENT_DELETE_IN_PROGRESS", "INTERNAL_ERROR"]
    #
    #   @return [String]
    #
    # @!attribute status_message
    #   <p>The status message for the studio component.</p>
    #
    #   @return [String]
    #
    # @!attribute studio_component_id
    #   <p>The unique identifier for a studio component resource.</p>
    #
    #   @return [String]
    #
    # @!attribute subtype
    #   <p>The specific subtype of a studio component.</p>
    #
    #   Enum, one of: ["AWS_MANAGED_MICROSOFT_AD", "AMAZON_FSX_FOR_WINDOWS", "AMAZON_FSX_FOR_LUSTRE", "CUSTOM"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A collection of labels, in the form of key:value pairs, that apply to this
    #               resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute type
    #   <p>The type of the studio component.</p>
    #
    #   Enum, one of: ["ACTIVE_DIRECTORY", "SHARED_FILE_SYSTEM", "COMPUTE_FARM", "LICENSE_SERVICE", "CUSTOM"]
    #
    #   @return [String]
    #
    # @!attribute updated_at
    #   <p>The Unix epoch timestamp in seconds for when the resource was updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute updated_by
    #   <p>The user ID of the user that most recently updated the resource.</p>
    #
    #   @return [String]
    #
    StudioComponent = ::Struct.new(
      :arn,
      :configuration,
      :created_at,
      :created_by,
      :description,
      :ec2_security_group_ids,
      :initialization_scripts,
      :name,
      :script_parameters,
      :state,
      :status_code,
      :status_message,
      :studio_component_id,
      :subtype,
      :tags,
      :type,
      :updated_at,
      :updated_by,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Nimble::Types::StudioComponent "\
          "arn=#{arn || 'nil'}, "\
          "configuration=#{configuration || 'nil'}, "\
          "created_at=#{created_at || 'nil'}, "\
          "created_by=#{created_by || 'nil'}, "\
          "description=\"[SENSITIVE]\", "\
          "ec2_security_group_ids=#{ec2_security_group_ids || 'nil'}, "\
          "initialization_scripts=#{initialization_scripts || 'nil'}, "\
          "name=\"[SENSITIVE]\", "\
          "script_parameters=\"[SENSITIVE]\", "\
          "state=#{state || 'nil'}, "\
          "status_code=#{status_code || 'nil'}, "\
          "status_message=#{status_message || 'nil'}, "\
          "studio_component_id=#{studio_component_id || 'nil'}, "\
          "subtype=#{subtype || 'nil'}, "\
          "tags=#{tags || 'nil'}, "\
          "type=#{type || 'nil'}, "\
          "updated_at=#{updated_at || 'nil'}, "\
          "updated_by=#{updated_by || 'nil'}>"
      end
    end

    # <p>The configuration of the studio component, based on component type.</p>
    #
    class StudioComponentConfiguration < Hearth::Union
      # <p>The configuration for a Microsoft Active Directory (Microsoft AD) studio
      #             resource.</p>
      #
      class ActiveDirectoryConfiguration < StudioComponentConfiguration
        def to_h
          { active_directory_configuration: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::Nimble::Types::ActiveDirectoryConfiguration #{__getobj__ || 'nil'}>"
        end
      end

      # <p>The configuration for a render farm that is associated with a studio resource.</p>
      #
      class ComputeFarmConfiguration < StudioComponentConfiguration
        def to_h
          { compute_farm_configuration: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::Nimble::Types::ComputeFarmConfiguration #{__getobj__ || 'nil'}>"
        end
      end

      # <p>The configuration for a license service that is associated with a studio
      #             resource.</p>
      #
      class LicenseServiceConfiguration < StudioComponentConfiguration
        def to_h
          { license_service_configuration: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::Nimble::Types::LicenseServiceConfiguration #{__getobj__ || 'nil'}>"
        end
      end

      # <p>The configuration for a shared file storage system that is associated with a studio
      #             resource.</p>
      #
      class SharedFileSystemConfiguration < StudioComponentConfiguration
        def to_h
          { shared_file_system_configuration: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::Nimble::Types::SharedFileSystemConfiguration #{__getobj__ || 'nil'}>"
        end
      end

      # Handles unknown future members
      #
      class Unknown < StudioComponentConfiguration
        def to_h
          { unknown: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::Nimble::Types::Unknown #{__getobj__ || 'nil'}>"
        end
      end
    end

    # <p>Initialization scripts for studio components.</p>
    #
    # @!attribute launch_profile_protocol_version
    #   <p>The version number of the protocol that is used by the launch profile. The only valid
    #               version is "2021-03-31".</p>
    #
    #   @return [String]
    #
    # @!attribute platform
    #   <p>The platform of the initialization script, either WINDOWS or LINUX.</p>
    #
    #   Enum, one of: ["LINUX", "WINDOWS"]
    #
    #   @return [String]
    #
    # @!attribute run_context
    #   <p>The method to use when running the initialization script.</p>
    #
    #   Enum, one of: ["SYSTEM_INITIALIZATION", "USER_INITIALIZATION"]
    #
    #   @return [String]
    #
    # @!attribute script
    #   <p>The initialization script.</p>
    #
    #   @return [String]
    #
    StudioComponentInitializationScript = ::Struct.new(
      :launch_profile_protocol_version,
      :platform,
      :run_context,
      :script,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Nimble::Types::StudioComponentInitializationScript "\
          "launch_profile_protocol_version=#{launch_profile_protocol_version || 'nil'}, "\
          "platform=#{platform || 'nil'}, "\
          "run_context=#{run_context || 'nil'}, "\
          "script=\"[SENSITIVE]\">"
      end
    end

    # Includes enum constants for StudioComponentInitializationScriptRunContext
    #
    module StudioComponentInitializationScriptRunContext
      # No documentation available.
      #
      SYSTEM_INITIALIZATION = "SYSTEM_INITIALIZATION"

      # No documentation available.
      #
      USER_INITIALIZATION = "USER_INITIALIZATION"
    end

    # Includes enum constants for StudioComponentState
    #
    module StudioComponentState
      # No documentation available.
      #
      CREATE_IN_PROGRESS = "CREATE_IN_PROGRESS"

      # No documentation available.
      #
      READY = "READY"

      # No documentation available.
      #
      UPDATE_IN_PROGRESS = "UPDATE_IN_PROGRESS"

      # No documentation available.
      #
      DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS"

      # No documentation available.
      #
      DELETED = "DELETED"

      # No documentation available.
      #
      DELETE_FAILED = "DELETE_FAILED"

      # No documentation available.
      #
      CREATE_FAILED = "CREATE_FAILED"

      # No documentation available.
      #
      UPDATE_FAILED = "UPDATE_FAILED"
    end

    # Includes enum constants for StudioComponentStatusCode
    #
    module StudioComponentStatusCode
      # No documentation available.
      #
      ACTIVE_DIRECTORY_ALREADY_EXISTS = "ACTIVE_DIRECTORY_ALREADY_EXISTS"

      # No documentation available.
      #
      STUDIO_COMPONENT_CREATED = "STUDIO_COMPONENT_CREATED"

      # No documentation available.
      #
      STUDIO_COMPONENT_UPDATED = "STUDIO_COMPONENT_UPDATED"

      # No documentation available.
      #
      STUDIO_COMPONENT_DELETED = "STUDIO_COMPONENT_DELETED"

      # No documentation available.
      #
      ENCRYPTION_KEY_ACCESS_DENIED = "ENCRYPTION_KEY_ACCESS_DENIED"

      # No documentation available.
      #
      ENCRYPTION_KEY_NOT_FOUND = "ENCRYPTION_KEY_NOT_FOUND"

      # No documentation available.
      #
      STUDIO_COMPONENT_CREATE_IN_PROGRESS = "STUDIO_COMPONENT_CREATE_IN_PROGRESS"

      # No documentation available.
      #
      STUDIO_COMPONENT_UPDATE_IN_PROGRESS = "STUDIO_COMPONENT_UPDATE_IN_PROGRESS"

      # No documentation available.
      #
      STUDIO_COMPONENT_DELETE_IN_PROGRESS = "STUDIO_COMPONENT_DELETE_IN_PROGRESS"

      # No documentation available.
      #
      INTERNAL_ERROR = "INTERNAL_ERROR"
    end

    # Includes enum constants for StudioComponentSubtype
    #
    module StudioComponentSubtype
      # No documentation available.
      #
      AWS_MANAGED_MICROSOFT_AD = "AWS_MANAGED_MICROSOFT_AD"

      # No documentation available.
      #
      AMAZON_FSX_FOR_WINDOWS = "AMAZON_FSX_FOR_WINDOWS"

      # No documentation available.
      #
      AMAZON_FSX_FOR_LUSTRE = "AMAZON_FSX_FOR_LUSTRE"

      # No documentation available.
      #
      CUSTOM = "CUSTOM"
    end

    # <p>The studio component's summary.</p>
    #
    # @!attribute created_at
    #   <p>The Unix epoch timestamp in seconds for when the resource was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute created_by
    #   <p>The user ID of the user that created the studio component.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name for the studio component.</p>
    #
    #   @return [String]
    #
    # @!attribute studio_component_id
    #   <p>The unique identifier for a studio component resource.</p>
    #
    #   @return [String]
    #
    # @!attribute subtype
    #   <p>The specific subtype of a studio component.</p>
    #
    #   Enum, one of: ["AWS_MANAGED_MICROSOFT_AD", "AMAZON_FSX_FOR_WINDOWS", "AMAZON_FSX_FOR_LUSTRE", "CUSTOM"]
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of the studio component.</p>
    #
    #   Enum, one of: ["ACTIVE_DIRECTORY", "SHARED_FILE_SYSTEM", "COMPUTE_FARM", "LICENSE_SERVICE", "CUSTOM"]
    #
    #   @return [String]
    #
    # @!attribute updated_at
    #   <p>The Unix epoch timestamp in seconds for when the resource was updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute updated_by
    #   <p>The user ID of the user that most recently updated the resource.</p>
    #
    #   @return [String]
    #
    StudioComponentSummary = ::Struct.new(
      :created_at,
      :created_by,
      :description,
      :name,
      :studio_component_id,
      :subtype,
      :type,
      :updated_at,
      :updated_by,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Nimble::Types::StudioComponentSummary "\
          "created_at=#{created_at || 'nil'}, "\
          "created_by=#{created_by || 'nil'}, "\
          "description=\"[SENSITIVE]\", "\
          "name=\"[SENSITIVE]\", "\
          "studio_component_id=#{studio_component_id || 'nil'}, "\
          "subtype=#{subtype || 'nil'}, "\
          "type=#{type || 'nil'}, "\
          "updated_at=#{updated_at || 'nil'}, "\
          "updated_by=#{updated_by || 'nil'}>"
      end
    end

    # Includes enum constants for StudioComponentType
    #
    module StudioComponentType
      # No documentation available.
      #
      ACTIVE_DIRECTORY = "ACTIVE_DIRECTORY"

      # No documentation available.
      #
      SHARED_FILE_SYSTEM = "SHARED_FILE_SYSTEM"

      # No documentation available.
      #
      COMPUTE_FARM = "COMPUTE_FARM"

      # No documentation available.
      #
      LICENSE_SERVICE = "LICENSE_SERVICE"

      # No documentation available.
      #
      CUSTOM = "CUSTOM"
    end

    # <p>Configuration of the encryption method that is used for the studio.</p>
    #
    # @!attribute key_arn
    #   <p>The ARN for a KMS key that is used to encrypt studio data.</p>
    #
    #   @return [String]
    #
    # @!attribute key_type
    #   <p>The type of KMS key that is used to encrypt studio data.</p>
    #
    #   Enum, one of: ["AWS_OWNED_KEY", "CUSTOMER_MANAGED_KEY"]
    #
    #   @return [String]
    #
    StudioEncryptionConfiguration = ::Struct.new(
      :key_arn,
      :key_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for StudioEncryptionConfigurationKeyType
    #
    module StudioEncryptionConfigurationKeyType
      # No documentation available.
      #
      AWS_OWNED_KEY = "AWS_OWNED_KEY"

      # No documentation available.
      #
      CUSTOMER_MANAGED_KEY = "CUSTOMER_MANAGED_KEY"
    end

    # <p>A studio member is an association of a user from your studio identity source to
    #             elevated permissions that they are granted in the studio.</p>
    #         <p>When you add a user to your studio using the Nimble Studio console, they are
    #             given access to the studio's AWS SSO application and are given access to log in to the
    #                 Nimble Studio portal. These users have the permissions provided by the studio's
    #             user IAM role and do not appear in the studio membership collection. Only studio admins
    #             appear in studio membership.</p>
    #         <p>When you add a user to studio membership with the persona ADMIN, upon logging in to
    #             the Nimble Studio portal, they are granted permissions specified by the Studio's
    #             Admin IAM role.</p>
    #
    # @!attribute identity_store_id
    #   <p>The ID of the identity store.</p>
    #
    #   @return [String]
    #
    # @!attribute persona
    #   <p>The persona.</p>
    #
    #   Enum, one of: ["ADMINISTRATOR"]
    #
    #   @return [String]
    #
    # @!attribute principal_id
    #   <p>The principal ID.</p>
    #
    #   @return [String]
    #
    # @!attribute sid
    #   <p>The Active Directory Security Identifier for this user, if available.</p>
    #
    #   @return [String]
    #
    StudioMembership = ::Struct.new(
      :identity_store_id,
      :persona,
      :principal_id,
      :sid,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for StudioPersona
    #
    module StudioPersona
      # No documentation available.
      #
      ADMINISTRATOR = "ADMINISTRATOR"
    end

    # Includes enum constants for StudioState
    #
    module StudioState
      # No documentation available.
      #
      CREATE_IN_PROGRESS = "CREATE_IN_PROGRESS"

      # No documentation available.
      #
      READY = "READY"

      # No documentation available.
      #
      UPDATE_IN_PROGRESS = "UPDATE_IN_PROGRESS"

      # No documentation available.
      #
      DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS"

      # No documentation available.
      #
      DELETED = "DELETED"

      # No documentation available.
      #
      DELETE_FAILED = "DELETE_FAILED"

      # No documentation available.
      #
      CREATE_FAILED = "CREATE_FAILED"

      # No documentation available.
      #
      UPDATE_FAILED = "UPDATE_FAILED"
    end

    # Includes enum constants for StudioStatusCode
    #
    module StudioStatusCode
      # No documentation available.
      #
      STUDIO_CREATED = "STUDIO_CREATED"

      # No documentation available.
      #
      STUDIO_DELETED = "STUDIO_DELETED"

      # No documentation available.
      #
      STUDIO_UPDATED = "STUDIO_UPDATED"

      # No documentation available.
      #
      STUDIO_CREATE_IN_PROGRESS = "STUDIO_CREATE_IN_PROGRESS"

      # No documentation available.
      #
      STUDIO_UPDATE_IN_PROGRESS = "STUDIO_UPDATE_IN_PROGRESS"

      # No documentation available.
      #
      STUDIO_DELETE_IN_PROGRESS = "STUDIO_DELETE_IN_PROGRESS"

      # No documentation available.
      #
      STUDIO_WITH_LAUNCH_PROFILES_NOT_DELETED = "STUDIO_WITH_LAUNCH_PROFILES_NOT_DELETED"

      # No documentation available.
      #
      STUDIO_WITH_STUDIO_COMPONENTS_NOT_DELETED = "STUDIO_WITH_STUDIO_COMPONENTS_NOT_DELETED"

      # No documentation available.
      #
      STUDIO_WITH_STREAMING_IMAGES_NOT_DELETED = "STUDIO_WITH_STREAMING_IMAGES_NOT_DELETED"

      # No documentation available.
      #
      AWS_SSO_NOT_ENABLED = "AWS_SSO_NOT_ENABLED"

      # No documentation available.
      #
      AWS_SSO_ACCESS_DENIED = "AWS_SSO_ACCESS_DENIED"

      # No documentation available.
      #
      ROLE_NOT_OWNED_BY_STUDIO_OWNER = "ROLE_NOT_OWNED_BY_STUDIO_OWNER"

      # No documentation available.
      #
      ROLE_COULD_NOT_BE_ASSUMED = "ROLE_COULD_NOT_BE_ASSUMED"

      # No documentation available.
      #
      INTERNAL_ERROR = "INTERNAL_ERROR"

      # No documentation available.
      #
      ENCRYPTION_KEY_NOT_FOUND = "ENCRYPTION_KEY_NOT_FOUND"

      # No documentation available.
      #
      ENCRYPTION_KEY_ACCESS_DENIED = "ENCRYPTION_KEY_ACCESS_DENIED"

      # No documentation available.
      #
      AWS_SSO_CONFIGURATION_REPAIRED = "AWS_SSO_CONFIGURATION_REPAIRED"

      # No documentation available.
      #
      AWS_SSO_CONFIGURATION_REPAIR_IN_PROGRESS = "AWS_SSO_CONFIGURATION_REPAIR_IN_PROGRESS"
    end

    # @!attribute resource_arn
    #   <p> The Amazon Resource Name (ARN) of the resource you want to add tags to. </p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A collection of labels, in the form of key:value pairs, that apply to this
    #               resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    TagResourceInput = ::Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    TagResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request throughput limit was exceeded.</p>
    #
    # @!attribute code
    #   <p>A more specific error code.</p>
    #
    #   @return [String]
    #
    # @!attribute context
    #   <p>The exception context.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute message
    #   <p>A human-readable description of the error.</p>
    #
    #   @return [String]
    #
    ThrottlingException = ::Struct.new(
      :code,
      :context,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>Identifies the Amazon Resource Name(ARN) key from which you are removing tags. </p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>One or more tag keys. Specify only the tag keys, not the tag values.</p>
    #
    #   @return [Array<String>]
    #
    UntagResourceInput = ::Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UntagResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If you don’t specify a client token, the AWS SDK automatically generates a
    #               client token and uses it for the request to ensure idempotency.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description.</p>
    #
    #   @return [String]
    #
    # @!attribute launch_profile_id
    #   <p>The Launch Profile ID.</p>
    #
    #   @return [String]
    #
    # @!attribute launch_profile_protocol_versions
    #   <p>The version number of the protocol that is used by the launch profile. The only valid
    #               version is "2021-03-31".</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute name
    #   <p>The name for the launch profile.</p>
    #
    #   @return [String]
    #
    # @!attribute stream_configuration
    #   <p>A configuration for a streaming session.</p>
    #
    #   @return [StreamConfigurationCreate]
    #
    # @!attribute studio_component_ids
    #   <p>Unique identifiers for a collection of studio components that can be used with this
    #               launch profile.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute studio_id
    #   <p>The studio ID. </p>
    #
    #   @return [String]
    #
    UpdateLaunchProfileInput = ::Struct.new(
      :client_token,
      :description,
      :launch_profile_id,
      :launch_profile_protocol_versions,
      :name,
      :stream_configuration,
      :studio_component_ids,
      :studio_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Nimble::Types::UpdateLaunchProfileInput "\
          "client_token=#{client_token || 'nil'}, "\
          "description=\"[SENSITIVE]\", "\
          "launch_profile_id=#{launch_profile_id || 'nil'}, "\
          "launch_profile_protocol_versions=#{launch_profile_protocol_versions || 'nil'}, "\
          "name=\"[SENSITIVE]\", "\
          "stream_configuration=#{stream_configuration || 'nil'}, "\
          "studio_component_ids=#{studio_component_ids || 'nil'}, "\
          "studio_id=#{studio_id || 'nil'}>"
      end
    end

    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If you don’t specify a client token, the AWS SDK automatically generates a
    #               client token and uses it for the request to ensure idempotency.</p>
    #
    #   @return [String]
    #
    # @!attribute launch_profile_id
    #   <p>The Launch Profile ID.</p>
    #
    #   @return [String]
    #
    # @!attribute persona
    #   <p>The persona.</p>
    #
    #   Enum, one of: ["USER"]
    #
    #   @return [String]
    #
    # @!attribute principal_id
    #   <p>The principal ID. This currently supports a Amazon Web Services SSO UserId. </p>
    #
    #   @return [String]
    #
    # @!attribute studio_id
    #   <p>The studio ID. </p>
    #
    #   @return [String]
    #
    UpdateLaunchProfileMemberInput = ::Struct.new(
      :client_token,
      :launch_profile_id,
      :persona,
      :principal_id,
      :studio_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute member
    #   <p>The updated member. </p>
    #
    #   @return [LaunchProfileMembership]
    #
    UpdateLaunchProfileMemberOutput = ::Struct.new(
      :member,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute launch_profile
    #   <p>The launch profile.</p>
    #
    #   @return [LaunchProfile]
    #
    UpdateLaunchProfileOutput = ::Struct.new(
      :launch_profile,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If you don’t specify a client token, the AWS SDK automatically generates a
    #               client token and uses it for the request to ensure idempotency.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name for the streaming image.</p>
    #
    #   @return [String]
    #
    # @!attribute streaming_image_id
    #   <p>The streaming image ID.</p>
    #
    #   @return [String]
    #
    # @!attribute studio_id
    #   <p>The studio ID. </p>
    #
    #   @return [String]
    #
    UpdateStreamingImageInput = ::Struct.new(
      :client_token,
      :description,
      :name,
      :streaming_image_id,
      :studio_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Nimble::Types::UpdateStreamingImageInput "\
          "client_token=#{client_token || 'nil'}, "\
          "description=\"[SENSITIVE]\", "\
          "name=\"[SENSITIVE]\", "\
          "streaming_image_id=#{streaming_image_id || 'nil'}, "\
          "studio_id=#{studio_id || 'nil'}>"
      end
    end

    # @!attribute streaming_image
    #   <p>Represents a streaming image resource.</p>
    #           <p>Streaming images are used by studio users to select which operating system and
    #               software they want to use in a Nimble Studio streaming session.</p>
    #           <p>Amazon provides a number of streaming images that include popular 3rd-party
    #               software.</p>
    #           <p>You can create your own streaming images using an Amazon Elastic Compute Cloud (Amazon
    #               EC2) machine image that you create for this purpose. You can also include software that
    #               your users require.</p>
    #
    #   @return [StreamingImage]
    #
    UpdateStreamingImageOutput = ::Struct.new(
      :streaming_image,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If you don’t specify a client token, the AWS SDK automatically generates a
    #               client token and uses it for the request to ensure idempotency.</p>
    #
    #   @return [String]
    #
    # @!attribute configuration
    #   <p>The configuration of the studio component, based on component type.</p>
    #
    #   @return [StudioComponentConfiguration]
    #
    # @!attribute description
    #   <p>The description.</p>
    #
    #   @return [String]
    #
    # @!attribute ec2_security_group_ids
    #   <p>The EC2 security groups that control access to the studio component.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute initialization_scripts
    #   <p>Initialization scripts for studio components.</p>
    #
    #   @return [Array<StudioComponentInitializationScript>]
    #
    # @!attribute name
    #   <p>The name for the studio component.</p>
    #
    #   @return [String]
    #
    # @!attribute script_parameters
    #   <p>Parameters for the studio component scripts.</p>
    #
    #   @return [Array<ScriptParameterKeyValue>]
    #
    # @!attribute studio_component_id
    #   <p>The studio component ID.</p>
    #
    #   @return [String]
    #
    # @!attribute studio_id
    #   <p>The studio ID. </p>
    #
    #   @return [String]
    #
    # @!attribute subtype
    #   <p>The specific subtype of a studio component.</p>
    #
    #   Enum, one of: ["AWS_MANAGED_MICROSOFT_AD", "AMAZON_FSX_FOR_WINDOWS", "AMAZON_FSX_FOR_LUSTRE", "CUSTOM"]
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of the studio component.</p>
    #
    #   Enum, one of: ["ACTIVE_DIRECTORY", "SHARED_FILE_SYSTEM", "COMPUTE_FARM", "LICENSE_SERVICE", "CUSTOM"]
    #
    #   @return [String]
    #
    UpdateStudioComponentInput = ::Struct.new(
      :client_token,
      :configuration,
      :description,
      :ec2_security_group_ids,
      :initialization_scripts,
      :name,
      :script_parameters,
      :studio_component_id,
      :studio_id,
      :subtype,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Nimble::Types::UpdateStudioComponentInput "\
          "client_token=#{client_token || 'nil'}, "\
          "configuration=#{configuration || 'nil'}, "\
          "description=\"[SENSITIVE]\", "\
          "ec2_security_group_ids=#{ec2_security_group_ids || 'nil'}, "\
          "initialization_scripts=#{initialization_scripts || 'nil'}, "\
          "name=\"[SENSITIVE]\", "\
          "script_parameters=\"[SENSITIVE]\", "\
          "studio_component_id=#{studio_component_id || 'nil'}, "\
          "studio_id=#{studio_id || 'nil'}, "\
          "subtype=#{subtype || 'nil'}, "\
          "type=#{type || 'nil'}>"
      end
    end

    # @!attribute studio_component
    #   <p>Information about the studio component.</p>
    #
    #   @return [StudioComponent]
    #
    UpdateStudioComponentOutput = ::Struct.new(
      :studio_component,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute admin_role_arn
    #   <p>The IAM role that Studio Admins will assume when logging in to the Nimble Studio
    #               portal.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If you don’t specify a client token, the AWS SDK automatically generates a
    #               client token and uses it for the request to ensure idempotency.</p>
    #
    #   @return [String]
    #
    # @!attribute display_name
    #   <p>A friendly name for the studio.</p>
    #
    #   @return [String]
    #
    # @!attribute studio_id
    #   <p>The studio ID. </p>
    #
    #   @return [String]
    #
    # @!attribute user_role_arn
    #   <p>The IAM role that Studio Users will assume when logging in to the Nimble Studio
    #               portal.</p>
    #
    #   @return [String]
    #
    UpdateStudioInput = ::Struct.new(
      :admin_role_arn,
      :client_token,
      :display_name,
      :studio_id,
      :user_role_arn,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Nimble::Types::UpdateStudioInput "\
          "admin_role_arn=#{admin_role_arn || 'nil'}, "\
          "client_token=#{client_token || 'nil'}, "\
          "display_name=\"[SENSITIVE]\", "\
          "studio_id=#{studio_id || 'nil'}, "\
          "user_role_arn=#{user_role_arn || 'nil'}>"
      end
    end

    # @!attribute studio
    #   <p>Information about a studio.</p>
    #
    #   @return [Studio]
    #
    UpdateStudioOutput = ::Struct.new(
      :studio,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>One of the parameters in the request is invalid.</p>
    #
    # @!attribute code
    #   <p>A more specific error code.</p>
    #
    #   @return [String]
    #
    # @!attribute context
    #   <p>The exception context.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute message
    #   <p>A human-readable description of the error.</p>
    #
    #   @return [String]
    #
    ValidationException = ::Struct.new(
      :code,
      :context,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The launch profile validation result.</p>
    #
    # @!attribute type
    #   <p>The type of the validation result.</p>
    #
    #   Enum, one of: ["VALIDATE_ACTIVE_DIRECTORY_STUDIO_COMPONENT", "VALIDATE_SUBNET_ASSOCIATION", "VALIDATE_NETWORK_ACL_ASSOCIATION", "VALIDATE_SECURITY_GROUP_ASSOCIATION"]
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The current state.</p>
    #
    #   Enum, one of: ["VALIDATION_NOT_STARTED", "VALIDATION_IN_PROGRESS", "VALIDATION_SUCCESS", "VALIDATION_FAILED", "VALIDATION_FAILED_INTERNAL_SERVER_ERROR"]
    #
    #   @return [String]
    #
    # @!attribute status_code
    #   <p>The status code. This will contain the failure reason if the state is
    #                   <code>VALIDATION_FAILED</code>.</p>
    #
    #   Enum, one of: ["VALIDATION_NOT_STARTED", "VALIDATION_IN_PROGRESS", "VALIDATION_SUCCESS", "VALIDATION_FAILED_INVALID_SUBNET_ROUTE_TABLE_ASSOCIATION", "VALIDATION_FAILED_SUBNET_NOT_FOUND", "VALIDATION_FAILED_INVALID_SECURITY_GROUP_ASSOCIATION", "VALIDATION_FAILED_INVALID_ACTIVE_DIRECTORY", "VALIDATION_FAILED_UNAUTHORIZED", "VALIDATION_FAILED_INTERNAL_SERVER_ERROR"]
    #
    #   @return [String]
    #
    # @!attribute status_message
    #   <p>The status message for the validation result.</p>
    #
    #   @return [String]
    #
    ValidationResult = ::Struct.new(
      :type,
      :state,
      :status_code,
      :status_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
