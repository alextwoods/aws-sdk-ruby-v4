# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::AppConfigData
  module Types

    # <p>Detailed information about the input that failed to satisfy the constraints specified by
    #          a call.</p>
    #
    class BadRequestDetails < Hearth::Union
      # <p>One or more specified parameters are not valid for the call.</p>
      #
      class InvalidParameters < BadRequestDetails
        def to_h
          { invalid_parameters: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::AppConfigData::Types::InvalidParameters #{__getobj__ || 'nil'}>"
        end
      end

      # Handles unknown future members
      #
      class Unknown < BadRequestDetails
        def to_h
          { unknown: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::AppConfigData::Types::Unknown #{__getobj__ || 'nil'}>"
        end
      end
    end

    # <p>The input fails to satisfy the constraints specified by the service.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute reason
    #   <p>Code indicating the reason the request was invalid.</p>
    #
    #   Enum, one of: ["InvalidParameters"]
    #
    #   @return [String]
    #
    # @!attribute details
    #   <p>Details describing why the request was invalid.</p>
    #
    #   @return [BadRequestDetails]
    #
    BadRequestException = ::Struct.new(
      :message,
      :reason,
      :details,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for BadRequestReason
    #
    module BadRequestReason
      # Indicates there was a problem with one or more of the parameters.
      # See InvalidParameters in the BadRequestDetails for more information.
      #
      INVALID_PARAMETERS = "InvalidParameters"
    end

    # @!attribute configuration_token
    #   <p>Token describing the current state of the configuration session. To obtain a token,
    #            first call the <a>StartConfigurationSession</a> API. Note that every call to
    #               <code>GetLatestConfiguration</code> will return a new <code>ConfigurationToken</code>
    #               (<code>NextPollConfigurationToken</code> in the response) and MUST be provided to
    #            subsequent <code>GetLatestConfiguration</code> API calls.</p>
    #
    #   @return [String]
    #
    GetLatestConfigurationInput = ::Struct.new(
      :configuration_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_poll_configuration_token
    #   <p>The latest token describing the current state of the configuration session. This MUST be
    #            provided to the next call to <code>GetLatestConfiguration.</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute next_poll_interval_in_seconds
    #   <p>The amount of time the client should wait before polling for configuration updates
    #            again. Use <code>RequiredMinimumPollIntervalInSeconds</code> to set the desired poll
    #            interval.</p>
    #
    #   @return [Integer]
    #
    # @!attribute content_type
    #   <p>A standard MIME type describing the format of the configuration content.</p>
    #
    #   @return [String]
    #
    # @!attribute configuration
    #   <p>The data of the configuration. This may be empty if the client already has the latest
    #            version of configuration.</p>
    #
    #   @return [String]
    #
    GetLatestConfigurationOutput = ::Struct.new(
      :next_poll_configuration_token,
      :next_poll_interval_in_seconds,
      :content_type,
      :configuration,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.next_poll_interval_in_seconds ||= 0
      end

      def to_s
        "#<struct AWS::SDK::AppConfigData::Types::GetLatestConfigurationOutput "\
          "next_poll_configuration_token=#{next_poll_configuration_token || 'nil'}, "\
          "next_poll_interval_in_seconds=#{next_poll_interval_in_seconds || 'nil'}, "\
          "content_type=#{content_type || 'nil'}, "\
          "configuration=\"[SENSITIVE]\">"
      end
    end

    # <p>There was an internal failure in the service.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InternalServerException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about an invalid parameter.</p>
    #
    # @!attribute problem
    #   <p>The reason the parameter is invalid.</p>
    #
    #   Enum, one of: ["Corrupted", "Expired", "PollIntervalNotSatisfied"]
    #
    #   @return [String]
    #
    InvalidParameterDetail = ::Struct.new(
      :problem,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for InvalidParameterProblem
    #
    module InvalidParameterProblem
      # The parameter was corrupted and could not be understood by the service.
      #
      CORRUPTED = "Corrupted"

      # The parameter was expired and can no longer be used.
      #
      EXPIRED = "Expired"

      # The client called the service before the time specified in the poll interval.
      #
      POLL_INTERVAL_NOT_SATISFIED = "PollIntervalNotSatisfied"
    end

    # <p>The requested resource could not be found.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The type of resource that was not found.</p>
    #
    #   Enum, one of: ["Application", "ConfigurationProfile", "Deployment", "Environment", "Configuration"]
    #
    #   @return [String]
    #
    # @!attribute referenced_by
    #   <p>A map indicating which parameters in the request reference the resource that was not found.</p>
    #
    #   @return [Hash<String, String>]
    #
    ResourceNotFoundException = ::Struct.new(
      :message,
      :resource_type,
      :referenced_by,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ResourceType
    #
    module ResourceType
      # Resource type value for the Application resource.
      #
      APPLICATION = "Application"

      # Resource type value for the ConfigurationProfile resource.
      #
      CONFIGURATION_PROFILE = "ConfigurationProfile"

      # Resource type value for the Deployment resource.
      #
      DEPLOYMENT = "Deployment"

      # Resource type value for the Environment resource.
      #
      ENVIRONMENT = "Environment"

      # Resource type value for the Configuration resource.
      #
      CONFIGURATION = "Configuration"
    end

    # @!attribute application_identifier
    #   <p>The application ID or the application name.</p>
    #
    #   @return [String]
    #
    # @!attribute environment_identifier
    #   <p>The environment ID or the environment name.</p>
    #
    #   @return [String]
    #
    # @!attribute configuration_profile_identifier
    #   <p>The configuration profile ID or the configuration profile name.</p>
    #
    #   @return [String]
    #
    # @!attribute required_minimum_poll_interval_in_seconds
    #   <p>Sets a constraint on a session. If you specify a value of, for example, 60 seconds, then
    #            the client that established the session can't call <a>GetLatestConfiguration</a>
    #            more frequently then every 60 seconds.</p>
    #
    #   @return [Integer]
    #
    StartConfigurationSessionInput = ::Struct.new(
      :application_identifier,
      :environment_identifier,
      :configuration_profile_identifier,
      :required_minimum_poll_interval_in_seconds,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute initial_configuration_token
    #   <p>Token encapsulating state about the configuration session. Provide this token to the
    #               <code>GetLatestConfiguration</code> API to retrieve configuration data.</p>
    #            <important>
    #               <p>This token should only be used once in your first call to
    #                  <code>GetLatestConfiguration</code>. You MUST use the new token in the
    #                  <code>GetLatestConfiguration</code> response
    #               (<code>NextPollConfigurationToken</code>) in each subsequent call to
    #                  <code>GetLatestConfiguration</code>.</p>
    #            </important>
    #
    #   @return [String]
    #
    StartConfigurationSessionOutput = ::Struct.new(
      :initial_configuration_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request was denied due to request throttling.</p>
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
