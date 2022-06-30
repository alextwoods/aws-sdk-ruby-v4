# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CodeDeploy
  module Errors
    def self.error_code(resp)

      if !(200..299).cover?(resp.status)
        json = Hearth::JSON.load(resp.body)
        resp.body.rewind
        code = json['__type'] || json['code'] if json
      end
      code ||= resp.headers['x-amzn-errortype']
      if code
        code.split('#').last.split(':').first
      end
    end

    # Base class for all errors returned by this service
    class ApiError < Hearth::HTTP::ApiError; end

    # Base class for all errors returned where the client is at fault.
    # These are generally errors with 4XX HTTP status codes.
    class ApiClientError < ApiError; end

    # Base class for all errors returned where the server is at fault.
    # These are generally errors with 5XX HTTP status codes.
    class ApiServerError < ApiError; end

    # Base class for all errors returned where the service returned
    # a 3XX redirection.
    class ApiRedirectError < ApiError
      def initialize(location:, **kwargs)
        @location = location
        super(**kwargs)
      end

      # @return [String] location
      attr_reader :location
    end

    class AlarmsLimitExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::AlarmsLimitExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::AlarmsLimitExceededException]
      #
      attr_reader :data
    end

    class ApplicationAlreadyExistsException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ApplicationAlreadyExistsException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ApplicationAlreadyExistsException]
      #
      attr_reader :data
    end

    class ApplicationDoesNotExistException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ApplicationDoesNotExistException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ApplicationDoesNotExistException]
      #
      attr_reader :data
    end

    class ApplicationLimitExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ApplicationLimitExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ApplicationLimitExceededException]
      #
      attr_reader :data
    end

    class ApplicationNameRequiredException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ApplicationNameRequiredException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ApplicationNameRequiredException]
      #
      attr_reader :data
    end

    class ArnNotSupportedException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ArnNotSupportedException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ArnNotSupportedException]
      #
      attr_reader :data
    end

    class BatchLimitExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::BatchLimitExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::BatchLimitExceededException]
      #
      attr_reader :data
    end

    class BucketNameFilterRequiredException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::BucketNameFilterRequiredException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::BucketNameFilterRequiredException]
      #
      attr_reader :data
    end

    class DeploymentAlreadyCompletedException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DeploymentAlreadyCompletedException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DeploymentAlreadyCompletedException]
      #
      attr_reader :data
    end

    class DeploymentConfigAlreadyExistsException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DeploymentConfigAlreadyExistsException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DeploymentConfigAlreadyExistsException]
      #
      attr_reader :data
    end

    class DeploymentConfigDoesNotExistException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DeploymentConfigDoesNotExistException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DeploymentConfigDoesNotExistException]
      #
      attr_reader :data
    end

    class DeploymentConfigInUseException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DeploymentConfigInUseException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DeploymentConfigInUseException]
      #
      attr_reader :data
    end

    class DeploymentConfigLimitExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DeploymentConfigLimitExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DeploymentConfigLimitExceededException]
      #
      attr_reader :data
    end

    class DeploymentConfigNameRequiredException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DeploymentConfigNameRequiredException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DeploymentConfigNameRequiredException]
      #
      attr_reader :data
    end

    class DeploymentDoesNotExistException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DeploymentDoesNotExistException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DeploymentDoesNotExistException]
      #
      attr_reader :data
    end

    class DeploymentGroupAlreadyExistsException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DeploymentGroupAlreadyExistsException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DeploymentGroupAlreadyExistsException]
      #
      attr_reader :data
    end

    class DeploymentGroupDoesNotExistException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DeploymentGroupDoesNotExistException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DeploymentGroupDoesNotExistException]
      #
      attr_reader :data
    end

    class DeploymentGroupLimitExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DeploymentGroupLimitExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DeploymentGroupLimitExceededException]
      #
      attr_reader :data
    end

    class DeploymentGroupNameRequiredException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DeploymentGroupNameRequiredException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DeploymentGroupNameRequiredException]
      #
      attr_reader :data
    end

    class DeploymentIdRequiredException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DeploymentIdRequiredException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DeploymentIdRequiredException]
      #
      attr_reader :data
    end

    class DeploymentIsNotInReadyStateException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DeploymentIsNotInReadyStateException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DeploymentIsNotInReadyStateException]
      #
      attr_reader :data
    end

    class DeploymentLimitExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DeploymentLimitExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DeploymentLimitExceededException]
      #
      attr_reader :data
    end

    class DeploymentNotStartedException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DeploymentNotStartedException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DeploymentNotStartedException]
      #
      attr_reader :data
    end

    class DeploymentTargetDoesNotExistException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DeploymentTargetDoesNotExistException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DeploymentTargetDoesNotExistException]
      #
      attr_reader :data
    end

    class DeploymentTargetIdRequiredException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DeploymentTargetIdRequiredException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DeploymentTargetIdRequiredException]
      #
      attr_reader :data
    end

    class DeploymentTargetListSizeExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DeploymentTargetListSizeExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DeploymentTargetListSizeExceededException]
      #
      attr_reader :data
    end

    class DescriptionTooLongException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DescriptionTooLongException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DescriptionTooLongException]
      #
      attr_reader :data
    end

    class ECSServiceMappingLimitExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ECSServiceMappingLimitExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ECSServiceMappingLimitExceededException]
      #
      attr_reader :data
    end

    class GitHubAccountTokenDoesNotExistException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::GitHubAccountTokenDoesNotExistException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::GitHubAccountTokenDoesNotExistException]
      #
      attr_reader :data
    end

    class GitHubAccountTokenNameRequiredException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::GitHubAccountTokenNameRequiredException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::GitHubAccountTokenNameRequiredException]
      #
      attr_reader :data
    end

    class IamArnRequiredException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::IamArnRequiredException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::IamArnRequiredException]
      #
      attr_reader :data
    end

    class IamSessionArnAlreadyRegisteredException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::IamSessionArnAlreadyRegisteredException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::IamSessionArnAlreadyRegisteredException]
      #
      attr_reader :data
    end

    class IamUserArnAlreadyRegisteredException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::IamUserArnAlreadyRegisteredException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::IamUserArnAlreadyRegisteredException]
      #
      attr_reader :data
    end

    class IamUserArnRequiredException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::IamUserArnRequiredException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::IamUserArnRequiredException]
      #
      attr_reader :data
    end

    class InstanceDoesNotExistException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InstanceDoesNotExistException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InstanceDoesNotExistException]
      #
      attr_reader :data
    end

    class InstanceIdRequiredException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InstanceIdRequiredException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InstanceIdRequiredException]
      #
      attr_reader :data
    end

    class InstanceLimitExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InstanceLimitExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InstanceLimitExceededException]
      #
      attr_reader :data
    end

    class InstanceNameAlreadyRegisteredException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InstanceNameAlreadyRegisteredException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InstanceNameAlreadyRegisteredException]
      #
      attr_reader :data
    end

    class InstanceNameRequiredException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InstanceNameRequiredException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InstanceNameRequiredException]
      #
      attr_reader :data
    end

    class InstanceNotRegisteredException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InstanceNotRegisteredException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InstanceNotRegisteredException]
      #
      attr_reader :data
    end

    class InvalidAlarmConfigException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidAlarmConfigException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidAlarmConfigException]
      #
      attr_reader :data
    end

    class InvalidApplicationNameException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidApplicationNameException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidApplicationNameException]
      #
      attr_reader :data
    end

    class InvalidArnException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidArnException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidArnException]
      #
      attr_reader :data
    end

    class InvalidAutoRollbackConfigException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidAutoRollbackConfigException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidAutoRollbackConfigException]
      #
      attr_reader :data
    end

    class InvalidAutoScalingGroupException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidAutoScalingGroupException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidAutoScalingGroupException]
      #
      attr_reader :data
    end

    class InvalidBlueGreenDeploymentConfigurationException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidBlueGreenDeploymentConfigurationException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidBlueGreenDeploymentConfigurationException]
      #
      attr_reader :data
    end

    class InvalidBucketNameFilterException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidBucketNameFilterException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidBucketNameFilterException]
      #
      attr_reader :data
    end

    class InvalidComputePlatformException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidComputePlatformException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidComputePlatformException]
      #
      attr_reader :data
    end

    class InvalidDeployedStateFilterException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidDeployedStateFilterException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidDeployedStateFilterException]
      #
      attr_reader :data
    end

    class InvalidDeploymentConfigNameException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidDeploymentConfigNameException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidDeploymentConfigNameException]
      #
      attr_reader :data
    end

    class InvalidDeploymentGroupNameException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidDeploymentGroupNameException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidDeploymentGroupNameException]
      #
      attr_reader :data
    end

    class InvalidDeploymentIdException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidDeploymentIdException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidDeploymentIdException]
      #
      attr_reader :data
    end

    class InvalidDeploymentInstanceTypeException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidDeploymentInstanceTypeException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidDeploymentInstanceTypeException]
      #
      attr_reader :data
    end

    class InvalidDeploymentStatusException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidDeploymentStatusException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidDeploymentStatusException]
      #
      attr_reader :data
    end

    class InvalidDeploymentStyleException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidDeploymentStyleException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidDeploymentStyleException]
      #
      attr_reader :data
    end

    class InvalidDeploymentTargetIdException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidDeploymentTargetIdException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidDeploymentTargetIdException]
      #
      attr_reader :data
    end

    class InvalidDeploymentWaitTypeException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidDeploymentWaitTypeException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidDeploymentWaitTypeException]
      #
      attr_reader :data
    end

    class InvalidEC2TagCombinationException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidEC2TagCombinationException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidEC2TagCombinationException]
      #
      attr_reader :data
    end

    class InvalidEC2TagException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidEC2TagException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidEC2TagException]
      #
      attr_reader :data
    end

    class InvalidECSServiceException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidECSServiceException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidECSServiceException]
      #
      attr_reader :data
    end

    class InvalidExternalIdException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidExternalIdException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidExternalIdException]
      #
      attr_reader :data
    end

    class InvalidFileExistsBehaviorException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidFileExistsBehaviorException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidFileExistsBehaviorException]
      #
      attr_reader :data
    end

    class InvalidGitHubAccountTokenException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidGitHubAccountTokenException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidGitHubAccountTokenException]
      #
      attr_reader :data
    end

    class InvalidGitHubAccountTokenNameException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidGitHubAccountTokenNameException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidGitHubAccountTokenNameException]
      #
      attr_reader :data
    end

    class InvalidIamSessionArnException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidIamSessionArnException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidIamSessionArnException]
      #
      attr_reader :data
    end

    class InvalidIamUserArnException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidIamUserArnException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidIamUserArnException]
      #
      attr_reader :data
    end

    class InvalidIgnoreApplicationStopFailuresValueException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidIgnoreApplicationStopFailuresValueException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidIgnoreApplicationStopFailuresValueException]
      #
      attr_reader :data
    end

    class InvalidInputException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidInputException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidInputException]
      #
      attr_reader :data
    end

    class InvalidInstanceNameException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidInstanceNameException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidInstanceNameException]
      #
      attr_reader :data
    end

    class InvalidInstanceStatusException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidInstanceStatusException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidInstanceStatusException]
      #
      attr_reader :data
    end

    class InvalidInstanceTypeException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidInstanceTypeException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidInstanceTypeException]
      #
      attr_reader :data
    end

    class InvalidKeyPrefixFilterException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidKeyPrefixFilterException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidKeyPrefixFilterException]
      #
      attr_reader :data
    end

    class InvalidLifecycleEventHookExecutionIdException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidLifecycleEventHookExecutionIdException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidLifecycleEventHookExecutionIdException]
      #
      attr_reader :data
    end

    class InvalidLifecycleEventHookExecutionStatusException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidLifecycleEventHookExecutionStatusException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidLifecycleEventHookExecutionStatusException]
      #
      attr_reader :data
    end

    class InvalidLoadBalancerInfoException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidLoadBalancerInfoException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidLoadBalancerInfoException]
      #
      attr_reader :data
    end

    class InvalidMinimumHealthyHostValueException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidMinimumHealthyHostValueException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidMinimumHealthyHostValueException]
      #
      attr_reader :data
    end

    class InvalidNextTokenException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidNextTokenException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidNextTokenException]
      #
      attr_reader :data
    end

    class InvalidOnPremisesTagCombinationException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidOnPremisesTagCombinationException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidOnPremisesTagCombinationException]
      #
      attr_reader :data
    end

    class InvalidOperationException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidOperationException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidOperationException]
      #
      attr_reader :data
    end

    class InvalidRegistrationStatusException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidRegistrationStatusException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidRegistrationStatusException]
      #
      attr_reader :data
    end

    class InvalidRevisionException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidRevisionException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidRevisionException]
      #
      attr_reader :data
    end

    class InvalidRoleException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidRoleException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidRoleException]
      #
      attr_reader :data
    end

    class InvalidSortByException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidSortByException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidSortByException]
      #
      attr_reader :data
    end

    class InvalidSortOrderException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidSortOrderException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidSortOrderException]
      #
      attr_reader :data
    end

    class InvalidTagException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidTagException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidTagException]
      #
      attr_reader :data
    end

    class InvalidTagFilterException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidTagFilterException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidTagFilterException]
      #
      attr_reader :data
    end

    class InvalidTagsToAddException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidTagsToAddException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidTagsToAddException]
      #
      attr_reader :data
    end

    class InvalidTargetFilterNameException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidTargetFilterNameException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidTargetFilterNameException]
      #
      attr_reader :data
    end

    class InvalidTargetGroupPairException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidTargetGroupPairException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidTargetGroupPairException]
      #
      attr_reader :data
    end

    class InvalidTargetInstancesException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidTargetInstancesException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidTargetInstancesException]
      #
      attr_reader :data
    end

    class InvalidTimeRangeException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidTimeRangeException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidTimeRangeException]
      #
      attr_reader :data
    end

    class InvalidTrafficRoutingConfigurationException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidTrafficRoutingConfigurationException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidTrafficRoutingConfigurationException]
      #
      attr_reader :data
    end

    class InvalidTriggerConfigException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidTriggerConfigException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidTriggerConfigException]
      #
      attr_reader :data
    end

    class InvalidUpdateOutdatedInstancesOnlyValueException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidUpdateOutdatedInstancesOnlyValueException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidUpdateOutdatedInstancesOnlyValueException]
      #
      attr_reader :data
    end

    class LifecycleEventAlreadyCompletedException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::LifecycleEventAlreadyCompletedException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::LifecycleEventAlreadyCompletedException]
      #
      attr_reader :data
    end

    class LifecycleHookLimitExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::LifecycleHookLimitExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::LifecycleHookLimitExceededException]
      #
      attr_reader :data
    end

    class MultipleIamArnsProvidedException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::MultipleIamArnsProvidedException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::MultipleIamArnsProvidedException]
      #
      attr_reader :data
    end

    class OperationNotSupportedException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::OperationNotSupportedException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::OperationNotSupportedException]
      #
      attr_reader :data
    end

    class ResourceArnRequiredException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ResourceArnRequiredException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ResourceArnRequiredException]
      #
      attr_reader :data
    end

    class ResourceValidationException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ResourceValidationException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ResourceValidationException]
      #
      attr_reader :data
    end

    class RevisionDoesNotExistException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::RevisionDoesNotExistException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::RevisionDoesNotExistException]
      #
      attr_reader :data
    end

    class RevisionRequiredException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::RevisionRequiredException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::RevisionRequiredException]
      #
      attr_reader :data
    end

    class RoleRequiredException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::RoleRequiredException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::RoleRequiredException]
      #
      attr_reader :data
    end

    class TagLimitExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TagLimitExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TagLimitExceededException]
      #
      attr_reader :data
    end

    class TagRequiredException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TagRequiredException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TagRequiredException]
      #
      attr_reader :data
    end

    class TagSetListLimitExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TagSetListLimitExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TagSetListLimitExceededException]
      #
      attr_reader :data
    end

    class ThrottlingException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ThrottlingException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ThrottlingException]
      #
      attr_reader :data
    end

    class TriggerTargetsLimitExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TriggerTargetsLimitExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TriggerTargetsLimitExceededException]
      #
      attr_reader :data
    end

    class UnsupportedActionForDeploymentTypeException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::UnsupportedActionForDeploymentTypeException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::UnsupportedActionForDeploymentTypeException]
      #
      attr_reader :data
    end

  end
end
