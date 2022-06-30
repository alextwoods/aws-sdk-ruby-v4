# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::EC2InstanceConnect
  module Validators

    class AuthException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AuthException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class EC2InstanceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EC2InstanceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class EC2InstanceStateInvalidException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EC2InstanceStateInvalidException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class EC2InstanceTypeInvalidException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EC2InstanceTypeInvalidException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidArgsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidArgsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SendSSHPublicKeyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendSSHPublicKeyInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:instance_os_user], ::String, context: "#{context}[:instance_os_user]")
        Hearth::Validator.validate!(input[:ssh_public_key], ::String, context: "#{context}[:ssh_public_key]")
        Hearth::Validator.validate!(input[:availability_zone], ::String, context: "#{context}[:availability_zone]")
      end
    end

    class SendSSHPublicKeyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendSSHPublicKeyOutput, context: context)
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:success], ::TrueClass, ::FalseClass, context: "#{context}[:success]")
      end
    end

    class SendSerialConsoleSSHPublicKeyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendSerialConsoleSSHPublicKeyInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:serial_port], ::Integer, context: "#{context}[:serial_port]")
        Hearth::Validator.validate!(input[:ssh_public_key], ::String, context: "#{context}[:ssh_public_key]")
      end
    end

    class SendSerialConsoleSSHPublicKeyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendSerialConsoleSSHPublicKeyOutput, context: context)
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:success], ::TrueClass, ::FalseClass, context: "#{context}[:success]")
      end
    end

    class SerialConsoleAccessDisabledException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SerialConsoleAccessDisabledException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SerialConsoleSessionLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SerialConsoleSessionLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SerialConsoleSessionUnavailableException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SerialConsoleSessionUnavailableException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ServiceException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottlingException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

  end
end
