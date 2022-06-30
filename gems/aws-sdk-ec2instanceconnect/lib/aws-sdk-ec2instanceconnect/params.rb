# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::EC2InstanceConnect
  module Params

    module AuthException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AuthException, context: context)
        type = Types::AuthException.new
        type.message = params[:message]
        type
      end
    end

    module EC2InstanceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EC2InstanceNotFoundException, context: context)
        type = Types::EC2InstanceNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module EC2InstanceStateInvalidException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EC2InstanceStateInvalidException, context: context)
        type = Types::EC2InstanceStateInvalidException.new
        type.message = params[:message]
        type
      end
    end

    module EC2InstanceTypeInvalidException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EC2InstanceTypeInvalidException, context: context)
        type = Types::EC2InstanceTypeInvalidException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidArgsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidArgsException, context: context)
        type = Types::InvalidArgsException.new
        type.message = params[:message]
        type
      end
    end

    module SendSSHPublicKeyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendSSHPublicKeyInput, context: context)
        type = Types::SendSSHPublicKeyInput.new
        type.instance_id = params[:instance_id]
        type.instance_os_user = params[:instance_os_user]
        type.ssh_public_key = params[:ssh_public_key]
        type.availability_zone = params[:availability_zone]
        type
      end
    end

    module SendSSHPublicKeyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendSSHPublicKeyOutput, context: context)
        type = Types::SendSSHPublicKeyOutput.new
        type.request_id = params[:request_id]
        type.success = params[:success]
        type
      end
    end

    module SendSerialConsoleSSHPublicKeyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendSerialConsoleSSHPublicKeyInput, context: context)
        type = Types::SendSerialConsoleSSHPublicKeyInput.new
        type.instance_id = params[:instance_id]
        type.serial_port = params[:serial_port]
        type.ssh_public_key = params[:ssh_public_key]
        type
      end
    end

    module SendSerialConsoleSSHPublicKeyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendSerialConsoleSSHPublicKeyOutput, context: context)
        type = Types::SendSerialConsoleSSHPublicKeyOutput.new
        type.request_id = params[:request_id]
        type.success = params[:success]
        type
      end
    end

    module SerialConsoleAccessDisabledException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SerialConsoleAccessDisabledException, context: context)
        type = Types::SerialConsoleAccessDisabledException.new
        type.message = params[:message]
        type
      end
    end

    module SerialConsoleSessionLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SerialConsoleSessionLimitExceededException, context: context)
        type = Types::SerialConsoleSessionLimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module SerialConsoleSessionUnavailableException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SerialConsoleSessionUnavailableException, context: context)
        type = Types::SerialConsoleSessionUnavailableException.new
        type.message = params[:message]
        type
      end
    end

    module ServiceException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceException, context: context)
        type = Types::ServiceException.new
        type.message = params[:message]
        type
      end
    end

    module ThrottlingException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThrottlingException, context: context)
        type = Types::ThrottlingException.new
        type.message = params[:message]
        type
      end
    end

  end
end
