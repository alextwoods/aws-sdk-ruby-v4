# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::EC2InstanceConnect
  module Types

    # <p>Either your AWS credentials are not valid or you do not have access to the EC2 instance.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    AuthException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified instance was not found.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    EC2InstanceNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Unable to connect because the instance is not in a valid state.
    #             Connecting to a stopped or terminated instance is not supported. If the instance is stopped,
    #             start your instance, and try to connect again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    EC2InstanceStateInvalidException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The instance type is not supported for connecting via the serial console. Only Nitro
    #             instance types are currently supported.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    EC2InstanceTypeInvalidException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>One of the parameters is not valid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidArgsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The ID of the EC2 instance.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_os_user
    #   <p>The OS user on the EC2 instance for whom the key can be used to authenticate.</p>
    #
    #   @return [String]
    #
    # @!attribute ssh_public_key
    #   <p>The public key material. To use the public key, you must have the matching private key.</p>
    #
    #   @return [String]
    #
    # @!attribute availability_zone
    #   <p>The Availability Zone in which the EC2 instance was launched.</p>
    #
    #   @return [String]
    #
    SendSSHPublicKeyInput = ::Struct.new(
      :instance_id,
      :instance_os_user,
      :ssh_public_key,
      :availability_zone,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute request_id
    #   <p>The ID of the request. Please provide this ID when contacting AWS Support for assistance.</p>
    #
    #   @return [String]
    #
    # @!attribute success
    #   <p>Is true if the request succeeds and an error otherwise.</p>
    #
    #   @return [Boolean]
    #
    SendSSHPublicKeyOutput = ::Struct.new(
      :request_id,
      :success,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.success ||= false
      end

    end

    # @!attribute instance_id
    #   <p>The ID of the EC2 instance.</p>
    #
    #   @return [String]
    #
    # @!attribute serial_port
    #   <p>The serial port of the EC2 instance. Currently only port 0 is supported.</p>
    #           <p>Default: 0</p>
    #
    #   @return [Integer]
    #
    # @!attribute ssh_public_key
    #   <p>The public key material. To use the public key, you must have the matching private
    #               key. For information about the supported key formats and lengths, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html how-to-generate-your-own-key-and-import-it-to-aws">Requirements for key pairs</a> in the <i>Amazon EC2 User
    #               Guide</i>.</p>
    #
    #   @return [String]
    #
    SendSerialConsoleSSHPublicKeyInput = ::Struct.new(
      :instance_id,
      :serial_port,
      :ssh_public_key,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.serial_port ||= 0
      end

    end

    # @!attribute request_id
    #   <p>The ID of the request. Please provide this ID when contacting AWS Support for assistance.</p>
    #
    #   @return [String]
    #
    # @!attribute success
    #   <p>Is true if the request succeeds and an error otherwise.</p>
    #
    #   @return [Boolean]
    #
    SendSerialConsoleSSHPublicKeyOutput = ::Struct.new(
      :request_id,
      :success,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.success ||= false
      end

    end

    # <p>Your account is not authorized to use the EC2 Serial Console. To authorize your
    #             account, run the EnableSerialConsoleAccess API. For more information, see
    #             <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_EnableSerialConsoleAccess.html">EnableSerialConsoleAccess</a> in the <i>Amazon EC2 API Reference</i>.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    SerialConsoleAccessDisabledException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The instance currently has 1 active serial console session. Only 1 session is supported at a time.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    SerialConsoleSessionLimitExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Unable to start a serial console session. Please try again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    SerialConsoleSessionUnavailableException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The service encountered an error. Follow the instructions in the error message and try again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ServiceException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The requests were made too frequently and have been throttled. Wait a while and try again.
    #             To increase the limit on your request frequency, contact AWS Support.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ThrottlingException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
