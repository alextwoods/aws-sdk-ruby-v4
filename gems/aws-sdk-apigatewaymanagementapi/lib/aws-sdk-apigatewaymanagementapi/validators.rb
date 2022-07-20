# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::ApiGatewayManagementApi
  module Validators

    class DeleteConnectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteConnectionInput, context: context)
        Hearth::Validator.validate!(input[:connection_id], ::String, context: "#{context}[:connection_id]")
      end
    end

    class DeleteConnectionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteConnectionOutput, context: context)
      end
    end

    class ForbiddenException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ForbiddenException, context: context)
      end
    end

    class GetConnectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetConnectionInput, context: context)
        Hearth::Validator.validate!(input[:connection_id], ::String, context: "#{context}[:connection_id]")
      end
    end

    class GetConnectionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetConnectionOutput, context: context)
        Hearth::Validator.validate!(input[:connected_at], ::Time, context: "#{context}[:connected_at]")
        Identity.validate!(input[:identity], context: "#{context}[:identity]") unless input[:identity].nil?
        Hearth::Validator.validate!(input[:last_active_at], ::Time, context: "#{context}[:last_active_at]")
      end
    end

    class GoneException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GoneException, context: context)
      end
    end

    class Identity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Identity, context: context)
        Hearth::Validator.validate!(input[:source_ip], ::String, context: "#{context}[:source_ip]")
        Hearth::Validator.validate!(input[:user_agent], ::String, context: "#{context}[:user_agent]")
      end
    end

    class LimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LimitExceededException, context: context)
      end
    end

    class PayloadTooLargeException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PayloadTooLargeException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PostToConnectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PostToConnectionInput, context: context)
        Hearth::Validator.validate!(input[:data], ::String, context: "#{context}[:data]")
        Hearth::Validator.validate!(input[:connection_id], ::String, context: "#{context}[:connection_id]")
      end
    end

    class PostToConnectionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PostToConnectionOutput, context: context)
      end
    end

  end
end
